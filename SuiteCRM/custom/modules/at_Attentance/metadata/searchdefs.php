<?php
$module_name = 'at_Attentance';
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
      'attentance_emp_name_c' => 
      array (
        'type' => 'varchar',
        'default' => true,
        'label' => 'LBL_ATTENTANCE_EMP_NAME_C',
        'width' => '10%',
        'name' => 'attentance_emp_name_c',
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
