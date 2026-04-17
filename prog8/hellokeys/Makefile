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
OBJS := $(addprefix $(OBJDIR)/,hellokeys.prg)

$(OBJDIR)/%.prg : %.p8
	prog8c $*.p8 -target c64 -out $(OBJDIR)/

all: $(OBJS)

$(OBJS):  $(OBJDIR)

$(OBJDIR):
	mkdir $(OBJDIR)

.PHONY: run

run: $(OBJDIR)/hellokeys.prg
	x64sc $(OBJDIR)/hellokeys.prg

.PHONY: clean

clean:
	-rm $(OBJDIR)/*.prg
	-rm $(OBJDIR)/*.asm
	-rm $(OBJDIR)/*.vice-mon-list

