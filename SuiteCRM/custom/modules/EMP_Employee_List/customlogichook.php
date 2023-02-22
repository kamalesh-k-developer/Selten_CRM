<?php
   
    class EMP_Employee_List_cstm {

        function add_record_number($bean, $event, $arguments){
            global $db;
            $query = "UPDATE `".$bean->table_name."` SET `name` = concat('EMP_', record_number) WHERE `id` = '".$bean->id."'";
            $db->query($query);
        }

        function update_bean($bean, $event, $arguments){
            $bean->record_number = 'EMP_'.$bean->record_number;
        }

        function PopulateAttendance_EmployeeName($bean, $event, $arguments){
            if ($arguments['related_module'] == 'at_Attentance') {
                $retrieveAttentanceBean = $arguments['related_bean'];
                $retrieveAttentanceBean->attentance_emp_name_c = $bean->emp_username_c;
                $retrieveAttentanceBean->save();
            }
            if($arguments['related_module'] == 'pro_Projects'){ 
                $retrieveProjectBean = $arguments['related_bean'];
                $retrieveProjectBean->project_emp_name_c = $bean->emp_username_c;
                $retrieveProjectBean->save();
            }
            if($arguments['related_module'] == 'sh_Salary_History'){
                $retrieveSalaryHistoryBean = $arguments['related_bean'];
                $retrieveSalaryHistoryBean->sly_history_emp_name_c = $bean->emp_username_c;
                $retrieveSalaryHistoryBean->save();
            }
        }
    }
?>