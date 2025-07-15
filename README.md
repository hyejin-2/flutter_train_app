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
- 각 기차역 이름을 터치 시 해당 역 이름을 반환하며 뒤로가기.  
(`HomePage`의 출발역 또는 도착역 변경)
  
### 3. 게임 종료 후 결과를 파일에 저장하는 기능
[설명]
- 게임 종료 후 결과를 파일에 저장합니다.

[조건]
- `결과를 저장하시겠습니까? (y/n)`를 출력합니다.  
- 사용자의 입력에 따라 결과를 result.txt 파일에 저장합니다.  
- 저장되는 내용은 캐릭터의 이름, 남은 체력, 게임 결과(승리/패배)*입니다.

[힌트]
- File 클래스의 `writeAsStringSync()` 을 이용하여 파일을 저장할 수 있습니다.

### 4. 캐릭터와 몬스터의 공통되는 부분을 추상화하여, 추상 클래스 구현
[설명]
- Character 클래스와 Monster 클래스에서 공통되는 부분을 추상화하여, 이를 추상 클래스로 만들고,  
두 클래스가 이 추상 클래스를 상속받도록 코드를 구현합니다.

[조건]
- 추상 클래스에서 공통으로 사용되는 변수 선언
- 상속 받는 클래스에서 함수 재정의 하기. 함수 재정의는 아래와 같은 형식
  <img alt="4_조건이미지" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2F0Erhw%2FbtsO4jJcUBT%2FAAAAAAAAAAAAAAAAAAAAAO6uUFarXLpM71AKtb19wGszmxbSQov5pWKYpQb2NGCl%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3Dw2GHXRSzjOWMV6%252FNNwxI1QnGYpk%253D"/>

[힌트]
- abstract class 키워드를 사용하여 추상 클래스를 선언
- extends 키워드를 사용하여 클래스를 상속
- @override 어노테이션을 사용하여 메서드를 재정의
- 몬스터 클래스의 경우 방어력을 0으로 설정

<br/>

## 주의 사항
- 예외 처리를 통해 파일이 없거나 잘못된 형식의 데이터를 읽었을 때 프로그램이 종료되지 않도록 합니다.
- 사용자 입력에 대한 검증을 철저히 하여 예상치 못한 입력으로 인한 오류를 방지합니다.
- 코드의 재사용성과 가독성을 높이기 위해 함수와 클래스를 적절히 활용합니다.

<br/>

## 코드 실행 예시
  <img alt="전투 RPG 게임 이미지" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdna%2FlTVq5%2FbtsO41BiWpJ%2FAAAAAAAAAAAAAAAAAAAAAAKfqU7LLQbzNwJdmIhxdgWaIEyLu2mBiGByuMJ5v0Xu%2Fimg.png%3Fcredential%3DyqXZFxpELC7KVnFOS48ylbz2pIh7yKj8%26expires%3D1753973999%26allow_ip%3D%26allow_referer%3D%26signature%3D3sQPKvMlxnyg0xn6NkGONMQpKlY%253D"/>

<br/>

## 도전 기능 가이드
모든 정답 코드는 기존의 필수 기능 정답 코드를 반영합니다.  
### 1. 캐릭터의 체력 증가 기능 추가
[설명]  
- 30%의 확률로 캐릭터에게 보너스 체력을 제공합니다.  

[조건]
- 게임이 시작되고 캐릭터의 데이터를 불러온 후 해당 기능을 호출합니다.
- 30%의 확률로 `character`의 `health`를 `10` 증가 시킵니다.
- 보너스 체력을 얻었을 시 아래와 같이 출력합니다.  
출력 예시 `'보너스 체력을 얻었습니다! 현재 체력: ${character.health}'`

[힌트]
- Random 함수를 이용하여 확률 기능을 제공할 수 있습니다.

### 2. 전투 시 캐릭터의 아이템 사용 기능 추가
[설명]
- 캐릭터가 전투 중에 한 번 특수 아이템을 사용할 수 있는 기능을 구현합니다.

[조건]
- 전투 중 사용자가 `3`을 입력하면 아이템을 사용합니다.
- 아이템이 사용되었는지 확인하는 변수를 추가합니다.
- 아이템을 사용했다면 다시 사용할 수 없도록 처리합니다.
- 아이템 사용 시 캐릭터는 한 턴 동안 공격력이 두 배로 변경됩니다.

[힌트]
- `character` 클래스 내에서 아이템 사용 여부를 확인하는 변수와 아이템 사용을 처리하는 함수를 작성합니다.

### 3. 몬스터의 방어력 증가 기능 추가
[설명]
- 몬스터의 방어력을 특정 턴마다 증가시킵니다.
- 방어력 증가로 인하여 캐릭터가 몬스터에게 입히는 데미지가 줄어들게 됩니다.

[조건]
- 3턴마다 방어력이 2씩 증가하도록 함수를 작성합니다.
- 방어력 증가 시 출력 문구는 아래로 작성합니다.  
`'${name}의 방어력이 증가했습니다! 현재 방어력: $defense’`

[힌트]
- 방어력이 증가하였는지를 확인할 카운터 변수를 선언합니다.
- 3턴마다 몬스터의 방어력이 2가 증가하면 카운터 변수를 0으로 초기화 합니다.

<br/>

## Trouble Shooting
- Study hard &ensp;🚀

<br/>
