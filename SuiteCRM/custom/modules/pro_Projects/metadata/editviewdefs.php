<?php
$module_name = 'pro_Projects';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'javascript' => '{sugar_getscript file="custom/include/javascript/field_functions.js"}
                       {sugar_getscript file="custom/modules/pro_Projects/Javascript/EditView.js"}
                       {sugar_getscript file="cache/include/javascript/sugar_grp_yui_widgets.js"}
                       <link rel="stylesheet" type="text/css" href="{sugar_getjspath file="custom/css/multiple-select.css"}">',
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'project_assign_to_c',
            'studio' => 'visible',
            'label' => 'LBL_PROJECT_ASSIGN_TO_C',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'project_service_type_c',
            'studio' => 'visible',
            'label' => 'LBL_PROJECT_SERVICE_TYPE_C',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'project_name_c',
            'label' => 'LBL_PROJECT_NAME_C',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'project_date_start_c',
            'label' => 'LBL_PROJECT_DATE_START_C',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'project_expected_income_c',
            'label' => 'LBL_PROJECT_EXPECTED_INCOME_C',
          ),
        ),
      ),
    ),
  ),
);
?>
