<cfscript>
// serializeQueryByColumns.cfm

numbers = queryNew("id,en,mi", "integer,varchar,varchar", [
	[1,"one","tahi"],
	[2,"two","rua"],
	[3,"three","toru"],
	[4,"four","wha"],
	[5,"five","rima"],
	[6,"six","ono"],
	[7,"seven","whitu"],
	[8,"eight","ware"],
	[9,"nine","iwa"],
	[10,"ten","tekau"]
]);

json.true = serializeJSON(numbers, true);
json.false = serializeJSON(numbers, false);

writeDump(json);

</cfscript>