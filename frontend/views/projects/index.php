<!-- page header views/projects/index  -->
<div class="page-header page-header-default">
    <div class="page-header-content">
        <div class="page-title">
            <h4>
                <span class="text-semibold"><?= ucfirst(Yii::t('app', 'Projects')); ?></span>
            </h4>
        </div>
    </div>
    <div class="breadcrumb-line">
        <ul class="breadcrumb">
            <li>
                <a href="<?= ('dashboard'); ?>"><i class="icon-home2 position-left"></i><?= Yii::t('app', 'Dashboard'); ?></a>
            </li>
            <li class="active"><?= Yii::t('app', 'Projects'); ?></li>
        </ul>
    </div>
</div>
<!-- /page header  -->
<!-- content arae -->
<div class="content">
    <div class="panel panel-flat">

        <div class="panel-heading">

            <a href="<?= Yii::getAlias('@web').('projects/add') ?>" class="btn btn-primary"><?= Yii::t('app', 'Add New')?><i class="icon-plus-circle2 position-right"></i></a>

            <a href="javascript:delete_selected();" class="btn btn-danger" id="delete_selected"><?= Yii::t('app', 'Delete Selected'); ?><i class="icon-trash position-right"></i></a>

        </div>

        <div class="panel-body table-responsive">
            <table id="projects_table" class="table table-bordered table-striped">
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
                    <?php foreach ($projects as $project) : ?>
                        <tr>
                            <td>
                                <input type="checkbox" class="checkbox styled" name="delete" id="<?= $project->id; ?>">
                            </td>
                            <td><?= $project->project_id ?></td>
                            <td><?= ucfirst($project->name); ?></td>
                            <td><?= ucfirst($project->details); ?></td>
                            <td><?= ucfirst($project->created); ?></td>
                            <td class="text-center">
                                <a data-popup="tooltip" data-placement="top" title="<?= Yii::t('app', 'Edit'); ?>" href="<?= \yii\helpers\Url::to(['admin/projects/edit', 'id' => $project->id]) ?>" id="<?= $project->id; ?>" class="text-info">
                                    <i class="icon-pencil7"></i>
                                </a>

                                <a data-popup="tooltip" data-placement="top" title="<?= Yii::t('app', 'Delete'); ?>" href="javascript:void(0);" onclick="delete_record(<?= $project->id; ?>);" class="text-danger delete"><i class="icon-trash"></i>
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
        $('#projects_table').DataTable({
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

    var BASE_URL = "<?= Yii::getAlias('@web'); ?>";

    function delete_record(id) {
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
                    url: '<?= Yii::$app->urlManager->createUrl(['admin/projects/delete']) ?>',
                    type: 'POST',
                    data: {
                        <?= Yii::$app->request->csrfParam; ?>: '<?= Yii::$app->request->csrfToken; ?>',
                        project_id: id
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
                                title: "<?= Yii::t('app', 'accedd denied ') ?>",
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

        var project_ids = [];

        $('input[name="delete"]:checked').each(function() {
            var id = $(this).attr('id');
            project_ids.push(id);
            console.log('Selected ID:', id);
        });

        if (project_ids.length === 0) {
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
                    url: '<?= Yii::$app->urlManager->createUrl(['projects/delete-selected']) ?>',
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        ids: project_ids,
                        <?= Yii::$app->request->csrfParam; ?>: '<?= Yii::$app->request->csrfToken; ?>',
                    },
                    success: function(response) {
                        console.log(response);
                        if (response.success) {
                            swal({
                                title: "<?= ('deleted successfully'); ?>",
                                type: "success",
                            });

                            $(project_ids).each(function(index, element) {
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