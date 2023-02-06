<?php
$module_name = 'pro_Projects';
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
  'PROJECT_NAME_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_PROJECT_NAME_C',
    'width' => '10%',
  ),
  'PROJECT_DATE_START_C' => 
  array (
    'type' => 'date',
    'default' => true,
    'label' => 'LBL_PROJECT_DATE_START_C',
    'width' => '10%',
  ),
);
?>
