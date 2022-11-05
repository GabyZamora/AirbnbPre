

<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <?php echo $__env->make('admin.menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="col-sm-10">
            <?php echo Form::open(['route'=>['ruta.store'],'method'=>'POST','files'=>true]); ?>

            <div class="jumbotron">
                
                <div class="form-group">
                    <label for="nombre">INGRESE NOMBRE</label>
                    <?php echo Form::textarea('nombre',null,['class'=>'form-control']); ?>

                </div>
                
                <div class="form-group">
                    <label for="descripcion">INGRESE DESCRIPCIÓN</label>
                    <?php echo Form::text('descripcion',null,['class'=>'form-control','required']); ?>

                </div>

            </div>                <br>
            <?php echo Form::submit('GUARDAR',['class'=>'btn btn-success']); ?>

            <?php echo Form::close(); ?>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\AirbnbTesina\resources\views/admin/ruta/create.blade.php ENDPATH**/ ?>