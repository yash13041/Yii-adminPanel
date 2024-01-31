<?php

use yii\bootstrap5\Html;
use frontend\assets\AuthAsset;
use common\components\YiiHelper;

AuthAsset::register($this);
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" class="h-100">

<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>

    <style type="text/css">
        .datatable-select {
            border: 1px solid #ccc;
            padding: 5px;
            height: 35px;
            border-radius: 3px;
        }

        .btn-bottom-toolbar {
            position: fixed;
            bottom: 0;
            padding: 15px;
            padding-right: 41px;
            margin: 0 0 0 -46px;
            -webkit-box-shadow: 0 -4px 1px -4px rgba(0, 0, 0, .1);
            box-shadow: 0 -4px 1px -4px rgba(0, 0, 0, .1);
            background: #fff;
            width: calc(100% - 211px);
            z-index: 5;
            border-top: 1px solid #ededed;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <?php $this->head(); ?>
    <!-- <script src="/fronted/web/js/charts/"></script> -->

</head>

<body>
    <?php $this->beginBody() ?>
    <!-- Main navbar layout/auth -->
    <div class="navbar navbar-inverse">
        <div class="navbar-header">
            <a class="navbar-brand" href="<?= Yii::getAlias('@web'); ?>">
                <?= Yii::$app->params['companyName'] ?>
            </a>

            <ul class="nav navbar-nav visible-xs-block">`
                <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
                <li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
            </ul>
        </div>
        <div class="navbar-collapse collapse" id="navbar-mobile">
            <ul class="nav navbar-nav">
                <li><a class="sidebar-control sidebar-main-toggle hidden-xs"><i class="icon-paragraph-justify3"></i></a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown dropdown-user">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <span>
                            Welcome, <?= Html::encode(Yii::$app->user->identity->firstname) ?>!
                        </span>
                        <i class="caret"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="<?= ('/auth/editProfile'); ?>"><?= ('Edit Profile'); ?></a></li>
                        <li><a href="<?php echo ('/auth/logout'); ?>"><?= ('Log Out'); ?></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- /Main navbar layout/auth -->
    <!-- Page containerlayout/auth -->
    <div class="page-container">
        <!-- page content -->
        <div class="page-content">
            <!-- Main sidebar  -->
            <div class="sidebar sidebar-main">
                <div class="sidebar-content">
                    <!-- User menu -->
                    <div class="sidebar-user">
                        <div class="category-content">
                            <div class="media">
                                <div class="media-body">
                                    <span class="media-heading text-semibold">
                                        <?= ('Welcome') . '&nbsp;' . ucfirst(Html::encode(Yii::$app->user->identity->firstname)) . '&nbsp;'; ?>
                                        <a style="color:white" href="<?= ('/auth/logout') ?>" align="padding-right"> <i class="icon-switch2" dtaa-popup="tooltip" data-placement="top" title="<?php ('logout') ?>"></i> </a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /User menu -->
                    <!-- Main Navigation -->
                    <div class="sidebar-category sidebar-category-visible">
                        <div class="category-content no-padding">
                            <ul class="navigation navigation-main navigation-accordion">
                                <li <?php if (YiiHelper::isActiveController('admin')) : ?> class="active" <?php endif; ?>>
                                    <a href="<?= ('dashboard'); ?>">
                                        <i class="icon-home4">
                                        </i>
                                        <span><?= ('Dashboard'); ?></span>
                                    </a>
                                </li>
                                <li <?php if (YiiHelper::isActiveController('categories')) : ?> class="active" <?php endif; ?>>
                                    <a href="<?= ('categories'); ?>">
                                        <i class="icon-menu6">
                                        </i>
                                        <span> <?= ('Categories'); ?> </span>
                                    </a>
                                </li>
                                <li <?php if(YiiHelper::isActiveController('projects')): ?> class="active" <?php endif;?>>
                                    <a href="<?= ('projects'); ?>">
                                        <i class="icon-menu3">
                                        </i>
                                        <span> <?= ('Projects'); ?> </span>
                                    </a>
                                </li>
                                <li <?php if(YiiHelper::isActiveController('subjects')): ?> class="active" <?php endif;?>>
                                    <a href="<?= ('subjects'); ?>">
                                        <i class="icon-menu2">
                                        </i>
                                        <span> <?= ('Subjects'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="<?= ('users'); ?>">
                                        <i class="icon-users4">
                                        </i>
                                        <span> <?= ('Users'); ?> </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#"><i class="icon-cog3"></i><span>Setup</span></a>
                                    <ul>
                                        <li>
                                            <a href="<?= ('roles'); ?>"><span><?= ('Roles'); ?></span></a>
                                        </li>
                                        <li>
                                            <a href="<?= ('emails'); ?>"><span><?= ('Emails'); ?></span></a>
                                        </li>
                                        <li>
                                            <a href="<? ('settings'); ?>"><span><?= ('Settings'); ?></span></a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /Main Navigation -->
                </div>
            </div>
            <!-- /Main sidebar  -->
            <!-- Main content -->
            <div class="content-wrapper">
                <?php echo $content; ?>
                <!-- Footer -->
                <div class="footer text-muted text-center pl-20">
                    &copy; <?php echo date('Y') ?>. <a href="#">Admin Panel</a>by <a target="_blank"><?php echo ('company_name'); ?></a>
                </div>
                <!-- /Footer -->
            </div>

            <!-- /Main content -->
        </div>

        <!-- /page-content -->
    </div>
    <!-- /Page containerlayout/auth -->
    <?php $this->endBody() ?>
    <script type="text/javascript">
        // Default Settings for jQuery Validator
        $.validator.setDefaults({
            ignore: 'input[type=hidden], .select2-search__field', // ignore hidden fields
            errorClass: 'validation-error-label',
            successClass: 'validation-valid-label',
            highlight: function(element, errorClass) {
                $(element).removeClass(errorClass);
            },
            unhighlight: function(element, errorClass) {
                $(element).removeClass(errorClass);
            },

            // Different components require proper error label placement
            errorPlacement: function(error, element) {

                // Styled checkboxes, radios, bootstrap switch
                if (element.parents('div').hasClass("checker") || element.parents('div').hasClass("choice") || element.parent().hasClass('bootstrap-switch-container')) {
                    if (element.parents('label').hasClass('checkbox-inline') || element.parents('label').hasClass('radio-inline')) {
                        error.appendTo(element.parent().parent().parent().parent());
                    } else {
                        error.appendTo(element.parent().parent().parent().parent().parent());
                    }
                }

                // Unstyled checkboxes, radios
                else if (element.parents('div').hasClass('checkbox') || element.parents('div').hasClass('radio')) {
                    error.appendTo(element.parent().parent().parent());
                }

                // Input with icons and Select2
                else if (element.parents('div').hasClass('has-feedback') || element.hasClass('select2-hidden-accessible')) {
                    error.appendTo(element.parent());
                }

                // Inline checkboxes, radios
                else if (element.parents('label').hasClass('checkbox-inline') || element.parents('label').hasClass('radio-inline')) {
                    error.appendTo(element.parent().parent());
                }

                // Input group, styled file input
                else if (element.parent().hasClass('uploader') || element.parents().hasClass('input-group')) {
                    error.appendTo(element.parent().parent());
                } else {
                    error.insertAfter(element);
                }
            },
            validClass: "validation-valid-label",
            success: function(label) {
                label.addClass("validation-valid-label").text("")
            },
        });


        $(function() {

            // Default initialization for dropdown select
            $('.select').select2({
                minimumResultsForSearch: Infinity
            });

            //datatables default settings
            $.extend($.fn.dataTable.defaults, {
                autoWidth: false,
                order: [],
                dom: '<"datatable-header"fBl><"datatable-scroll-wrap"t><"datatable-footer"ip>',
                language: {
                    search: '<span>Filter:</span> _INPUT_',
                    lengthMenu: '<span>Show:</span> _MENU_',
                    paginate: {
                        'first': '&lt;%lt;',
                        'last': '&gt;%gt;',
                        'next': '&gt;',
                        'previous': '&lt;'
                    }
                },
                buttons: {
                    dom: {
                        button: {
                            className: 'btn btn-default'
                        }
                    },
                    buttons: [
                        'copyHtml5',
                        'csvHtml5',
                        'pdfHtml5'
                    ]
                },
                "pageLength": 25,
                "lengthMenu": [
                    [25, 50, 100, -1],
                    [25, 50, 100, "All"]
                ]
            });


            //styled radio & checkboxes
            $(".styled").uniform({
                radioClass: 'choice'
            });

            /* Set Default options to all Sweet Alerts */
            swal.setDefaults({
                confirmButtonColor: "#2196F3",
                closeOnConfirm: false,
            });

            /* jQuery switch */
            var switches = Array.prototype.slice.call(document.querySelectorAll('.switchery'));
            switches.forEach(function(html) {
                var switchery = new Switchery(html);
            });
            /*End of Jquery for checkbox switch */

            <?php

            // $alert_class = '';

            // if ($this->session->flashdata('success')) {
            //     $alert_class = 'success';
            // } elseif ($this->session->flashdata('warning')) {
            //     $alert_class = 'warning';
            // } elseif ($this->session->flashdata('danger')) {
            //     $alert_class = 'danger';
            // } elseif ($this->session->flashdata('info')) {
            //     $alert_class = 'info';
            // }

            // if ($this->session->flashdata($alert_class)) {
            ?>
            // jGrowlAlert("<? //php echo $this->session->flashdata($alert_class)
                            ?>", '<? //php echo $alert_class;
                                    ?>');
            <?php
            // }
            ?>

        });
    </script>
</body>

</html>
<?php $this->endPage();
