# Package

version       = "0.1.0"
author        = "Erwan Ameil"
description   = "Wrapper for the xattr functions to list, read and modify 
extended attributes"
license       = "MIT"
skipDirs = @["c_headers"]
skipFiles = @["Makefile"]

# Dependencies

requires "nim >= 0.17.0"

