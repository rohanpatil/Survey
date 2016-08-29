<?php

App::uses( 'AppController' , 'Controller' );

class AuthenticationsController extends AppController {
	
	public function signIn() {
		if( 'admin' == $this->request->data('username') && 'admin' == $this->request->data('password') ) {
			$this->redirect( '/dashboard' );
			exit;
		}
	}
	
	public function signOut() {
	
		$userSession = $this->Session->read('user_session_id');
		 
		if($userSession != null) {
			$this->Session->destroy();
		}
		
		$this->redirect('/signin');
	}
}

?>