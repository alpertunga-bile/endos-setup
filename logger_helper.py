from logging import getLogger, Logger, StreamHandler, Formatter, INFO
from sys import stdout


class CustomFormatter(Formatter):
    grey = "\x1b[38;21m"
    blue = "\x1b[38;5;39m"
    yellow = "\x1b[38;5;226m"
    red = "\x1b[38;5;196m"
    bold_red = "\x1b[31;1m"
    reset = "\x1b[0m"

    def __init__(self, fmt):
        from logging import DEBUG, WARNING, ERROR, CRITICAL

        super().__init__()
        self.fmt = fmt
        self.FORMATS = {
            DEBUG: self.grey + self.fmt + self.reset,
            INFO: self.blue + self.fmt + self.reset,
            WARNING: self.yellow + self.fmt + self.reset,
            ERROR: self.red + self.fmt + self.reset,
            CRITICAL: self.bold_red + self.fmt + self.reset,
        }

    def format(self, record):
        logFormat = self.FORMATS.get(record.levelno)
        formatter = Formatter(logFormat)
        return formatter.format(record)


def get_logger() -> Logger:
    logger = getLogger()
    logger.setLevel(INFO)

    handler = StreamHandler(stdout)
    handler.setLevel(INFO)

    log_format = "%(levelname)-8s /_\ %(message)s"
    formatter = Formatter(log_format)

    handler.setFormatter(formatter)

    logger.addHandler(handler)

    return handler
