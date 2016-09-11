<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Customer Satisfaction Survey </title>

    <!-- Bootstrap -->
    <link href="/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/js/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/css/iCheck/skins/flat/green.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="/css/custom.css" rel="stylesheet">
  </head>

  <body class="nav-md footer_fixed">
    <div class="container body">
      <div class="main_container survey">
      <!-- page content -->
        <div class="right_col double-margin" role="main">
          <div class="">
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel" style="margin-bottom: 80px;">
                  <div class="x_title">
                    <h2>Customer Satisfaction Survey</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

				<form id="fill_survey" action="/survey/insert_survey_result" method="POST" class="form-horizontal data-parsley-validate form-label-left">
                    <!-- Smart Wizard -->
                    <div id="wizard" class="form_wizard wizard_horizontal">
                      <ul class="wizard_steps">
                        <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                            <span class="step_descr">
                            	Step 1<br />
                            	<small>Registration</small>
                            </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                            <span class="step_descr">
                            	Step 2<br />
                                <small>Survey</small>
                            </span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-3">
                            <span class="step_no">3</span>
                            <span class="step_descr">
                            	Step 3<br />
                                <small>Confirmation</small>
                            </span>
                          </a>
                        </li>
                      </ul>
                     <div id="step-1">   
                     	<div style="min-height:260px;">                
							<div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" name="name" required="required" data-parsley-group="personal" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="email" name="email" required="required" data-parsley-group="personal" data-parsley-type="email" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="phone" class="control-label col-md-3 col-sm-3 col-xs-12">Phone</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input class="form-control col-md-7 col-xs-12" type="text" name="phone">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <div id="gender" class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default active" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="Male" checked> &nbsp; Male &nbsp;
                                </label>
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="Female"> Female
                                </label>
                              </div>
                            </div>
                          </div>
                          </div>     
                      </div>
                      <div id="step-2">
                        <!-- start form for validation -->
                    	<div class="col-md-8 col-sm-8 col-xs-12 center-margin">
                    		{foreach from=$questions name="question" item="question"}
                      			{if 1 eq $smarty.foreach.question.iteration}
                      				<input type="hidden" value="{$question.surveyId__c}" name="survey_id"> 
                      				<input type="hidden" value="{$question.organization_id__c}" name="organization_id">
                      				{assign var="organization_name" value=$question.organization_name__c}
                      			{/if}
                          		<label>{$smarty.foreach.question.iteration}. {$question.title__c}</label>
                          		
                          		{if $question.type__c eq 'text'}
							  		<input type="text" class="form-control" name="questions[{$question.id__c}]" required />
							  	{elseif $question.type__c eq 'textarea'}
							  		 <textarea id="message" required="required" class="form-control" name="questions[{$question.id__c}]" data-parsley-trigger="keyup"></textarea>
							  	{elseif $question.type__c eq 'radio'}
							  		{if false eq empty($question.options__c)}
							  			<div>
							  			{foreach from=$question.options__c|@json_decode item="option"}
							  				<div class="radio">
												<input type="radio" class="flat" name="questions[{$question.id__c}]" value="{$option}" required /> {$option}
											</div>
							  			{/foreach}
							  			</div>
							  		{/if}
							  	{elseif $question.type__c eq 'checkbox'}	 
							  		{if false eq empty($question.options__c)}
							  			<div>
							  			{foreach from=$question.options__c|@json_decode item="option"}
							  				<div class="checkbox">
												<input type="checkbox" name="questions[{$question.id__c}][]" required value="{$option}" class="flat" /> {$option}
											</div>
							  			{/foreach}
							  			</div>
							  		{/if}
								{/if}
								<br/>
                          	{/foreach}
							</div>
                    	</div>
                    	<div id="step-3" class="text-center dark" style="padding-top:20px;">
                    		<h2>Thank you for your feedback!</h2>
							<p style="margin-bottom: 50px;">We appreciate your time and valuable feedback in helping us make {$organization_name} better!</p>
                    	</div>
                    	</form>
                    	
                    <!-- end form for validations -->
                      </div>

                    </div>
                    <!-- End SmartWizard Content -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="/js/jquery/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/js/bootstrap/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/js/fastclick/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/js/nprogress/nprogress.js"></script>
    <!-- jQuery Smart Wizard -->
    <script src="/js/jquery.smartWizard.js"></script>
    <script src="/js/iCheck/icheck.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="/js/custom.js"></script>
	<!-- Parsley -->
    <script src="/js/parsley.min.js"></script>
    <!-- jQuery Smart Wizard -->
    {literal}
    <script>
      $(document).ready(function() {
        $('#wizard').smartWizard({
        	keyNavigation: false,
        	reverseButtonsOrder: true,
        	//onLeaveStep:leaveAStepCallback
        });

        $('.buttonNext').addClass('btn btn-success');
        $('.buttonPrevious').addClass('hide');
        $('.buttonFinish').addClass('btn btn-default');
   
      });

      function leaveAStepCallback(obj){
    	  var step = obj.attr('rel');
		  var boolAdvanceStep = false;
		  	
    	  if( step == 1 ) {
    	  	 $('#fill_survey').parsley().validate({group: 'personal', force: true});
    	  	 return $('#fill_survey').parsley().isValid({group: 'personal', force: true});
    	  } else if( step == 2 ) {
    		 postDataAjax( '/survey/insert_survey_result', $('#fill_survey').serialize() );
			 return true;
    	  }
      }

   	function postDataAjax( strUrl, strData ) {
    	return $.ajax({
            type:"POST",
            url:strUrl,
               data: strData,
               beforeSend: function( xhr ) {
                //$( "#" + strReloadHtml ).html( '<div style="background-color: #ffffff;width: 100%;height: 100%;z-index: 9999;opacity: 0.6;filter: alpha(opacity=60);font-size: 40px;text-align: center;vertical-align: middle;top: 0;padding: 40px 0;"><i class="fa fa-spinner fa-spin"></i></div>' );
               }
    	});
 	}
      
    </script>
    {/literal}
    <!-- /jQuery Smart Wizard -->
  </body>
</html>