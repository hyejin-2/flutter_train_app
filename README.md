<h1 align="center">
Flutter 기차 예매 서비스
</h1>
<p align="center">
</p>
</p>

## Setting 과제 요소
### 기본 조건 (Basis)

> 프로젝트 명: flutter_train_app
> 

> 출발역, 도착역을 선택할 수 있는 초기 화면 이름 HomePage
> 

> 기차역 리스트를 보여주고 선택할 수 있는 화면 이름 StationListPage
> 

> 좌석 선택하는 화면 이름 SeatPage
>

> 선택할 수 있는 기차역(총 11개): `수서, 동탄, 평택지제, 천안아산, 오송, 대전, 김천구미, 동대구, 경주, 울산, 부산`
>
<br/>

## 작성자

| **hyejin-2** | 
| :----------: |  

<br/>

## 과제 일정
25/07/09~25/07/15

<br/>

## 앱 UI Flow
- 좌석 선택 페이지: SeatPage의 회색 박스 옆 `선택됨` → `선택 안 됨` 으로 수정

  <img alt="UIFlow1" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FFJ7ux%2FbtsPj1aW6Nm%2FAAAAAAAAAAAAAAAAAAAAAPEhIj9CXSrZd1mQKVsVO629yaNP_fsws1KGPlyFsDXR%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3DgVyCTJN2i5H64AtkFWTyu5gF7Lk%253D"/>
  <img alt="UIFlow2" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FbabaJn%2FbtsPk5RdAGl%2FAAAAAAAAAAAAAAAAAAAAAPGbZ6ipfFPhcHUerR2abdOL7-Dm670BIhKtEQLGxgRR%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3DfZnK8gOt63Cvp5Nig9KHcTpYABQ%253D"/>
  <img alt="UIFlow3" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2Fdotts3%2FbtsPjlnNb2U%2FAAAAAAAAAAAAAAAAAAAAAEBthL92rcrOrUOmu4w8bipRSfW52fOdotrmW_D_SyKZ%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3DOzk4zdBAsI4m5Wdh%252F1b0dxSaCNk%253D"/>

## UI 디자인 명세
### HomePage
  <img alt="HomePage이미지" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FqdG4T%2FbtsPiKIe7Bn%2FAAAAAAAAAAAAAAAAAAAAAEGve-zPJFYZ_eOvBEe_sBcSRaGL-GuhCd8HzESwDPWQ%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3DodYNSDK3x9pRPs6heLvvTjDc6C4%253D"/>

### StationListPage
  <img alt="StationListPage이미지" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FbBBwRb%2FbtsPkqn0AsG%2FAAAAAAAAAAAAAAAAAAAAAJmqNgk9fp4HdKTCtOFc7qknrODwxQYtoyZdDAtnMM6V%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3D0oKgLjEn9Dvr7Ki0NVaZD5x%252BXO8%253D"/>

### SeatPage
  <img alt="SeatPage이미지1" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FuxraO%2FbtsPj0JVTie%2FAAAAAAAAAAAAAAAAAAAAAGk70suD28-jXyPfACqtiIE5ZMhvELpm-TX_BO1Hc4Bj%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3DGaa1of8eBOUEHt%252Bqy1kfm8jj2zo%253D"/>

  <img alt="SeatPage이미지2" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FrZMCb%2FbtsPjLzu0bR%2FAAAAAAAAAAAAAAAAAAAAAFqlg44E27i9gkEQQs5kbXsm-bG5nUcZMVqQ9xRAVicS%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3DN24KdeBxD%252BqzIAHSDYTY454gE30%253D"/>

<br/>

## 필수 기능 가이드

### 1. HomePage 구현
[출발역선택영역]
- 터치 시 `StationListPage` 로 이동  
- `StationListPage`에서 역 선택 시 선택한 역으로 문자열 변경  
- 선택한 역이 없는 초기 상태에서는 `선택` 문구 출력  

[도착역선택영역]
- 터치 시 `StationListPage` 로 이동  
- `StationListPage`에서 역 선택 시 선택한 역으로 문자열 변경  
- 선택한 역이 없는 초기 상태에서는 `선택` 문구 출력  

[좌석선택버튼]
- 터치 시 `SeatPage`로 이동  
- 출발역, 도착역 모두 선택되어 있지 않을 경우 이동하지 않음  

### 2. StationListPage 구현
[앱바타이틀]
- `HomePage`에서 `출발역`클릭하여 이 페이지로 진입 시 `출발역`,  
`도착역` 클릭하여 이 페이지로 진입 시 `도착역` 출력

[뒤로가기버튼]
- 아무런 값을 돌려주지 않고 뒤로가기  
- 뒤로가기 버튼을 통해 뒤로갈 경우 `HomePage`의 출발역, 도착역은 변경되지 않음  

[기차역리스트]
- `수서, 동탄, 평택지제, 천안아산, 오송, 대전, 김천구미, 동대구, 경주, 울산, 부산` 고정된 값 출력  

[기차역아이템]
- 각 기차역 이름을 터치 시 해당 역 이름을 반환하며 뒤로가기  
(`HomePage`의 출발역 또는 도착역 변경)
  
### 3. SeatPage 구현
[출발역]
- `HomePage`에서 선택한 출발역을 전달받아 출력  

[도착역]
- `HomePage`에서 선택한 도착역을 전달받아 출력  

[좌석상태안내레이블]
- 선택되었을때와 미선택시의 색상 안내 
보라색 박스 옆 텍스트는 `선택됨`, 회색박스 옆 텍스트는 `선택 안 됨`

[좌석리스트]
- 총 20개의 리스트 아이템

[좌석위젯]
- 초기 상태는 모두 회색
- 좌석 터치 시 색상 보라색으로 변경

[예매하기버튼]
- 선택된 좌석이 없으면 아무런 반응 X
- 선택된 좌석이 있으면 터치 시 아래의 `showCupertinoDialog` 출력
- `취소` 누를 시 Dialog 제거
- `확인` 누를 시 `HomePage`로 이동(뒤로가기 두번)

<br/>

## 주의 사항
- 과제에서 주어진 기본 요소와 UI 명세를 반드시 따라야 합니다.
- **예외 처리**를 통해 특수 상황에서 프로그램이 종료되지 않도록 합니다.
- 사용자 입력에 대한 **검증을 철저히** 하여 예상치 못한 입력으로 인한 오류를 방지합니다.
- 코드의 **재사용성**과 **가독성**을 높이기 위해 함수와 클래스를 적절히 활용합니다.

<br/>

## 도전 기능 가이드
모든 정답 코드는 기존의 필수 기능 정답 코드를 반영합니다.  

### 1. 위젯 컴포넌트 화
[기능]
- 앱 내에서 사용되는 `버튼`, `좌석박스` 등 반복적으로 사용되는 부분을 별도의 위젯으로 분리하여 재사용 해봅시다.
- 재사용이 되지 않더라도 하나의 파일 내 스크롤이 너무 길다면 각 부분을 별도의 위젯으로 나누어 봅시다.

### 2. UX(사용자 경험)를 고려한 기능
[기능]
- 부산역에서 부산역으로 가는 열차는 없겠죠?  
사용자가 출발역(A역)을 선택한 뒤 도착역을 고를 때 도착역 선택 페이지에서 출발역(A역)을 제외한 역 목록을 보여주세요.  
도착역(B역)을 선택한 뒤 출발역을 고를 때 출발역 선택 페이지에서 도착역(B역)을 볼 수 없도록 만들어주세요.  

[힌트]
- 사용자가 역을 고르면 기차역 선택 페이지가 이를 인지해야 합니다.  
- 다음에 고르는 페이지에서 이미 선택한 역을 제외한 목록을 보여주세요.  

### 3. 다크 테마 적용
[기능]
- 앱에 다크 테마 적용

[힌트]
- MaterialApp 의 theme, darkTheme 속성을 이용합니다.
- Scaffold 배경색 테마 지정은 ThemeData의 `scaffoldBackgroundColor` 속성을 이용합니다.

[예시화면]
- 좌석 선택 페이지: SeatPage의 회색 박스 옆 `선택됨` → `선택 안 됨` 으로 수정

  <img alt="다크테마적용" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FldUDk%2FbtsPkPARKUt%2FAAAAAAAAAAAAAAAAAAAAABL88AWmPChSLoaDT6PQJk4jdirgQhHe_gkpfTGzImyF%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3DflXbmN0J%252FmJHEKcz9SNwE6tmg80%253D"/>

<br/>

## Trouble Shooting
#### 1. SeatPage에서 출발역/도착역 표기 가운데 정렬
[상황]
- 출발역은 중앙 정렬되었으나 도착역은 수평 중앙 정렬이 안됨

[원인]
- Text 위젯의 textAlign이 없으면 Expanded로 감싸도 텍스트가 한쪽에 붙을 수 있음

[해결]
- Row의 crossAxisAlignment를 CrossAxisAlignment.center로 설정
- 각 Text 위젯에 textAlign: TextAlign.center를 적용해 내부에서도 텍스트 중앙 정렬되도록 함

#### 2. AppBar / Background 기본 색상 구분
[상황]
- AppBar 배경색과 Scaffold 배경색이 디자인 가이드에 맞지 않음
- 라이트/다크 모드 전환 시 AppBar와 배경이 구분이 안됨

[원인]
- ThemeData의 colorScheme.surface, background 혼동
Scaffold.backgroundColor와 AppBar.backgroundColor를 동일한 colorScheme 값으로 지정함(?)
- Material 개념

[해결]
- Scaffold: colorScheme.background 사용 → 배경색
- AppBar는 colorScheme.surface로 분리해 Scaffold 배경과 구분 
- 다크 모드 Theme.of(context).colorScheme 적용

#### 3. 다크 모드 시 색상만 변경
[상황]
- 다크 모드로 전환 시 레이아웃, 위젯도 함께 변경
- 레이아웃 구조 유지하면서 색상만 모드에 맞게 변경되길 원함

[원인]
- ThemeData에서 다크/라이트용 ColorScheme만 분리하지 않고 전체 ThemeData를 별도로 관리하면서 설정 충돌
- 코드에서 다크 모드를 수동으로 분기 처리하지 않고, brightness에 따라 위젯 로직이 바뀌게 작성함
- Theme.of(context).brightness 조건문이 스타일뿐 아니라 레이아웃 구조까지 조건부로 처리될 때 발생

[해결]
- ThemeMode.system / Theme.of(context).colorScheme 이용
- 색상만 조건문(Theme.of(context).brightness)으로 분리, 레이아웃 구조는 동일하게 유지
- ColorScheme.fromSeed(), 기본 색상 톤 seed로 다크/라이트 대응

<br/>
