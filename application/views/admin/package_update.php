<?php foreach ($packages_edit as $row): ?>

		<div class="">
			<?php $attributes = array('class' => 'form-horizontal', 'id' => 'cloth_form','enctype' => 'multipart/form-data');
			echo form_open('admin/pkg_crud/modify/'.$row->pkg_id.'',$attributes); ?>
			
			<div class="form-group ">
				<label class="col-sm-3 control-label no-padding-right" for="cloth_id"> Package ID : </label>

				<div class="col-sm-9">
					<input type="text" id="pkg_id" class="form-control" required readonly value="<?php echo $row->pkg_id ;?>" />
				</div>
			</div>
			
			<div class="space-4"></div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="category"> Category : </label>

				<div class="col-sm-9">
					<select class="form-control" name="category" id="category" required >
						<option value=""> --Select-- </option>
						<option value="breakfast" <?php if($row->category=='breakfast') echo "selected";?> >Breakfast</option>
						<option value="lunch" <?php if($row->category=='lunch') echo "selected";?>>Lunch</option>
						<option value="dinner" <?php if($row->category=='dinner') echo "selected";?>>Dinner</option>
						<option value="dessert" <?php if($row->category=='dessert') echo "selected";?> >Dessert</option>
						<option value="dessert" <?php if($row->category=='dessert') echo "selected";?> >Other</option>
					</select>
				</div>
				
			</div>
										
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="cloth_name"> Package Name : </label>

				<div class="col-sm-9">
					<input type="text" name="pkg_name" value="<?php echo $row->pkg_name; ?>" class="form-control"  required  />
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="cloth_name"> Usage Limit : </label>

				<div class="col-sm-9">
					<input type="number" name="usage_limit" value="<?php echo $row->usage_limit; ?>" class="form-control"  required  />
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="cloth_name"> Package Unit : </label>

				<div class="col-sm-9">
					<select class="form-control" name="pkg_unit" id="pkg_unit" required >
						<option value="Quantity" <?php if($row->pkg_unit=='Quantity') echo "selected";?> >Quantity </option>
						<option value="Kg" <?php if($row->pkg_unit=='Kg') echo "selected";?> >Kilo-Gram </option>
						<option value="Costumes" <?php if($row->pkg_unit=='Costumes') echo "selected";?>>Costumes</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="cloth_name"> Pickup : </label>

				<div class="col-sm-9">
					<input type="text" name="pickup" class="form-control" value="Alternative / Weekly"  required  />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="duration"> Duration : </label>

				<div class="col-sm-9">
					<select class="form-control" name="duration" id="duration" required >
						<option value=""> --Select-- </option>
						<option value="1" <?php if($row->duration=='1') echo "selected";?>>One Month </option>
						<option value="3" <?php if($row->duration=='3') echo "selected";?>>Three Months</option>
						<option value="6" <?php if($row->duration=='6') echo "selected";?>>Six Months</option>
						<option value="12"<?php if($row->duration=='12') echo "selected";?>>Twelve Months</option>
					</select>
				</div>
			</div>
				
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="cloth_name"> Amount : </label>

				<div class="col-sm-9">
					<input type="text" name="amount" value="<?php echo $row->amount; ?>" class="form-control"  required  />
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right" for="cloth_code"> Description : </label>

				<div class="col-sm-9">
					<input type="text" name="description" value="<?php echo $row->description; ?>" class="form-control" />
				</div>
			</div>
										

			<div class="clearfix form-actions">
				<div class="col-md-offset-3 col-md-9">
					<input class="btn btn-success" type="submit" value=" &nbsp;&nbsp; Update &nbsp;&nbsp;">
						
						&nbsp; &nbsp; &nbsp;														
						&nbsp; &nbsp; &nbsp;
					<input class="btn" type="reset" value="&nbsp;&nbsp; Reset &nbsp;&nbsp; ">
						
					
				</div>
			</div>
			
			</form>
			
		</div>
		
		<?php endforeach; ?>