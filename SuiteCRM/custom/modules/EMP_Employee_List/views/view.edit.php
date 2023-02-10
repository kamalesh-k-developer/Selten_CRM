<?php
  if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

  //require_once('include/MVC/View/views/view.edit.php');

class EMP_Employee_ListViewEdit extends ViewEdit {

  function display(){
    parent::display();
    echo "<script src='custom/include/javascript/field_functions.js'></script>";
      echo "<script>
        $(document).ready(function(){
          hideField('emp_email_c');
          makeNonMandatory('emp_dob_c');
          $('#emp_gender_c').hide();
          console.log('test');
        });
        </script>";
      }
  }



?>