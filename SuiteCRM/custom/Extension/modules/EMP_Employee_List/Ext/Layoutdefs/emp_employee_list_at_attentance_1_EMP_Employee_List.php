<?php
 // created: 2023-01-25 11:20:59
$layout_defs["EMP_Employee_List"]["subpanel_setup"]['emp_employee_list_at_attentance_1'] = array (
  'order' => 100,
  'module' => 'at_Attentance',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_EMP_EMPLOYEE_LIST_AT_ATTENTANCE_1_FROM_AT_ATTENTANCE_TITLE',
  'get_subpanel_data' => 'emp_employee_list_at_attentance_1',
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
