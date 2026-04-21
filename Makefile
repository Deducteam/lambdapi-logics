PKG := TFF U Zenon PTS

.PHONY: default
default: clean
	for p in $(PKG); do $(MAKE) -C $$p || exit 1; done

%:
	for p in $(PKG); do $(MAKE) -C $$p $* || exit 1; done
