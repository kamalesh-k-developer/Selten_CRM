<?php
// created: 2022-12-12 06:20:40
$dictionary["Task"]["fields"]["leads_tasks_1"] = array (
  'name' => 'leads_tasks_1',
  'type' => 'link',
  'relationship' => 'leads_tasks_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_TASKS_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_tasks_1leads_ida',
);
$dictionary["Task"]["fields"]["leads_tasks_1_name"] = array (
  'name' => 'leads_tasks_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_TASKS_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'leads_tasks_1leads_ida',
  'link' => 'leads_tasks_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["Task"]["fields"]["leads_tasks_1leads_ida"] = array (
  'name' => 'leads_tasks_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_tasks_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_TASKS_1_FROM_TASKS_TITLE',
);
