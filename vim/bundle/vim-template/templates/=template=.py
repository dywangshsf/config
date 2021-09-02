#!/usr/bin/env python
# coding: utf-8
#
# Copyright © %YEAR% %USER% <%MAIL%>
#
# Distributed under terms of the %LICENSE% license.
from __future__ import print_function
import os,sys,argparse
import logging

DESCRIPTION = """
"""

def main(args):
    pass

def getargs():
    """ Parse program arguments.
    """
    parser = argparse.ArgumentParser(description=DESCRIPTION, formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument("--log", type=str, default="INFO", help="log level")
    return parser.parse_args()

if __name__ == '__main__':
    args = getargs()
    numeric_level = getattr(logging, args.log.upper(), None)
    if not isinstance(numeric_level, int):
        raise ValueError("Invalid log level: " + args.log)
    logging.basicConfig(format="%(asctime)s - %(levelname)s - %(message)s", level=numeric_level)
    main(args)
