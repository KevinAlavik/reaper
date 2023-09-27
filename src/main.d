import std.stdio;
import std.string;
import src.config;
import src.server;

string getPort(string[] args) {
    if (args.length < 2) {
        writeln("Usage: " ~ args[0] ~ " <port<int>>");
        return "";
    }

    if(args[1].isNumeric()) {
        return args[1];
    }


    writeln("Usage: " ~ args[0] ~ " <port<int>>");
    return "";
}


int main(string[] args) {
    string port = getPort(args);
    if (port == "") {
        return 1;
    }

    writeln("Starting to run reaper on port " ~ port);
    start(to!ushort(port));
    return 0;
}
