<?php
$module_name = 'at_Attentance';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
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
            'name' => 'attentance_emp_name_c',
            'label' => 'LBL_ATTENTANCE_EMP_NAME_C',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'entry_time_c',
            'label' => 'LBL_ENTRY_TIME_C',
          ),
          1 => 
          array (
            'name' => 'exit_time_c',
            'label' => 'LBL_EXIT_TIME_C',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'attentance_joining_date_c',
            'label' => 'LBL_ATTENTANCE_JOINING_DATE_C',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'attentance_absent_c',
            'label' => 'LBL_ATTENTANCE_ABSENT_C',
          ),
        ),
        5 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
