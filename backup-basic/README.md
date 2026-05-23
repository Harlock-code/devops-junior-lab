# Backup Basic

Mini proyecto DevOps Junior para automatizar backups y restores básicos usando rsync y Bash.

## Objetivo

Aprender conceptos básicos de backup y recuperación de datos mediante scripts simples y herramientas Linux.

El proyecto demuestra:

- backups automáticos
- restores
- uso de rsync
- scripting Bash
- validación de datos

## Tecnologías

- Linux
- Bash
- rsync

## Estructura

```text
backup-basic/
├── backup/
├── data/
├── restore/
├── screenshots/
├── scripts/
│   ├── backup.sh
│   └── restore.sh
└── README.md
```

## Datos de prueba

Archivos creados:

```text
data/documento-importante.txt
data/config.conf
```

## Script de backup

```bash
./scripts/backup.sh
```

Utiliza:

```bash
rsync -av --delete
```

para sincronizar archivos desde:

```text
data/
```

hacia:

```text
backup/
```

## Script de restore

```bash
./scripts/restore.sh
```

Restaura archivos desde:

```text
backup/
```

hacia:

```text
restore/
```

## Verificación

```bash
ls -la backup/
ls -la restore/
```

## Resultado

Backup y restore funcionando correctamente mediante rsync.

## Utilidad real

Este tipo de automatización se utiliza en entornos Linux y DevOps para:

- backups rápidos
- sincronización de archivos
- recuperación de datos
- automatización de tareas
- protección básica de información

## Estado

Proyecto completado correctamente.
