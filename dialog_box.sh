#!/bin/bash

HEIGHT=10
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Cluster Options"
TITLE="Library Mangement"
MENU="Choose one of the following options:"

ENV="${ENV:-dev}"

# if [ $ENV == "dev" ]; then
#     OPTIONS=(1 "Dev Option 1"
#              2 "Dev Option 2"
#              3 "Dev Option 3")
# elif [ $ENV == "mode" ]; then
#     OPTIONS=(1 "MODE Option 1"
#              2 "MODE Option 2")
# elif [ $ENV == "prod" ]; then
#     OPTIONS=(1 "PROD Option 1"
#              2 "PROD Option 2")
#     fi
OPTIONS=(1 "Student"
             2 "Staff")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            # echo "You chose Option 1"
            # ;;
            ./student_home_page.sh;;
        2)
            # echo "You chose Option 2"
            # ;;
            ./staff_home_page.sh
esac