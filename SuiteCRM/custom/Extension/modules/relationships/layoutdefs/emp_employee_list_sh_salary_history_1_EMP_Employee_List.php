<?php
 // created: 2023-01-25 11:41:34
$layout_defs["EMP_Employee_List"]["subpanel_setup"]['emp_employee_list_sh_salary_history_1'] = array (
  'order' => 100,
  'module' => 'sh_Salary_History',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_EMP_EMPLOYEE_LIST_SH_SALARY_HISTORY_1_FROM_SH_SALARY_HISTORY_TITLE',
  'get_subpanel_data' => 'emp_employee_list_sh_salary_history_1',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
