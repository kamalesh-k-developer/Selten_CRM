<?php
$module_name = 'sh_Salary_History';
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
          0 => 
          array (
            'name' => 'sly_history_emp_name_c',
            'label' => 'LBL_SLY_HISTORY_EMP_NAME_C',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'employe_salary_date_c',
            'label' => 'LBL_EMPLOYE_SALARY_DATE_C',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'employe_salary_amont_c',
            'label' => 'LBL_EMPLOYE_SALARY_AMONT_C',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'sly_history_months_slaray_c',
            'label' => 'LBL_SLY_HISTORY_MONTHS_SLARAY_C',
          ),
        ),
        4 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
