<?php
$module_name = 'PAY_Payments';
$viewdefs [$module_name] = 
array (
  'QuickCreate' => 
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
            'name' => 'ia_any_pending_payments_c',
            'label' => 'LBL_IA_ANY_PENDING_PAYMENTS_C',
          ),
        ),
        5 => 
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
