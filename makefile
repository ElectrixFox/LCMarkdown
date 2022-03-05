CXX = gcc
CXXFLAGS = -I.

APPNAME = main

LIBS = -L. -lLCFls

SRCFILES := $(wildcard *.c)
OBJFILES := $(addprefix obj/, $(patsubst %.c, %.o, $(SRCFILES)))

obj/%.o: %.c
	$(CXX) $(CXXFLAGS) -c -o $@ $^ $(LIBS)

all: $(OBJFILES)
	$(CXX) $(CXXFLAGS) $^ -o $(APPNAME) $(LIBS)

lib:
	$(CXX) $(CXXFLAGS) -c -o obj/LCMarkdown.o LCMarkdown.c
	ar rcs LCMd.lib obj/LCMarkdown.o

both: lib all

output:
	pandoc -t html -s --mathjax test.md -o Out/test.html