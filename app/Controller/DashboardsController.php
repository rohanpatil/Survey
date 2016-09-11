<?php

App::uses( 'AppController' , 'Controller' );

class DashboardsController extends AppController {
	
	var $uses = array('Survey');
			
	public function viewDashboard() {
		$intTotalSurveys = $intCompletedSurveys = $intOpenSurveys = 0;
		
		$arrarrSurveys = $this->Survey->fetchSurveyCountsByOrganizationId( $this->Session->read( 'user_session_id' ) );
		
		if( false == empty( $arrarrSurveys ) ) {
			$intTotalSurveys = $arrarrSurveys['total_surveys__c'];
			$intCompletedSurveys = $arrarrSurveys['completed_surveys__c'];
			$intOpenSurveys = $arrarrSurveys['open_surveys__c'];
		}
		
		$arrarrRecentSurveys = $this->Survey->fetchRecentSurveysByOrganizationId( $this->Session->read( 'user_session_id' ) );
		
		$this->set( 'total_surveys', $intTotalSurveys );
		$this->set( 'completed_surveys', $intCompletedSurveys );
		$this->set( 'open_surveys', $intOpenSurveys );
		$this->set( 'recent_surveys', $arrarrRecentSurveys );
	}
}

?>