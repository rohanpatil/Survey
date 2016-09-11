<?php

class Collaborator extends AppModel {
	
	var $useTable = 'collaborators';
	
	function fetchCollaboratorByOrganizationId( $intOrganizationId, $intSurveyId, $strCondition ) {
	
		$SQL = "SELECT
					c.id as id__c,
					CASE WHEN sc.id IS NOT NULL THEN 1 ELSE 0 END as isAdded__c
	       		FROM
	                collaborators c
	                LEFT JOIN survey_collaborators sc ON sc.collaboratorId = c.id AND sc.surveyId = $intSurveyId
	       		WHERE
	       			c.organizationId = $intOrganizationId
					AND $strCondition ";
	
		return Hash::combine($this->query($SQL), '{n}.{n}.id__c', '{n}.{n}');		
	}
	
	function fetchAllCollaboratorsBySurveyId( $intOrganizationId, $intSurveyId ) {
		
		$SQL = "SELECT
					c.id as id__c,
					c.name as name__c,
					c.email as email__c,
					c.phone as phone__c,
					(SELECT CASE WHEN a.id IS NOT NULL THEN 1 ELSE 0 END FROM answers a WHERE a.surveyId= sc.surveyId AND a.collaboratorId = sc.collaboratorId ) as isResponded__c
	       		FROM
	       			survey_collaborators sc
	                INNER JOIN collaborators c ON c.id = sc.collaboratorId
	       		WHERE
	       			c.organizationId = $intOrganizationId 
	       			AND sc.surveyId = $intSurveyId ";
		
		return Hash::combine($this->query($SQL), '{n}.{n}.id__c', '{n}.{n}');
	}
	
	function insertCollaborator( $arrmixRequestData ) {
		$sObject = new stdClass();
		
		$sObject->name = $arrmixRequestData['name'];
		$sObject->email = $arrmixRequestData['email'];
		$sObject->organizationId = $arrmixRequestData['organization_id'];
		
		if( true == isset( $arrmixRequestData['phone'] ) && false == empty( $arrmixRequestData['phone'] ) ) {
			$sObject->phone = $arrmixRequestData['phone'];
		}
		
		$sObject->gender = $arrmixRequestData['gender'];
		
		$sObjects['Collaborator'] = (array)json_decode(json_encode($sObject), FALSE);
		
		$this->create();
		$upsertResponse = $this->save($sObjects);
		
		return $upsertResponse;
	}

}

?>