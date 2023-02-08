/**
 * function to add mandatory fields of panel to validation
 * @param field_id {string|jQuery}
 */
function hideField(field_id) {
	var target = _getFieldData(field_id);

	if (typeof _form_id != 'undefined' && _form_id != 'DetaiView' && (!target.field || !target.field.length))
		return;
	if (target.parentTd.find('div#' + target.fieldId + '_parent_wrapper').length === 0){
		var parent_padding = target.parentTd.css('padding');
		var label_padding = target.labelTd.css('padding');

		target.parentTd
			.css('padding', '0')
			.wrapInner( "<div id='"+target.fieldId+"_parent_wrapper' data-padding='"+parent_padding+"' style='display:none;'></div>");
		target.labelTd
			.css('padding', '0')
			.wrapInner( "<div id='"+target.fieldId+"_label_wrapper' data-padding='"+label_padding+"' style='display:none;'></div>");

		if (target.field && target.field.length && target.labelTd.find('span.required').length) {
			removeFromValidate(_form_id, target.field.prop('id'));
			if (target.field.prop('multiple')) {
				removeFromValidate(_form_id, target.field.prop('id') + '[]');
			}
			if (target.type == 'datetimecombo') {
				target.parentTd.find("#" + target.fieldId + "_date, #" + target.fieldId + "_hours, #" + target.fieldId + "_minutes, #" + target.fieldId + "_meridiem").each(function () {
					removeFromValidate(_form_id, this.id);
				});
			}
		}
	}
}


/**
 * helper function. Return information about the field
 *
 * @param field_id {String | jQuery} -  Can accept field name, jQuery object or jQuery selector in paramether
 * @returns {{
* 				parentTd: boolean|jQuery,
* 				field: boolean|jQuery,  - original field name. Can be different from 'id' attribute in case of file and datetimecombo fields
* 				type: boolean|String,
* 				fieldId: boolean|String,
* 				labelTd: boolean|jQuery
* 			}}
* @private
*/
function _getFieldData(field_id) {
	var result = {
		field: false,
		fieldId: false,
		parentTd: false,
		labelTd: false,
		type: false
	};

	if (!field_id)
		return result;
		// console.log(result);
	if (field_id instanceof jQuery)	{
		result.field = field_id;
		// console.log(field_id);
	} else {
		if (field_id.match(/^#?[a-zA-Z0-9_\-]+$/)) {
			if (field_id.charAt(0) == '#')
				field_id = field_id.substring(1);
			result.field = $('#' + field_id);
			if (!result.field.length) {
				result.parentTd = $('td#' + field_id + '_field');
				result.labelTd = $('td#' + field_id + '_label');
				if (result.parentTd.length) {
					result.field = result.parentTd.find('#' + field_id + '_file');
					result.fieldId = field_id;
				}
			}
		}

		else {
			result.field = $(field_id);
			if (!result.field.length)
				result.field = $(field_id + '_file');
		}
	}
	if (!result.field.length)
		return result;
	if (result.field.length > 1) {
		result.field = result.field.filter(function () {
			var field = $(this);
			if (field.is('input') || field.is('textarea') || field.is('select'))
				return field;
		});
	}
	var target_id = result.field.prop('id');
	if (target_id && target_id.match(/_file$/) && result.field.closest('div.'+target_id).length)
		target_id = target_id.replace(/_file$/, '');
	if (!result.fieldId)
		result.fieldId = target_id;
	if (!result.parentTd.length)
		result.parentTd = $('td#' + target_id + '_field');
	if (!result.labelTd.length)
		result.labelTd = $('td#' + target_id + '_label');
	if (!result.parentTd.length){
		if (result.field.parent('td').length > 0 && result.field.parent('td').data('type') == 'relate'){
			result.parentTd = result.field.parent('td');
			result.labelTd = result.parentTd.prev('td');
		}
	}
	result.type = result.parentTd.data('type') || getFieldType(field_id);
	return result;
}

/**
 * return field type acceptable for 'addToValidate' function
 * @param field_id {string} - field name
 * @returns {string}
 */
function getFieldType(field_id){
	field_id = field_id.replace('[]', '');
	if ($('#'+field_id+'_file').length > 0){
		if ($('#'+field_id).val() != ''){
			$('#'+field_id).closest('td').find('#remove_button').click(function(){
				var field_label = $('#'+field_id).closest('td').prev('td').html();
				var error_span = '<span class="required">*</span>';
				if (field_label.indexOf(error_span) > -1){
					removeFromValidate(_form_id,field_id);
					addToValidate(_form_id, field_id, 'file', true, field_label.replace(error_span,''));
				}
			});
			return 'varchar';
		}
		else
			return 'file';
	}
	else if ($('#'+field_id).hasClass('date_input'))
		return 'date';
	else if ($('#'+field_id).is('textarea'))
		return 'text';
	else if ($('#'+field_id).is('select'))
		return 'enum';
	else if ($('#'+field_id).is('input[type=radio]'))
		return 'radioenum';
	else
		return 'varchar';
}

function makeNonMandatory(field_id, removeErrorSpan){
	var target = _getFieldData(field_id);
	var errorSpan = '<span class="required">*</span>';
	var removeErrorSpan = (typeof removeErrorSpan !== 'undefined') ? removeErrorSpan : true;

	if (!target.field.length)
		return;
	if (target.field.prop('multiple') == true && target.type != 'FileUpload' )
		removeFromValidate(_form_id, target.fieldId+'[]');
	if (target.type == 'datetimecombo')
		removeFromValidate(_form_id, target.fieldId + '_date');
	removeFromValidate(_form_id, target.field.prop('id'));

	if (!removeErrorSpan)
		return;
	var labelHTML = target.labelTd.html();
	if (labelHTML && labelHTML.indexOf(errorSpan) > -1)
		target.labelTd.html(labelHTML.replace(errorSpan, ''));
}

function makeMandatory(field_id){
	var target = _getFieldData(field_id);
	var errorSpan = '<span class="required">*</span>';
	if (!target.field || !target.field.length || !target.labelTd.length)
		return;
	var message = target.labelTd.html()
		.replace('<span class="required">*</span>','')
		.replace(/:[\s]*$/, '');
	removeFromValidate(_form_id, target.field.prop('id'));
	if (target.type == 'datetimecombo') {
		removeFromValidate(_form_id, target.fieldId + '_date');
		addToValidate(_form_id, target.fieldId + '_date', target.type, true, message);
	}
	else if (target.type == 'FileUpload')
		_addToValidate_FileUpload(target, message);
	else if (target.type == 'url')
		_addToValidate_URL(target, message);
	else
		addToValidate(_form_id, target.field.prop('id'), target.type, true, message);
	if (target.labelTd.html().indexOf(errorSpan) == -1)
		target.labelTd.append(errorSpan);
}

function showField(field_id) {
	var target = _getFieldData(field_id);
	if (typeof _form_id != 'undefined' && _form_id != 'DetaiView' && (!target.field || !target.field.length))
		return;
	var parent_wrapper = target.parentTd.find("div#"+target.fieldId+"_parent_wrapper");
	var label_wrapper = target.labelTd.find("div#"+target.fieldId+"_label_wrapper");
	if (parent_wrapper.length) {
		target.parentTd.css('padding', parent_wrapper.data('padding'));
		target.labelTd.css('padding', label_wrapper.data('padding'));
		parent_wrapper.children().unwrap();
		target.labelTd.html(label_wrapper.html());
		if (target.field && target.field.length && target.labelTd.find("span.required").length) {
			var message = target.labelTd.html()
				.replace('<span class="required">*</span>','')
				.replace(/:[\s]*$/, '');
			removeFromValidate(_form_id, target.field.prop('id'));
			if (target.type == 'datetimecombo') {
				removeFromValidate(_form_id, target.fieldId + '_date');
				addToValidate(_form_id, target.fieldId + "_date", target.type, true, message);
				target.parentTd.find("#"+target.fieldId+"_hours, #"+target.fieldId+"_minutes, #"+target.fieldId+"_meridiem").each(function(){
					addToValidateBinaryDependency(_form_id, this.id, 'alpha', false, message, target.fieldId+"_date");
				});
			}
			else if (target.type == 'FileUpload') {
				_addToValidate_FileUpload(target, message);
			}
			else if (target.type == 'radioenum') {
				_addToValidate_RadioEnum(target, message);
			}
			else if (target.type == 'url') {
				_addToValidate_URL(target, message);
			}
			else {
				addToValidate(_form_id, target.fieldId, target.type, true, message);
			}
		}
	}
}
