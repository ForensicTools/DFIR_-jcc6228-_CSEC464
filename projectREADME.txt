This README will be describing what functions our script is implementing and how it works.
Our PowerShell script is designed to collect different types of windows logs and display them for easy viewing.
This tool has potential use in the forensics community because often logging in windows is very difficult to interpret and requires a knowledge of PowerShell.
Once this tool is complete, it would serve an investigator as a time saver, as many different PowerShell commands are not intuitive and require a bit of research, this tool allows the whole process to be one and done. Once the script is fitted with tools and commands to reveal certain insights about windows logs, it can then be used and re-used on a multitude of machines for easy data collection.
This is most easily described as a Quality of Life tool. It helps automate data collection via Powershell.
These are the specific functions we've implemented so far:
All of the functions below regard both the Application and the System event logs, as they are the most frequently used.
1) Display the newest 1000 entries from the logs.
2) Display in a neat table all the type of entries in those logs and how many of them they are.
3) Display all entries from the logs that contain an error.
4) Show account activity in the System log for the username "Administrator."
5) Show logs made between two specific dates.
