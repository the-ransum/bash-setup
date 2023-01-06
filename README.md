# Bash Setup

A repository for making it easier to deploy on newly setup bash shells.

## Project Files

-   `src/` - Root directory for scripts/configs.
    -   `.bashrc` - Bash config
    -   `.bash_profile` - user profile
    -   `.bash_aliases` - user aliases config
    -   `.bash_logout` - functions called after a shell exits.

## Invoked as an Interactive Login Shell

Bash is a shell program that allows users to interact with the operating system.
When Bash is invoked as an interactive login shell, it reads and executes commands
from the file `/etc/profile`, if it exists. If `/etc/profile` does not exist,
Bash looks for the files `~/.bash_profile`, `~/.bash_login`, and `~/.profile`
in that order and reads and executes commands from the first one it finds that
is readable. If none of these files exists or is readable, Bash does not execute
any additional commands. You can use the `--noprofile` option when starting Bash
to prevent it from executing these additional commands.

When an interactive login shell is closed, or when a non-interactive login shell
executes the `exit` command, Bash will read and execute any commands in the file
`~/.bash_logout` if it exists. This file is typically used to perform tasks such
as cleaning up or logging out of resources when the shell is closed.

## Invoked as an Interactive Non-login Shell

When an interactive shell that is not a login shell is opened, Bash will read and
execute commands from the file `~/.bashrc` if it exists. This behavior can be
disabled by using the `--norc` option. Alternatively, you can use the
`--rcfile file` option to specify a different file for Bash to read and execute
commands from instead of `~/.bashrc`.

## License

[LICENSE](LICENSE)
