# shell-sandbox

An interactive Linux sandbox for learning and testing shell commands.

Each supported command may include:

* Syntax
* A short description
* A link to the command in the Linux manual
* Common examples
* Common flags and their uses
* A demonstration of the command's effect (when applicable)

For example, running:

```bash
mkdir -p some_dir
```

shows:

```bash
[COMMAND]

$ mkdir -p some_dir

[DESCRIPTION]

Create directories.

[FLAGS]

  -p       Create parent directories as needed.

[RESULT]

mkdir: created directory 'some_dir'
```

## Requirements

The sandbox runs inside a Docker container to provide a safe, isolated Linux environment.

Before getting started, make sure Docker is installed and running on your system.

All commands are executed inside the container, so no changes are made to your host machine.

## Usage

Build and start the sandbox:

```bash
make sandbox
```

Inside the sandbox, simply type any of the supported shell commands:

```bash
ls
pwd
mkdir new_dir
pwd
touch notes.txt
tree
```

Note:
- The sandbox is ephemeral: any files or directories you create exist only while the container is running. When you exit or remove the container, all changes are discarded.
- Commands that are not part of the sandbox execute normally.

## Project structure

```
commands/    Command definitions and examples
bin/         Sandbox executables
Dockerfile   Docker image for the sandbox
Makefile     Build and run commands
README.md    Project documentation
```
