import sys


with open("counttable.csv", "w") as outfile:
    with open(sys.argv[1], 'r') as file1:
        with open(sys.argv[2], 'r') as file2:
            with open(sys.argv[3], 'r') as file3:
                with open(sys.argv[4], 'r') as file4:
                    inhoud1 = file1.readlines()
                    inhoud2 = file2.readlines()
                    inhoud3 = file3.readlines()
                    inhoud4 = file4.readlines()
                    outfile.write("peak,test_count1,test_count2,ctl_count1,ctl_count2\n")
                    for line in range(0, (len(inhoud1))):
                        newline = "peak_" + str(line + 1) + "," + str(inhoud1[line].rstrip(
                            "\n")) + "," + str(inhoud2[line].rstrip("\n")) + \
                                  "," + \
                                  str(inhoud3[line].rstrip("\n")) + "," \
                                                                    "" + \
                                  str(inhoud4[line].rstrip("\n")) + "\n"

                        outfile.write(newline)
