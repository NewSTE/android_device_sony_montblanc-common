#!/system/bin/sh

# Before executing this script the /modemfs/RFHAL should already containt the
# binary files with radio parameters in the way expected by NWM.
# Also other files in modemfs (like PPVALUES.DAT) should be in place before
# executing this script.

# Finally start Modem Storage Agent, serving files system requests from the
# modem. It is important that this process does not background itself since
# Androids init will restart this script once this command returns.
echo "Starting Modem Storage Agent"
/system/bin/logwrapper /system/bin/msa -l stdout
