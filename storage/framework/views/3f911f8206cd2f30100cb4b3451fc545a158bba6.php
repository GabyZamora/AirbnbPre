

<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <?php echo $__env->make('admin.menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="col-sm-10">
            <?php echo Form::open(['route'=>['post.update',$post],'method'=>'PUT','files'=>true]); ?>

            <div class="jumbotron">
                
                <div class="form-group">
                    <label for="title">INGRESE TITULO</label>
                    <?php echo Form::text('title',$post->title,['class'=>'form-control','maxlength'=>'67', 'required']); ?>

                </div>
                
                <div class="form-group">
                    <label for="description">INGRESE DESCRIPTION</label>
                    <?php echo Form::text('description',$post->description,['class'=>'form-control','maxlength'=>'155', 'required']); ?>

                </div>
                
                <div class="form-group">
                    <label for="descripcion">INGRESE DESCRIPCIÓN</label>
                    <?php echo Form::textarea('descripcion',$post->descripcion,['class'=>'form-control','required']); ?>

                </div>
                
                <div class="form-group">
                    <label for="nombre">INGRESE NOMBRE</label>
                    <?php echo Form::textarea('nombre',$post->nombre,['class'=>'form-control']); ?>

                </div>
                
                <div class="form-group">
                    <label for="orden">INGRESE ORDEN </label>
                    <?php echo Form::text('orden',$post->orden,['class'=>'form-control']); ?>

                </div>
                
                <div class="form-group">
                    <label for="urlvideo">INGRESE VIDEO </label>
                    <?php echo Form::text('urlvideo',$post->urlvideo,['class'=>'form-control']); ?>

                </div>
                
                <div class="form-group">
                    <label for="urlfoto">IMAGEN 900px X 400px</label> <br>
                    <img src="/img/post/<?php echo e($post->urlfoto); ?>">
                    <?php echo Form::file('urlfoto'); ?>

                </div>
            </div>                <br>
            <?php echo Form::submit('GUARDAR',['class'=>'btn btn-success']); ?>

            <?php echo Form::close(); ?>

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\AirbnbTesina\resources\views/admin/post/edit.blade.php ENDPATH**/ ?>