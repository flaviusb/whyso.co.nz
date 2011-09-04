#!/usr/bin/env bash
#ssh -t flaviusb@flaviusb.net "export PATH=$PATH:/home/flaviusb/code/ioke/bin/:/home/flaviusb/code/Byeloblog/:/home/flaviusb/bin:/var/lib/gems/1.8/bin/ && cd code/whyso.co.nz/ && git pull && byeloblog.ik && echo done"
ssh -t flaviusb@flaviusb.net "export PATH=\"$PATH:/home/flaviusb/binaries/ioke/bin/:/home/flaviusb/code/Byeloblog/:/home/flaviusb/bin:/var/lib/gems/1.8/bin/\" && cd code/whyso.co.nz/ && git pull && git checkout -f $1 && byeloblog.ik && echo done" && kdialog --passivepopup "Finished building whyso.co.nz"
