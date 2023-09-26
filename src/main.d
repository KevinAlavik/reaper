import std.stdio;
import std.socket;
import std.conv;

void handleRequest(TcpConnection conn)
{
    auto clientAddr = conn.remoteAddr;
    string response = "HTTP/1.1 200 OK\r\n";
    response ~= "Content-Type: text/html\r\n";
    response ~= "\r\n";
    response ~= "lolz";
    conn.write(response);
}

void main(string[] args)
{
    if (args.length != 2)
    {
        writeln("Usage: reaper <port>");
        return;
    }

    int port;
    try
    {
        port = args[1].to!int;
    }
    catch (Exception e)
    {
        writeln("Invalid port number provided.");
        return;
    }

    // Create a TCP listener
    auto listener = new TcpListener();
    listener.bind(new InternetAddress("127.0.0.1", port));
    listener.listen();

    writeln("Server listening on port ", port);

    while (true)
    {
        auto conn = listener.accept();
        handleRequest(conn);
        conn.close();
    }
}
