OnExit, GuiClose
  
  UrlDownloadToFile, https://previews.123rf.com/images/ambassador806/ambassador8061701/ambassador806170100016/69771913-tiger-logo-vector.jpg, % f := A_Temp "\temp_pic" ;원하는 이미지의 인터넷 주소를 가져온다. 
  
  Gui, Add, Picture, x22 y9 w290 h140 , % f
  Gui, Add, Button, x22 y159 w290 h180 , Button
  Gui, Show, w342 h350, InternetImageGet
  return
  
GuiClose:
Esc::
FileDelete % f
ExitApp
