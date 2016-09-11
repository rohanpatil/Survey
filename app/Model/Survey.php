<?php

class Survey extends AppModel {
	
	var $useTable = 'surveys';
	
	function fetchAllSurveysByOrganizationId( $intOrganizationId ) {
	
		$SQL = "SELECT
					s.id as id__c,
			        s.title as title__c,
					s.description as description__c,
					s.isActive as isActive__c,
					o.name as organization_name__c,
					s.createdon as createdon__c,
					(SELECT count(id) FROM questions where surveyId = s.id ) as questions_count__c
	       		FROM
	                surveys s
					INNER JOIN organizations o ON o.id = s.organizationId
	       		WHERE
	       			s.organizationId = $intOrganizationId";
	
		return Hash::combine($this->query($SQL), '{n}.{n}.id__c', '{n}.{n}');
	
	}
	
	function fetchSurveyCountsByOrganizationId( $intOrganizationId ) {
	
		$SQL = "SELECT
					count(s.id) as total_surveys__c,
					SUM(CASE WHEN s.isActive = 1 THEN 1 ELSE 0 END) as completed_surveys__c,
					SUM(CASE WHEN s.isActive = 0 THEN 1 ELSE 0 END) as open_surveys__c
	       		FROM
	                surveys s
	       		WHERE
	       			s.organizationId = $intOrganizationId";
	
		$arrmixResult = $this->query($SQL);
		
		if( false == empty( $arrmixResult ) ) {
			return $arrmixResult[0][0];
		} else {
			return NULL;
		}
	
	}
	
	function fetchRecentSurveysByOrganizationId( $intOrganizationId ) {
	
		$SQL = "SELECT
					s.id as id__c,
			        s.title as title__c
	       		FROM
	                surveys s
	       		WHERE
	       			s.organizationId = $intOrganizationId
					AND s.isActive = 1
				ORDER BY
					s.createdon DESC
				LIMIT 5";
	
		return Hash::combine($this->query($SQL), '{n}.{n}.id__c', '{n}.{n}');
	
	}
	
	function fetchSurveyDetailsByIdByOrganizationId( $intOrganizationId, $intSurveyId ) {
	
		$SQL = "SELECT
					s.id as id__c,
					s.title as title__c,
					s.description as description__c,
					s.isActive as isActive__c,
					s.createdon as createdon__c,
					s.guid as guid__c
				FROM
					surveys s
				WHERE
					s.id = $intSurveyId
					AND s.organizationId = $intOrganizationId";
	
		return Hash::combine($this->query($SQL), '{n}.{n}.id__c', '{n}.{n}');
	
	}
}

?>