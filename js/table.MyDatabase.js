
/*
 * Editor client script for DB table MyDatabase
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.MyDatabase.php',
		table: '#MyDatabase',
		fields: [
			{
				"label": "Inbound Date:",
				"name": "inbound_date",
				"type": "datetime",
				"format": "ddd, D MMM YY"
			},
			{
				"label": "Inbound Time:",
				"name": "inbound_time",
				"type": "datetime",
				"format": "HH:mm"
			},
			{
				"label": "License Plate:",
				"name": "license_plate"
			},
			{
				"label": "Truck Number:",
				"name": "truck_number"
			},
			{
				"label": "Company Name:",
				"name": "company_name"
			},
			{
				"label": "Driver Name:",
				"name": "driver_name"
			},
			{
				"label": "Destination:",
				"name": "destination"
			},
			{
				"label": "Comments:",
				"name": "comments"
			},
			{
				"label": "Outbound Date:",
				"name": "outbound_date",
				"type": "datetime",
				"format": "ddd, D MMM YY"
			},
			{
				"label": "Outbound Time:",
				"name": "outbound_time",
				"type": "datetime",
				"format": "HH:mm"
			}
		]
	} );

	var table = $('#MyDatabase').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.MyDatabase.php',
		columns: [
			{
				"data": "inbound_date"
			},
			{
				"data": "inbound_time"
			},
			{
				"data": "license_plate"
			},
			{
				"data": "truck_number"
			},
			{
				"data": "company_name"
			},
			{
				"data": "driver_name"
			},
			{
				"data": "destination"
			},
			{
				"data": "comments"
			},
			{
				"data": "outbound_date"
			},
			{
				"data": "outbound_time"
			}
		],
		select: true,
		lengthChange: false,
		buttons: [
			{ extend: 'create', editor: editor },
			{ extend: 'edit',   editor: editor },
			{ extend: 'remove', editor: editor }
		]
	} );
} );

}(jQuery));

