import std.stdio;
import std.string;

import src.config;

string getPort(string[] args) {
    if(args[1].startsWith("-")) {
        return args[2];
    }
    
    return args[1];
}

int main(string[] args) {
    if (args.length < 2) {
        writeln("Usage: " ~ args[0] ~ " [options] <port> ");
        return 1;
    }
    
    if (args[1] == "-v") {
        writeln("Reaper v" ~ getVersion() ~ ", Release. " ~ src.config.release);
    }

    writeln("Starting to run reaper on port " ~ getPort());

    return 0;
}
