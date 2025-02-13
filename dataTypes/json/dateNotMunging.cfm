<cfscript>
	dates = queryNew("");
	queryAddColumn(dates, "id", [1,2,3,4,5,6,7]);
	queryAddColumn(dates, "dob", [
		"1933-02-20",
		"1933-11-06",
		"1959-09-01",
		"1961-07-12",
		"1970-02-17",
		"1990-10-05",
		"2011-03-24"
	]);

	json = serializeJson(dates, true);
	deserialised = deserializeJson(json, false);
</cfscript>
<cfquery name="filteredDates" dbtype="query">
	SELECT	*
	FROM	dates
	WHERE	dob > <cfqueryparam value="#createDate(1958,10,18)#" cfsqltype="CF_SQL_TIMESTAMP">
</cfquery>
<cfquery name="filteredDeserialisedDates" dbtype="query">
	SELECT	*
	FROM	deserialised
	WHERE	dob > <cfqueryparam value="#createDate(1958,10,18)#" cfsqltype="CF_SQL_TIMESTAMP">
</cfquery>

<cfdump var="#[
	dates,
	filteredDates,
	json,
	deserialised,
	filteredDeserialisedDates
]#">

<cfoutput>
	Value: #deserialised.dob[1]#<br>
	isDate: #isDate(deserialised.dob[1])#<br>
	dateAdd: #dateAdd("d", 0, deserialised.dob[1])#<br>
</cfoutput>
