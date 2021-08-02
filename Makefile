subdirs:=\
	aebersold_jazz/42_blues_in_all_keys \
	blues \
	carol_kaye \
	caz16 \
	caz17 \
	caz18 \
	caz19 \
	caz21 \
	funky \
	instruction \
	jazz \
	misc \
	pop
.PHONY: $(subdirs)

all: $(subdirs)
.PHONY: all

$(subdirs):
	$(MAKE) -C $@
.PHONY: $(subdirs)

cleandirs:=$(subdirs:%=clean-%)

clean: $(cleandirs)
.PHONY: clean

$(cleandirs):
	$(MAKE) -C $(@:clean-%=%) clean
.PHONY: $(cleandirs)
