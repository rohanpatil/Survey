{include file="Layouts/Common/header.tpl"}

<div class="col-md-12 col-sm-12 col-xs-12">
	<!-- .breadcrumb --> 
		<ul class="breadcrumb">
			<li><a style="cursor: pointer;" href="/leads/my_leads"><i class="fa fa-edit"></i> Surveys</a></li> 
			<li><i class="fa fa-file-o"></i> Customer Satisfaction Survey</li> 
		</ul> 
		<!-- / .breadcrumb --> 
		<h2>Customer Satisfaction Survey</h2>
		<p>
			Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
		</p>
		<div class="">
                <div class="x_panel">
                  <div class="x_content">
                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                      <ul id="myTab" class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-question-circle fa-lg"></i> Questions</a>
                        </li>
                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="share-tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-share-alt fa-lg"></i> Share</a>
                        </li>
                        <li role="presentation" class=""><a href="#tab_content4" role="tab" id="collaborators-tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-users fa-lg"></i> Collaborators</a>
                        </li>
                        <li role="presentation" class=""><a href="#tab_content3" role="tab" id="result-tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-pie-chart fa-lg"></i> Analyze Result</a>
                        </li>
                      </ul>
                      <div id="myTabContent" class="tab-content" style="margin-top: 20px;">
                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                          <div class="col-md-7 col-sm-7 col-xs-12">
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
                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="share-tab">
                        	<div class="col-md-6 col-sm-6 col-xs-12">
                          		<label>To get people to take your survey, just send them this link!</label>
                        		<input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12" value="https://survey-beta.herokuapp.com/survey">
                       	 	</div>
                        </div>
                         <div role="tabpanel" class="tab-pane fade" id="tab_content4" aria-labelledby="share-tab">
                        	<div class="col-md-6 col-sm-6 col-xs-12">
								  <div class="x_content">
									<table class="table table-striped">
									  <thead>
										<tr>
										  <th>Name</th>
										  <th>Email</th>
										  <th class="text-center">Invite Sent</th>
										  <th class="text-center">Responded</th>
										</tr>
									  </thead>
									  <tbody>
										<tr>
										  <td>Mark Otto</td>
										  <td>asd@mdo.com</td>
										  <td class="text-center text-success"><i class="fa fa-check fa-lg"></i></td>
										  <td class="text-center text-success"><i class="fa fa-check fa-lg"></i></td>
										</tr>
										<tr>
										  <td>Jacob Thornton</td>
										  <td>asd@mdo.com</td>
										  <td class="text-center text-success"><i class="fa fa-check fa-lg"></i></td>
										  <td class="text-center text-success"></td>
										</tr>
										<tr>
										  <td>Larry the Bird</td>
										  <td>asd@mdo.com</td>
										  <td class="text-center text-success"><i class="fa fa-check fa-lg"></i></td>
										  <td class="text-center text-success"></td>
										</tr>
									  </tbody>
									</table>

								  </div>
							  </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="result-tab">
                        	<br/>
                        	<div class="x_panel">
								<h2 class="title">
									<a>1. How likely is it that you would recommend this company to a friend or colleague?</a>
								</h2>
								
								<div class="col-md-4 col-sm-6 col-xs-12">
									<div class="x_content">
										<canvas id="canvasDoughnut"></canvas>
									</div>
								</div>
								 <div class="col-md-4 col-sm-6 col-xs-12">
									Total Responses: 40
								 </div>
							</div>
							
							<div class="x_panel">
								<h2 class="title">
									<a>2. Overall, how satisfied or dissatisfied are you with our company?</a>
								</h2>
								
								<div class="col-md-4 col-sm-6 col-xs-12">
									<div class="x_content">
										<canvas id="barchart"></canvas>
									</div>
								</div>
								 <div class="col-md-4 col-sm-6 col-xs-12">
									Total Responses: 40
								 </div>
							</div>
							
							<div class="x_panel" style="margin-bottom: 50px;">
								<h2 class="title">
									<a>3. Do you have any other comments, questions, or concerns?</a>
								</h2>
								<div class="col-md-4 col-sm-6 col-xs-12">
									Total Responses: 40<br/>
									<a id="toggleResponse" href="javascript:;">View Responses</a>
								 </div>
								 <div class="col-md-12 col-sm-12 col-xs-12">
									<div id="showResponse" style="display: none;">
										<div class="panel-body">
													<table class="table table-striped">
													  <thead>
														<tr>
														  <th>#</th>
														  <th>Response</th>
														  <th>Date Time</th>
														</tr>
													  </thead>
													  <tbody>
														<tr>
														  <th scope="row">1</th>
														  <td>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </td>
														  <td>2008/12/19</td>
														</tr>
														<tr>
														  <th scope="row">2</th>
														  <td>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</td>
														  <td>2008/12/19</td>
														</tr>
														<tr>
														  <th scope="row">3</th>
														  <td>Larry</td>
														  <td>2008/12/19</td>
														</tr>
													  </tbody>
													</table>
												  </div>
									</div>
								 </div>
							</div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                          <p>xxFood truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo
                            booth letterpress, commodo enim craft beer mlkshk </p>
                        </div>
                      </div>
                    </div>

                  </div>
              </div>

</div>

<script src="/js/Chart.min.js"></script>
<script src="/js/iCheck/icheck.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	      // Doughnut chart
	      Chart.defaults.global.legend = {
        	enabled: false
     	 };
	      
	      var ctx = document.getElementById("canvasDoughnut");
	      var data = {
	        labels: [
	          "Dark Grey",
	          "Purple Color",
	          "Gray Color",
	          "Green Color",
	          "Blue Color"
	        ],
	        datasets: [{
	          data: [120, 50, 140, 180, 100],
	          backgroundColor: [
	            "#455C73",
	            "#9B59B6",
	            "#BDC3C7",
	            "#26B99A",
	            "#3498DB"
	          ],
	          hoverBackgroundColor: [
	            "#34495E",
	            "#B370CF",
	            "#CFD4D8",
	            "#36CAAB",
	            "#49A9EA"
	          ]

	        }]
	      };

	      var canvasDoughnut = new Chart(ctx, {
	        type: 'doughnut',
	        tooltipFillColor: "rgba(51, 51, 51, 0.55)",
	        data: data
	      });

	      var barchart = document.getElementById("barchart");
	      var myBarChart = new Chart(barchart, {
	    	    type: 'horizontalBar',
	    	    data: data
	      });

	      $('#toggleResponse').on('click', function() {
			 $('#showResponse').toggle();
		  });
	});
</script>
{include file="Layouts/Common/footer.tpl"}