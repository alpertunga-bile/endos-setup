from install_helpers import run_command, install_packages, move_configs
from logger_helper import get_logger

if __name__ == "__main__":
    run_command("clear")

    logger = get_logger()

    """
    Check yay program
    """
    if run_command("yay -P --currentconfig"):
        logger.info("yay is current")
    else:
        logger.error("Cant found yay")
        exit(1)

    """
    Check git program
    """
    if run_command("git --version"):
        logger.info("git is found")
    else:
        logger.error("Cant found git")
        exit(1)

    """
    Save configurations for automation
    """
    run_command(
        "yay --save --answerdiff None --answerclean None --removemake --devel --cleanafter --mflags '--noconfirm'"
    )
    logger.info("yay config is saved")

    logger.info("Updating the system")
    run_command("yay")

    install_packages(logger)

    move_configs(logger)

    run_command("clear")
    print("Setup is completed")
