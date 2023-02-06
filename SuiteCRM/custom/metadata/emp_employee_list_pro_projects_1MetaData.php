<?php
// created: 2023-01-25 11:30:59
$dictionary["emp_employee_list_pro_projects_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'emp_employee_list_pro_projects_1' => 
    array (
      'lhs_module' => 'EMP_Employee_List',
      'lhs_table' => 'emp_employee_list',
      'lhs_key' => 'id',
      'rhs_module' => 'pro_Projects',
      'rhs_table' => 'pro_projects',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'emp_employee_list_pro_projects_1_c',
      'join_key_lhs' => 'emp_employee_list_pro_projects_1emp_employee_list_ida',
      'join_key_rhs' => 'emp_employee_list_pro_projects_1pro_projects_idb',
    ),
  ),
  'table' => 'emp_employee_list_pro_projects_1_c',
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
      'name' => 'emp_employee_list_pro_projects_1emp_employee_list_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'emp_employee_list_pro_projects_1pro_projects_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'emp_employee_list_pro_projects_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'emp_employee_list_pro_projects_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'emp_employee_list_pro_projects_1emp_employee_list_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'emp_employee_list_pro_projects_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'emp_employee_list_pro_projects_1pro_projects_idb',
      ),
    ),
  ),
);