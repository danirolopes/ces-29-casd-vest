	<div id="page-wrapper">
	    <div class="container-fluid">
		    <table class="table table-striped" style="display: block; overflow-x: auto; white-space: nowrap;">
		        <thead>
		          <tr>
		          <th>Nome</th>
		           <?php foreach ($this->tableHeader as $value) { ?>
		            <th><?php echo $value['campo'];?></th>
		          <?php } ?>
		          </tr>
		        </thead>
		        <tbody>

		          <?php foreach ($this->tableBody as $linha) { ?>
		            <tr>
						<td><?php echo $linha['nome'];?></td>
						<?php foreach ($linha as $index => $value) { 
							if(!is_numeric($index) || $index == "id" || $index == "id_user" || $index == "nome")
								continue;
							?>
							<td><?php echo $value;?></td>
						<?php } ?>
		            </tr>
		          <?php } ?>
		        </tbody>        
	   		</table>
		</div>
		        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->