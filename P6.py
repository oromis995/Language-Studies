from zipfile import ZipFile
import sys
namelists = []
with ZipFile(sys.argv[1]) as z:
    for filename in z.namelist():
            namelist = []
            with z.open(filename) as f:
                for line in f:
                  namelist.append(line.strip().decode('UTF-8'))
            namelists.append(namelist)
out = open("output.txt","w")
for newline in set.intersection(*map(set,namelists)):
    print(str(newline))
    out.write(str(newline)+"\n")
