<?php require_once('header.php'); ?>

			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li class="active">Dashboard</li>
						</ul><!-- /.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>

					<div class="page-content">
						
						<div class="page-header">
							<h1>
								Dashboard
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Restaurant Management
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<!--
								<div class="alert alert-block alert-success" id="success-alert">
									<button type="button" class="close" data-dismiss="alert">
										<i class="ace-icon fa fa-times"></i>
									</button>

									<i class="ace-icon fa fa-check orange"></i>

									<?php  $EmpID=$this->session->userdata('emp_id');
											foreach($employeeinfo->result() as $emprow) :
											if($EmpID==$emprow->emp_id)
											{	$this->session->set_userdata('emp_name',$emprow->first_name);
												echo "<strong class=\"orange\"> Welcome ". strtoupper($emprow->first_name) . "</strong>,";
											}	
											endforeach; 	
									?>
									<strong class="red">
										&nbsp; <br/> Restaurant Management Application 
										<small>( v1.1 )</small>
									</strong>,
	<br/> <small> The Restaurant Management Application is a very simple and Online Services with mobile and computer friendly themes development. </small> 
								</div> -->

								
								<div class="row">
									
									<div class="col-sm-12" style="background:#dff0d8;">
										<div class="widget-box transparent">
											<div class="widget-header widget-header-flat">
												<h4 class="widget-title lighter">
													<i class="ace-icon fa fa-star green"></i>
													Pick Up Orders 
												</h4>

												<div class="widget-toolbar">
													<a href="#" data-action="collapse">
														<i class="ace-icon fa fa-chevron-up"></i>
													</a>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main no-padding">
													<table class="table table-bordered table-striped">
														<thead class="thin-border-bottom">
															<tr>
																
																<th class="">
																	<i class="ace-icon fa fa-caret-right blue"></i>Order Date
																</th>

																<th class="">
																	<i class="ace-icon fa fa-caret-right blue"></i>Customer Name
																</th>

																<th >
																	<i class="ace-icon fa fa-caret-right blue"></i>Cloth Qty
																</th>

																<th class="">
																	<i class="ace-icon fa fa-caret-right blue"></i>Status
																</th>
															</tr>
														</thead>

														<tbody>
															<?php 
																foreach($emporderpickup as $pickuprow) :
															?>	
																	
															<tr>

																<td class="" > <?php echo date('j-m-Y',strtotime($pickuprow->order_date)); ?> </td> 
																
																<?php 
																$custinfo=$this->db->get_where('users' , array('id' => $pickuprow->customer_id) )->result();
																?>
																<td> 
																<?php 
																foreach($custinfo as $custrow) :
																?>
																<a  class="tooltip-info" href="<?php echo base_url();?>index.php/employee/order_info/<?php echo $pickuprow->customer_id; ?>/<?php echo $pickuprow->order_date; ?>" data-rel="tooltip" title="Message">
																
																<?php 
																echo  $custrow->first_name . $custrow->last_name;
																endforeach;
																
																?>
																</td> 
																<td> 
																
																<?php echo $pickuprow->total_qty; ?> 
																
																</td> 
																
																<td> <?php if($pickuprow->order_status=="pending") { ?>	
																	<span class="label label-danger arrowed"> <?php echo $pickuprow->order_status; ?> </span>
																<?php } ?>
																
																<?php if($pickuprow->order_status=="delivered") { ?>	
																<span class="label label-success arrowed-in arrowed-in-right"> <?php echo $pickuprow->order_status;  ?> </span> <?php } ?>
																</td> 
															
															</tr>
															<?php
															endforeach; 	
															?>

															
															
														</tbody>
													</table>
												</div><!-- /.widget-main -->
											</div><!-- /.widget-body -->
										</div><!-- /.widget-box -->
									</div><!-- /.col -->
	
								</div><!-- /.row -->
								
								<!-- Delivery Orders List -->
								
								<div class="hr dotted"></div>
								
								
								<div class="row">
								
									<div class="col-sm-12" style="background:#f2dede;">
										<div class="widget-box transparent">
											<div class="widget-header widget-header-flat">
												<h4 class="widget-title lighter">
													<i class="ace-icon fa fa-star orange"></i>
													Delivery Orders
												</h4>

												<div class="widget-toolbar">
													<a href="#" data-action="collapse">
														<i class="ace-icon fa fa-chevron-up"></i>
													</a>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main no-padding">
													<table class="table table-bordered table-striped">
														<thead class="thin-border-bottom">
															<tr>
																
																<th class="">
																	<i class="ace-icon fa fa-caret-right blue"></i>Order Date
																</th>

																<th class="">
																	<i class="ace-icon fa fa-caret-right blue"></i>Customer Name
																</th>

																<th >
																	<i class="ace-icon fa fa-caret-right blue"></i>Cloth Qty
																</th>
																
																<th >
																	<i class="ace-icon fa fa-caret-right blue"></i>Amount
																</th>

																<th class="">
																	<i class="ace-icon fa fa-caret-right blue"></i>Status
																</th>
															</tr>
														</thead>

														<tbody>
															<?php 
																foreach($emporderdeliver as $deliveryrow) :
															?>	
																	
															<tr>
																

																																
																<td class="" > <?php echo date('j-m-Y',strtotime($deliveryrow->order_date)); ?> </td> 
																
																<?php 
																$custinfo=$this->db->get_where('users' , array('id' => $deliveryrow->customer_id) )->result();
																?>
																<td> 
																<?php 
																foreach($custinfo as $custrow) :
																?>
																<a  class="tooltip-info" href="<?php echo base_url();?>index.php/employee/order_info/<?php echo $deliveryrow->customer_id; ?>/<?php echo $deliveryrow->order_date; ?>/<?php echo $deliveryrow->invoice_no; ?>" data-rel="tooltip" title="Message" >
																
																<?php 
																echo  $custrow->first_name . $custrow->last_name;
																endforeach;
																
																?>
																</td> 
																<td> 
																<?php echo $deliveryrow->total_qty; ?> 
																</td> 
																<td> 
																<?php echo $sys_curr.$deliveryrow->total_paid; ?> 
																</td> 
																
																<td> <?php if($deliveryrow->order_status=="pending") { ?>	
																	<span class="label label-danger arrowed"> <?php echo $deliveryrow->order_status; ?> </span>
																<?php } ?>
																
																<?php if($deliveryrow->order_status=="delivered") { ?>	
																<span class="label label-success arrowed-in arrowed-in-right"> <?php echo $deliveryrow->order_status;  ?> </span> <?php } ?>
																</td> 
															
															</tr>
															<?php
															endforeach; 	
															?>

															
															
														</tbody>
													</table>
												</div><!-- /.widget-main -->
											</div><!-- /.widget-body -->
										</div><!-- /.widget-box -->
									</div><!-- /.col -->

									
									
									
								</div><!-- /.row -->
								

								
								
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

<?php require_once('footer.php'); ?>


<!-- Order Model -->
		
	<script type="text/javascript">
	
	function OrderModal(url)
	{
		// SHOWING AJAX PRELOADER IMAGE
		jQuery('#modal_order .modal-body').html('<div style="text-align:center;margin-top:50px;"><img src="<?php echo base_url(); ?>/assets/preloader.gif" /></div>');
		
		// LOADING THE AJAX MODAL
		jQuery('#modal_order').modal('show', {backdrop: 'true'});
		
		// SHOW AJAX RESPONSE ON REQUEST SUCCESS
		$.ajax({
			url: url,
			success: function(response)
			{
				jQuery('#modal_order .modal-body').html(response);
			}
		});
	}
	</script>
    
    <!-- (Ajax Modal)-->
    <div class="modal fade" id="modal_order">
        <div class="modal-dialog">
            <div class="modal-content">
                
                <div class="modal-header" style="background:#fbeed5;" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><?php echo "Order Information "; ?></h4>
                </div>
                
                <div class="modal-body" style="height:500px; overflow:auto;">
                
                    
                    
                </div>
               <!-- 
                <div class="modal-footer" style="background:#fbeed5;">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
				-->
            </div>
        </div>
    </div>
	
		<!------------------>
				

<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="<?php echo base_url();?>assets/js/jquery-2.1.4.min.js"></script>
	
		<!-- <![endif]-->

		<!--[if IE]>
<script src="<?php echo base_url();?>assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<?php echo base_url();?>assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="<?php echo base_url();?>assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="<?php echo base_url();?>assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="<?php echo base_url();?>assets/js/jquery-ui.custom.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/jquery.easypiechart.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/jquery.sparkline.index.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/jquery.flot.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/jquery.flot.pie.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->
		<script src="<?php echo base_url();?>assets/js/ace-elements.min.js"></script>
		<script src="<?php echo base_url();?>assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			$(document).ready (function(){
				$("#success-alert").fadeTo(5000, 2000).slideUp(5000, function(){
				$("#success-alert").slideUp(5000);
			});
			});
			
			jQuery(function($) {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: ace.vars['old_ie'] ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html',
									 {
										tagValuesAttribute:'data-values',
										type: 'bar',
										barColor: barColor ,
										chartRangeMin:$(this).data('min') || 0
									 });
				});
			
			
			  //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			  //but sometimes it brings up errors with normal resize event handlers
			  $.resize.throttleWindow = false;
			
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
			  var data = [
				{ label: "social networks",  data: 38.7, color: "#68BC31"},
				{ label: "search engines",  data: 24.5, color: "#2091CF"},
				{ label: "ad campaigns",  data: 8.2, color: "#AF4E96"},
				{ label: "direct traffic",  data: 18.6, color: "#DA5430"},
				{ label: "other",  data: 10, color: "#FEE074"}
			  ]
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
					}
				 })
			 }
			 drawPieChart(placeholder, data);
			
			 /**
			 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			 so that's not needed actually.
			 */
			 placeholder.data('chart', data);
			 placeholder.data('draw', drawPieChart);
			
			
			  //pie chart tooltip example
			  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
				/////////////////////////////////////
				$(document).one('ajaxloadstart.page', function(e) {
					$tooltip.remove();
				});
			
			
			
			
				var d1 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d1.push([i, Math.sin(i)]);
				}
			
				var d2 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d2.push([i, Math.cos(i)]);
				}
			
				var d3 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.2) {
					d3.push([i, Math.tan(i)]);
				}
				
			
				var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'220px'});
				$.plot("#sales-charts", [
					{ label: "Domains", data: d1 },
					{ label: "Hosting", data: d2 },
					{ label: "Services", data: d3 }
				], {
					hoverable: true,
					shadowSize: 0,
					series: {
						lines: { show: true },
						points: { show: true }
					},
					xaxis: {
						tickLength: 0
					},
					yaxis: {
						ticks: 10,
						min: -2,
						max: 2,
						tickDecimals: 3
					},
					grid: {
						backgroundColor: { colors: [ "#fff", "#fff" ] },
						borderWidth: 1,
						borderColor:'#555'
					}
				});
			
			
				$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
			
				$('.dialogs,.comments').ace_scroll({
					size: 300
			    });
				
				
				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if(ace.vars['touch'] && ace.vars['android']) {
				  $('#tasks').on('touchstart', function(e){
					var li = $(e.target).closest('#tasks li');
					if(li.length == 0)return;
					var label = li.find('label.inline').get(0);
					if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
				  });
				}
			
				$('#tasks').sortable({
					opacity:0.8,
					revert:true,
					forceHelperSize:true,
					placeholder: 'draggable-placeholder',
					forcePlaceholderSize:true,
					tolerance:'pointer',
					stop: function( event, ui ) {
						//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
						$(ui.item).css('z-index', 'auto');
					}
					}
				);
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
					if(this.checked) $(this).closest('li').addClass('selected');
					else $(this).closest('li').removeClass('selected');
				});
			
			
				//show the dropdowns on top or bottom depending on window height and menu position
				$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
					var offset = $(this).offset();
			
					var $w = $(window)
					if (offset.top > $w.scrollTop() + $w.innerHeight() - 100) 
						$(this).addClass('dropup');
					else $(this).removeClass('dropup');
				});
			
			})
		</script>
	</body>
</html>

			
			