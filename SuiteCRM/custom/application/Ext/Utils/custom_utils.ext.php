<?php 
 //WARNING: The contents of this file are auto-generated


function dropdown_List(){
            global $db;
            $query = "SELECT id_c,skill_name_c FROM sk_skill_cstm"; 
            $result = $db->query($query);
            $getDropdown = array();
            while($row = $db->fetchByAssoc($result)){
                $getDropdown[] = $row['skill_name_c'];
            }
            return $getDropdown;
            
        }

?>