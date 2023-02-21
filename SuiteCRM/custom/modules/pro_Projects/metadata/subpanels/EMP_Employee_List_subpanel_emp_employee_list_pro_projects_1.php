<?php
// created: 2023-02-21 06:02:45
$subpanel_layout['list_fields'] = array (
  'name' => 
  array (
    'type' => 'name',
    'link' => true,
    'vname' => 'LBL_NAME',
    'width' => '10%',
    'default' => true,
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => NULL,
    'target_record_key' => NULL,
  ),
  'project_assign_to_c' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'vname' => 'LBL_PROJECT_ASSIGN_TO_C',
    'id' => 'EMP_EMPLOYEE_LIST_ID_C',
    'link' => true,
    'width' => '10%',
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'EMP_Employee_List',
    'target_record_key' => 'emp_employee_list_id_c',
  ),
  'project_name_c' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'vname' => 'LBL_PROJECT_NAME_C',
    'width' => '10%',
  ),
  'project_date_start_c' => 
  array (
    'type' => 'date',
    'default' => true,
    'vname' => 'LBL_PROJECT_DATE_START_C',
    'width' => '10%',
  ),
);