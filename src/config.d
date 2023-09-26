module src.config;

public import std.stdio;
public import std.conv;

double versionNumber = 1.0;
string release = "September 2023";
string name = "";

string getVersion() {
    return to!string(versionNumber);
}