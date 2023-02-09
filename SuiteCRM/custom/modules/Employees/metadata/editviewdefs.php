<?php
$viewdefs ['Employees'] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'employee_id_c',
            'label' => 'LBL_EMPLOYEE_ID_C',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'reports_to_name',
            'label' => 'LBL_REPORTS_TO_NAME',
            'customCode' => '{if $EDIT_REPORTS_TO}<input type="text" name="{$fields.reports_to_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.reports_to_name.name}" size="" value="{$fields.reports_to_name.value}" title="" autocomplete="off" >{$REPORTS_TO_JS}<input type="hidden" name="{$fields.reports_to_id.name}" id="{$fields.reports_to_id.name}" value="{$fields.reports_to_id.value}"> <span class="id-ff multiple"><button type="button" name="btn_{$fields.reports_to_name.name}" tabindex="0" title="{$APP.LBL_SELECT_BUTTON_TITLE}" class="button firstChild" value="{$APP.LBL_SELECT_BUTTON_LABEL}" onclick=\'open_popup("{$fields.reports_to_name.module}", 600, 400, "", true, false, {literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"reports_to_id","name":"reports_to_name"}}{/literal}, "single", true);\'><img src="themes/default/images/id-ff-select.png?v=igGzALk_bn-xeyTYyoHxog"     alt="Select" /></button><button type="button" name="btn_clr_{$fields.reports_to_name.name}" tabindex="0" title="{$APP.LBL_CLEAR_BUTTON_TITLE}" class="button lastChild" onclick="this.form.{$fields.reports_to_name.name}.value = \'\'; this.form.{$fields.reports_to_id.name}.value = \'\';" value="{$APP.LBL_CLEAR_BUTTON_LABEL}"><img src="themes/default/images/id-ff-clear.png?v=igGzALk_bn-xeyTYyoHxog"     alt="Clear" /></button></span>{else}{$fields.reports_to_name.value}<input type="hidden" name="{$fields.reports_to_id.name}" id="{$fields.reports_to_id.name}" value="{$fields.reports_to_id.value}">{/if}',
          ),
        ),
        2 => 
        array (
          0 => 'first_name',
          1 => 
          array (
            'name' => 'last_name',
            'displayParams' => 
            array (
              'required' => true,
            ),
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'employee_gender_c',
            'studio' => 'visible',
            'label' => 'LBL_EMPLOYEE_GENDER_C',
          ),
          1 => 
          array (
            'name' => 'employee_date_of_birth_c',
            'label' => 'LBL_EMPLOYEE_DATE_OF_BIRTH_C',
          ),
        ),
        4 => 
        array (
          0 => 'phone_mobile',
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'email1',
            'label' => 'LBL_EMAIL',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'employe_qualification_c',
            'studio' => 'visible',
            'label' => 'LBL_EMPLOYE_QUALIFICATION_C',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'title',
            'customCode' => '{if $EDIT_REPORTS_TO}<input type="text" name="{$fields.title.name}" id="{$fields.title.name}" size="30" maxlength="50" value="{$fields.title.value}" title="" tabindex="t" >{else}{$fields.title.value}<input type="hidden" name="{$fields.title.name}" id="{$fields.title.name}" value="{$fields.title.value}">{/if}',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'address_city',
            'label' => 'LBL_CITY',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'address_state',
            'label' => 'LBL_STATE',
          ),
        ),
        10 => 
        array (
          0 => 
          array (
            'name' => 'address_country',
            'label' => 'LBL_COUNTRY',
          ),
        ),
        11 => 
        array (
          0 => 'employee_status',
        ),
      ),
    ),
  ),
);
?>
