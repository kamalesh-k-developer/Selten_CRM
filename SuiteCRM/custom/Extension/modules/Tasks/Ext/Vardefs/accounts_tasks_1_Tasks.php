<?php
// created: 2022-12-13 05:58:45
$dictionary["Task"]["fields"]["accounts_tasks_1"] = array (
  'name' => 'accounts_tasks_1',
  'type' => 'link',
  'relationship' => 'accounts_tasks_1',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_ACCOUNTS_TASKS_1_FROM_ACCOUNTS_TITLE',
  'id_name' => 'accounts_tasks_1accounts_ida',
);
$dictionary["Task"]["fields"]["accounts_tasks_1_name"] = array (
  'name' => 'accounts_tasks_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_TASKS_1_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'accounts_tasks_1accounts_ida',
  'link' => 'accounts_tasks_1',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["Task"]["fields"]["accounts_tasks_1accounts_ida"] = array (
  'name' => 'accounts_tasks_1accounts_ida',
  'type' => 'link',
  'relationship' => 'accounts_tasks_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_ACCOUNTS_TASKS_1_FROM_TASKS_TITLE',
);
