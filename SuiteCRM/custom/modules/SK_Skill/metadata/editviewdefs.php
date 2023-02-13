<?php
$module_name = 'SK_Skill';
$viewdefs [$module_name] = 
array (
  'EditView' => 
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
      'syncDetailEditViews' => true,
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
            'name' => 'skill_name_c',
            'label' => 'LBL_SKILL_NAME_C',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'skill_proficion_c',
            'studio' => 'visible',
            'label' => 'LBL_SKILL_PROFICION_C',
          ),
        ),
      ),
    ),
  ),
);
?>
