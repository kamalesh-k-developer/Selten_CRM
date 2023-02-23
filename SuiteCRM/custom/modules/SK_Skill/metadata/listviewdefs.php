<?php
$module_name = 'SK_Skill';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'SKILL_NAME_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_SKILL_NAME_C',
    'width' => '10%',
  ),
  'SKILL_PROFICION_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_SKILL_PROFICION_C',
    'width' => '10%',
  ),
);
?>
