
InputBox, yourMoney, Coffee Machine, Please put your money in: , , 300, 150
;MsgBox, You entered %UserInput% as your username

coffeePrice := 500

	if (yourMoney < coffeePrice) {
		MsgBox %coffeePrice% %yourMoney%
		MsgBox, You need more money to get a cup of coffee. Sorry.
		ExitApp
	}
	
cupsCount := yourMoney // coffeePrice
change := Mod(yourMoney, coffeePrice)

Loop, %cupsCount%
{
	MsgBox, Coffee %A_Index%`n
}

MsgBox, Here's your change %change%
	
return	

