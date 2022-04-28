.PHONY: all
all: tools.stamp
	@true

tools.stamp: config/deps.py
	$(info doing [$@])
	$(Q)pymakehelper touch_mkdir $@

.PHONY: clean_hard
clean_hard:
	$(Q)git clean -qffxd
