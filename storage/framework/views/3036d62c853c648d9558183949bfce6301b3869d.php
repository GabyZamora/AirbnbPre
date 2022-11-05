

<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <?php echo $__env->make('admin.menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="col-sm-10">
            <?php echo Form::open(['route'=>['foto.store'],'method'=>'POST','files'=>true]); ?>

            <div class="jumbotron">
                
                <div class="form-group">
                    <label for="nombre">INGRESE NOMBRE</label>
                    <?php echo Form::text('nombre',null,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="descripcion">INGRESE DESCRIPCION</label>
                    <?php echo Form::textarea('descripcion',null,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="orden">INGRESE ORDEN </label>
                    <?php echo Form::text('orden',null,['class'=>'form-control']); ?>

                </div>
                
                <div class="form-group">
                    <label for="lugar_id">LUGAR </label>
                    <?php echo Form::select('lugar_id', $lugares, null,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="urlfoto">IMAGEN</label> <br>
                    <img src="/img/foto/foto.jpg">
                    <?php echo Form::file('urlfoto'); ?>

                </div>
            </div>                <br>
            <?php echo Form::submit('GUARDAR',['class'=>'btn btn-success']); ?>

            <?php echo Form::close(); ?>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\AirbnbTesina\resources\views/admin/foto/create.blade.php ENDPATH**/ ?>