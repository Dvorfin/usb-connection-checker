#!/bin/bash

ans=$(DISPLAY=:0 zenity --info --text "Insert USB disk" \
		--width 300 \
		--ok-label OK \
		--extra-button QUIT)


if [ $? = 0 ]; then

	LAST_UUID=$(findmnt -T /run/media/osboxes/* -n -o UUID)

	if [ $? = 0 ]; then	# if usb device connected
        	DISPLAY=:0 zenity --info --text "USB device connected. Please disconnect it."
		#LAST_UUID=$(findmnt -T /run/media/osboxes/* -n -o UUID)


		until [ $? = 1 ]
		do
			DISPLAY=:0 zenity --info --text "Please disconnect USB device!"
			findmnt -T /run/media/osboxes/* -n -o UUID >> /dev/null
		done
	
		DISPLAY=:0 zenity --info --text "USB device disconnected. Reconnect last USB device (UUID: $LAST_UUID)."
		


		UUID=$(findmnt -T /run/media/osboxes/* -n -o UUID)

		if [ -z "$UUID" ]; then
		
			while [ -z "$UUID" ]
			do
				DISPLAY=:0 zenity --info --text "Please Reconnect USB device!"
				UUID=$(findmnt -T /run/media/osboxes/* -n -o UUID)
			done
		fi



		if [ "$UUID" = "$LAST_UUID" ]; then
			DISPLAY=:0 zenity --info --text "USB devices are equal (UUID: $UUID | LAST_UUID: $LAST_UUID)."
		else
			DISPLAY=:0 zenity --info --text "USB devices are different (UUID: $UUID | LAST_UUID: $LAST_UUID)."
		fi
		
		DISPLAY=:0 zenity --info --text "Exiting the program"
 	
		
	else
		DISPLAY=:0 zenity --info --text "USB device not found! Exiting the programm"
	fi
	
else

        DISPLAY=:0 zenity --info --text "Exiting the program"
fi



