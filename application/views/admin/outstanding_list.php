<?php 
require_once("header.php"); 

?>
<div class="main-content">
	<div class="main-content-inner">
		<div class="breadcrumbs ace-save-state" id="breadcrumbs">
			<ul class="breadcrumb">
				<li>
					<i class="ace-icon fa fa-home home-icon"></i>
					<a href="#"><?php echo lang('Job Order'); ?> </a>
				</li>
				<li class="active">Outstanding List  </li>
			</ul><!-- /.breadcrumb -->

			<a href="<?php echo $helppath;?>" style="float:right;" title="Help" target="_blank"> <i class="ace-icon fa fa-question-circle bigger-160"></i> </a>
		</div>

		<div class="page-content">
			
			<div class="page-header ">
				<h1 class="hidden-480" >
					<?php echo lang('Job Order'); ?> 
					<small>
						<i class="ace-icon fa fa-angle-double-right"></i>
						Old Customer Outstanding Data  
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
									<li class="active">
										<a data-toggle="tab" href="#list">
											<i class="purple ace-icon fa fa-list bigger-120"></i>
											Outstanding List  
										</a>
									</li>

									<!-- <li>
										<a data-toggle="tab" href="#newentry">
											<i class="green ace-icon fa fa-plus bigger-120"></i>
											<?php echo lang('New Entry'); ?>  
											
										</a>
									</li> -->
								</ul>

								<!-- Tab Contents Starts --> 
								
								<div class="tab-content">
									
									<div id="list" class="tab-pane fade in active">
									<!-- NEW TABLE --> 
									
										<div class="row">
											<div class="col-xs-12">
												
												<div class="clearfix">
													<div class="pull-right tableTools-container"></div>
												</div> 
												<div class="table-header" style="background:#A069C3!important;">
													Outstanding List 
												</div>

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
																<th class="hidden-480"> <?php echo lang('Sr.No.'); ?> </th>
																<!-- <th> Trans Date </th> -->
																<th> Customer Name </th>
																<th> Customer Address </th>
																<th style="text-align:center;"> Old Outstand Amount  </th>
																<th style="text-align:left;"> Remarks  </th>
																<th> </th>
															</tr>
														</thead>

														<tbody>
															<?php $sr=$usersData->num_rows(); 
															foreach ($usersData->result() as $row): ?>
															<tr>
																<td class="center">
																	<label class="pos-rel">
																		<input type="checkbox" class="ace" />
																		<span class="lbl"></span>
																	</label>
																</td>

																<td class="hidden-480">
																	<?php echo $sr; ?>
																</td>
																
															<!-- 	<td>
																	<?php echo date('d-m-Y'); ?>
																</td>
 -->
																<td>
																	<?php echo $row->first_name; ?> <?php echo $row->last_name; ?> 
																	<br/>
																	<small> <?php echo $row->mobile; ?>
																	</small>

																</td>

																<td>
																	<?php echo $row->address1; ?>
																	
																</td>

																<td align="right">
																	<?php echo sprintf('%0.3f',$row->outstand_amt); ?>
																	
																</td>
																																
																<!-- <td style="text-align:right;"> <a href="#"> <input type='text' name="out_amt" value="<?php echo $row->outstand_amt; ?>" style="border:none;background:none;" > </td>
																 -->
																<td style='width:300px;'>
																	<?php echo $row->outstand_remarks; ?>
																</td>


																<td>
																	<div class="hidden-sm hidden-xs action-buttons">
																		

																		<?php if ($MasterAdmin!="user")
																		{ 
																		?> 
																		<a class="green" href="#" onclick="showAjaxModal('<?php echo base_url();?>index.php/admin/outstand_crud/do_update/<?php echo $row->id;?>');">
																			<i class="ace-icon fa fa-pencil bigger-130"></i>
																		</a>

																		<a class="red" href="#">
																			<i class="ace-icon fa fa-trash-o bigger-130"></i>
																		</a>
																		<?php } ?>		
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

									
									<!-- <div id="newentry" class="fade">
									
									<div> 
										<form class="form-horizontal" id="user-form" method="post" action="<?php echo base_url();?>index.php/admin/outstand_crud/create">
										<div class="table-header" style="background:#69AA46!important;">
													<?php echo lang('New Record'); ?>  
												</div> <br/>
										
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="expense_id"> Trans ID : </label>

											<div class="col-sm-9">
												<input type="text" id="expense_id" name="expense_id" class="form-control" readonly value="" />
											</div>
										</div>
										
																	
										
										
																			
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="trans_date"> Trans Date  : </label>

											<div class="col-sm-9">
												<div class="input-group">
													<input class="form-control date-picker" name="trans_date" id="trans_date" type="text" data-date-format="dd-mm-yyyy" value="<?php echo date('d-m-Y'); ?>" />
													<span class="input-group-addon">
														<i class="fa fa-calendar bigger-110"></i>
													</span>
												</div>
											</div>
										</div>
										
										
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="cust_id"> Customer Name  : </label>

											<div class="col-sm-9">
												<select class="chosen-select form-control" name="cust_id" id="cust_id" data-placeholder="Choose a Customer...">
													<option value="">-- <?php echo lang('Select'); ?> --</option>
													<?php foreach ($usersData->result() as $custRow): ?>

													<?php 
														$mobile=$this->db->get_where('users',array('id'=>$row->customer_id))->row()->mobile; 
														$mobile=str_replace(' ', '', $mobile);
														// $mobile=(int) $mobile;
													?>

													<?php echo "<option value='$custRow->id'> {$custRow->first_name} [ {$mobile} ] / {$custRow->address1}  </option>"; ?>
													<?php endforeach; ?>
												</select>
											</div>
										</div>
										
										
										
										
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="outstand_amt"> Outstanding Amount  : </label>

											<div class="col-sm-9">
												<input type="text" name="outstand_amt" id="outstand_amt" class="form-control"  />
											</div>
										</div>

										
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="out_remark"> <?php echo lang('Remarks'); ?>  : </label>

											<div class="col-sm-9">
												<input type="text" name="out_remark" id="out_remark" class="form-control"  />
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
													
													
																					
								</div> -->

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
		
		
		<script src="<?php echo base_url();?>assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/chosen.jquery.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/spinbox.min.js"></script>
		
		<!-- Form Validation -->
		<script src="<?php echo base_url();?>assets/js/jquery.validate.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/bootstrap-datepicker.min.js"></script>
			
			
		<script src="<?php echo base_url();?>assets/js/jquery.knob.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/autosize.min.js"></script>
		
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
					
					// order: [[4, 'desc']],
					
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
						"title" : "ExpensesList", 
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
				
				if(!ace.vars['touch']) {
					$('.chosen-select').chosen({allow_single_deselect:true}); 
					//resize the chosen on window resize
			
					$(window)
					.off('resize.chosen')
					.on('resize.chosen', function() {
						$('.chosen-select').each(function() {
							 var $this = $(this);
							 $this.next().css({'width': $this.parent().width()});
						})
					}).trigger('resize.chosen');
					//resize chosen on sidebar collapse/expand
					$(document).on('settings.ace.chosen', function(e, event_name, event_val) {
						if(event_name != 'sidebar_collapsed') return;
						$('.chosen-select').each(function() {
							 var $this = $(this);
							 $this.next().css({'width': $this.parent().width()});
						})
					});
			
			
					
				}
				
				
				$('#user1-form').validate({
					errorElement: 'div',
					errorClass: 'help-block',
					focusInvalid: false,
					ignore: "",
					rules: {
						
						payee_name: {
							required: true
						},
						
						exp_type: {
							required: true
						},
						
						exp_amt: {
							required: true,
							price: 'required'
						}
											
					},
			
					messages: {
						payee_name: {
							required: "Please enter payee name .",
							exp_type: "Please select expese type."
						},
						exp_amt: "Please enter amount."
						
						
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


				$("#exp_amt_taxable").change(function(){
					var values = $(this).val();
					var expamt=$('#exp_amt').val();
					var taxable=0.000;
  					// alert(values);
  					if(values=='yes') {
  						taxamt=expamt*5/100;
  						taxable=parseFloat(taxamt)+parseFloat(expamt);
  						alert('Taxable Amount : '+ taxable);
  					}
  						
				});
				
				
				
				
			
			})
		</script>
		
	</body>
</html>