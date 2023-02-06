<?php
// created: 2023-01-25 11:41:34
$dictionary["sh_Salary_History"]["fields"]["emp_employee_list_sh_salary_history_1"] = array (
  'name' => 'emp_employee_list_sh_salary_history_1',
  'type' => 'link',
  'relationship' => 'emp_employee_list_sh_salary_history_1',
  'source' => 'non-db',
  'module' => 'EMP_Employee_List',
  'bean_name' => 'EMP_Employee_List',
  'vname' => 'LBL_EMP_EMPLOYEE_LIST_SH_SALARY_HISTORY_1_FROM_EMP_EMPLOYEE_LIST_TITLE',
  'id_name' => 'emp_employee_list_sh_salary_history_1emp_employee_list_ida',
);
$dictionary["sh_Salary_History"]["fields"]["emp_employee_list_sh_salary_history_1_name"] = array (
  'name' => 'emp_employee_list_sh_salary_history_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_EMP_EMPLOYEE_LIST_SH_SALARY_HISTORY_1_FROM_EMP_EMPLOYEE_LIST_TITLE',
  'save' => true,
  'id_name' => 'emp_employee_list_sh_salary_history_1emp_employee_list_ida',
  'link' => 'emp_employee_list_sh_salary_history_1',
  'table' => 'emp_employee_list',
  'module' => 'EMP_Employee_List',
  'rname' => 'name',
);
$dictionary["sh_Salary_History"]["fields"]["emp_employee_list_sh_salary_history_1emp_employee_list_ida"] = array (
  'name' => 'emp_employee_list_sh_salary_history_1emp_employee_list_ida',
  'type' => 'link',
  'relationship' => 'emp_employee_list_sh_salary_history_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_EMP_EMPLOYEE_LIST_SH_SALARY_HISTORY_1_FROM_SH_SALARY_HISTORY_TITLE',
);
