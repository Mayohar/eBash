ports=$(nmap -p- --min-rate=1000 -T4 10.10.11.148 -Pn | grep "^[0-9]" | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//); nmap 10.10.11.148 -sV -sC -p$ports -Pn
