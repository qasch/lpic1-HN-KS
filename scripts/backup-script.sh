# Backup Skript

## Was soll unser Skript koennen
- Backup ausgewählter Verzeichnisse (festgelegt durch Variable oder Benutzereingabe)
- Verzeichnisse sollen mit `tar` archiviert und anschliessend komprimiert werden
- Backup-Dateien werden in einem bestimmten Verzeichnis abgelegt (durch Variable festlegbar [oder Benutzereingabe])
- Skript muss mit `root` Rechten ausgeführt werden -> Check
- Backupdateien sollen in einem bestimten Format mit einem Timestamp (z.B. Datum, Uhrzeit) und dem Hostname versehen werden: `backup_debian10_home_202202081053.tar.gz`
- alle Benutzereingaben müssen geprüft werden
