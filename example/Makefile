all: example test_file

test_file:
	echo "test content" > $@
	setfattr -n user.testattr -v "test attr value" $@

example: example.nim
	nim c $@
