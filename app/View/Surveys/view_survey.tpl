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
                        <form class="form-horizontal form-label-left">

                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Name <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Email <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Phone</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <div id="gender" class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default active" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="male" checked> &nbsp; Male &nbsp;
                                </label>
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                  <input type="radio" name="gender" value="female"> Female
                                </label>
                              </div>
                            </div>
                          </div>
                        </form>

                      </div>
                      <div id="step-2">
                        <!-- start form for validation -->
                    	<div class="col-md-8 col-sm-8 col-xs-12 center-margin">
                      		<label for="fullname">1. How likely is it that you would recommend this company to a friend or colleague?</label>
							  <input type="text" id="fullname" class="form-control" name="fullname" required />
								<br/>
							 <label>2. Overall, how satisfied or dissatisfied are you with our company?</label>
							  <div>
							  	<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderM" value="M" checked="" required /> Very satisfied
								</div>
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> Somewhat satisfied
								</div>	
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> Neither satisfied nor dissatisfied
								</div>	
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> Somewhat dissatisfied
								</div>	
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> Very dissatisfied
								</div>	
							  </div>
							   <br/>
							  <label>3. Which of the following words would you use to describe our products? Select all that apply.</label>
							  <div>
								<div class="checkbox">
									<input type="checkbox" name="hobbies[]" id="hobby1" value="ski" data-parsley-mincheck="2" required class="flat" /> Reliable
								</div>
								<div class="checkbox">
									<input type="checkbox" name="hobbies[]" id="hobby2" value="run" class="flat" /> High quality
								</div>	
								<div class="checkbox">
									<input type="checkbox" name="hobbies[]" id="hobby3" value="eat" class="flat" /> Useful
								</div>	
								<div class="checkbox">
									<input type="checkbox" name="hobbies[]" id="hobby4" value="sleep" class="flat" /> Unique
								</div>	
								<div class="checkbox">
									<input type="checkbox" name="hobbies[]" id="hobby4" value="sleep" class="flat" /> Good value for money
								</div>	
								<div class="checkbox">
									<input type="checkbox" name="hobbies[]" id="hobby4" value="sleep" class="flat" /> Overpriced
								</div>	
								<div class="checkbox">
									<input type="checkbox" name="hobbies[]" id="hobby4" value="sleep" class="flat" /> Impractical
								</div>	
								<div class="checkbox">
									<input type="checkbox" name="hobbies[]" id="hobby4" value="sleep" class="flat" /> Ineffective
								</div>	
							  </div>
							  <br/>
							  <label>4. How well do our products meet your needs?</label>
							  <div>
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderM" value="M" checked="" required /> Extremely well
								</div>
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> Very well
								</div>	
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> Somewhat well
								</div>	
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> Not so well
								</div>	
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> Not at all well
								</div>
							  </div>
							  <br/>
							  <label>5. How would you rate the quality of the product?</label>
							  <div>
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderM" value="M" checked="" required /> Very high quality
								</div>
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> High quality
								</div>	
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> Neither high nor low quality
								</div>	
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> Low quality
								</div>	
								<div class="radio">
									<input type="radio" class="flat" name="gender" id="genderF" value="F" /> Very low quality
								</div>
							  </div>
								<br/>
								  <label for="message">6. Do you have any other comments, questions, or concerns?</label>
								  <textarea id="message" required="required" class="form-control" name="message" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 caracters long comment.."
									data-parsley-validation-threshold="10"></textarea>
							</div>
                    	</div>
                    	<div id="step-3" class="text-center dark" style="padding-top:20px;">
                    		<h2>Thank you for your feedback!</h2>
							<p style="margin-bottom: 50px;">We appreciate your time and valuable feedback in helping us make Google Affiliate Network better!</p>
                    	</div>
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

    <!-- jQuery Smart Wizard -->
    <script>
      $(document).ready(function() {
        $('#wizard').smartWizard({
        	keyNavigation: false,
        	reverseButtonsOrder: true
        });

        $('.buttonNext').addClass('btn btn-success');
        $('.buttonPrevious').addClass('hide');
        $('.buttonFinish').addClass('btn btn-default');
   
      });
      
    </script>
    <!-- /jQuery Smart Wizard -->
  </body>
</html>