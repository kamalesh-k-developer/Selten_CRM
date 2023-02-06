<?php
// created: 2023-02-01 06:41:46
$dictionary["PAY_Payments"]["fields"]["pro_projects_pay_payments_1"] = array (
  'name' => 'pro_projects_pay_payments_1',
  'type' => 'link',
  'relationship' => 'pro_projects_pay_payments_1',
  'source' => 'non-db',
  'module' => 'pro_Projects',
  'bean_name' => 'pro_Projects',
  'vname' => 'LBL_PRO_PROJECTS_PAY_PAYMENTS_1_FROM_PRO_PROJECTS_TITLE',
  'id_name' => 'pro_projects_pay_payments_1pro_projects_ida',
);
$dictionary["PAY_Payments"]["fields"]["pro_projects_pay_payments_1_name"] = array (
  'name' => 'pro_projects_pay_payments_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_PRO_PROJECTS_PAY_PAYMENTS_1_FROM_PRO_PROJECTS_TITLE',
  'save' => true,
  'id_name' => 'pro_projects_pay_payments_1pro_projects_ida',
  'link' => 'pro_projects_pay_payments_1',
  'table' => 'pro_projects',
  'module' => 'pro_Projects',
  'rname' => 'name',
);
$dictionary["PAY_Payments"]["fields"]["pro_projects_pay_payments_1pro_projects_ida"] = array (
  'name' => 'pro_projects_pay_payments_1pro_projects_ida',
  'type' => 'link',
  'relationship' => 'pro_projects_pay_payments_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_PRO_PROJECTS_PAY_PAYMENTS_1_FROM_PAY_PAYMENTS_TITLE',
);
