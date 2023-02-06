<?php
$module_name = 'pro_Projects';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'record_number' => 
      array (
        'type' => 'int',
        'link' => true,
        'label' => 'LBL_RECORD_NUMBER',
        'width' => '10%',
        'default' => true,
        'name' => 'record_number',
      ),
      'project_name_c' => 
      array (
        'type' => 'varchar',
        'default' => true,
        'label' => 'LBL_PROJECT_NAME_C',
        'width' => '10%',
        'name' => 'project_name_c',
      ),
      'project_expected_income_c' => 
      array (
        'type' => 'int',
        'default' => true,
        'label' => 'LBL_PROJECT_EXPECTED_INCOME_C',
        'width' => '10%',
        'name' => 'project_expected_income_c',
      ),
      'project_date_start_c' => 
      array (
        'type' => 'date',
        'default' => true,
        'label' => 'LBL_PROJECT_DATE_START_C',
        'width' => '10%',
        'name' => 'project_date_start_c',
      ),
    ),
    'advanced_search' => 
    array (
      0 => 'name',
      1 => 
      array (
        'name' => 'assigned_user_id',
        'label' => 'LBL_ASSIGNED_TO',
        'type' => 'enum',
        'function' => 
        array (
          'name' => 'get_user_array',
          'params' => 
          array (
            0 => false,
          ),
        ),
      ),
    ),
  ),
  'templateMeta' => 
  array (
    'maxColumns' => '3',
    'maxColumnsBasic' => '4',
    'widths' => 
    array (
      'label' => '10',
      'field' => '30',
    ),
  ),
);
?>
