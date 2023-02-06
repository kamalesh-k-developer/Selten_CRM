<?php
$module_name = 'EMP_Employee_List';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'EMP_USERNAME_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_EMP_USERNAME_C',
    'width' => '10%',
  ),
  'EMPLOYEE_STATUS_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_EMPLOYEE_STATUS_C',
    'width' => '10%',
  ),
  'EMP_GENDER_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_EMP_GENDER_C',
    'width' => '10%',
  ),
);
?>
