#!/bin/bash
#!/bin/bash

# Define the new hostname
new_hostname="bastion1"

# Use PowerShell to set the hostname
powershell -Command "(Get-WmiObject -Class Win32_ComputerSystem).Rename('$new_hostname')"
