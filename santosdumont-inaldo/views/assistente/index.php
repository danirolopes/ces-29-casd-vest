    <div id="page-wrapper">
        <div class="container-fluid">

<div class="col-sm-6">
    <h2>Adicionar Campos</h2>
    <br>
    <form method="POST" id="form-add-entrevista">
        <input type="hidden" name="form-add-entrevista-submitted">
        <div class="form-group">
            <input type="text" name="campo" class="form-control" />
        </div>
        <div class="form-group">
            <select name="tipo" class="form-control">
                <option value="float">Número</option>
                <option value="varchar(60)">Texto</option>
                <option value="varchar(1000)">Texto Grande</option>
            </select>
        </div>
        <button class="btn btn-lg- btn-primary" type="submit" name="submit">Adicionar</button>
    </form>
</div>
<div class="col-sm-6">
<h2>Deletar Campos</h2>
<br>
<form method="POST" id="form-delete-entrevista">
<input type="hidden" name="form-delete-entrevista-submitted">
    <table class="table table-striped">
        <thead>
          <tr>
            <th>Campo</th>
            <th>Tipo</th>
            <th>Deletar</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($this->tableInfo as $value) { ?>
            <tr>
            <td><?php echo $value['campo'];?></td>
            <td><?php echo $value['tipo'];?></td>
            <td>
                <button class="btn btn-danger btn-block" type="submit" name="submit" value="<?php echo $value['campo'];?>">Deletar</button>
            </td>
            </tr>
          <?php } ?>
        </tbody>        
    </table>
</form>
</div>

</div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->