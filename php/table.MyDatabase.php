<?php

/*
 * Editor server script for DB table MyDatabase
 * Created by http://editor.datatables.net/generator
 */

// DataTables PHP library and database connection
include( "lib/DataTables.php" );

// Alias Editor classes so they are easy to use
use
	DataTables\Editor,
	DataTables\Editor\Field,
	DataTables\Editor\Format,
	DataTables\Editor\Mjoin,
	DataTables\Editor\Options,
	DataTables\Editor\Upload,
	DataTables\Editor\Validate,
	DataTables\Editor\ValidateOptions;

// The following statement can be removed after the first run (i.e. the database
// table has been created). It is a good idea to do this to help improve
// performance.
$db->sql( "CREATE TABLE IF NOT EXISTS `MyDatabase` (
	`id` int(10) NOT NULL auto_increment,
	`inbound_date` date,
	`inbound_time` time,
	`license_plate` varchar(255),
	`truck_number` numeric(9,2),
	`company_name` varchar(255),
	`driver_name` varchar(255),
	`destination` varchar(255),
	`comments` varchar(255),
	`outbound_date` date,
	`outbound_time` time,
	PRIMARY KEY( `id` )
);" );

// Build our Editor instance and process the data coming from _POST
Editor::inst( $db, 'MyDatabase', 'id' )
	->fields(
		Field::inst( 'inbound_date' )
			->validator( Validate::dateFormat( 'D, j M y' ) )
			->getFormatter( Format::dateSqlToFormat( 'D, j M y' ) )
			->setFormatter( Format::dateFormatToSql( 'D, j M y' ) ),
		Field::inst( 'inbound_time' )
			->validator( Validate::dateFormat( 'H:i' ) )
			->getFormatter( Format::datetime( 'H:i:s', 'H:i' ) )
			->setFormatter( Format::datetime( 'H:i', 'H:i:s' ) ),
		Field::inst( 'license_plate' ),
		Field::inst( 'truck_number' ),
		Field::inst( 'company_name' ),
		Field::inst( 'driver_name' ),
		Field::inst( 'destination' ),
		Field::inst( 'comments' ),
		Field::inst( 'outbound_date' )
			->validator( Validate::dateFormat( 'D, j M y' ) )
			->getFormatter( Format::dateSqlToFormat( 'D, j M y' ) )
			->setFormatter( Format::dateFormatToSql( 'D, j M y' ) ),
		Field::inst( 'outbound_time' )
			->validator( Validate::dateFormat( 'H:i' ) )
			->getFormatter( Format::datetime( 'H:i:s', 'H:i' ) )
			->setFormatter( Format::datetime( 'H:i', 'H:i:s' ) )
	)
	->process( $_POST )
	->json();
