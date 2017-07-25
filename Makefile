DEST_DIR=/usr/share/sane/epjitsu
DRIVER_FILE=./1300i_0D12.nal


install:
	mkdir -p $(DEST_DIR)
	cp $(DRIVER_FILE) $(DEST_DIR)

uninstall:
	rm -rf $(DEST_DIR)
