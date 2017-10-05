
xattr.nim: c_headers/xattr.c2nimready.h
	~/.nimble/bin/c2nim --out:$@ $<

xattr.html: xattr.nim
	nim doc2 $@
