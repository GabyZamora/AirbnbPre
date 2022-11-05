

<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <?php echo $__env->make('admin.menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="col-sm-10">
            <?php echo Form::open(['route'=>['lugar.store'],'method'=>'POST','files'=>true]); ?>

            <div class="jumbotron">
                
                <div class="form-group">
                    <label for="nombre">INGRESE NOMBRE</label>
                    <?php echo Form::text('nombre',null,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="descripcion">INGRESE DESCRIPCIÓN</label>
                    <?php echo Form::textarea('descripcion',null,['class'=>'form-control','required']); ?>

                </div>

                <div class="form-group">
                    <label for="latitud">INGRESE LATITUD </label>
                    <?php echo Form::text('latitud',null,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="longitud">INGRESE LONGITUD</label>
                    <?php echo Form::text('longitud',null,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="ruta_id">ZONAS </label>
                    <?php echo Form::select('ruta_id', $rutas, null,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="categoria_id">CATEGORIA </label>
                    <?php echo Form::select('categoria_id', $categorias, null,['class'=>'form-control']); ?>

                </div>
                
                <div class="form-group">
                    <?php echo Form::checkbox('estado',null,null); ?>    
                    <label for="estado">ESTADO </label>
                </div>

                <div class="form-group">
                    <label for="urlfoto">IMAGEN 900px X 400px</label> <br>
                    <img src="/img/lugar/foto.jpg">
                    <?php echo Form::file('urlfoto'); ?>

                </div>
            </div>                <br>
            <a href="javascript: history.go(-1)" class="btn btn-danger">CANCELAR</a>
            <?php echo Form::submit('GUARDAR',['class'=>'btn btn-success']); ?>

            <?php echo Form::close(); ?>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\AirbnbTesina\resources\views/admin/lugar/create.blade.php ENDPATH**/ ?>