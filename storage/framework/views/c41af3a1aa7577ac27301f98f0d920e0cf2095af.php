

<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <?php echo $__env->make('admin.menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="col-sm-10">
            <?php echo Form::open(['route'=>['host.update',$host],'method'=>'PUT','files'=>true]); ?>

            <div class="jumbotron">

                <div class="form-group">
                    <label for="nombre">INGRESE NOMBRE</label>
                    <?php echo Form::textarea('nombre',$host->nombre,['class'=>'form-control']); ?>

                </div>
                <div class="form-group">
                    <label for="descripcion">INGRESE DESCRIPCIÓN</label>
                    <?php echo Form::textarea('descripcion',$host->descripcion,['class'=>'form-control','required']); ?>

                </div>

                <div class="form-group">
                    <label for="ruta_id">RUTA</label>
                    <?php echo Form::select('ruta_id',$rutas, $host->ruta_id,['class'=>'form-control']); ?>

                </div>
                
                <div class="form-group">          
                    <?php echo Form::checkbox('estado',null); ?>

                    <label for="estado">ESTADO</label>
                </div>

                <div class="form-group">
                    <label for="urlfoto">IMAGEN 900px X 400px</label> <br>
                    <img src="/img/host/<?php echo e($host->urlfoto); ?>">
                    <?php echo Form::file('urlfoto'); ?>

                </div>

                <div class="form-group">
                    <label for="urllogo">IMAGEN 200px X 200px</label> <br>
                    <img src="/img/host/<?php echo e($host->urllogo); ?>">
                    <?php echo Form::file('urllogo'); ?>

                </div>
            </div>                <br>
            <a href="javascript: history.go(-1)" class="btn btn-danger">CANCELAR</a>
            <?php echo Form::submit('GUARDAR',['class'=>'btn btn-success']); ?>

            <?php echo Form::close(); ?>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\AirbnbTesina\resources\views/admin/host/edit.blade.php ENDPATH**/ ?>