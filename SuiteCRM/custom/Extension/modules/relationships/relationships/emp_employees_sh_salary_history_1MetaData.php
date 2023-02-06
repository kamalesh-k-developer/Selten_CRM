<?php
// created: 2022-12-09 12:32:43
$dictionary["emp_employees_sh_salary_history_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'emp_employees_sh_salary_history_1' => 
    array (
      'lhs_module' => 'EMP_Employees',
      'lhs_table' => 'emp_employees',
      'lhs_key' => 'id',
      'rhs_module' => 'sh_Salary_History',
      'rhs_table' => 'sh_salary_history',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'emp_employees_sh_salary_history_1_c',
      'join_key_lhs' => 'emp_employees_sh_salary_history_1emp_employees_ida',
      'join_key_rhs' => 'emp_employees_sh_salary_history_1sh_salary_history_idb',
    ),
  ),
  'table' => 'emp_employees_sh_salary_history_1_c',
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
      'name' => 'emp_employees_sh_salary_history_1emp_employees_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'emp_employees_sh_salary_history_1sh_salary_history_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'emp_employees_sh_salary_history_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'emp_employees_sh_salary_history_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'emp_employees_sh_salary_history_1emp_employees_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'emp_employees_sh_salary_history_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'emp_employees_sh_salary_history_1sh_salary_history_idb',
      ),
    ),
  ),
);