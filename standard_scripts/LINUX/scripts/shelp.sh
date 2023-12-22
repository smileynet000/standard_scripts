#! /bin/bash -f

# If this script is called by another script, you must also use -f flag, which causes the shell not to glob.

if [ $# -lt 1 ]; then
  echo "Usage: shelp.sh {command} {topic}"
  echo
  echo "       help                             - Gets bash help."
  echo "       man                              - Gets a man page"
  echo "       xman                             - Browses the man pages graphically"
  echo "       info                             - Gets an info page"
  echo "       tldr                             - Gets a tldr page. Needs sudo permissions!"
  echo "       - {section or . for all}         - List the section help topics"
  echo "       - {section} {topic}              - Gets standard script help"
  echo
else
 if [ $1 == "man" ]; then
  shift
  man $@
 elif [ $1 == "xman" ]; then
  shift
  xman $@ &
 elif [ $1 == "info" ]; then
  shift
  info $@
 elif [ $1 == "help" ]; then
  shift
  help $@
 elif [ $1 == "tldr" ]; then
  shift
  sudo tldr $@
 elif [ $1 == "-" ]; then
  if [ $# -eq 2 ]; then
   if [ -d /etc/settings/shelp/$2 ]; then
    if [ $2 == ".." ]; then
     echo "What topic do you want?"
    else
     ls /etc/settings/shelp/$2
    fi
   else
    echo "What topic do you want?"
   fi
  elif [ $# -eq 3 ]; then
   if [ -f /etc/settings/shelp/$2/$3 ]; then
    less /etc/settings/shelp/$2/$3
   fi
  else
   echo "What topic do you want?"
  fi
 else
  echo "Usage: shelp.sh {command} {topic}"
  echo
  echo "       help                             - Gets bash help."
  echo "       man                              - Gets a man page"
  echo "       xman                             - Browses the man pages graphically"
  echo "       info                             - Gets an info page"
  echo "       tldr                             - Gets a tldr page. Needs sudo permissions!"
  echo "       - {section or . for all}         - List the section help topics"
  echo "       - {section} {topic}              - Gets standard script help"
  echo
 fi
fi

