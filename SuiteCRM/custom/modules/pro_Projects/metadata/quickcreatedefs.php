<?php
$module_name = 'pro_Projects';
$viewdefs [$module_name] = 
array (
  'QuickCreate' => 
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
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
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
