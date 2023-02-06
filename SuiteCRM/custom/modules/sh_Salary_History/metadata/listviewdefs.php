<?php
$module_name = 'sh_Salary_History';
$listViewDefs [$module_name] = 
array (
  'RECORD_NUMBER' => 
  array (
    'type' => 'int',
    'link' => true,
    'label' => 'LBL_RECORD_NUMBER',
    'width' => '10%',
    'default' => true,
  ),
  'SLY_HISTORY_EMP_NAME_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_SLY_HISTORY_EMP_NAME_C',
    'width' => '10%',
  ),
  'EMPLOYE_SALARY_AMONT_C' => 
  array (
    'type' => 'int',
    'default' => true,
    'label' => 'LBL_EMPLOYE_SALARY_AMONT_C',
    'width' => '10%',
  ),
  'EMPLOYE_SALARY_DATE_C' => 
  array (
    'type' => 'date',
    'default' => true,
    'label' => 'LBL_EMPLOYE_SALARY_DATE_C',
    'width' => '10%',
  ),
);
?>
