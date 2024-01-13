.PHONY: update-package-list install-packages

update-package-list:
	@pacman -Qqe > pkglist.txt

install-packages:
	@sudo pacman -S --needed - < pkglist.txt
