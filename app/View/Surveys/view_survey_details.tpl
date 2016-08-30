{include file="Layouts/Common/header.tpl"}

<div class="col-md-12 col-sm-12 col-xs-12">
	<!-- .breadcrumb --> 
		<ul class="breadcrumb">
			<li><a style="cursor: pointer;" href="/leads/my_leads"><i class="fa fa-edit"></i> Surveys</a></li> 
			<li><i class="fa fa-file-o"></i> Customer Satisfaction Survey</li> 
		</ul> 
		<!-- / .breadcrumb --> 
    <div class="x_panel">
    	<h2 class="title">
        	<a>1. How likely is it that you would recommend this company to a friend or colleague?</a>
        </h2>
        
        <div class="col-md-4 col-sm-6 col-xs-12">
        	<div class="x_panel">
            	<div class="x_content">
                	<canvas id="canvasDoughnut"></canvas>
                </div>
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
        	<div class="x_panel">
            	<div class="x_content">
                	<canvas id="barchart"></canvas>
                </div>
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

<script src="/js/Chart.min.js"></script>
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