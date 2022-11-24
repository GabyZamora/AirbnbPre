

<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row">
        <?php echo $__env->make('admin.menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="col-sm-10">
            <form action="<?php echo e(route('lugar.index')); ?>" method="GET">
                <div class="btn-group">
                    <input type="text" name="busqueda" class="form-control">
                    <input type="submit" value="Buscar" class="btn btn-primary">
                </div>
            </form>
            <a href="<?php echo e(route('lugar.create')); ?>" class="btn btn-success">NUEVO LUGAR</a>
            <table class="table table-striped">
                <thead>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Acción</th>
                </thead>
                <tbody>
                    <?php $__empty_1 = true; $__currentLoopData = $lugares; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                    <tr>
                        <td><?php echo e($item->id); ?></td>
                        <td><?php echo e($item->nombre); ?></td>
                        <td>
                            <a href="<?php echo e(route('lugar.edit',$item->id)); ?>" class="btn btn-warning">Editar</a>
                            <?php echo Form::open(['method'=>'DELETE', 'route'=>['lugar.destroy',$item->id],'style'=>'display:inline']); ?>

                            <?php echo Form::submit('ELIMINAR',['class'=>'btn btn-danger','onclick'=>'return confirm("¿Seguro que desea eliminar?")']); ?>

                            <?php echo Form::close(); ?>

                        </td>
                    </tr>   
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                        
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\AirbnbTesina\resources\views/admin/lugar/index.blade.php ENDPATH**/ ?>