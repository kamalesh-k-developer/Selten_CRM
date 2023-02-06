<?php
$module_name = 'EMP_Employee_List';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'emp_username_c' => 
      array (
        'type' => 'varchar',
        'default' => true,
        'label' => 'LBL_EMP_USERNAME_C',
        'width' => '10%',
        'name' => 'emp_username_c',
      ),
      'emp_gender_c' => 
      array (
        'type' => 'enum',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_EMP_GENDER_C',
        'width' => '10%',
        'name' => 'emp_gender_c',
      ),
      'employee_status_c' => 
      array (
        'type' => 'enum',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_EMPLOYEE_STATUS_C',
        'width' => '10%',
        'name' => 'employee_status_c',
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
