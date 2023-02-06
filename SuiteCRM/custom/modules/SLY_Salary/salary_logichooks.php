<?php
  
  if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

  class username_change {

    function username_update($bean, $event, $arguments){
        //   $GLOBALS['log']->fatal(print_r($bean,true));
        //   $GLOBALS['log']->fatal($bean['id']);
        // $GLOBALS['log']->fatal($bean->id);
        // $GLOBALS['log']->fatal($bean->user_c);
        // $GLOBALS['log']->fatal($bean->name);
        $GLOBALS['log']->fatal($bean->logged_c);


        $bean = BeanFactory::getBean("SLY_Salary",$bean->id); // Case id that you want to change
        $bean->user_c = admin;
        $bean->save();
   }
  
   
  
}
?>