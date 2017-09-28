import sys

filename = sys.argv[1]

with open(filename) as f:
    content = f.readlines()
# you may also want to remove whitespace characters like `\n` at the end of each line
content = [x.strip() for x in content]

outfile_name = filename + '.out'
outfile = open(outfile_name,'w')
for c in content:
    print(c)
    outfile.write(c + '\n')

outfile.close()
