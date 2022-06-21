import re

with open("chap7.tex","r",encoding="UTF-8") as fp:
    data = fp.read()
    result = re.sub(r'[(](\d+)[)]',r'\\ref{eq:7.\1}',data)

with open("chap7.tex","w",encoding="UTF-8") as fp:
    fp.write(result)