---
layout: post
title: Chapter 3
subtitle: 조건문
gh-repo: jinokiim/jinokiim.github.io
gh-badge: [star, fork, follow]
thumbnail-img: /assets/img/python/pythonlogo.png
cover-img: /assets/img/python/pythonbglogo.png
tags: [Python]
comments: true
---
## 불 자료형과 if 조건문

Boolean(Bool) 은 True 와 False 값만 가질 수 있다.

## Boolean 만들기 : 비교연산자

boolean 은 비교연산자를 통해 만들수 있다.

|연산자|설명|연산자|설명|
|:---:|:---:|:---:|:---:|
|==|같다|>|크다|
|!=|다르다|<=|작거나같다|
|<|작다|>=|크거나같다|



```python
print(10 == 100)
print(5 < 10)
print('가' < '다')
```

    False
    True
    True


## boolean 연산하기 : 논리 연산자

boolean 끼리는 논리 연산자를 사용할 수 있다.

|연산자|의미|설명|
|:---:|:---:|:---:|
|not|아니다|boolean을 반대로 전환|
|and|그리고|모두 참일때 True, 이외는 False|
|or|또는|두개중 하나만 참이라도 True 출력|  

## if 조건문

조건에 따라 코드를 실행하거나 실행하지 않게 하기위해 사용


```python
# input
number = input("정수를 입력하시오. > ")
n = int(number)

# 양수 조건
if n > 0:
    print("양수입니다.")
# 0 조건
if n == 0:
    print("0입니다.")
# 음수 조건
if n < 0:
    print("음수 입니다.")
```

    양수입니다.


## 날짜 / 시간 활용하기

날짜, 시간과 관련된 기능을 가져옵니다


```python
import datetime

# 현재 날짜와 시간을 구합니다.
now = datetime.datetime.now()

# 출력합니다.
print(now)
print(now.year)
print(now.month)
print(now.day)
print(now.hour)
print(now.minute)
print(now.second)
print()
# format 을 이용
print("{}년 {}월 {}일 {}시 {}분 {}초".format(
    now.year, now.month, now.day, now.hour, now.minute, now.second
))
```

    2021-08-28 16:37:34.669989
    2021
    8
    28
    16
    37
    34
    
    2021년 8월 28일 16시 37분 34초


## if ~ else 와 elif 구문

if 조건 : 조건이 참일때 실행할 문장  
else 조건 : 조건이 거짓일때 실행할 문장  
elif 조건 : if 와 else 조건문 사이에 입력



```python
import datetime

now = datetime.datetime.now()
month = now.month    # datetime 을 가져오고 현재 월을 변수로 저장

if 3 <= month <= 5:
    print("봄입니다.")

elif 6 <= month <= 8:
    print("여름입니다.")

elif 9 <= month <= 11:
    print("가을입니다.")

else :
    print("겨울입니다.")

# 조건을 추후에 넣기 위해서 pass 를 이용

number = input("정수 입력 >")
number = int(number)

if number > 0:
    pass
else :
    pass
```

    여름입니다.



```python

```
