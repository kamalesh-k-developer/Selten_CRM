<?php
$module_name = 'PAY_Payments';
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
  'PAYMENT_METHOD_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_PAYMENT_METHOD_C',
    'width' => '10%',
  ),
  'PAYMENT_AMOUNT_IN_RUPEES_C' => 
  array (
    'type' => 'currency',
    'default' => true,
    'label' => 'LBL_PAYMENT_AMOUNT_IN_RUPEES_C',
    'currency_format' => true,
    'width' => '10%',
  ),
  'PAYMENT_REVENUE_C' => 
  array (
    'type' => 'int',
    'default' => true,
    'label' => 'LBL_PAYMENT_REVENUE_C',
    'width' => '10%',
  ),
  'IA_ANY_PENDING_PAYMENTS_C' => 
  array (
    'type' => 'bool',
    'default' => true,
    'label' => 'LBL_IA_ANY_PENDING_PAYMENTS_C',
    'width' => '10%',
  ),
);
?>
