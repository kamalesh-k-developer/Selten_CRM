<?php
$module_name = 'SLY_Salary';
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
          0 => 'assigned_user_name',
          1 => 
          array (
            'name' => 'currency_c',
            'label' => 'Currency',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'indian_c',
            'label' => 'Are You Indian',
          ),
          1 => 
          array (
            'name' => 'address_c',
            'label' => 'Address Details',
          ),
        ),
        3 => 
        array (
          0 => 'description',
          1 => 
          array (
            'name' => 'email_c',
            'label' => 'Email Address',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'user_c',
            'label' => 'Username',
          ),
          1 => 
          array (
            'name' => 'account_c',
            'label' => 'Account Details',
          ),
        ),
        5 => 
        array (
          1 => 
          array (
            'name' => 'logged_c',
            'label' => 'Hours Logged',
          ),
        ),
      ),
    ),
  ),
);
?>
