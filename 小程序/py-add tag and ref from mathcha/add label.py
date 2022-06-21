with open("chap7.tex","r",encoding="UTF-8") as fp:
    data = fp.readlines()
with open("chap7.tex","r",encoding="UTF-8") as fp:
    temp = fp.readlines()
    i = 0
    j = 1
    for i in range(len(data)):
        if data[i] == '\\end{equation}\n' or data[i] == '\\end{equation}':
            temp.insert(i + j - 1, '\t\\label{eq:7.' + str(j) + '}\n')
            j = j + 1

data = "".join(temp)

with open("chap7.tex","w",encoding="UTF-8") as fp:
    fp.write(data)