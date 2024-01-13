.PHONY: update-package-list install-packages

update-package-list:
	@pacman -Qqe > pkglist.txt

install-packages:
	@sudo pacman -S --needed - < pkglist.txt

link-configs:
	@# Qtile
	@mkdir -p $(HOME)/.config/qtile
	@ln -sf $(CURDIR)/settings/.config/qtile/config.py $(HOME)/.config/qtile/config.py
	@# Kitty
	@mkdir -p $(HOME)/.config/kitty
	@ln -sf $(CURDIR)/settings/.config/kitty/kitty.conf $(HOME)/.config/kitty/kitty.conf
	@# Home files
	@ln -sf $(CURDIR)/settings/.xprofile $(HOME)/.xprofile
	@ln -sf $(CURDIR)/settings/.xinitrc $(HOME)/.xinitrc
	@ln -sf $(CURDIR)/settings/.bash_profile $(HOME)/.bash_profile
	@ln -sf $(CURDIR)/settings/.bashrc $(HOME)/.bashrc
