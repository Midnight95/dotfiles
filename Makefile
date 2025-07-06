install:
	rm -rf $(HOME)/.config/nvim
	cp -rsf $(shell pwd)/nvim $(HOME)/.config/nvim
