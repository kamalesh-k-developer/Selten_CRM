<?php
$module_name = 'EMP_Employee_List';
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
        'LBL_EDITVIEW_PANEL2' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'emp_username_c',
            'label' => 'LBL_EMP_USERNAME_C',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'emp_email_c',
            'label' => 'LBL_EMP_EMAIL_C',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'emp_dob_c',
            'label' => 'LBL_EMP_DOB_C',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'emp_contact_c',
            'label' => 'LBL_EMP_CONTACT_C',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'emp_gender_c',
            'studio' => 'visible',
            'label' => 'LBL_EMP_GENDER_C',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'employee_status_c',
            'studio' => 'visible',
            'label' => 'LBL_EMPLOYEE_STATUS_C',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'emp_skill_c',
            'comment' => 'Test created by Me',
            'label' => 'Skill',
          ),
          1 => '',
        ),
      ),
    ),
  ),
);
?>
