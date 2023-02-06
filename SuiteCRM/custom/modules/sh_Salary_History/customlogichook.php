<?php
   class sh_Salary_History_cstm{
    
    function update_bean($bean, $event, $arguments){
        $bean->record_number = 'SLH_'.$bean->record_number;
    }

    function add_record_number($bean, $event, $arguments){
		global $db;
		$query = "UPDATE `".$bean->table_name."` SET `name` = concat('SLH_', record_number) WHERE `id` = '".$bean->id."'";
		$db->query($query);
	}
   }


?>