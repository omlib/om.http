package om.http;

/**
*/
enum abstract StatusMessage(String) from String to String {

    var CONTINUE = "Continue";
    var SWITCHING_PROTOCOL = "Switching Protocol";
    var PROCESSING = "Processing (WebDAV)";
    var EARLY_HINTS = "Early Hints";

    var OK = "OK";
    var CREATED = "Created";
    var ACCEPTED = "Accepted";
    var NON_AUTORITATIVE_INFORMATION = "Non-Authoritative Information";
    var NO_CONTENT = "No Content";
    var RESET_CONTENT = "Reset Content";
    var PARTIAL_CONTENT = "Partial Content";

    var NOT_FOUND = "Not Found";

    //TODO

    public static function fromCode( code : StatusCode ) : StatusMessage {
        return switch code {
        case StatusCode.CONTINUE: StatusMessage.CONTINUE;
        case StatusCode.SWITCHING_PROTOCOL: StatusMessage.SWITCHING_PROTOCOL;
        case StatusCode.PROCESSING: StatusMessage.PROCESSING;
        case StatusCode.EARLY_HINTS: StatusMessage.EARLY_HINTS;
        case StatusCode.OK: StatusMessage.OK;
        case StatusCode.CREATED: StatusMessage.CREATED;
        case StatusCode.ACCEPTED: StatusMessage.ACCEPTED;
        case StatusCode.NON_AUTORITATIVE_INFORMATION: StatusMessage.NON_AUTORITATIVE_INFORMATION;
        case StatusCode.NO_CONTENT: StatusMessage.NO_CONTENT;
        case StatusCode.RESET_CONTENT: StatusMessage.RESET_CONTENT;
        case StatusCode.PARTIAL_CONTENT: StatusMessage.PARTIAL_CONTENT;
        //..
        case StatusCode.NOT_FOUND: StatusMessage.NOT_FOUND;
        case _: null;
        }
    }
}
