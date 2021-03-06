<?php

namespace Members\Controller;

use Zend\Mvc\Controller\AbstractActionController;

class MembersController extends \NovumWare\Zend\Mvc\Controller\AbstractActionController
{
    public function aboutBallroomDanceAction() {}
    public function aboutTheTeamAction() {}
    public function newMemberFaqAction() {}
    public function newMemberRegistrationAction() {
		if ($this->getRequest()->isPost()) {
			$formRegistration = new Application_Form_Join_NewMemberRegistration($this->_request->getPost('formNewMemberRegistration'));
			if (!$formRegistration->drIsValid()) {
				$this->processFailure(Application_Constants_Errors::FORM_INVALID, NULL, $formRegistration->getMessages());
				return;
			}
			$newMemberRegistrationModel = new Application_Model_NewMemberRegistration($formRegistration->getValues());
			Application_Model_DbTable_NewMemberRegistration::insertModel($newMemberRegistrationModel);
			$this->view->success = true;
		}
	}
}