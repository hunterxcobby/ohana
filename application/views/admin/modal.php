<script type="text/javascript">
	function showAjaxModal(url)
	{
		// SHOWING AJAX PRELOADER IMAGE
		jQuery('#modal_ajax .modal-body').html('<div style="text-align:center;margin-top:50px;"><img src="<?php echo base_url(); ?>/assets/preloader.gif" /></div>');
		
		// LOADING THE AJAX MODAL
		jQuery('#modal_ajax').modal('show', {backdrop: 'true'});
		
		// SHOW AJAX RESPONSE ON REQUEST SUCCESS
		$.ajax({
			url: url,
			success: function(response)
			{
				jQuery('#modal_ajax .modal-body').html(response);
			}
		});
	}
</script>
    
    <!-- (Ajax Modal)-->
    <div class="modal fade" id="modal_ajax">
        <div class="modal-dialog">
            <div class="modal-content">
                
                <div class="modal-header" style="background:#fbeed5;" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><?php echo lang('Edit Record'); ?></h4>
                </div>
                
                <div class="modal-body" style="height:450px; overflow:auto;">
                
                    
                    
                </div>
               <!-- 
                <div class="modal-footer" style="background:#fbeed5;">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
				-->
            </div>
        </div>
    </div>
    
    
    
   	
    <script type="text/javascript">
	function confirm_modal(delete_url)
	{	var anser=prompt("<?php echo lang('Del_Code'); ?>");
		if(CryptoJS.MD5(anser)!="04c74ad625352f7093356e441ef69610")
		// if(CryptoJS.MD5(anser)!="315f0b3a8e6ef735a2be1752e1bec647")
		{  alert("Wrong Code!!! Try Again"); 
		   return false;
		}
		else
		{ 
		  //return true;
		  jQuery('#modal-4').modal('show', {backdrop: 'static'});	
		  document.getElementById('delete_link').setAttribute('href' , delete_url);
		  return true;		   
		}
  		
	}
	</script>
    
    <!-- (Normal Modal)-->
    <div class="modal fade" id="modal-4">
        <div class="modal-dialog">
            <div class="modal-content" style="margin-top:100px;">
                
                <div class="modal-header" style="background:#eed3d7;">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" style="text-align:center;"> <?php echo lang('Delete_Info'); ?></h4>
                </div>
                
                
                <div class="modal-footer" style="margin:0px; border-top:0px; text-align:center;">
                    <a href="#" class="btn btn-danger" id="delete_link"><?php echo lang('Delete'); ?> </a>
                    <button type="button" class="btn btn-info" data-dismiss="modal"><?php echo lang('Cancel');?></button>
                </div>
            </div>
        </div>
    </div>
	
	 <script src="<?php echo base_url();?>assets/js/md5.js"></script>