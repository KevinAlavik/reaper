module src.server;
public import vibe.vibe;

void index(HTTPServerRequest req, HTTPServerResponse res)
{
	res.writeBody("lolz");
}

void start(ushort port)
{
	auto router = new URLRouter;
	router.get("/", &index);
	
	auto settings = new HTTPServerSettings;
	settings.port = port;
	
	listenHTTP(settings, router);
	
	runApplication();
}