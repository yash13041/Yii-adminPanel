<!-- page header views/categories/index  -->
<div class="page-header page-header-default">
    <div class="page-header-content">
        <div class="page-title">
            <h4>
                <span class="text-semibold"><?= ('Categories'); ?></span>
            </h4>
        </div>
    </div>
    <div class="breadcrumb-line">
        <ul class="breadcrumb">
            <li>
                <a href="<?= ('dashboard'); ?>"><i class="icon-home2 position-left"></i><?= ('dashboard'); ?></a>
            </li>
            <li class="active"><?= ('categories'); ?></li>
        </ul>
    </div>
</div>
<!-- /page header  -->
<!-- content arae -->
<div class="content">
    <div class="panel panel-flat">

        <div class="panel-heading">

            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#add_category_modal"><?= ('Add New'); ?><i class="icon-plus-circle2 position-right"></i></button>

            <a href="javascript:delete_selected();" class="btn btn-danger" id="delete_selected"><?= ('Delete Selected'); ?><i class="icon-trash position-right"></i></a>

        </div>

        <div class="panel-body table-responsive">
            <table id="categpries_table" class="table table-bordered table-striped">
                <thead>
                    <tr>

                        <th width="2%">
                            <input type="checkbox" name="select_all" id="select_all" class="styled" onclick="select_all(this)">
                        </th>
                        <th width="82%"><?= ('name'); ?></th>
                        <th width="8%" class="text-center"><?= ('status'); ?></th>

                        <th width="8%" class="text-center"><?= ('actions'); ?></th>

                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($categories as $category) : ?>
                        <tr>
                            <td>
                                <input type="checkbox" class="checkbox styled" name="delete" id="<?= $category->id; ?>">
                            </td>
                            <td><?= ucfirst($category->name); ?></td>
                            <?php
                            $readonly_status = '';
                            $readonly_status = "readonly";
                            ?>
                            <td class="text-center switchery-sm">
                                <input type="checkbox" onchange="change_status(this)" class="switchery" id="<?= $category->id; ?>" <?php if ($category->is_active == 1) {
                                                                                                                                        echo "checked";
                                                                                                                                    } ?> <?= $readonly_status; ?>>
                            </td>
                            <td class="text-center">
                                <a data-popup="tooltip" data-placement="top" title="<?= ('Edit'); ?>" href="<?= ('categories/edit/') . $category->id; ?>" id="<?= $category->id; ?>" class="text-info">
                                    <i class="icon-pencil7"></i>
                                </a>

                                <a data-popup="tooltip" data-placement="top" title="<?= ('Delete'); ?>" href="javascriptdelete_record(<?= $category->id; ?>);" class="text-danger delete" id="<?= $category->id; ?>">
                                    <i class="icon-trash"></i>
                                </a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- /content area -->

<div id="add_category_modal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h5 class="modal-title"><?= ('Add Category') ?></h5>
            </div>

            <form action="<?= Yii::getAlias('@web') . "/" . ('categories/add') ?>" id="categoryform add-category-form" method="POST">
                <input type="hidden" name="<?= Yii::$app->request->csrfParam; ?>" value="<?= Yii::$app->request->csrfToken; ?>" />
                <div class="modal-body">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-12">
                                <small class="req text-danger">*</small>
                                <label><?= ('Name') ?></label>
                                <input type="text" class="form-control" placeholder="<?= ('Category Name') ?>" id="name" name="name">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><?= ('Close') ?></button>
                    <button type="submit" class="btn btn-primary"><?= ('Save'); ?></button>
                </div>
            </form>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(function() {

        $('#categories_table').DataTable({
            'columnDefs': [{
                'targets': [0, 2, 3],
                /* column index */
                'orderable': false,
                /* disable sorting */
            }],

        });

        //add class to style style datatable select box
        $('div.dataTables_length select').addClass('datatable-select');
    });



    $("#categoryform").validate({
        rules: {
            name: {
                required: true,
            },
        },
        messages: {
            name: {
                required: "<?= ('please enter' . ('category name')); ?>",
            },
        }
    });



    var BASE_URL = "<?= Yii::getAlias('@web'); ?>";


    /**
     * Change status when clicked on the status switch
     *
     * @param {obj}  obj  The object
     */
    function change_status(obj) {
        var checked = 0;

        if (obj.checked) {
            checked = 1;
        }

        $.ajax({
            url: BASE_URL + 'admin/categories/update_status',
            type: 'POST',
            data: {
                category_id: obj.id,
                is_active: checked
            },
            success: function(msg) {
                if (msg == 'true') {
                    jGrowlAlert("<?= (' activated' . ('category')); ?>", 'success');
                } else {
                    jGrowlAlert("<?= (' deactivated' . ('category')); ?>", 'success');
                }
            }
        });
    }

    /**
     * Deletes a single record when clicked on delete icon
     *
     * @param {int}  id  The identifier
     */
    function delete_record(id) {
        swal({
                title: "<?= ('single deletion alert'); ?>",
                text: "<?= ('single recovery alert'); ?>",
                type: "warning",
                showCancelButton: true,
                cancelButtonText: "<?= ('no cancel it'); ?>",
                confirmButtonText: "<?= ('yes i am sure'); ?>",
            },
            function() {
                $.ajax({
                    url: BASE_URL + 'admin/categories/delete',
                    type: 'POST',
                    data: {
                        category_id: id
                    },
                    success: function(msg) {
                        if (msg == "true") {
                            swal({
                                title: "<?= (' deleted successfully' . ('category')); ?>",
                                type: "success",
                            });
                            $("#" + id).closest("tr").remove();
                        } else {
                            swal({
                                title: "<?= ('access_denied' . ('category')); ?>",
                                type: "error",
                            });
                        }
                    }
                });
            });
    }

    /**
     * Deletes all the selected records when clicked on DELETE SELECTED button
     */
    function delete_selected() {
        console.log("Delete selected function called");

        var category_ids = [];

        $('input[name="delete"]:checked').each(function() {
            var id = $(this).attr('id');
            category_ids.push(id);
            console.log('Selected ID:', id);
        });

        if (category_ids.length === 0) {
            jGrowlAlert("<?= ('select before delete alert') ?>", 'danger');
            return;
        }

        swal({
                title: "<?= ('multiple deletion alert'); ?>",
                text: "<?= ('multiple recovery alert'); ?>",
                type: "warning",
                showCancelButton: true,
                cancelButtonText: "<?= ('no cancel it'); ?>",
                confirmButtonText: "<?= ('yes i am sure'); ?>",
            },
            function() {
                $.ajax({
                    url: '<?= Yii::$app->urlManager->createUrl(['categories/delete-selected']) ?>',
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        ids: category_ids,
                        <?= Yii::$app->request->csrfParam; ?>: '<?= Yii::$app->request->csrfToken; ?>',
                    },
                    success: function(response) {
                        console.log(response);
                        if (response.success) {
                            swal({
                                title: "<?= ('deleted successfully'); ?>",
                                type: "success",
                            });

                            $(category_ids).each(function(index, element) {
                                $("#" + element).closest("tr").remove();
                            });
                        } else {
                            swal({
                                title: "<?= ('access_denied'); ?>",
                                type: "error",
                            });
                        }
                    }
                });
            });
    }
</script>