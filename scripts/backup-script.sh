#!/usr/bin/env sh

### Was soll unser Skript koennen
#- Backup ausgewählter Verzeichnisse (festgelegt durch Variable oder Benutzereingabe)
#- Verzeichnisse sollen mit `tar` archiviert und anschliessend komprimiert werden
#- Backup-Dateien werden in einem bestimmten Verzeichnis abgelegt (durch Variable festlegbar [oder Benutzereingabe])
#- Skript muss mit `root` Rechten ausgeführt werden -> Check
#- Backupdateien sollen in einem bestimten Format mit einem Timestamp (z.B. Datum, Uhrzeit) und dem Hostname versehen werden: `backup_debian10_home_202202081053.tar.gz`
#- alle Benutzereingaben müssen geprüft werden


# Variablen
timestamp=$(date +%Y%m%d%M%H)
dir_to_backup=/home/kai/files-to-backup
dest_dir=/home/kai/backup-dir
# translate all / to -
filename_backup=$(echo $dir_to_backup | tr / -)
archive_name=backup_$(hostname)_$filename_backup_$timestamp.tar.gz

# Dependencies
# benoetigte Verzeichnisse erstellen
# TODO: folgende Zeile entfernen wenn Skript interaktiv ist
mkdir -p $dir_to_backup
mkdir -p $dest_dir

# Funktionalität
tar -czf $archive_name $dir_to_backup 

# Alternative, ohne extra Variable
#tar -czf backup_$(echo $dir_to_backup | tr / -)_$timestamp.tar.gz
