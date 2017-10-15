SHARE_PREFIX=$(DESTDIR)/usr/share/sane/epjitsu
DRIVER_FILES=*.nal

_create-dir:
	mkdir -p $(SHARE_PREFIX)

install: _create-dir
	cp $(DRIVER_FILES) $(SHARE_PREFIX)

install-1300: _create-dir
	cp 1300_0C26.nal $(SHARE_PREFIX)

install-1300i: _create-dir
	cp 1300i_0D12.nal $(SHARE_PREFIX)

install-1100: _create-dir
	cp 1100_0A00.nal 1100_0B00.nal $(SHARE_PREFIX)

install-300: _create-dir
	cp 300_0C00.nal $(SHARE_PREFIX)

install-300MJ: _create-dir
	cp 300MJ_0A00.nal $(SHARE_PREFIX)

install-300M: _create-dir
	cp 300M_0B00.nal $(SHARE_PREFIX)

uninstall:
	rm -rf $(SHARE_PREFIX)
