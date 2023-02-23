<?php
$module_name = 'PAY_Payments';
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
      'javascript' => '{sugar_getscript file="custom/include/javascript/field_functions.js"}
                       {sugar_getscript file="custom/modules/PAY_Payments/js/Editview.js"}
                       {sugar_getscript file="cache/include/javascript/sugar_grp_yui_widgets.js"}
                       <link rel="stylesheet" type="text/css" href="{sugar_getjspath file="custom/css/multiple-select.css"}">',
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
            'name' => 'payment_method_c',
            'studio' => 'visible',
            'label' => 'LBL_PAYMENT_METHOD_C',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'payment_amount_in_rupees_c',
            'label' => 'LBL_PAYMENT_AMOUNT_IN_RUPEES_C',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'payment_revenue_c',
            'label' => 'LBL_PAYMENT_REVENUE_C',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'payment_day_c',
            'studio' => 'visible',
            'label' => 'LBL_PAYMENT_DAY_C',
          ),
          1 => 
          array (
            'name' => 'payment_month_c',
            'studio' => 'visible',
            'label' => 'LBL_PAYMENT_MONTH_C',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'payment_year_c',
            'studio' => 'visible',
            'label' => 'LBL_PAYMENT_YEAR_C',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'ia_any_pending_payments_c',
            'label' => 'LBL_IA_ANY_PENDING_PAYMENTS_C',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'pending_total_amount_c',
            'label' => 'LBL_PENDING_TOTAL_AMOUNT_C',
          ),
        ),
      ),
    ),
  ),
);
?>
