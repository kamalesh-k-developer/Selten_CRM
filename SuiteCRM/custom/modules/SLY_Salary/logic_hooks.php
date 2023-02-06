<?php

$hook_version = 1;

$hook_array = Array(); 
 
$hook_array['before_save'] = Array();

$hook_array['before_save'][] = Array(1,'Username Change','custom/modules/SLY_Salary/salary_logichooks.php','username_change','username_update');

$hook_array['after_relationship_add'] = Array();

$hook_array['after_relationship_add'][] = Array(2,'Hours Logged Change','custom/modules/SLY_Salary/salary_logichooks.php','username_change','hourslogged2_update');

?>