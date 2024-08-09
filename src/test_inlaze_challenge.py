# Created by Maria Monserrate at 08/09/2024
import shutil
import time
from behave.__main__ import main as behave_main
import argparse

# La siguiente lista de Browsers no incluyen browsers que requieren la instalacion de bibliotecas exteras como
# es el caso de Opera
browsers = ['chrome', 'firefox', 'safari']
parser = argparse.ArgumentParser()
parser.add_argument('--browser', help='[chrome|firefox|safari]')
args = parser.parse_args()
if args.browser in browsers:
    behave_main(["--no-capture", "-D browser=" + args.browser])
    time.sleep(1)
else:
    parser.print_help()