

<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-10">
            <?php echo Form::open(['route'=>['clientes.store'],'method'=>'POST','files'=>true]); ?>

            <div class="jumbotron">

                <div class="form-group">
                    <label for="nombre">INGRESE NOMBRE</label>
                    <?php echo Form::text('nombre',null,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="fechaNac">FECHA DE NACIMIENTO</label>
                    <?php echo Form::date('fechaNac',null,['class'=>'form-control','required']); ?>

                </div>

                <div class="form-group">
                    <label for="dui">DUI </label>
                    <?php echo Form::text('dui', null,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="telefono">TELEFONO </label>
                    <?php echo Form::text('telefono', null,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="correo">CORREO DE CONTACTO </label>
                    <?php echo Form::text('correo', null,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="direccion">DIRECCION</label>
                    <?php echo Form::text('direccion', null,['class'=>'form-control']); ?>

                </div>

            </div>                <br>
            <a href="javascript: history.go(-1)" class="btn btn-danger">CANCELAR</a>
            <?php echo Form::submit('GUARDAR',['class'=>'btn btn-success']); ?>

            <?php echo Form::close(); ?>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\AirbnbTesina\resources\views/host/clientes/create.blade.php ENDPATH**/ ?>