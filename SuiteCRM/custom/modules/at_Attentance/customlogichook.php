<?php
   class at_Attentance_cstm{
    
    function update_bean($bean, $event, $arguments){
        $bean->record_number = 'ATT_'.$bean->record_number;
    }

    function add_record_number($bean, $event, $arguments){
		global $db;
		$query = "UPDATE `".$bean->table_name."` SET `name` = concat('ATT_', record_number) WHERE `id` = '".$bean->id."'";
		$db->query($query);
	}
   }


?>