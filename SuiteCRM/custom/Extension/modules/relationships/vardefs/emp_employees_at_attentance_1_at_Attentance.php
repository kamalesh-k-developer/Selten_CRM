<?php
// created: 2022-12-09 12:33:25
$dictionary["at_Attentance"]["fields"]["emp_employees_at_attentance_1"] = array (
  'name' => 'emp_employees_at_attentance_1',
  'type' => 'link',
  'relationship' => 'emp_employees_at_attentance_1',
  'source' => 'non-db',
  'module' => 'EMP_Employees',
  'bean_name' => 'EMP_Employees',
  'vname' => 'LBL_EMP_EMPLOYEES_AT_ATTENTANCE_1_FROM_EMP_EMPLOYEES_TITLE',
  'id_name' => 'emp_employees_at_attentance_1emp_employees_ida',
);
$dictionary["at_Attentance"]["fields"]["emp_employees_at_attentance_1_name"] = array (
  'name' => 'emp_employees_at_attentance_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_EMP_EMPLOYEES_AT_ATTENTANCE_1_FROM_EMP_EMPLOYEES_TITLE',
  'save' => true,
  'id_name' => 'emp_employees_at_attentance_1emp_employees_ida',
  'link' => 'emp_employees_at_attentance_1',
  'table' => 'emp_employees',
  'module' => 'EMP_Employees',
  'rname' => 'name',
);
$dictionary["at_Attentance"]["fields"]["emp_employees_at_attentance_1emp_employees_ida"] = array (
  'name' => 'emp_employees_at_attentance_1emp_employees_ida',
  'type' => 'link',
  'relationship' => 'emp_employees_at_attentance_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_EMP_EMPLOYEES_AT_ATTENTANCE_1_FROM_AT_ATTENTANCE_TITLE',
);
