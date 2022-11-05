

<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <?php echo $__env->make('admin.menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="col-sm-10">
            <?php echo Form::open(['route'=>['cliente.update',$cliente],'method'=>'PUT','files'=>true]); ?>

            <div class="jumbotron">
                <div class="form-group">
                    <label for="nombre">INGRESE NOMBRE</label>
                    <?php echo Form::text('nombre',$cliente->nombre,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="FechaNac">INGRESE FECHA DE NACIMIENTO</label>
                    <?php echo Form::date('FechaNac',$cliente->fechaNac,['class'=>'form-control','required']); ?>

                </div>

                <div class="form-group">
                    <label for="dui">INGRESE DUI</label>
                    <?php echo Form::text('dui',$cliente->dui,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="telefono">INGRESE TELEFONO</label>
                    <?php echo Form::text('telefono',$cliente->telefono,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="correo">INGRESE CORREO</label>
                    <?php echo Form::text('correo',$cliente->correo,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="direccion">INGRESE DIRECCIÓN</label>
                    <?php echo Form::text('direccion',$cliente->direccion,['class'=>'form-control']); ?>

                </div>

            </div>                <br>
            <a href="javascript: history.go(-1)" class="btn btn-danger">CANCELAR</a>
            <?php echo Form::submit('GUARDAR',['class'=>'btn btn-success']); ?>

            <?php echo Form::close(); ?>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\AirbnbTesina\resources\views/admin/cliente/edit.blade.php ENDPATH**/ ?>