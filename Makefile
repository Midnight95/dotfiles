install:
	# remove old config files 
	rm -rf $(HOME)/.config/nvim $(HOME)/.config/hypr $(HOME)/.config/wezterm
	
	# create config files symbolic links
	cp -rsf $(shell pwd)/nvim $(HOME)/.config/nvim
	cp -rsf $(shell pwd)/hypr $(HOME)/.config/hypr
	cp -rsf $(shell pwd)/wezterm $(HOME)/.config/wezterm
	cp -sf $(shell pwd)/bashrc $(HOME)/.bashrc
