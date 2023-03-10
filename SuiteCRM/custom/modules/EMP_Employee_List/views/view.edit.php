<?php
  if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

  //require_once('include/MVC/View/views/view.edit.php');

class EMP_Employee_ListViewEdit extends ViewEdit {

  function display(){
    parent::display();
    echo "<script src='custom/include/javascript/field_functions.js'></script>";
    echo "<script src='custom/include/javascript/jquery.multiselect.js'></script>";
    echo "<link rel='stylesheet' type='text/css' href='custom/css/jquery.multiselect.css'>";
      echo "<script>
        $(document).ready(function(){
          console.log('test in views');
          makeNonMandatory('emp_dob_c');
          $('#emp_gender_c').multiselect();
        });
        </script>";
      }
  }




?>