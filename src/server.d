module src.server;
public import vibe.http.router;

void startServer(ushort port, string redirectUrl)
{
    auto router = new URLRouter;

    router.get("/", staticRedirect(redirectUrl));

    auto settings = new HTTPServerSettings;
    settings.port = port;
    settings.bindAddresses = ["127.0.0.1"];

    listenHTTP(settings, router);
}
