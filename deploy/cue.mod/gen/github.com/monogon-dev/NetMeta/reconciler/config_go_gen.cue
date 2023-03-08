// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go command-line-arguments

package main

// Function contains all information to create or benchmark a UDF inside Clickhouse
#Function: {
	name: string @go(Name)
	arguments: [...string] @go(Arguments,[]string)
	query: string @go(Query)
}

// MaterializedView contains all information to create a MaterializedView inside Clickhouse
// It also allows to benchmark the select statement inside the MV
#MaterializedView: {
	name:  string @go(Name)
	to:    string @go(To)
	from:  string @go(From)
	query: string @go(Query)
}

#Settings: [string]: _

// Table contains the Name, the Type, additional Settings and
// a reference to a Message inside the Protobuf file
#Table: {
	name:     string    @go(Name)
	schema:   string    @go(Schema)
	engine:   string    @go(Engine)
	settings: #Settings @go(Settings)
}

#Config: {
	database: string @go(Database)
	functions: [...#Function] @go(Functions,[]Function)
	materialized_views: [...#MaterializedView] @go(MaterializedViews,[]MaterializedView)
	source_tables: [...#Table] @go(SourceTables,[]Table)
}