<?php
   class pro_Projects_cstm{
    
    function update_bean($bean, $event, $arguments){
        $bean->record_number = 'PRO_'.$bean->record_number;
    }

    function add_record_number($bean, $event, $arguments){
		global $db;
		$query = "UPDATE `".$bean->table_name."` SET `name` = concat('PRO_', record_number) WHERE `id` = '".$bean->id."'";
		$db->query($query);
	}

   function update_employee_subpanel_method($bean, $event, $arguments){
      // $assigned_to_employee = $bean->project_assign_to_c->getBeans();
      $GLOBALS['log']->fatal("testing".print_r($event,true));
   }
   }


?>