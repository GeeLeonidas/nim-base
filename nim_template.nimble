### The name of this file can't have `-`, use `_` instead ###

# Package

version       = "0.1.0"
author        = "Guilherme Leoi"
description   = "Template for Nim projects"
license       = "Unlicense"
srcDir        = "src"
binDir        = "bin"
namedBin      = {"nim_template": "program"}.toTable()


# Dependencies

requires "nim ^= 2.0.0"


# Tasks

task genDebug, "Generates a binary for debugging":
  exec "nimble build --debugger:native"

task genRelease, "Generates an optimized binary":
  exec "nimble build -d:release -d:lto"
