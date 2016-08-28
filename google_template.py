import sys
import time

start_time = time.time()

sys.stdin = open("input.txt", "r")
sys.stdout = open("output.txt", "w")
sys.stdout = sys.__stdout__

for testcases in range(int(input())):
    ans = ''

    sys.stdout = open("output.txt", "a")
    print("Case #" + str(testcases + 1) + ": " + ans)
    sys.stdout = sys.__stdout__
    print("Case #" + str(testcases + 1) + ": Done")

sys.stdout = sys.__stdout__
print(time.time() - start_time)
