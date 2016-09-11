<?php

class Question extends AppModel {
	
	var $useTable = 'questions';
	
	function fetchAllQuestionsBySurveyId( $intSurveyId ) {
	
		$SQL = "SELECT
					q.id as id__c,
			        q.title as title__c,
					q.helptext as helptext__c,
					q.type as type__c,
					q.options as options__c
	       		FROM
	                questions q
	       		WHERE
	       			q.surveyId = $intSurveyId";
	
		return Hash::combine($this->query($SQL), '{n}.{n}.id__c', '{n}.{n}');		
	}
		
	function fetchAllQuestionsByGuid( $strGuid ) {
	
		$SQL = "SELECT
					q.id as id__c,
					s.id as surveyId__c,
					q.title as title__c,
					q.helptext as helptext__c,
					q.type as type__c,
					q.options as options__c,
					o.name as organization_name__c,
					o.id as organization_id__c
				FROM
					questions q
					INNER JOIN surveys s ON s.id = q.surveyId AND s.guid = '$strGuid'
					INNER JOIN organizations o ON o.id = s.organizationId";
	
		return Hash::combine($this->query($SQL), '{n}.{n}.id__c', '{n}.{n}');
	}

}

?>