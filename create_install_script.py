import os.path


def add_yay_cmds(cmds: list[str]) -> None:
    cmds.append(
        "yay --save --answerdiff None --answerclean None --removemake --cleanafter"
    )
    cmds.append("yay -Yc\n")
    cmds.append("yay")
    cmds.append("yay --devel")
    cmds.append("mkdir ~/screenshots")
    cmds.append("clear\n")


def add_pkg_cmds(cmds: list[str]) -> None:
    pkg_filenames = [
        "essentials",
        "fonts",
        "themes",
        "desktop",
        "casual_apps",
        # "coding_apps",
    ]
    basefilepath = "pkgs"

    pkg_filepaths = [
        os.path.join(basefilepath, pkg_filename) for pkg_filename in pkg_filenames
    ]

    for filepath in pkg_filepaths:
        with open(filepath, "r") as file:
            cmds.append(f"# Packages from {filepath}")
            cmds.extend([f"yay -S --needed {pkg.rstrip()}" for pkg in file.readlines()])

        cmds.append("clear\n")


def add_copy_cmds(cmds: list[str]) -> None:
    cmds.append("# Copy configs to folders")
    cmds.append("cp -r ./config/* ~/.config/")
    cmds.append("sudo cp -r ./etc/* /etc/")
    cmds.append("sudo cp -r ./sddm/ /usr/share/")
    cmds.append("cp ./.zshrc ~/")
    cmds.append("clear\n")

    cmds.append("# Copy images to the Pictures folder")
    cmds.append("7z x wallpapers.7z")
    cmds.append("cp -r ./linux_wallpapers/* ~/Pictures/")
    cmds.append("rm -rf ./linux_wallpapers/")
    cmds.append("clear\n")


if __name__ == "__main__":
    cmds: list[str] = ["#!/bin/bash\n"]

    add_yay_cmds(cmds)
    add_pkg_cmds(cmds)

    cmds.append("systemctl enable sddm.service\n")

    add_copy_cmds(cmds)

    cmds.append('echo "/_\\ Setup is completed"')

    cmds = [cmd + "\n" for cmd in cmds]

    with open("install.sh", "w") as file:
        file.writelines(cmds)
