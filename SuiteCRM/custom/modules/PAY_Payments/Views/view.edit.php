<?php
    if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

    require_once('include/MVC/View/views/view.edit.php');

    class PAY_PaymentsViewEdit extends ViewEdit {
        function PAY_PaymentsViewEdit(){
            parent::ViewEdit();
        }
        function display(){
            parent::display();
            echo "<script>
            $(document).ready(function(){
             $('#pending_total_amount_c').hide();
             $('#pending_total_amount_c_label').hide();
            });
           </script>";
            $pending_payment = $this->bean->ia_any_pending_payments_c;
            print_r($pending_payment);
        }
    }



?>