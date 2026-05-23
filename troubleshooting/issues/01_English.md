# 01 - Docker Compose Error

## Problem

While running:

```bash
docker compose up -d
```

the following error appeared:

```text
unknown shorthand flag: 'd' in -d
```

## Cause

The system was using an old Docker client version that did not support:

```bash
docker compose
```

but instead required:

```bash
docker-compose
```

## Diagnosis

Check versions:

```bash
docker version
docker-compose version
```

## Solution

Use:

```bash
docker-compose up -d
```

or install the modern Docker Compose Plugin.

## Lessons Learned

There are differences between:

- Classic Docker Compose
- Modern Docker Compose Plugin
