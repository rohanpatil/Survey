<!-- page content -->
			</div>
    	</div>
    </div>
    
    <!-- Bootstrap -->
    <script src="/js/bootstrap/bootstrap.min.js"></script>
    <script src="/js/moment/moment.min.js"></script>
    <script src="/js/nprogress/nprogress.js"></script>
    <script src="/js/custom.min.js"></script>
    {literal}
    <script type="text/javascript">
    	{/literal}{if true eq preg_match("/Android|webOS|iPhone|iPod|iPad|BlackBerry|IEMobile|Opera Mini/", $smarty.server.HTTP_USER_AGENT)}{literal}
    		$('#menu_toggle').parent().removeClass('hide');
    	{/literal}{/if}{literal}
    </script>
    {/literal}
  </body>