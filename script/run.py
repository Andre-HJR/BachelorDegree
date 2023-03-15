
def latexmk():
    import sys
    import os
    cmd, cond = "latexmk", sys.argv[1] if 3 == len(sys.argv) else ""
    command = cmd + " " + cond 
    os.system(command)

def tar():
    import sys
    import os
    cond = sys.argv[2] if 3 == len(sys.argv) else "a"
    print(cond)
    if "a" == cond:
        os.system(r'"E:\Program Files\7-Zip\7z.exe" a g.7z .\ -r -mx=9')
    elif "x" == cond:
        os.system(r'"E:\\Program Files\\7-Zip\\7z.exe" x g.7z -o.\\ug')




def clean():
    import os
    os.system("del *.7z, latex_out, ug, *.toc")


if __name__ == '__main__':
    import sys
    print (sys.argv[1])
    if "latexmk" == sys.argv[1]:
        latexmk()
    elif "tar" == sys.argv[1]:
        tar()
    elif "clean" == sys.argv[1]:
        clean()
