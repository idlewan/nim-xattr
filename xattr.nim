##  The following constants should be used for the fifth parameter of
##  `setxattr`.

const
  XATTR_CREATE* = 1             ##  set value, fail if attr already exists.
  XATTR_REPLACE* = 2            ##  set value, fail if attr does not exist.


proc setxattr*(path: cstring; name: cstring; value: pointer; size: csize; flags: cint): cint {.
    cdecl, importc: "setxattr", header: "<sys/xattr.h>".}
  ##  Set the attribute NAME of the file pointed to by PATH to VALUE (which
  ##  is SIZE bytes long).  Return 0 on success, -1 for errors.

proc lsetxattr*(path: cstring; name: cstring; value: pointer; size: csize; flags: cint): cint {.
    cdecl, importc: "lsetxattr", header: "<sys/xattr.h>".}
  ##  Set the attribute NAME of the file pointed to by PATH to VALUE (which is
  ##  SIZE bytes long), not following symlinks for the last pathname component.
  ##  Return 0 on success, -1 for errors.

proc fsetxattr*(fd: cint; name: cstring; value: pointer; size: csize; flags: cint): cint {.
    cdecl, importc: "fsetxattr", header: "<sys/xattr.h>".}
  ##  Set the attribute NAME of the file descriptor FD to VALUE (which is SIZE
  ##  bytes long).  Return 0 on success, -1 for errors.

proc getxattr*(path: cstring; name: cstring; value: pointer; size: csize): int {.cdecl,
    importc: "getxattr", header: "<sys/xattr.h>".}
  ##  Get the attribute NAME of the file pointed to by PATH to VALUE (which is
  ##  SIZE bytes long).  Return 0 on success, -1 for errors.

proc lgetxattr*(path: cstring; name: cstring; value: pointer; size: csize): int {.cdecl,
    importc: "lgetxattr", header: "<sys/xattr.h>".}
  ##  Get the attribute NAME of the file pointed to by PATH to VALUE (which is
  ##  SIZE bytes long), not following symlinks for the last pathname component.
  ##  Return 0 on success, -1 for errors.

proc fgetxattr*(fd: cint; name: cstring; value: pointer; size: csize): int {.cdecl,
    importc: "fgetxattr", header: "<sys/xattr.h>".}
  ##  Get the attribute NAME of the file descriptor FD to VALUE (which is SIZE
  ##  bytes long).  Return 0 on success, -1 for errors.

proc listxattr*(path: cstring; list: cstring; size: csize): int {.cdecl,
    importc: "listxattr", header: "<sys/xattr.h>".}
  ##  List attributes of the file pointed to by PATH into the user-supplied
  ##  buffer LIST (which is SIZE bytes big).  Return 0 on success, -1 for
  ##  errors.

proc llistxattr*(path: cstring; list: cstring; size: csize): int {.cdecl,
    importc: "llistxattr", header: "<sys/xattr.h>".}
  ##  List attributes of the file pointed to by PATH into the user-supplied
  ##  buffer LIST (which is SIZE bytes big), not following symlinks for the
  ##  last pathname component.  Return 0 on success, -1 for errors.

proc flistxattr*(fd: cint; list: cstring; size: csize): int {.cdecl,
    importc: "flistxattr", header: "<sys/xattr.h>".}
  ##  List attributes of the file descriptor FD into the user-supplied buffer
  ##  LIST (which is SIZE bytes big).  Return 0 on success, -1 for errors.

proc removexattr*(path: cstring; name: cstring): cint {.cdecl, importc: "removexattr",
    header: "<sys/xattr.h>".}
  ##  Remove the attribute NAME from the file pointed to by PATH.  Return 0
  ##  on success, -1 for errors.

proc lremovexattr*(path: cstring; name: cstring): cint {.cdecl,
    importc: "lremovexattr", header: "<sys/xattr.h>".}
  ##  Remove the attribute NAME from the file pointed to by PATH, not
  ##  following symlinks for the last pathname component.  Return 0 on
  ##  success, -1 for errors.

proc fremovexattr*(fd: cint; name: cstring): cint {.cdecl, importc: "fremovexattr",
    header: "<sys/xattr.h>".}
  ## Remove the attribute NAME from the file descriptor FD.  Return 0 on
  ## success, -1 for errors.
