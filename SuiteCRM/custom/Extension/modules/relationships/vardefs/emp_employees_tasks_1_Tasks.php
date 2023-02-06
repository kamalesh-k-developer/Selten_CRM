<?php
// created: 2022-12-01 12:56:28
$dictionary["Task"]["fields"]["emp_employees_tasks_1"] = array (
  'name' => 'emp_employees_tasks_1',
  'type' => 'link',
  'relationship' => 'emp_employees_tasks_1',
  'source' => 'non-db',
  'module' => 'EMP_Employees',
  'bean_name' => 'EMP_Employees',
  'vname' => 'LBL_EMP_EMPLOYEES_TASKS_1_FROM_EMP_EMPLOYEES_TITLE',
  'id_name' => 'emp_employees_tasks_1emp_employees_ida',
);
$dictionary["Task"]["fields"]["emp_employees_tasks_1_name"] = array (
  'name' => 'emp_employees_tasks_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_EMP_EMPLOYEES_TASKS_1_FROM_EMP_EMPLOYEES_TITLE',
  'save' => true,
  'id_name' => 'emp_employees_tasks_1emp_employees_ida',
  'link' => 'emp_employees_tasks_1',
  'table' => 'emp_employees',
  'module' => 'EMP_Employees',
  'rname' => 'name',
);
$dictionary["Task"]["fields"]["emp_employees_tasks_1emp_employees_ida"] = array (
  'name' => 'emp_employees_tasks_1emp_employees_ida',
  'type' => 'link',
  'relationship' => 'emp_employees_tasks_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_EMP_EMPLOYEES_TASKS_1_FROM_TASKS_TITLE',
);
