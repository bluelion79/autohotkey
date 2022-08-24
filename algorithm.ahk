a := 100
b := 50
c := 3

if(a>b) {
	first(a)
	second(b)
} else {
	second(b)
	first(a)
}

Loop, % c {
	MsgBox, Tap
}


first(a) {
	MsgBox, % a
}

second(b) {
	MsgBox, % b
}