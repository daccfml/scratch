<cfscript>
numbers = ["one","two","three","four"];
numbers.each(function(value,index){
	if (value=="one") {
		numbers.prepend("zero");
	}
	writeOutput("Index: #index#; value: #value#<br>");
});
writeDump(var=numbers);
</cfscript>