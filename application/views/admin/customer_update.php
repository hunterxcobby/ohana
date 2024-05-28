<?php 
require_once("header.php"); 

?>
<div class="main-content">
	<div class="main-content-inner">
		<div class="breadcrumbs ace-save-state" id="breadcrumbs">
			<ul class="breadcrumb">
				<li>
					<i class="ace-icon fa fa-home home-icon"></i>
					<a href="#"><?php echo lang('Master'); ?></a>
				</li>
				<li class="active"><?php echo lang('Customers'); ?></li>
			</ul><!-- /.breadcrumb -->

			<a href="<?php echo $helppath;?>" style="float:right;" title="<?php echo lang('Help'); ?>" target="_blank"> <i class="ace-icon fa fa-question-circle bigger-160"></i> </a>
		</div>

		<div class="page-content">
			
			<div class="page-header ">
				<h1 class="hidden-480" >
					<?php echo lang('Master'); ?>
					<small>
						<i class="ace-icon fa fa-angle-double-right"></i>
						<?php echo lang('Customer Management'); ?>
					</small>
				</h1>
			</div><!-- /.page-header -->

			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->
					<div class="row">
						<div class="col-sm-12">
							<div class="tabbable">
								<ul class="nav nav-tabs" id="myTab">
									
									<li>
										<a data-toggle="tab" href="#editrec">
											<i class="green ace-icon fa fa-pencil-square-o bigger-120"></i>
											<?php echo lang('Edit Info'); ?>
											
										</a>
									</li>
								</ul>

								<!-- Tab Contents Starts --> 
								
								<div class="tab-content">
									
									<div id="editrec" class="tab-pane fade in active">
									
									<div class="">
										<?php foreach ($custmoer_edit as $row): ?>
										
										<form class="form-horizontal " id="user-form" method="post" action="<?php echo base_url();?>index.php/admin/customer_crud/modify/<?php echo $row->id; ?>">
										<div class="table-header " style="background:#FFB752!important;">
													<?php echo lang('Edit Record'); ?>
												</div> <br/>
																			
										
										
										<div class="form-group ">
											<label class="col-sm-2 control-label no-padding-right" for="user_id"> <?php echo lang('Customer ID'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" id="service_id" class="form-control" required readonly value="<?php echo $row->id;?>" />
											</div>
										
											<label class="col-sm-2 control-label no-padding-right" for="join_date"> <?php echo lang('Join Date'); ?>  : </label>

											<div class="col-sm-4">
																<div class="input-group">
																	<input class="form-control date-picker" name="join_date" id="join_date" type="text" data-date-format="dd-mm-yyyy" value="<?php echo date('d-m-Y',strtotime($row->join_date));?>" readonly />
																	<span class="input-group-addon">
																		<i class="fa fa-calendar bigger-110"></i>
																	</span>
																</div>
															</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="first_name"> <?php echo lang('First Name'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="first_name" id="first_name" class="form-control"  value="<?php echo $row->first_name;?>" autofocus required />
											</div>
										
											<label class="col-sm-2 control-label no-padding-right" for="last_name"> <?php echo lang('Last Name'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="last_name" id="last_name" class="form-control" value="<?php echo $row->last_name;?>"  />
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="email"> <?php echo lang('Email ID'); ?>  : </label>

											<div class="col-sm-4">
												<input type="email" name="email" id="email" class="form-control" value="<?php echo $row->email_id;?>" />
											</div>
										
											<label class="col-sm-2 control-label no-padding-right" for="phone"> <?php echo lang('Mobile'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="phone" id="phone" class="form-control" value="<?php echo $row->mobile;?>" required />
											</div>
										</div>
										
										<div> <hr style='color: 1px solid blue;'> </div>
										
										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="address1"> <?php echo lang('Address 1'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="address1" id="address1" class="form-control" value="<?php echo $row->address1;?>"  />
											</div>
										
											<label class="col-sm-2 control-label no-padding-right" for="address2"> <?php echo lang('Address 2'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="address2" id="address2" class="form-control" value="<?php echo $row->address2;?>"  />
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="city"> <?php echo lang('City'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="city" id="city" class="form-control"  value="<?php echo $row->city;?>"  />
											</div>
										
											<label class="col-sm-2 control-label no-padding-right" for="state"> <?php echo lang('State'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="state" id="state" class="form-control" value="<?php echo $row->state;?>"  />
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="zipcode"> <?php echo lang('Zip Code'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="zipcode" id="zipcode" class="form-control"  value="<?php echo $row->zipcode;?>" />
											</div>
											
											
											<?php $country_name = $this->db->get_where('settings' , array('id' =>'1'))->row()->sys_currency;
											?>
											<label class="col-sm-2 control-label no-padding-right" for="country"> <?php echo lang('Store Name'); ?> : </label>

											<div class="col-sm-4">
												<select class="form-control" name="laundry_store" id="laundry_store"  required>
												<option value="" selected> -- <?php echo lang('None'); ?> -- </option>
												<?php foreach ($store_list->result() as $storerow): ?>
												<option value='<?php echo $storerow->id; ?>' <?php if($storerow->id==$row->laundry_store) echo "selected"; ?>><?php echo $storerow->store_name; ?> </option>
												
												<?php endforeach; ?>
													
												</select>
											</div>
										</div>
										
										<?php $country_name = $this->db->get_where('settings' , array('id' =>'1'))->row()->sys_currency;
										?>										
										<input type="hidden" name="country" id="country" class="form-control" value="<?php echo $country_name; ?>" readonly  />
										
																				
										<div class="form-group">
																					
											<label class="col-sm-2 control-label no-padding-right" for="status"> <a href="<?php echo base_url();?>/index.php/admin/tax_charges" target="_blank"> <?php echo lang('Select Charges'); ?>  : </a>  </label>

											<div class="col-sm-4">
												<select class="form-control" name="cust_charges[]" id="cust_charges[]" multiple="multiple" title="Ctrl Click to Select a multiple">
												<option value=""> --- <?php echo lang('None'); ?> --- </option>
												<?php $custcharge=$row->cust_charges; $cust_charge=unserialize($custcharge);  ?>
												
												<?php foreach ($charge_list->result() as $chargerow): ?>
												
												
												<option 
																		
												<?php
												if(!empty($cust_charge)) 
												{	
												foreach ($cust_charge as $chargeId):
												 if($chargerow->charge_id==$chargeId)
													 echo "value='$chargerow->charge_id' selected";
												
												endforeach;
												}
												?> 
												value="<?php echo $chargerow->charge_id; ?>" > 
												
												<?php echo $chargerow->charge_name; 
												if($chargerow->charge_type=="percentage") { echo " (" . $chargerow->charge_amt ."% )"; } if($chargerow->charge_type=="amount") { echo " (" . sprintf("%0.2f", $chargerow->charge_amt) .")"; } 
												?> 
												
												
												</option>	
												
												<?php endforeach; ?>
													
												</select>
											   
											</div>
											
											<label class="col-sm-2 control-label no-padding-right" for="gmap"><?php echo lang('Google Map'); ?>  : </label>

											<div class="col-sm-4">
												<?php echo $mapcust['html']; ?>
												<input type="hidden" name="custmap" id="custmap" class="form-control"  value="<?php echo $row->cust_map_pos;?>" />
											</div>
											
										</div>	
										
										
										<div class="clearfix form-actions">
											<div class="col-md-offset-5 col-md-9">
												<input class="btn btn-success" type="submit" value=" &nbsp;&nbsp; <?php echo lang('Update'); ?>  &nbsp;&nbsp;">
													
													&nbsp; &nbsp; &nbsp;														
													&nbsp; &nbsp; &nbsp;
												<input class="btn" type="reset" value="&nbsp;&nbsp; <?php echo lang('Reset'); ?>  &nbsp;&nbsp; ">
													
												
											</div>
										</div>
										
										</form>
										
									</div>
									<?php endforeach; ?>
													
											
																					
								</div>
							</div>	
								<!-- Tab Contents Ends --> 
										
							
						</div><!-- /.col -->

						
						
						<div class="vspace-12-sm"></div>
						
					</div><!-- /.row -->

				

				</div><!-- /.row -->

				</div>
					
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div><!-- /.page-content -->
	</div>
</div><!-- /.main-content -->
			

	
		
						

<?php require_once("modal.php"); ?>
<?php require_once("footer.php"); ?>

		


<script src="<?php echo base_url();?>assets/js/jquery-2.1.4.min.js"></script>

	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<?php echo base_url();?>assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="<?php echo base_url();?>assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="<?php echo base_url();?>assets/js/jquery.dataTables.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/dataTables.buttons.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/buttons.flash.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/buttons.html5.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/buttons.print.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/buttons.colVis.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/buttons.pdf.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/buttons.pdf_font.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/dataTables.select.min.js"></script>
		
		
		<!--<script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script> -->
		

		<!-- Form Validation -->
		<script src="<?php echo base_url();?>assets/js/jquery.validate.min.js"></script>	
		<script src="<?php echo base_url();?>assets/js/bootstrap-datepicker.min.js"></script>
		<!-- ace scripts -->
		<script src="<?php echo base_url();?>assets/js/ace-elements.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				//initiate dataTables plugin
				var myTable = 
				$('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
				.DataTable( {
					bAutoWidth: false,
					"aoColumns": [
					  { "bSortable": false },
					  null, null, null, null, null,
					  { "bSortable": false }
					],
					"aaSorting": [],
					
					
					//"bProcessing": true,
			        //"bServerSide": true,
			        //"sAjaxSource": "http://127.0.0.1/table.php"	,
			
					//,
					//"sScrollY": "200px",
					//"bPaginate": false,
			
					//"sScrollX": "100%",
					//"sScrollXInner": "120%",
					//"bScrollCollapse": true,
					//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
					//you may want to wrap the table inside a "div.dataTables_borderWrap" element
			
					//"iDisplayLength": 50
			
			
					select: {
						style: 'multi'
					}
			    } );
			
				
				
				$.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';
				
				new $.fn.dataTable.Buttons( myTable, {
					buttons: [
					  {
						"extend": "colvis",
						"text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
						"className": "btn btn-white btn-primary btn-bold",
						columns: ':not(:first):not(:last)'
					  },
					  {
						"extend": "copy",
						"text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "csv",
						"title" : "Laundry", 
						"text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "pdf",
						"text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "print",
						"text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
						"className": "btn btn-white btn-primary btn-bold",
						autoPrint: false,
						message: ''
					  }		  
					]
				} );
				myTable.buttons().container().appendTo( $('.tableTools-container') );
				
				//style the message box
				var defaultCopyAction = myTable.button(1).action();
				myTable.button(1).action(function (e, dt, button, config) {
					defaultCopyAction(e, dt, button, config);
					$('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
				});
				
				
				var defaultColvisAction = myTable.button(0).action();
				myTable.button(0).action(function (e, dt, button, config) {
					
					defaultColvisAction(e, dt, button, config);
					
					
					if($('.dt-button-collection > .dropdown-menu').length == 0) {
						$('.dt-button-collection')
						.wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
						.find('a').attr('href', '#').wrap("<li />")
					}
					$('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
				});
			
				////
			
				setTimeout(function() {
					$($('.tableTools-container')).find('a.dt-button').each(function() {
						var div = $(this).find(' > div').first();
						if(div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
						else $(this).tooltip({container: 'body', title: $(this).text()});
					});
				}, 500);
				
				
				
				
				
				myTable.on( 'select', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
					}
				} );
				myTable.on( 'deselect', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
					}
				} );
			
			
			
			
				/////////////////////////////////
				//table checkboxes
				$('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);
				
				//select/deselect all rows according to table header checkbox
				$('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$('#dynamic-table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) myTable.row(row).select();
						else  myTable.row(row).deselect();
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
					var row = $(this).closest('tr').get(0);
					if(this.checked) myTable.row(row).deselect();
					else myTable.row(row).select();
				});
			
			
			
				$(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
					e.stopImmediatePropagation();
					e.stopPropagation();
					e.preventDefault();
				});
				
				
				
				//And for the first simple table, which doesn't have TableTools or dataTables
				//select/deselect all rows according to table header checkbox
				var active_class = 'active';
				$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$(this).closest('table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
						else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#simple-table').on('click', 'td input[type=checkbox]' , function(){
					var $row = $(this).closest('tr');
					if($row.is('.detail-row ')) return;
					if(this.checked) $row.addClass(active_class);
					else $row.removeClass(active_class);
				});
			
				
			
				/********************************/
				//add tooltip for small view action buttons in dropdown menu
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				
				//tooltip placement on right or left
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
				
				
				
				
				/***************/
				$('.show-details-btn').on('click', function(e) {
					e.preventDefault();
					$(this).closest('tr').next().toggleClass('open');
					$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
				});
				/***************/
				
				
				
				
				
				/**
				//add horizontal scrollbars to a simple table
				$('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
				  {
					horizontal: true,
					styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
					size: 2000,
					mouseWheelLock: true
				  }
				).css('padding-top', '12px');
				*/
				
				$('#user-form').validate({
					errorElement: 'div',
					errorClass: 'help-block',
					focusInvalid: false,
					ignore: "",
					rules: {
						
						first_name: {
							required: true
						},
						
						last_name: {
							required: true
						},
						
						phone: {
							required: true,
							phone: 'required'
						},
						
						address: {
							required: true
						},
						
						password: {
							required: true
						}
					},
			
					messages: {
						first_name: {
							required: "Please provide a first name.",
							first_name: "Please provide a first name."
						},
						phone: "Please enter phone or mobile.",
						
						address: "Please enter default address"
					},
			
			
					highlight: function (e) {
						$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
					},
			
					success: function (e) {
						$(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
						$(e).remove();
					},
			
					submitHandler: function (form) {
					},
					invalidHandler: function (form) {
					}
				});
				
				$('.date-picker').datepicker({
					autoclose: true,
					todayHighlight: true
				})
				//show datepicker when clicking on the icon
				.next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
				
				
			
			})
		</script>
		
	
	<script type="text/javascript">
		function updateDatabase(newLat, newLng)
		{	alert("hi");
			// make an ajax request to a PHP file
			// on our site that will update the database
			// pass in our lat/lng as parameters
			$.post(
				"/admin/customer_crud/googlemapdb", 
				{ 'newLat': newLat, 'newLng': newLng, 'var1': 'value1' }
			)
			.done(function(data) {
				alert("Database updated");
			});
		}
	</script>
	<?php echo $mapcust['js']; ?>	
	
	
	</body>
</html>