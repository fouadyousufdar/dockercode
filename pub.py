import subprocess
import sys

def ping(IP):
     subprocess.run(["ping", "-c", "3", IP])
def nmap(IP):
     subprocess.run(["nmap", IP])
def telnet(IP):
     subprocess.run(["telnet", IP,"22"])

if __name__ == "__main__":

     IP = sys.argv[1]
     print(IP)
     ping(IP)
     nmap(IP)
