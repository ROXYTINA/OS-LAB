#!/bin/bash

# Must be run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root."
  exit 1
fi

# -------- GROUP CREATION --------
while true; do
  read -p "Enter new group name: " groupname
  if getent group "$groupname" > /dev/null; then
    echo " Group '$groupname' already exists. Try another name."
  else
    groupadd "$groupname"
    echo " Group '$groupname' create hx hx"
    break
  fi
done

# -------- USER CREATION --------
while true; do
  read -p "Enter new username: " username
  if getent passwd "$username" > /dev/null; then
    echo " User '$username' already exists. Try another name."
  else
    useradd -m -s /bin/bash -g "$groupname" "$username"
    echo " User '$username' create hx hx"
    break
  fi
done

# -------- PASSWORD --------
echo "Set password for user '$username':"
passwd "$username"

# -------- DIRECTORY CREATION --------
user_dir="/$username"
mkdir -p "$user_dir"

# -------- OWNERSHIP --------
chown "$username:$groupname" "$user_dir"

# -------- PERMISSIONS --------
chmod 2770 "$user_dir"   # Full control for owner & group, setgid
chmod +t "$user_dir"     # Sticky bit → only owner can delete files

echo " User management done."
echo "Directory '$user_dir' created with proper ownership & permissions."
