<?php
function dropdown_List(){
//    $GLOBALS['log']->fatal("testing".print_r($bean,true));
            global $db;
            $query = "SELECT id_c,skill_name_c FROM sk_skill_cstm"; 
            $result = $db->query($query);
            $getDropdown = array();
            while($row = $db->fetchByAssoc($result)){
                // $GLOBALS['log']->fatal("test1".print_r($row,true));
                $getDropdown[] = $row['skill_name_c'];
                // $GLOBALS['log']->fatal("test1".print_r($getDropdown,true));
                // $getDropdown++;
            }
            return $getDropdown;
            
        }
            //

            
            // while ($row = $db->fetchByAssoc($result)) { 
            //     $GLOBALS['log']->fatal("test");
            //     $bean->emp_username_c->addOption($row['skill_name_c']);
            //     $GLOBALS['log']->fatal("testing".print_r($bean->emp_username_c,true));
            // } 

    //         $getDropdown = array();
	// 	//$getDropdown[''] = '';
    //     //  $test = $db->fetchByAssoc($result);
    //     //  $GLOBALS['log']->fatal("testing".print_r($test,true));
	// 	/*while ($test != null) {
    //         $GLOBALS['log']->fatal("testing");
	// 		//$getDropdown[$test['name']] = $test['value'];
    //     }*/

    //     while ($row = $db->fetchByAssoc($result)) { 
    //             // $lengthVar = 0;
    //              $GLOBALS['log']->fatal($row["skill_name_c"],$lengthVar);
    //              $getDropdown = $row['skill_name_c'];
    //             //  $lengthVar+1;
    //             $GLOBALS['log']->fatal("test1"print_r($row,true));
    //      }
    //      $GLOBALS['log']->fatal(print_r($getDropdown,true));
    //     return $getDropdown;
    // //return true;
    //     }
?>