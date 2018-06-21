	<div id="page-wrapper">
	    <div class="container-fluid">
	    <div class="row">
	    	<form method="POST">
	    		<div class="form-group">
	    		<select class="form-control" name="get_candidato">
	    			<option value="0" selected></option>
	    			<?php foreach ($this->entrevistas as $value) { ?>
	    			<option value="<?php echo $value['id']; ?>"><?php echo $value['nome'] ?></option>
	    			<?php } ?>
	    		</select>
	    		</div>
	    		<input type="submit" />
	    	</form>
	    </div>
	    <?php if(isset($this->candidato)) { 
	    	$linhaCorreta = array();
	    	foreach ($this->entrevistas as $value) {
	    		if($value['id'] == $this->candidato)
	    		{
	    			$linhaCorreta = $value;
	    			break;
	    		}
	    	}
	    	?>
		    <table class="table table-striped">
		        <tbody>
					<tr>
						<td>Name</td>
						<td><?php echo $linhaCorreta['nome'] ?></td>
					</tr>
		          <?php foreach ($this->colunas as $linha) { ?>
		            <tr>
						<td><?php echo $linha['campo'];?></td>
						<td><?php echo $linhaCorreta[$linha['campo']];?></td>
		            </tr>
		          <?php } ?>
		        </tbody>        
	   		</table>
	   	<?php }?>
		</div>
		        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->