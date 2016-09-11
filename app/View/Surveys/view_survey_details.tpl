{include file="Layouts/Common/header.tpl"}

<div class="col-md-12 col-sm-12 col-xs-12">
	<!-- .breadcrumb --> 
		<ul class="breadcrumb">
			<li><a style="cursor: pointer;" href="/surveys"><i class="fa fa-edit"></i> Surveys</a></li> 
			<li><i class="fa fa-file-o"></i> {$survey->title__c}</li> 
		</ul> 
		<!-- / .breadcrumb --> 
		<div class="col-md-9 col-sm-9 col-xs-12">
			<h2>{$survey->title__c}</h2> 
			<p>
				{$survey->description__c} 
			</p>
		</div>
		<div class="col-md-3 col-sm-3 col-xs-12">
			<label class="alignright">
               	 <input type="checkbox" class="active-swich" {if $survey->isActive__c eq true} checked {/if} /> <span id="survey-status">{if $survey->isActive__c eq true}Open{else}Closed{/if}</span>
            </label>
		</div>
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
                          	{foreach from=$questions name="question" item="question"}
                          		<label for="fullname">{$smarty.foreach.question.iteration}. {$question.title__c}</label>
                          		
                          		{if $question.type__c eq 'text'}
							  		<input type="text" id="fullname" class="form-control" name="fullname" required />
							  	{elseif $question.type__c eq 'textarea'}
							  		 <textarea id="message" required="required" class="form-control" name="message" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 caracters long comment.."></textarea>
							  	{elseif $question.type__c eq 'radio'}
							  		{if false eq empty($question.options__c)}
							  			<div>
							  			{foreach from=$question.options__c|@json_decode item="option"}
							  				<div class="radio">
												<input type="radio" class="flat" name="gender" id="genderM" value="M" required /> {$option}
											</div>
							  			{/foreach}
							  			</div>
							  		{/if}
							  	{elseif $question.type__c eq 'checkbox'}	 
							  		{if false eq empty($question.options__c)}
							  			<div>
							  			{foreach from=$question.options__c|@json_decode item="option"}
							  				<div class="checkbox">
												<input type="checkbox" name="hobbies[]" id="hobby1" value="ski" data-parsley-mincheck="2" required class="flat" /> {$option}
											</div>
							  			{/foreach}
							  			</div>
							  		{/if}
								{/if}
								<br/>
                          	{/foreach}
							</div>		
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="share-tab">
                        	<div class="col-md-6 col-sm-6 col-xs-12">
                          		<label>To get people to take your survey, just send them this link!</label>
                        		<input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12" value="https://survey-beta.herokuapp.com/survey/{$survey->guid__c}">
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
										  <th>Phone</th>
										  <th class="text-center">Invite Sent</th>
										  <th class="text-center">Responded</th>
										</tr>
									  </thead>
									  <tbody>
									  	{if false eq empty($collaborators)}
									  		{foreach from=$collaborators item="collaborator"}
												<tr>
											  		<td>{$collaborator.name__c}</td>
											  		<td>{$collaborator.email__c}</td>
											  		<td>{$collaborator.phone__c}</td>
											  		<td class="text-center text-success"><i class="fa fa-check fa-lg"></i></td>
											  		<td class="text-center text-success">{if 1 eq isResponded__c}<i class="fa fa-check fa-lg"></i>{/if}</td>
												</tr>
											{/foreach}
										{else}
											<tr>
											  	<td colspan="5">No Records Found</td>
											</tr>
										{/if}
									  </tbody>
									</table>

								  </div>
							  </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="result-tab">
                        	<br/>
                        	<div class="x_panel">
								<h2 class="title">
									<a>1. What is your first reaction to the product?</a>
								</h2>
								
								<div class="col-md-4 col-sm-6 col-xs-12 padder-v" >
									<div class="x_content">
										<div id="canvasDoughnut" style="width: 100%; height:250px;font-size	: 11px;"></div>
									</div>
								</div>
								 <div class="col-md-2 col-sm-2 col-xs-12">
								</div>
								 <div class="col-md-6 col-sm-6 col-xs-12">
										Answered: 40 <br/><br/>
										<table class="table table-striped table-bordered">
													  <thead>
														<tr>
														  <th>Answer Choices </th>
														  <th>Responses</th>
														</tr>
													  </thead>
													  <tbody>
														<tr>
														  <td>Very positive</td>
														  <td>28%</td>
														</tr>
														<tr>
														  <td>Somewhat positive</td>
														  <td>57%</td>
														</tr>
														<tr>
														  <td>Neutral</td>
														  <td>6%</td>
														</tr>
														<tr>
														  <td>Somewhat Negative</td>
														  <td>6%</td>
														</tr>
														<tr>
														  <td>Very Negative</td>
														  <td>1%</td>
														</tr>
													  </tbody>
													</table>
									
								 </div>
							</div>
							
							<div class="x_panel">
								<h2 class="title">
									<a>2. Overall, how satisfied or dissatisfied are you with our company?</a>
								</h2>
								
								<div class="col-md-4 col-sm-6 col-xs-12 padder-v">
									<div class="x_content">
										<div id="barchart" style="width: 100%; height:230px;font-size	: 11px;"></div>
									</div>
								</div>
								<div class="col-md-2 col-sm-2 col-xs-12">
								</div>
								 <div class="col-md-6 col-sm-6 col-xs-12">
										Answered: 40 <br/><br/>
										<table class="table table-striped table-bordered">
													  <thead>
														<tr>
														  <th>Answer Choices </th>
														  <th>Responses</th>
														</tr>
													  </thead>
													  <tbody>
														<tr>
														  <td>Very positive</td>
														  <td>28%</td>
														</tr>
														<tr>
														  <td>Somewhat positive</td>
														  <td>57%</td>
														</tr>
														<tr>
														  <td>Neutral</td>
														  <td>6%</td>
														</tr>
														<tr>
														  <td>Somewhat Negative</td>
														  <td>6%</td>
														</tr>
														<tr>
														  <td>Very Negative</td>
														  <td>1%</td>
														</tr>
													  </tbody>
													</table>
									
								 </div>
							</div>
							
							<div class="x_panel" style="margin-bottom: 50px;">
								<h2 class="title">
									<a>3. Do you have any other comments, questions, or concerns?</a>
								</h2>
								<div class="col-md-4 col-sm-6 col-xs-12">
									Answered: 40<br/>
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

<script src="/js/amcharts/amcharts.js" type="text/javascript"></script>
<script src="/js/amcharts/serial.js" type="text/javascript"></script>
<script src="/js/amcharts/pie.js" type="text/javascript"></script>
<script src="/js/amcharts/themes/dark.js" type="text/javascript"></script>
<script src="/js/amcharts/themes/light.js" type="text/javascript"></script>
<script src="/js/amcharts/plugins/responsive/responsive.min.js" type="text/javascript"></script>
<script src="/js/iCheck/icheck.min.js"></script>
<script src="/js/switchery/switchery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

		var elem = document.querySelector('.active-swich');
		var init = new Switchery(elem,{ 
		    color: '#64bd63', 
		  	secondaryColor: '#a94442' 
		});

		elem.onchange = function() {
			if(elem.checked) {
				$('#survey-status').html('Open');
			} else {
				$('#survey-status').html('Closed');
			}
		};
		
		var chart = AmCharts.makeChart( "canvasDoughnut", {
			  "type": "pie",
			  "theme": "light",
			  "dataProvider": [ {
			    "title": "Very positive",
			    "value": 4852
			  	}, {
			    "title": "Somewhat positive",
			    "value": 9899
			  	}, {
				    "title": "Neutral",
				    "value": 1009
				}, {
					"title": "Somewhat negative",
					"value": 899
				}, {
					"title": "Very	 negative",
					"value": 500
				} ],
			  "titleField": "title",
			  "valueField": "value",
			  "labelRadius": 5,

			  "radius": "42%",
			  "innerRadius": "60%",
			  "labelText": "[[title]]",
			  "export": {
			    "enabled": true
			  }
			} );

		var chart = AmCharts.makeChart( "barchart", {
			  "type": "serial",
			  "theme": "light",
			  "rotate": true,
			  "dataProvider": [ {
				    "title": "Very positive",
				    "value": 452
				  	}, {
				    "title": "Somewhat positive",
				    "value": 999
				  	}, {
					    "title": "Neutral",
					    "value": 1009
					}, {
						"title": "Somewhat negative",
						"value": 899
					}, {
						"title": "Very	 negative",
						"value": 500
					}  ],
			  "valueAxes": [ {
			    "gridColor": "#FFFFFF",
			    "gridAlpha": 0.2,
			    "dashLength": 0
			  } ],
			  "gridAboveGraphs": true,
			  "startDuration": 1,
			  "graphs": [ {
			    "balloonText": "[[category]]: <b>[[value]]</b>",
			    "fillAlphas": 0.8,
			    "lineAlpha": 0.2,
			    "type": "column",
			    "valueField": "value"
			  } ],
			  "chartCursor": {
			    "categoryBalloonEnabled": false,
			    "cursorAlpha": 0,
			    "zoomable": false
			  },
			  "categoryField": "title",
			  "categoryAxis": {
			    "gridPosition": "start",
			    "gridAlpha": 0,
			    "tickPosition": "start",
			    "tickLength": 20
			  },
			  "export": {
			    "enabled": true
			  }

			} );
		

	      /*var barchart = document.getElementById("barchart");
	      var myBarChart = new Chart(barchart, {
	    	    type: 'horizontalBar',
	    	    data: data
	      });***********/

	      $('#toggleResponse').on('click', function() {
			 $('#showResponse').toggle();
		  });
	});
</script>
{include file="Layouts/Common/footer.tpl"}