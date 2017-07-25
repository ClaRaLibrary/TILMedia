# -*- coding: utf-8 -*-
"""
Created on Tue Mar 21 11:06:57 2017

@author: Christian
"""

import os
from os.path import join
import codecs


#if (len(sys.argv)<=1):
#    print "call with search path name as argument"
#    quit()
convertToUTF8WithBom=True

for dir, subdirs, files in os.walk(r".."):
    for fileName in files:
        if (fileName.endswith("mo")):
#            print "found "+os.path.join(dir,fileName)
            content = open(os.path.join(dir,fileName),'rb').read()
            #filehandle.close()
#            print content
            encoding = ""
            try:
                import chardet
                encoding = chardet.detect(content)['encoding'] + " "
            except:
                pass
#            if (encoding):
#                print encoding+" "+os.path.join(dir,fileName)
 
            try:           
                foundError=False
                decodedContentutf8sig = content.decode("utf-8-sig",'replace')
                decodedContent = content.decode(encoding,'replace')
                reencodedContent = decodedContent.encode("utf-8-sig")
                if (decodedContent and decodedContentutf8sig and decodedContent<>decodedContentutf8sig):
                    print "\nencoding " + encoding + "should be utf-8-sig in "+os.path.join(dir,fileName)
                    errorCounter = 0
                    for i in range(len(reencodedContent)-10):
                        if errorCounter < 10 and i>=10 and (type(decodedContent[i]) != type(decodedContentutf8sig[i]) or decodedContent[i] != decodedContentutf8sig[i]):
                            errorCounter = errorCounter+1
#                            foundError=True
                            print i, '"'+decodedContent[i-10:i+10]+'"', '"'+content[i-10:i+10]+'"'
                if content[:3] == codecs.BOM_UTF8:
                    pass
                else:
                    if (not foundError):
                        if (convertToUTF8WithBom):
                            reencodedContent = decodedContent.encode("utf-8-sig")
                            open(os.path.join(dir,fileName),'wb').write(reencodedContent)
                            print "reencoded "+os.path.join(dir,fileName)
                        else:
                            print "did not find BOM in "+os.path.join(dir,fileName)
            except:
                print "error in "+os.path.join(dir,fileName)


os.system("pause") 