<?php
 // created: 2023-02-01 06:41:45
$layout_defs["pro_Projects"]["subpanel_setup"]['pro_projects_pay_payments_1'] = array (
  'order' => 100,
  'module' => 'PAY_Payments',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_PRO_PROJECTS_PAY_PAYMENTS_1_FROM_PAY_PAYMENTS_TITLE',
  'get_subpanel_data' => 'pro_projects_pay_payments_1',
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
