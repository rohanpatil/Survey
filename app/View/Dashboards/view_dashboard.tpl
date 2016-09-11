{include file="Layouts/Common/header.tpl"}

			<div class="row top_tiles">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-file-text-o"></i></div>
                  <div class="count">{$total_surveys}</div>
                  <h3>Total Surveys</h3>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-check-square-o"></i></div>
                  <div class="count">{$completed_surveys}</div>
                  <h3>Completed Surveys</h3>
                </div>
              </div>
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-folder-open-o"></i></div>
                  <div class="count">{$open_surveys}</div>
                  <h3>Open Surveys</h3>
                </div>
              </div>
            </div>
            
         <div class="row">   
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Survey Responses</h2>                   
                    <div class="clearfix"></div>
                  </div>	
                  <div class="x_content">
                    <canvas id="lineChart"></canvas>
                  </div>
                </div>
              </div>
              
              <!-- Start to do list -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="x_panel">
                    <div class="x_title">
                      <h2>Recent Active Surveys</h2>                     
                      <div class="clearfix"></div>
                    </div>
                    <div class="x_content">

                      <div class="">
                        <ul class="to_do">
                        	{foreach from=$recent_surveys item="survey"}
                        		<a href="/surveys/view_survey/{$survey.id__c}">
                        			<li>
                            			{$survey.title__c}
                          			</li>
                          		</a>
                        	{/foreach}
                          
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- End to do list -->
              </div>
    <script src="/js/Chart.min.js"></script>          
    <script>
      Chart.defaults.global.legend = {
        enabled: false
      };

   // Line chart
      var ctx = document.getElementById("lineChart");
      var lineChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ["January", "February", "March", "April", "May", "June", "July"],
          datasets: [{
            label: "My First dataset",
            backgroundColor: "rgba(38, 185, 154, 0.31)",
            borderColor: "rgba(38, 185, 154, 0.7)",
            pointBorderColor: "rgba(38, 185, 154, 0.7)",
            pointBackgroundColor: "rgba(38, 185, 154, 0.7)",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "rgba(220,220,220,1)",
            pointBorderWidth: 1,
            data: [31, 74, 6, 39, 20, 85, 7]
          }, {
            label: "My Second dataset",
            backgroundColor: "rgba(3, 88, 106, 0.3)",
            borderColor: "rgba(3, 88, 106, 0.70)",
            pointBorderColor: "rgba(3, 88, 106, 0.70)",
            pointBackgroundColor: "rgba(3, 88, 106, 0.70)",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "rgba(151,187,205,1)",
            pointBorderWidth: 1,
            data: [82, 23, 66, 9, 99, 4, 2]
          }]
        },
      });
      
    </script>   
{include file="Layouts/Common/footer.tpl"}