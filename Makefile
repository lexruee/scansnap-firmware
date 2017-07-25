DEST_DIR=/usr/share/sane/epjitsu
DRIVER_FILES=*.nal

_create-dir:
	mkdir -p $(DEST_DIR)

install: _create-dir
	cp $(DRIVER_FILES) $(DEST_DIR)

install-1300: _create-dir
	cp 1300_0C26.nal $(DEST_DIR)

install-1300i: _create-dir
	cp 1300i_0D12.nal $(DEST_DIR)

install-1100: _create-dir
	cp 1100_0A00.nal 1100_0B00.nal $(DEST_DIR)

install-300: _create-dir
	cp 300_0C00.nal $(DEST_DIR)

install-300MJ: _create-dir
	cp 300MJ_0A00.nal $(DEST_DIR)

install-300M: _create-dir
	cp 300M_0B00.nal $(DEST_DIR)

uninstall:
	rm -rf $(DEST_DIR)
