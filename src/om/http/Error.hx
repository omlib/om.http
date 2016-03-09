package om.http;

class Error {

	public var code : Int;

	public function new( code : Int ) {
		this.code = code;
	}

	public function toString() : String {
		return 'http error $code';
	}

}
