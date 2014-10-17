var lineItemTemplate = 
' <tr>' + 
' <td class="expense_desc"><input id="leg_line_items_attributes_x_description" name="leg[line_items_attributes][x][description]" type="text" /></td>' + 
' <td class="expense_date" ><input id="leg_line_items_attributes_x_value_date" name="leg[line_items_attributes][x][value_date]" type="date" /></td>' + 
' <td class="expense_ccy" ><input id="leg_line_items_attributes_x_ccy" name="leg[line_items_attributes][x][ccy]" type="text" /></td>' + 
' <td class="expense_amt" ><input id="leg_line_items_attributes_x_ccy_amount" name="leg[line_items_attributes][x][ccy_amount]" type="number" /></td>' + 
' </tr>' ;


$(document).ready(function(){
	$('button#add_line_item').on('click', function(e){
		e.preventDefault();
		var lineCount = $('td.expense_amt').length;
		var snippet = lineItemTemplate.replace(/\[x\]/g, '[' + lineCount + ']' );
		snippet = snippet.replace(/_x_/g, '_' + lineCount + '_' );
		$('table#expense_line_items tbody').append(snippet);
	});
});