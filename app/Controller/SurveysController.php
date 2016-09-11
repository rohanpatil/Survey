<?php

App::uses( 'AppController' , 'Controller' );

class SurveysController extends AppController {
	
	var $uses = array('Survey', 'Question', 'Collaborator', 'CollaboratorSurvey', 'Answer');
	
	public function viewSurvey( $strGuid ) {
		$arrarrQuestions = $this->Question->fetchAllQuestionsByGuid( $strGuid );
		$this->set( 'questions', $arrarrQuestions );
	}
	
	public function viewSurveys() {
		$arrarrSurveys = $this->Survey->fetchAllSurveysByOrganizationId( $this->Session->read( 'user_session_id' ) );
		$this->set( 'surveys', $arrarrSurveys );
	}
	
	public function viewSurveyDetails( $intId ) {
		$arrmixSurveyDetails = $this->Survey->fetchSurveyDetailsByIdByOrganizationId( $this->Session->read( 'user_session_id' ), $intId );
		$objSurvey = (object) ( array_reduce( $arrmixSurveyDetails, 'array_merge', array() ) );
		
		$arrarrQuestions = $this->Question->fetchAllQuestionsBySurveyId( $intId );
		
		$arrmixCollaborators = $this->Collaborator->fetchAllCollaboratorsBySurveyId( $this->Session->read( 'user_session_id' ), $intId );
		
		$this->set( 'survey', $objSurvey );
		$this->set( 'questions', $arrarrQuestions );
		$this->set( 'collaborators', $arrmixCollaborators );
	}
	
	function insertSurveyResult() {
		$this->autoLayout = false;
		$this->autoRender = false;
		
		$strCondition = '';
		$strAppend = '';
		$boolSurveyAdded = false;
		
		if( false == empty( $this->request->data( 'phone' ) ) ) {
			$strCondition .= " ( c.phone = '" . $this->request->data( 'phone' ) . "' OR ";
		}
		
		if( false == empty( $strCondition ) ) {
			$strAppend = " ) ";
		}
		
		if( false == empty( $this->request->data( 'email' ) ) ) {
			$strCondition .= " lower(c.email) like '" . strtolower( $this->request->data( 'email' ) ) . "' ". $strAppend;
		} 
		
		$arrintResult = $this->Collaborator->fetchCollaboratorByOrganizationId( $this->request->data( 'organization_id' ), $this->request->data( 'survey_id' ), $strCondition );
		
		if( true == empty( $arrintResult ) ) {
			$arrmixCollaborator = $this->Collaborator->insertCollaborator( $this->request->data );
			
			if( true == empty( $arrmixCollaborator ) ) {
				exit;
			} else {
				$intCollaboratorId = $arrmixCollaborator['Collaborator']['id'];
			}
		} else {
			$objCollaborator = (object) (array_reduce( $arrintResult, 'array_merge', array() ) );
			$intCollaboratorId = $objCollaborator->id__c;
			
			if( 1 == $objCollaborator->isAdded__c ) {
				$boolSurveyAdded = true;
			}
		}
		
		if( false == $boolSurveyAdded ) {
			$this->CollaboratorSurvey->assignSurvey( $this->request->data( 'survey_id' ), $intCollaboratorId );
		}
		
		if( true == isset( $this->request->data['questions'] ) ) {
			if( true == $this->Answer->insertSurveyResult( $this->request->data, $intCollaboratorId ) ) {
				return true;
			}
		}
		
		return false;
	}
}

?>