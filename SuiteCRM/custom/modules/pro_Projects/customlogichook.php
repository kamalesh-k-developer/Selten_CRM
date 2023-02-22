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


   function checkProjectAssigned($bean, $event, $arguments){
      $empId = $bean->emp_employee_list_id_c;
      if(!empty($empId)){
        $employee = BeanFactory::getBean('EMP_Employee_List',$bean->emp_employee_list_id_c);
        $id = $employee->id;
        if($empId == $id){
           $employee->load_relationship('emp_employee_list_pro_projects_1');
           $employee->emp_employee_list_pro_projects_1->add($bean->id);
        }
      }
     }
  }



?>