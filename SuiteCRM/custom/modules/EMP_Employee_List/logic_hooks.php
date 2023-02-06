<?php
    // Do not store anything in this file that is not part of the array or the hook version.  This file will
    // be automatically rebuilt in the future.
   $hook_version = 1;
   $hook_array = Array();
 
   $hook_array['process_record'] = Array();
   $hook_array['process_record'][] = Array(1, 'Update Name Field with ID In Records', 'custom/modules/EMP_Employee_List/customlogichook.php','EMP_Employee_List_cstm', 'update_bean');
   $hook_array['after_save'] = Array();
   $hook_array['after_save'][] = Array(1, 'Update Name Field with ID In Database', 'custom/modules/EMP_Employee_List/customlogichook.php','EMP_Employee_List_cstm', 'add_record_number'); 
   $hook_array['after_relationship_add'] = Array();
   $hook_array['after_relationship_add'][] = Array(1, 'update the employe name', 'custom/modules/EMP_Employee_List/customlogichook.php', 'EMP_Employee_List_cstm', 'PopulateAttendance_EmployeeName');

?>