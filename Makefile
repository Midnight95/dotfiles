install:
	rm -rf $(HOME)/.config/nvim $(HOME)/.config/hypr
	cp -rsf $(shell pwd)/nvim $(HOME)/.config/nvim
	cp -rsf $(shell pwd)/hypr $(HOME)/.config/hypr
