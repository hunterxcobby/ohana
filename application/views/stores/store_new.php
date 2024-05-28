<?php $this->load->view('admin/header'); ?>

<div class="main-content">
	<div class="main-content-inner">
		<div class="breadcrumbs ace-save-state" id="breadcrumbs">
			<ul class="breadcrumb">
				<li>
					<i class="ace-icon fa fa-home home-icon"></i>
					<a href="#"><?php echo lang('Settings'); ?> </a>
				</li>
				<li class="active"><?php echo lang('Restaurant Stores'); ?> </li>
			</ul><!-- /.breadcrumb -->

			<a href="#" style="float:right;" title="Help"> <i class="ace-icon fa fa-question-circle bigger-160"></i> </a>
		</div>

		<div class="page-content">
			
			<div class="page-header ">
				<h1 class="hidden-480" >
					<?php echo lang('Stores'); ?> 
					<small>
						<i class="ace-icon fa fa-angle-double-right"></i>
						<?php echo lang('Store Management'); ?>  
					</small>
				</h1>
				<a href="<?php echo base_url(); ?>index.php/stores/index" class="btn btn-purple btn-xs bigger-110 no-border" style="float:right;margin-top:-25px;"> <i class="ace-icon fa fa-list default"> </i>  <?php echo lang('Store List'); ?>   </a>
			</div><!-- /.page-header -->

			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->
					<div class="row">
						<div class="col-sm-12">
							<div class="tabbable">
								<ul class="nav nav-tabs" id="myTab">
									

									<li class="active">
										<a data-toggle="tab" href="#newentry">
											<i class="blue ace-icon fa fa-plus bigger-120"></i>
											<?php echo lang('New Store'); ?> 
											
										</a>
									</li>
									
								</ul>

								<!-- Tab Contents Starts --> 
								
								<div class="tab-content">
									
									<div id="list" class="tab-pane fade">
									<!-- NEW TABLE --> 
									
										<div class="row">
											<div class="col-xs-12">
												
												<div class="clearfix">
													<div class="pull-right tableTools-container"></div>
												</div> 
												<div class="table-header" style="background:#A069C3!important;">
													Brand List 
												</div>

												<!-- div.table-responsive -->

												<!-- div.dataTables_borderWrap -->
												<div>
													<table id="dynamic-table" class="table table-striped table-bordered table-hover">
														<thead>
															<tr>
																<th class="center">
																	<label class="pos-rel">
																		<input type="checkbox" class="ace" />
																		<span class="lbl"></span>
																	</label>
																</th>
																<th>ID</th>
																<th>Store Name </th>
																<th>Store Address </th>
																<th>Store City </th>
																<th>Store State </th>
																<th> Show/Hide </th>

																

																<th></th>
															</tr>
														</thead>

														<tbody>
															<?php $sr=$storedata->num_rows(); 
															foreach ($storedata->result() as $row): 
															$color=''; if($row->show_hide=="hide") $color='red';?>
															<tr style='color:<?php echo $color; ?>'>
																<td class="center">
																	<label class="pos-rel">
																		<input type="checkbox" class="ace" />
																		<span class="lbl"></span>
																	</label>
																</td>

																<td>
																	<?php echo $sr; ?>
																</td>
																<td><?php echo $row->store_name; ?> </td>
																<td><?php echo $row->store_add1; ?><?php echo $row->store_add2; ?>  </td>
																<td> <?php echo $row->store_city; ?> </td>
																<td> <?php echo $row->store_state; ?> </td>
																
																<td class=""><?php echo strtoupper($row->show_hide); ?> </td>
																
																<td>
																	<div class="hidden-sm hidden-xs action-buttons">
																		<!--
																		<a class="blue" href="#">
																			<i class="ace-icon fa fa-search-plus bigger-130"></i>
																		</a>  -->

																		<a class="green" href="<?php echo base_url();?>index.php/stores/store_crud/do_update/<?php echo $row->id;?>">
																			<i class="ace-icon fa fa-pencil bigger-130"></i>
																		</a>

																		<a class="red" href="#" onclick="confirm_modal('<?php echo base_url();?>index.php/stores/store_crud/delete/<?php echo $row->id;?>');">
																			<i class="ace-icon fa fa-trash-o bigger-130"></i>
																		</a>
																	</div>

																	<div class="hidden-md hidden-lg">
																		<div class="inline pos-rel">
																			<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																				<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																			</button>

																			<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																				<!--
																				<li>
																					<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																						<span class="blue">
																							<i class="ace-icon fa fa-search-plus bigger-120"></i>
																						</span>
																					</a>
																				</li> -->

																				<li>
																					<a href="<?php echo base_url();?>index.php/stores/store_crud/do_update/<?php echo $row->id;?>" class="tooltip-success" data-rel="tooltip" title="Edit">
																						<span class="green">
																							<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																						</span>
																					</a>
																				</li> 

																				<li>
																					<a href="#" onclick="confirm_modal('<?php echo base_url();?>index.php/stores/store_crud/delete/<?php echo $row->id;?>');" class="tooltip-error" data-rel="tooltip" title="Delete">
																						<span class="red">
																							<i class="ace-icon fa fa-trash-o bigger-120"></i>
																						</span>
																					</a>
																				</li>
																			</ul>
																		</div>
																	</div>
																</td>
															</tr>
															<?php $sr--; endforeach; ?>
														</tbody>
													</table>
												</div>
											</div>
										</div>

						
						
									</div>

									
									<div id="newentry" class="tab-pane fade in active">
									
									<div class="">
										<?php $attributes = array('class' => 'form-horizontal', 'id' => 'store_form','enctype' => 'multipart/form-data');
										echo form_open('stores/store_crud/create',$attributes); ?>
										<div class="table-header" style="background:#428BCA!important;">
													<?php echo lang('New'); ?> <?php echo lang('Store'); ?>   
												</div> <br/>
										<div class="form-group ">
											<label class="col-sm-2 control-label no-padding-right" for="brand_id"> <?php echo lang('Store ID'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" id="store_id" class="form-control" required readonly value="<?php echo $last_id+1; ?>" />
											</div>
											
											<label class="col-sm-2 control-label no-padding-right" for="create_date"> <?php echo lang('Create Date'); ?>  : </label>

											<div class="col-sm-4">
												<div class="input-group">
													<input class="form-control date-picker" name="create_date" id="create_date" type="text" data-date-format="dd-mm-yyyy" value="<?php echo date('d-m-Y'); ?>" />
													<span class="input-group-addon">
														<i class="fa fa-calendar bigger-110"></i>
													</span>
												</div>
											</div>
										</div>
										
								
										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="store_name"> <?php echo lang('Store'); ?> <?php echo lang('Name'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="store_name" class="form-control" required  />
											</div>
									
											<label class="col-sm-2 control-label no-padding-right" for="store_short"> <?php echo lang('Short_Name'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="short_name" class="form-control" required maxlength="15" placeholder="maximum 15 characters" />
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="store_add1"> <?php echo lang('Address 1'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="store_add1" class="form-control" required  />
											</div>
									
											<label class="col-sm-2 control-label no-padding-right" for="store_add2"> <?php echo lang('Address 2'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="store_add2" class="form-control"   />
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="store_city"> <?php echo lang('Store'); ?> <?php echo lang('City'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="store_city" class="form-control" required  />
											</div>
										
											<label class="col-sm-2 control-label no-padding-right" for="store_state"> <?php echo lang('Store'); ?> <?php echo lang('State'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="store_state" class="form-control" required  />
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="store_zip"> <?php echo lang('Zip Code'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="store_zip" class="form-control" required  />
											</div>
											
											<?php $country_name = $this->db->get_where('settings' , array('id' =>'1'))->row()->sys_currency;
											?>
											<label class="col-sm-2 control-label no-padding-right" for="country"> <?php echo lang('Country'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="country" id="country" class="form-control" value="<?php echo $country_name; ?>" readonly  />
											</div>
											
										</div>
										
										<div> <hr style='color: 1px solid blue;'> </div>
										
										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="store_phone"> <?php echo lang('Store'); ?> <?php echo lang('Phone'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="store_phone" class="form-control" required  />
											</div>
										
											<label class="col-sm-2 control-label no-padding-right" for="store_email"> Store Username  : </label>

											<div class="col-sm-4">
												<input type="text" name="store_email" class="form-control" required  />
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="store_tax_no"> <?php echo lang('Tax/Vat No'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="store_tax_no" class="form-control" required  />
											</div>
										
											<label class="col-sm-2 control-label no-padding-right" for="show_hide">  <?php echo lang('Show/Hide'); ?>  : </label>

											<div class="col-sm-4">
												<select class="form-control" name="show_hide" id="show_hide" required>
													<option value="show" selected><?php echo lang('Show'); ?>  </option>
													<option value="hide"><?php echo lang('Hide'); ?> </option>
													
												</select>
											</div>
										</div>
										

										<div class="form-group">
											<label class="col-sm-2 control-label no-padding-right" for="store_password"> <?php echo lang('Store Password'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="store_password" class="form-control" required  />
											</div>
											
											<label class="col-sm-2 control-label no-padding-right" for="remarks"> <?php echo lang('Description'); ?>  : </label>

											<div class="col-sm-4">
												<input type="text" name="remarks" class="form-control" />
											</div>
										</div>


										<div class="clearfix form-actions">
											<div class="col-md-offset-3 col-md-9">
												<input class="btn btn-success" type="submit" value=" &nbsp;&nbsp;&nbsp; <?php echo lang('Save'); ?> &nbsp;&nbsp;&nbsp;">
													
													&nbsp; &nbsp; &nbsp;														
													&nbsp; &nbsp; &nbsp;
												<input class="btn" type="reset" value="&nbsp;&nbsp; <?php echo lang('Reset'); ?> &nbsp;&nbsp; ">
													
												
											</div>
										</div>
										
										</form>
									</div>
																					
								</div>
							</div>	
								<!-- Tab Contents Ends --> 
								
							
						</div><!-- /.col -->

						
						
						<div class="vspace-12-sm"></div>
						
					</div><!-- /.row -->

					

				</div><!-- /.row -->

				
					
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div><!-- /.page-content -->
	</div>
</div><!-- /.main-content -->
			

	
		
						
<?php $this->load->view('admin/modal'); ?>
<?php $this->load->view('admin/footer'); ?>


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
		

		<!-- ace scripts -->
		<script src="<?php echo base_url();?>assets/js/ace-elements.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/bootstrap-datepicker.min.js"></script>
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
					   null, null, null, null, null, null,
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
						"title" : "ClothType", 
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
				
				$('.date-picker').datepicker({
					autoclose: true,
					todayHighlight: true
				})
				//show datepicker when clicking on the icon
				.next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
				
				
				
				
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
			
			
			})
		</script>
		
	</body>
</html>