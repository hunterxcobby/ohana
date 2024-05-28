<?php require_once("header.php"); ?>
<div class="main-content">
	<div class="main-content-inner">
		<div class="breadcrumbs ace-save-state" id="breadcrumbs">
			<ul class="breadcrumb">
				<li>
					<i class="ace-icon fa fa-home home-icon"></i>
					<a href="#"><?php echo lang('Reports'); ?> </a>
				</li>
				<li class="active"><?php echo lang('Monthwise Reports'); ?> </li>
			</ul><!-- /.breadcrumb -->

			<a href="<?php echo $helppath;?>" style="float:right;" title="<?php echo lang('Help'); ?>" target="_blank"> <i class="ace-icon fa fa-question-circle bigger-160"></i> </a>
		</div>

		<div class="page-content">
			
			<div class="page-header ">
				<h1 class="hidden-480" >
					<?php echo lang('Reports'); ?> 
					<small>
						<i class="ace-icon fa fa-angle-double-right"></i>
						<?php echo lang('Report Management'); ?>  
					</small>
				</h1>
			</div><!-- /.page-header -->

			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->
					<div class="row">
						<div class="col-sm-12">
							<div class="tabbable">
								

								<!-- Tab Contents Starts --> 
								
								
								<div class="tab-content">
									
									<div id="list" class="tab-pane fade in active">
									<!-- NEW TABLE --> 
									
										<div class="row">
											<div class="">
												<?php $attributes = array('class' => 'form-horizontal', 'id' => 'pricelist_form','enctype' => 'multipart/form-data');
												echo form_open('admin/orderreport/month_view/visible',$attributes); ?>
													
												<div class="form-group">
														<label class="col-sm-1 control-label no-padding-right" for="month"> <?php echo lang('Month'); ?> : </label>
														<div class="col-sm-2">
														<select class="chosen-select form-control" name="month" id="month" data-placeholder="Choose a Services..." required>
														<!--	<option value=""> <?php echo $mont; ?>  </option> -->
															<option value="1" <?php if($mont=='1') { echo "selected"; } ?> > <?php echo lang('January'); ?>  </option>
															<option value="2" <?php if($mont=='2') { echo "selected"; } ?>><?php echo lang('Feburary'); ?>  </option>
															<option value="3" <?php if($mont=='3') { echo "selected"; } ?>><?php echo lang('March'); ?>  </option>
															<option value="4" <?php if($mont=='4') { echo "selected"; } ?>><?php echo lang('April'); ?>  </option>
															<option value="5" <?php if($mont=='5') { echo "selected"; } ?>><?php echo lang('May'); ?>  </option>
															<option value="6" <?php if($mont=='6') { echo "selected"; } ?>><?php echo lang('June'); ?>  </option>
															<option value="7" <?php if($mont=='7') { echo "selected"; } ?>><?php echo lang('July'); ?>  </option>
															<option value="8" <?php if($mont=='8') { echo "selected"; } ?>><?php echo lang('August'); ?>  </option>
															<option value="9" <?php if($mont=='9') { echo "selected"; } ?>><?php echo lang('September'); ?>  </option>
															<option value="10" <?php if($mont=='10') { echo "selected"; } ?>><?php echo lang('October'); ?>  </option>
															<option value="11" <?php if($mont=='11') { echo "selected"; } ?>><?php echo lang('November'); ?>  </option>
															<option value="12" <?php if($mont=='12') { echo "selected"; } ?>><?php echo lang('December'); ?>  </option>
															
														</select>
														</div>
													<!-- </div>	 -->
														<div class="col-sm-2">
															<div class="input-group">
															<input class="btn btn-success" type="submit" value=" &nbsp;&nbsp; <?php echo lang('Submit'); ?> &nbsp;&nbsp;">
															</div>
															
														</div>
													</form>
												</div>
											</div> 
									
											<div> <hr style='color: 1px solid blue;'> </div>	
									
											
											
											<div class="row">
											<div class="col-xs-12">
												
												<div class="clearfix">
													<div class="pull-right tableTools-container"></div>
												</div>
												<div class="table-header" style="background:#A069C3!important;">
													<?php echo lang('Monthwise Report'); ?> 
												</div>

												
												<!-- div.dataTables_borderWrap -->
													<table id="dynamic-table" class="table table-striped table-bordered table-hover">
														<thead>
															<tr>
																<th class="center hidden-480">
																	<label class="pos-rel">
																		<input type="checkbox" class="ace" />
																		<span class="lbl"></span>
																	</label>
																</th>
																<th> <?php echo lang('Sr.No.'); ?></th>
																<th> <?php echo lang('Store Name'); ?>  </th>
																<th style="width:150px;"><?php echo lang('Customer Name'); ?>  </th>
																<th class="hidden-480">Invoice Date   </th>
																<th class="hidden-480"><?php echo lang('Pickup Date'); ?>  </th>
																<th class="hidden-480"><?php echo lang('Status'); ?>  </th>
																<th class="hidden-480"><?php echo lang('Payment'); ?>  </th>
																<th style="width:110px;"><?php echo lang('Qty/Kg'); ?>  </th>
																<th style="width:100px;"><?php echo lang('Amount'); ?>  </th>
														
															</tr>
														</thead>
														 <tfoot>
            <tr>
                <th></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th><th style="text-align:right"><?php echo lang('Total Amount'); ?>  :</th>
                <th style="text-align:right;"></th> 
            </tr>
        </tfoot>

														<tbody>
															<?php foreach ($invoiceorder->result() as $invoicerow): ?>
															<tr>
																<td class="center hidden-480">
																	<label class="pos-rel">
																		<input type="checkbox" class="ace" />
																		<span class="lbl"></span>
																	</label>
																</td>

																<td>
																	<?php echo $invoicerow->invoice_no; ?>
																</td>
																<td>
																	<?php 
																	$storeid=$invoicerow->laundry_store;
																	if($storeid!=0)
																	echo $this->db->get_where('stores' , array('id' =>$storeid))->row()->store_name; ?>
																</td>
																<?php $colr='green';
																if($invoicerow->order_status!='done') { $colr='red'; } 
																?>
																<td style='color:<?php echo $colr; ?>'>
																<?php 
																	foreach($userdata->result() as $userrow): 
						
																	if($userrow->id==$invoicerow->customer_id)
																	{
																		$Disp_Party_Name=$userrow->first_name." ".$userrow->last_name;
																	}
																	endforeach;	
																	
																echo $Disp_Party_Name ; 
																?> 
																</td>
																
																<td class="hidden-480"><?php echo date('d-m-Y',strtotime($invoicerow->order_date)); ?> </td>
																<td class="hidden-480"><?php echo date('d-m-Y',strtotime($invoicerow->pickup_date)); ?> </td>
																<td class="hidden-480" style='color:<?php echo $colr; ?>' ><?php echo ucfirst($invoicerow->order_status); ?> </td>
																<td class=""><?php echo $invoicerow->amt_paidby; ?> </td>
																<td class="center"><?php echo $invoicerow->total_qty; ?> </td>
																<td style="text-align:right;"><?php echo sprintf('%0.3f',$invoicerow->total_paid); ?> </td>
																
																
																
																</tr>
															<?php endforeach; ?>
														</tbody>
													</table>
											</div>
											</div>
											
										</div>
									</div>
								
							</div><!-- /.col -->
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
		<script src="<?php echo base_url();?>assets/js/ace.min.js"></script>
		
		<!-- Date Picker -->
		<script src="<?php echo base_url();?>assets/js/jquery.validate.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/bootstrap-datepicker.min.js"></script>
		
		

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
					  null, null, null, null, null, null, null, null,  
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
			
					"iDisplayLength": 500,
			
			
					select: {
						style: 'multi'
					},
					
					"footerCallback": function ( row, data, start, end, display ) {
            var api = this.api(), data;
 
            // Remove the formatting to get integer data for summation
            var intVal = function ( i ) {
                return typeof i === 'string' ?
                    i.replace(/[\<?php echo $sys_curr; ?>,]/g, '')*1 :
                    typeof i === 'number' ?
                        i : 0;
            };
 
            // Total over all pages
            total = api
                .column( 9 )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );
 
            // Total over this page
            pageTotal = api
                .column( 9, { page: 'current'} )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );
			
            // Update footer
            $( api.column( 9).footer() ).html(
               // '$'+pageTotal +' ( $'+ total +' total)'
                '<?php $sys_curr; ?> '+ parseFloat(total).toFixed(3)
            );
			
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
						"title" : "InvoiceList", 
						"text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "pdf",
						"footer": "true",
						"text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "print",
						"footer": "true",
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
				
							
			
			})
		</script>
		
	</body>
</html>