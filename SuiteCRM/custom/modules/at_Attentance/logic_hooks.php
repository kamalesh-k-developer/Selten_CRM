<?php
    // Do not store anything in this file that is not part of the array or the hook version.  This file will
    // be automatically rebuilt in the future.
   $hook_version = 1;
   $hook_array = Array();
 
   $hook_array['process_record'] = Array();
   $hook_array['process_record'][] = Array(1, 'Update Name Field with ID', 'custom/modules/at_Attentance/customlogichook.php','at_Attentance_cstm', 'update_bean');
   $hook_array['after_save'] = Array();
   $hook_array['after_save'][] = Array(1, 'Update Name Field with ID', 'custom/modules/at_Attentance/customlogichook.php','at_Attentance_cstm', 'add_record_number'); 

?>