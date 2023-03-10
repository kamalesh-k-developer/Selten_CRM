<?php
  if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

  // require_once('include/MVC/View/views/view.edit.php');

class Pro_ProjectsViewEdit extends ViewEdit {

  function display(){
    parent::display();
    echo "<script src='custom/include/javascript/field_functions.js'></script>";
    echo "<script src='custom/include/javascript/jquery.multiselect.js'></script>";
    echo "<link rel='stylesheet' type='text/css' href='custom/css/jquery.multiselect.css'>";
    echo "<script>
         $(document).ready(function(){
          $('#project_service_type_c').multiselect();
         });
         </script>";
      }
  }