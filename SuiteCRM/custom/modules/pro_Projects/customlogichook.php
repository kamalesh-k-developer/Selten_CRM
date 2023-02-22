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
 }


?>