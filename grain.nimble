# Package

version       = "0.1.0"
author        = "Luke"
description   = "A package template"
license       = "GPL-3.0-or-later"
srcDir        = "src"
binDir        = "bin"
bin           = @["grain"]


# Dependencies

requires "nim >= 1.4.9",  "nimscripter", "therapist"
