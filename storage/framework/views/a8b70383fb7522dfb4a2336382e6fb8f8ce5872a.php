

<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <?php echo $__env->make('admin.menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="col-sm-10">
            <?php echo Form::open(['route'=>['categoria.update',$categoria],'method'=>'PUT','files'=>true]); ?>

            <div class="jumbotron">
                <div class="form-group">
                    <label for="nombre">INGRESE NOMBRE</label>
                    <?php echo Form::textarea('nombre',$categoria->nombre,['class'=>'form-control']); ?>

                </div>

                <div class="form-group">
                    <label for="descripcion">INGRESE DESCRIPCIÓN</label>
                    <?php echo Form::textarea('descripcion',$categoria->descripcion,['class'=>'form-control','required']); ?>

                </div>

                <div class="form-group">
                    <label for="urlfoto">IMAGEN 900px X 400px</label> <br>
                    <img src="/img/categoria/<?php echo e($categoria->urlfoto); ?>">
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

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\AirbnbTesina\resources\views/admin/categoria/edit.blade.php ENDPATH**/ ?>