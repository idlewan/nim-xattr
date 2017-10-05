import os, strutils
import xattr

var filename = "test_file"
if paramCount() >= 1:
  filename = paramStr(1)

# determine the length of the buffer needed
var buf_len = listxattr(filename, nil, 0)
if buf_len == -1:
  echo osErrorMsg(osLastError())
  quit("listxattr error")

if buf_len == 0:
  echo "$# has no attributes" % [filename]
  quit()

var buf = newString(buf_len)

# copy the list of attribute keys to the buffer
buf_len = listxattr(filename, buf.cstring, buf.len)
if buf_len == -1:
  echo osErrorMsg(osLastError())
  quit("listxattr error")

buf.setLen(buf.len - 1)  # delete the last \0 to avoid having an empty last item
var attrs = buf.split('\0')
for attr in attrs:
  # determine the length of the attribute value
  var val_len = getxattr(filename, attr, nil, 0)
  if val_len  == -1:
    echo "error: getxattr ", osErrorMsg(osLastError())

  if val_len == 0:
    echo attr, " <empty value>"
    continue

  var val = newString(val_len)
  val_len = getxattr(filename, attr, val.cstring, val.len)
  if val_len  == -1:
    echo "error: getxattr ", osErrorMsg(osLastError())
  echo attr, ": `", val, "`"

echo attrs.len
