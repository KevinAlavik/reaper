DMD = dmd
OUT = build/main.exe
SRCS = src/*.d
DFLAGS = -w
MAKEFLAGS += --silent

all: $(OUT)

$(OUT): $(SRCS)
	$(DMD) $(DFLAGS) -of$@ $^
	echo Finnished
