

<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <?php echo $__env->make('admin.menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="col-sm-10">
            <?php echo Form::open(['route'=>['user.update',$user],'method'=>'PUT','files'=>true]); ?>

            <div class="jumbotron">

                <div class="form-group">
                    <label for="name"><?php echo e($user->name); ?></label>
                </div>

                <div class="form-group">
                    <label for="orden">INGRESE ORDEN </label>
                    <?php echo Form::text('orden',$user->orden,['class'=>'form-control']); ?>

                </div>
                
                <div class="form-group">          
                    <?php echo Form::checkbox('activo',null,$user->activo); ?>

                    <label for="activo">ACTIVO</label>
                </div>

                <div class="form-group">
                    <label for="urlfoto">IMAGEN</label> <br>
                    <img src="/img/user/<?php echo e($user->urlfoto); ?>">
                    <?php echo Form::file('urlfoto'); ?>

                </div>
            </div>                <br>
            <?php echo Form::submit('GUARDAR',['class'=>'btn btn-success']); ?>

            <?php echo Form::close(); ?>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\AirbnbTesina\resources\views/admin/user/edit.blade.php ENDPATH**/ ?>