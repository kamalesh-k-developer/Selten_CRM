<?php
 // created: 2023-01-25 11:30:59
$layout_defs["EMP_Employee_List"]["subpanel_setup"]['emp_employee_list_pro_projects_1'] = array (
  'order' => 100,
  'module' => 'pro_Projects',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_EMP_EMPLOYEE_LIST_PRO_PROJECTS_1_FROM_PRO_PROJECTS_TITLE',
  'get_subpanel_data' => 'emp_employee_list_pro_projects_1',
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
