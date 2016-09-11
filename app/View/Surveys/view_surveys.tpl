{include file="Layouts/Common/header.tpl"}
		<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="page-title">
					<h2><i class="fa fa-edit"></i> My Surveys</h2>
                 </div> 
                <div class="x_panel">
                  <div class="x_content table-responsive" style="border: none;">
                    <table id="datatable-responsive" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr>
                          <th>Title</th>
                          <th style="width: 250px;">Description</th>
                          <th>Status</th>
                          <th>Created On</th>
                          <th>Questions</th>
                          <th>Responses</th>
                          <th class="no-sort">Analyze</th>
                        </tr>
                      </thead>
                      <tbody>
                      	{foreach from=$surveys item="survey"}
                        <tr>
                          <td data-id="{$survey.id__c}">{$survey.title__c}</td>
                          <td>{$survey.description__c|wordwrap:40:"<br />\n"}</td>
                          <td><span class="label {if $survey.isActive__c == true}label-success{else}label-danger{/if}">{if $survey.isActive__c == false}Inactive{else}Active{/if}</span></td>
                          <td>{$survey.createdon__c|date_formatter:'d/m/Y H:i'}</td>
                          <td>{$survey.questions_count__c}</td>
                          <td>61</td>
                          <td><i class="fa fa-pie-chart fa-lg"></i></td>
                        </tr>
                        {/foreach}
                      </tbody>
                    </table>

                  </div>
                </div>
              </div>



<script src="/js/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="/js/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="/js/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="/js/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script>
	$(document).ready(function(){
		$('#datatable-responsive').DataTable({
		    "order": [],
		    "columnDefs": [ {
		      "targets"  : 'no-sort',
		      "orderable": false,
		    }]
		});

		$('#datatable-responsive').on('click', 'tbody > tr > td', function() {
		    if( false == $(this).find("div").hasClass("no-redirect") ) {
    			var survey_id = $(this).parent().find("td").eq(0).data('id');
    			if(survey_id == null){
					return false;
				}else{
					window.location = '/surveys/view_survey/' + survey_id;
				}		
        	} 
	      			
        });
	});
</script>

{include file="Layouts/Common/footer.tpl"}