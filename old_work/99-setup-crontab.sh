sudo systemctl enable cronie
(crontab -l 2>/dev/null; echo "*/5 * * * * /home/ulys/Nextcloud/org/tools/export-google-calendar.sh") | crontab -
