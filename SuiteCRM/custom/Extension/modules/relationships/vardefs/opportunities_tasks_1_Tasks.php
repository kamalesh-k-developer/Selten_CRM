<?php
// created: 2022-12-13 06:28:59
$dictionary["Task"]["fields"]["opportunities_tasks_1"] = array (
  'name' => 'opportunities_tasks_1',
  'type' => 'link',
  'relationship' => 'opportunities_tasks_1',
  'source' => 'non-db',
  'module' => 'Opportunities',
  'bean_name' => 'Opportunity',
  'vname' => 'LBL_OPPORTUNITIES_TASKS_1_FROM_OPPORTUNITIES_TITLE',
  'id_name' => 'opportunities_tasks_1opportunities_ida',
);
$dictionary["Task"]["fields"]["opportunities_tasks_1_name"] = array (
  'name' => 'opportunities_tasks_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_OPPORTUNITIES_TASKS_1_FROM_OPPORTUNITIES_TITLE',
  'save' => true,
  'id_name' => 'opportunities_tasks_1opportunities_ida',
  'link' => 'opportunities_tasks_1',
  'table' => 'opportunities',
  'module' => 'Opportunities',
  'rname' => 'name',
);
$dictionary["Task"]["fields"]["opportunities_tasks_1opportunities_ida"] = array (
  'name' => 'opportunities_tasks_1opportunities_ida',
  'type' => 'link',
  'relationship' => 'opportunities_tasks_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_OPPORTUNITIES_TASKS_1_FROM_TASKS_TITLE',
);
