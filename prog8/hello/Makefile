#
# Simple Makefile for prog8
# Since Sublime is normally set to spaces, you need to update some setting
# in it.
#
# If you make a file called Makefile.sublime-settings in your Packages/User
# directory, and put this in it:
#{
#	"translate_tabs_to_spaces": false
#}
#
OBJDIR := bin
OBJS := $(addprefix $(OBJDIR)/,hello.prg)

$(OBJDIR)/%.prg : %.p8
	prog8c $*.p8 -target c64 -out $(OBJDIR)/

all: $(OBJS)

$(OBJS):  $(OBJDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

.PHONY: run

run: bin/hello.prg
	x64sc bin/hello.prg

.PHONY: clean

clean:
	-rm bin/*.prg
	-rm bin/*.asm
	-rm bin/*.vice-mon-list

