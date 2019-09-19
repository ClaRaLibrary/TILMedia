from __future__ import print_function

import os
import re
import io

from os.path import join

# Basic Directories for locating things
THIS_FILE_DIR = os.path.dirname(os.path.abspath(__file__))
MODELICA_DIR = os.path.join(THIS_FILE_DIR,'..','help')

re_address = re.compile("<address>.*</address>", re.DOTALL)
re_file = re.compile("file:///")

def run():
    for dir, subdirs, files in os.walk(MODELICA_DIR):
        html_files = [ join(dir, file) for file in files if file.endswith(('.html'))]

        for file in html_files:
            new_file = None
            with open(file,"r") as change_file:
                print("open:", file)
                new_file = change_file.read().decode('utf-8')

            new_file = re_address.subn('',new_file)[0]
            new_file = re_file.subn('',new_file)[0]
            #new_file.replace("\n","\r\n")
            
            # Save the file back to disk
            with io.open(file, "w", encoding="utf-8", newline="\r\n") as change_file:
                print("save:", file)
                change_file.write(new_file)

if __name__ == "__main__":
    run()