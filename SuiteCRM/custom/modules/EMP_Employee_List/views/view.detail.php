<?php
  if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

  require_once('include/MVC/View/views/view.detail.php');

   class EMP_Employee_ListViewDetail extends ViewDetail {

        function display(){
          parent::display();
          $employee_status = $this->bean->employee_status_c;
          // print_r($employee_status);
          if($employee_status === 'inactive'){
            echo "<script>
               $(document).ready(function(){
                  console.log('hidetest');
                  $('#subpanel_list').hide();
              });
              </script>";
          }
        }
   }


?>