install:
	# remove old config files 
	rm -rf $(HOME)/.config/nvim $(HOME)/.config/hypr $(HOME)/.config/wezterm $(HOME)/.config/waybar $(HOME)/.config/yazi
	
	# create config files symbolic links
	cp -rsf $(shell pwd)/nvim $(HOME)/.config/nvim
	cp -rsf $(shell pwd)/hypr $(HOME)/.config/hypr
	cp -rsf $(shell pwd)/wezterm $(HOME)/.config/wezterm
	cp -rsf $(shell pwd)/waybar $(HOME)/.config/waybar
	cp -rsf $(shell pwd)/yazi $(HOME)/.config/yazi

	cp -sf $(shell pwd)/bashrc $(HOME)/.bashrc


	# install yazi themes
	ya pkg -a dangooddd/kanagawa
	ya pkg add yazi-rs/plugins:full-border
