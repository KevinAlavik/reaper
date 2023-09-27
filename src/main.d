import std.stdio;
import std.conv;
import src.server;

void main(string[] args) {
    if (args.length != 3) {
        writeln("Usage: " ~ args[0] ~ " <port:int> <webUrl:string>");
        return;
    }

    ushort port;
    try {
        port = args[1].to!ushort();
    } catch (Exception e) {
        writeln("Error parsing port: ", e.msg);
        return;
    }

    string webUrl = args[2];
    startServer(port, webUrl);
}
