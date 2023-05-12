;한 참을 걷던 나무꾼이 길 가에 큰 나무가 있다.
;나무 때문에 길이 막혀서 지나갈 수 없다.
;그래서 나무꾼은 나무를 자르기로 마음먹었다.

; 변수 1: treeHeight
; 나무의 높이를 저장하는 변수
treeHeight := 5

; 변수 2: cuttingCount
; 자른 횟수를 저장하는 변수
cuttingCount := 0

; 함수 1: showDescription
; 상황에 대한 설명 출력하는 함수
Func showDescription() {
  ; "한 참을 걷던 나무꾼이 길 가에 큰 나무가 있다." 를 출력
  MsgBox, % "한 참을 걷던 나무꾼이 길 가에 큰 나무가 있다."
  
  ; "나무 때문에 길이 막혀서 지나갈 수 없다." 를 출력
  MsgBox, % "나무 때문에 길이 막혀서 지나갈 수 없다."
  
  ; "그래서 나무꾼은 나무를 자르기로 마음먹었다." 를 출력
  MsgBox, % "그래서 나무꾼은 나무를 자르기로 마음먹었다."
}

; 함수 2: cutTree
; 나무를 자르는 함수
Func cutTree() {
  ; 나무를 자르는 loop 구문
  Loop {
    cuttingCount++ ; 자르는 횟수 추가
    If (cuttingCount > 3) { ; 3번 이상 자르면 완전히 덜어내도록 함
      MsgBox, % "나무가 넘어갔다!"
      Break ; loop 구문 종료
    } Else {
      treeHeight-- ; 나무 높이 1 감소
      MsgBox, % "자른 횟수: " . cuttingCount . ", 나무 높이: " . treeHeight
      Sleep, 1000 ; 메시지창이 보이는 시간을 1초로 조정함
    }
  }
}

; 동화 시작
showDescription() ; 상황 설명 출력
cutTree() ; 나무를 자름
MsgBox, % "길이 열렸다!" ; 나무를 다 잘라서 길이 열림
위 코드는 한 참을 걷다가 길을 막는 나무를 반복문을 사용하여 자르는 동화입니다.

;변수 treeHeight는 나무의 높이를, cuttingCount는 자른 횟수를 저장하는 변수입니다.
;함수 showDescription은 상황에 대한 설명을 출력합니다.
;함수 cutTree는 나무를 자르는 loop 구문을 포함한 함수입니다.
;cutTree 함수에서 loop 구문을 사용하여 자르는 횟수를 기록하고, 3번 이상 자르면 나무가 넘어가도록 하였습니다.
;동화가 시작되면 showDescription 함수를 호출하여 상황에 대한 설명을 출력한 후, cutTree 함수를 호출하여 나무를 자릅니다.
;나무를 모두 잘라서 길이 열리면, MsgBox를 사용하여 "길이 열렸다!" 라는 메시지를 출력합니다.
