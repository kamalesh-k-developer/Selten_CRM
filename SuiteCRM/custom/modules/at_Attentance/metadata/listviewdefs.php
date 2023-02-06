<?php
$module_name = 'at_Attentance';
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
  'ATTENTANCE_EMP_NAME_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_ATTENTANCE_EMP_NAME_C',
    'width' => '10%',
  ),
  'ENTRY_TIME_C' => 
  array (
    'type' => 'datetimecombo',
    'default' => true,
    'label' => 'LBL_ENTRY_TIME_C',
    'width' => '10%',
  ),
  'EXIT_TIME_C' => 
  array (
    'type' => 'datetimecombo',
    'default' => true,
    'label' => 'LBL_EXIT_TIME_C',
    'width' => '10%',
  ),
);
?>
