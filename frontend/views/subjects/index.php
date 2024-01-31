<!-- page header views/subjects/index  -->
<div class="page-header page-header-default">
    <div class="page-header-content">
        <div class="page-title">
            <h4>
                <span class="text-semibold"><?= ucfirst(Yii::t('app', 'Subjects')); ?></span>
            </h4>
        </div>
    </div>
    <div class="breadcrumb-line">
        <ul class="breadcrumb">
            <li>
                <a href="<?= ('dashboard'); ?>"><i class="icon-home2 position-left"></i><?= Yii::t('app', 'Dashboard'); ?></a>
            </li>
            <li class="active"><?= Yii::t('app', 'Subjects'); ?></li>
        </ul>
    </div>
</div>
<!-- /page header  -->
<!-- content arae -->
<div class="content">
    <div class="panel panel-flat">

        <div class="panel-heading">

            <a href="<?= Yii::getAlias('@web').('subjects/add') ?>" class="btn btn-primary"><?= Yii::t('app', 'Add New')?><i class="icon-plus-circle2 position-right"></i></a>

            <a href="javascript:delete_selected();" class="btn btn-danger" id="delete_selected"><?= Yii::t('app', 'Delete Selected'); ?><i class="icon-trash position-right"></i></a>

        </div>

        <div class="panel-body table-responsive">
            <table id="subjects_table" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th width="2%">
                            <input type="checkbox" name="select_all" id="select_all" class="styled" onclick="select_all(this)">
                        </th>
                        <th width="10%"><?= Yii::t('app', 'ID'); ?></th>
                        <th width="20%"><?= Yii::t('app', 'Name'); ?></th>
                        <th width="50%"><?= Yii::t('app', 'Description'); ?></th>
                        <th width="10%"><?= Yii::t('app', 'Created at'); ?></th>
                        <th width="8%" class="text-center"><?= Yii::t('app', 'Actions'); ?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($subjects as $subject) : ?>
                        <tr>
                            <td>
                                <input type="checkbox" class="checkbox styled" name="delete" id="<?= $subject->id; ?>">
                            </td>
                            <td><?= $subject->subject_id ?></td>
                            <td><?= ucfirst($subject->name); ?></td>
                            <td><?= ucfirst($subject->details); ?></td>
                            <td><?= ucfirst($subject->created); ?></td>
                            <td class="text-center">
                                <a data-popup="tooltip" data-placement="top" title="<?= Yii::t('app', 'Edit'); ?>" href="<?= \yii\helpers\Url::to(['admin/subjects/edit', 'id' => $subject->id]) ?>" id="<?= $subject->id; ?>" class="text-info">
                                    <i class="icon-pencil7"></i>
                                </a>

                                <a data-popup="tooltip" data-placement="top" title="<?= Yii::t('app', 'Delete'); ?>" href="javascript:void(0);" onclick="delete_record(<?= $subject->id; ?>);" class="text-danger delete"><i class="icon-trash"></i>
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

<script type="text/javascript">
    $(function() {
        $('#subjects_table').DataTable({
            'columnDefs': [{
                'targets': [0, 3, 4, 5],
                /* column index */
                'orderable': false,
                /* disable sorting */
            }],
        });
        //add class to style style datatable select box
        $('div.dataTables_length select').addClass('datatable-select');
    });

    var BASE_URL = "<?= Yii::getAlias('@web'); ?>";

    function delete_record(id) {
        console.log("function call");
        swal({
                title: "<?= Yii::t('app', 'single deletion alert'); ?>",
                text: "<?= Yii::t('app', 'single recovery alert'); ?>",
                type: "warning",
                showCancelButton: true,
                cancelButtonText: "<?= Yii::t('app', 'no cancel it'); ?>",
                confirmButtonText: "<?= Yii::t('app', 'yes i am sure'); ?>",
            },
            function() {
                $.ajax({
                    url: '<?= Yii::$app->urlManager->createUrl(['admin/subjects/delete']) ?>',
                    type: 'POST',
                    data: {
                        <?= Yii::$app->request->csrfParam; ?>: '<?= Yii::$app->request->csrfToken; ?>',
                        subject_id: id
                    },
                    success: function(data) {
                        console.log(data);
                        if (data.success) {
                            swal({
                                title: "<?= Yii::t('app', 'deleted successfully') ?>",
                                type: "success",
                            });
                            $("#" + id).closest("tr").remove();
                        } else {
                            swal({
                                title: "<?= Yii::t('app', 'access denied ') ?>",
                                type: "error",
                            });
                        }
                    },
                    error: function() {
                        swal({
                            title: "<?= Yii::t('app', 'Error occurred during the deletion') ?>",
                            type: "error",
                        });
                    }
                });
            });
    }

    function delete_selected() {
        console.log("Delete selected function called");

        var subject_ids = [];

        $('input[name="delete"]:checked').each(function() {
            var id = $(this).attr('id');
            subject_ids.push(id);
            console.log('Selected ID:', id);
        });

        if (subject_ids.length === 0) {
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
                    url: '<?= Yii::$app->urlManager->createUrl(['subjects/delete-selected']) ?>',
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        ids: subject_ids,
                        <?= Yii::$app->request->csrfParam; ?>: '<?= Yii::$app->request->csrfToken; ?>',
                    },
                    success: function(response) {
                        console.log(response);
                        if (response.success) {
                            swal({
                                title: "<?= ('deleted successfully'); ?>",
                                type: "success",
                            });

                            $(subject_ids).each(function(index, element) {
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