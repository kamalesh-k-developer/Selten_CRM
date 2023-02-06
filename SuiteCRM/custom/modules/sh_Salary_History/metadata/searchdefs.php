<?php
$module_name = 'sh_Salary_History';
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
      'employe_salary_amont_c' => 
      array (
        'type' => 'int',
        'default' => true,
        'label' => 'LBL_EMPLOYE_SALARY_AMONT_C',
        'width' => '10%',
        'name' => 'employe_salary_amont_c',
      ),
      'employe_salary_date_c' => 
      array (
        'type' => 'date',
        'default' => true,
        'label' => 'LBL_EMPLOYE_SALARY_DATE_C',
        'width' => '10%',
        'name' => 'employe_salary_date_c',
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
