<?php

class Answer extends AppModel {
	
	var $useTable = 'answers';
	
	function insertSurveyResult( $arrmixRequestData, $intCollaboratorId ) {
	
		$arrarrResponse = array();
		$sObject = new stdClass();
		
		$sObject->surveyId = $arrmixRequestData['survey_id'];
		$sObject->collaboratorId = $intCollaboratorId;
		
		foreach( $arrmixRequestData['questions'] as $intQuestionId => $strResponse ) {
			$obj2 = clone $sObject;
			$obj2->questionId = $intQuestionId;
			
			if( false == is_array( $strResponse ) ) {
				$obj2->response = $strResponse;
			} else {
				$obj2->response = implode( ', ', $strResponse );
			}
			
			$arrTemp['Answer'] =  (array) json_decode( json_encode( $obj2 ), FALSE );
			array_push( $arrarrResponse, $arrTemp );
		}
		
		$this->create($arrarrResponse);
		$upsertResponse = $this->saveAll( $this->data['Answer'] );	
		return $upsertResponse;
	}

}

?>