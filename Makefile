.PHONY: update-package-list

update-package-list:
	@pacman -Qqe > pkglist.txt
