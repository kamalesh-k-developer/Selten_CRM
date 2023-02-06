<?php
// created: 2023-02-01 06:41:45
$dictionary["pro_projects_pay_payments_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'pro_projects_pay_payments_1' => 
    array (
      'lhs_module' => 'pro_Projects',
      'lhs_table' => 'pro_projects',
      'lhs_key' => 'id',
      'rhs_module' => 'PAY_Payments',
      'rhs_table' => 'pay_payments',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'pro_projects_pay_payments_1_c',
      'join_key_lhs' => 'pro_projects_pay_payments_1pro_projects_ida',
      'join_key_rhs' => 'pro_projects_pay_payments_1pay_payments_idb',
    ),
  ),
  'table' => 'pro_projects_pay_payments_1_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'pro_projects_pay_payments_1pro_projects_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'pro_projects_pay_payments_1pay_payments_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'pro_projects_pay_payments_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'pro_projects_pay_payments_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'pro_projects_pay_payments_1pro_projects_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'pro_projects_pay_payments_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'pro_projects_pay_payments_1pay_payments_idb',
      ),
    ),
  ),
);