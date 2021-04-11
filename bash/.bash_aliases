#!/bin/bash
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
set -o vi
alias serve='deno run --allow-net --allow-read https://deno.land/std/http/file_server.ts'

export DENO_INSTALL="/home/ryanwhite04/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
