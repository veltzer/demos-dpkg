.PHONY: all
all: tools.stamp
	@true

tools.stamp:
	$(info doing [$@])
	@templar install_deps
	@pymakehelper touch_mkdir $@

.PHONY: clean
clean:
	@git clean -qffxd
