from subprocess import run

from os import mkdir, getcwd, listdir
from os.path import exists, isdir
from shutil import move

from logging import Logger


def run_command(command: str) -> bool:
    process = run(command, shell=True, check=True, capture_output=True)

    return True if process.returncode == 0 else False


def install_package(package: str) -> bool:
    return run_command(f"echo y | LANG=C yay -S --needed {package}")


def install_packages(logger: Logger) -> None:
    if exists("packages.txt") is False:
        logger.error("package.txt is not exists")
        exit(1)

    with open("packages.txt", "r") as file:
        packages = [s.rstrip("\n") for s in file.readlines()]

    for package in packages:
        logger.info(f"Installing {package}")
        install_package(package)

    logger.info("Package installation is completed")


def move_configs(logger: Logger) -> None:
    config_path = "~/.config"

    if exists(config_path) is False:
        mkdir(config_path)

    folders = [f for f in listdir(getcwd()) if isdir(f)]

    for folder in folders:
        logger.info(f"Moving {folder} to {config_path}")
        move(folder, config_path)

    logger.info("Moving configs is completed")
