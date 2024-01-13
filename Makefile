.PHONY: update install link
	
# Update pkglist.txt to the current pacman installation
update:
	@pacman -Qqe > pkglist.txt

# Install the packages listed in pkglist.txt
install:
	@sudo pacman -S --needed - < pkglist.txt

define link-file
	@mkdir -p $(dir $(HOME)/$(1))
	@ln -sf $(CURDIR)/configs/$(1) $(HOME)/$(1)
endef

# Alias a configuration file
link:
	$(call link-file,.config/qtile/config.py)
	$(call link-file,.config/kitty/kitty.conf)
	$(call link-file,.xprofile)
	$(call link-file,.xinitrc)
	$(call link-file,.bash_profile)
	$(call link-file,.bashrc)
