


<?php $__env->startSection('content'); ?>
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Detalles </span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-warning" href="<?php echo e(route('catalogo.index')); ?>">Catalogo</a>
                        </div>
                    </div>

                    <div class="card-body">
                        <div class="form-group">
                            <img src="/img/lugar/<?php echo e($lugares->urlfoto); ?>"/>
                        </div>
                        <div class="form-group">
                            <strong>Nombre:</strong>
                            <?php echo e($lugares->nombre); ?>

                        </div>
                        <div class="form-group">
                            <strong>Descripcion:</strong>
                            <?php echo e($lugares->descripcion); ?>

                        </div>
                    </div>
                </div>
                <div>
                    <a href="<?php echo e(route('clientes.create')); ?>" class="btn btn-success">RESERVAR</a>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('../layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\AirbnbTesina\resources\views/host/lugar/show.blade.php ENDPATH**/ ?>