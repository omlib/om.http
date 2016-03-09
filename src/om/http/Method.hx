package om.http;

@:enum abstract Method(String) from String to String {
	var GET = "GET";
	var POST = "POST";
	var PUT = "PUT";
	var DELETE = "DELETE";
}
