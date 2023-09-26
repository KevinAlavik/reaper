DMD = dmd
OUT = build/main
SRCS = src/main.d
DFLAGS = -w
INSTALL_PATH = /usr/local/bin/reaper

all: $(OUT)

$(OUT): $(SRCS)
	$(DMD) $(DFLAGS) -of$@ $^

clean:
	rm -f $(OUT)

install: $(OUT)
	ln -sf $(OUT) $(INSTALL_PATH)

uninstall:
	rm -f $(INSTALL_PATH)
