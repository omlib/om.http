package om.http;

class Error extends om.error.ErrorType {

	public var code : StatusCode;

	public function new( code : StatusCode, ?pos : haxe.PosInfos ) {
		this.code = code;
		super( 'http error $code', pos );
	}

	/*
	public function toString() : String {
		return 'http error $code';
	}
	*/

}
