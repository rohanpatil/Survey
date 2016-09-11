<?php

class CollaboratorSurvey extends AppModel {
	
	var $useTable = 'survey_collaborators';
	
	function assignSurvey( $intSurveyId, $intCollaboratorId ) {
		$sObject = new stdClass();
		
		$sObject->surveyId = $intSurveyId;
		$sObject->collaboratorId = $intCollaboratorId;
		
		$sObjects['CollaboratorSurvey'] = (array)json_decode(json_encode($sObject), FALSE);
		
		$this->create();
		$upsertResponse = $this->save($sObjects);
		
		return $upsertResponse;
	}
}

?>