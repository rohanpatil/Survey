<?php

App::uses( 'AppController' , 'Controller' );

class AuthenticationsController extends AppController {
	
	var $components = array('Session');
	var $uses = array('Organizations');
	protected $arrstrErrors = array();
	
	public function signIn() {
		
		if( $this->Session->read('user_session_id') != null) {
			$this->redirect('/dashboard');
			exit;
		}
		
		if( true == $this->request->is( 'post' ) ) {
			$boolValidate = true;
			
			$boolValidate &= $this->validateData( 'signin', $this->request->data );
			
			if( false == $boolValidate ) {
				$this->set( 'errors', $this->arrstrErrors );
				return;
			}
			
			$arrUserResult = $this->Organizations->authenticateUser( trim( strtolower( $_POST['email_address'] ) ) );
			$record = (object) ( array_reduce( $arrUserResult, 'array_merge', array() ) );
			
			if( count( $arrUserResult ) > 0 ) {
				if(isset($record->password) && $record->password == $_POST['password']  && $record->password == true ) {
					$this->Session->write('user_session_id', $record->id );
					$this->Session->write('organization_name', $record->name );
				}
				
				$this->redirect( '/dashboard' );
				exit;
			} else {
               $this->set( 'errors', Configure::read( 'ERROR_MSG_INVALID_EMAIL_PASSWORD' ) );
               return;
            } 
 		}
	}
	
	public function signOut() {
	
		$userSession = $this->Session->read('user_session_id');
		 
		if($userSession != null) {
			$this->Session->destroy();
		}
		
		$this->redirect('/signin');
	}
	
	public function validateData( $requestAction, $requestData ) {
	
		$boolValidate = true;
	
		switch ( $requestAction ) {
			CASE 'signin':
				$boolValidate &= $this->validateEmailAddress( $requestData['email_address'] );
				$boolValidate &= $this->validatePassword( $requestData['password'] );
				break;
				 
			default:
				break;
		}
	
		return $boolValidate;
	}
	
	function validateEmailAddress( $strEmailAddress ) {
	
		if( true == empty( $strEmailAddress ) ) {
			$this->arrstrErrors['email_address'] = Configure::read( 'ERROR_MSG_EMAIL_REQUIRED' );
			return false;
		}
	
		if( false == filter_var($strEmailAddress, FILTER_VALIDATE_EMAIL)) {
			$this->arrstrErrors['email_address'] = Configure::read( 'ERROR_MSG_INVALID_EMAIL' );
			return false;
		}
	
		return true;
	}

	function validatePassword( $strPassword ) {
		if( true == empty( $strPassword ) ) {
			$this->arrstrErrors['password'] = Configure::read( 'ERROR_MSG_PASSWORD_REQUIRED' );
			return false;
		}
	
		return true;
	}
}

?>