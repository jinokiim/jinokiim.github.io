---
layout: post
title: Chapter 1
subtitle: 파이썬 시작하기
gh-repo: jinokiim/jinokiim.github.io
gh-badge: [star, fork, follow]
thumbnail-img: /assets/img/pythonlogo.png
cover-img: /assets/img/pythonbglogo.png
tags: [Python]
comments: true
---
## 표현식
### 어떠한 값을 만들어 내는 간단한 코드
273
10 + 20 + 30 * 10
print('python programming')

## 키워드
### 특별한 의미가 부여된 단어


```python
import keyword
print(keyword.kwlist)
```

    ['False', 'None', 'True', 'and', 'as', 'assert', 'async', 'await', 'break', 'class', 'continue', 'def', 'del', 'elif', 'else', 'except', 'finally', 'for', 'from', 'global', 'if', 'import', 'in', 'is', 'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 'return', 'try', 'while', 'with', 'yield']


## 식별자

### 프로그래밍 언어에서 이름을 붙일 때 사용하는 단어.
### 주로 별수 또는 함수 이름으로 사용

* 키워드를 사용하면 안된다
* 특수문자는  언더 바(_) 만 허용
* 숫자로 시작하면 안된다.
* 공백을 포함할 수 없다.
|사용 가능한 단어|사용 불가능한 단어
|:---:|:---:|
|alpta|break|
|alpha10|273alpha|
|AlPHa|has space|

## 주석

프로그램의 진행에 전혀 영향을 주지않는 코드, 설명하기 위해 사용


```python
# 주석 사용의 예
print('Hello World!')  # 문자열을 출력합니다
```

    Hello World!


## 출력 : print()

현재 무엇을 하는지 알 수 있도록 메세지를 출력하는 기본방법.
print(출력1, 출력2, ...)

## 하나만 출력하기


```python
print("Hello, World!")
print(52)
print(273)
```

    Hello, World!
    52
    273


## 여러개 출력하기


```python
print(52, 273, "hello")
print('안녕하세요', '저의', '이름은', '김진호입니다.')
```

    52 273 hello
    안녕하세요 저의 이름은 김진호입니다.


## 줄바꿈하기


```python
print()  # 빈줄을 출력합니다.
```

    


## 기본 출력


```python
print('# 하나만 출력합니다.')
print('Hello, Python Programming...!')
print()

print('# 여러개를 출력합니다.')
print(10, 20, 30, 40, 50)
print('Hello,', 'my', 'name', 'is', 'Jinho!')
print()

print('아무것도 출럭하지 않습니다')
print('-----확인 전용선-----')
print()
print()
print()
print()
print('-----확인 전용선-----')
```

    # 하나만 출력합니다.
    Hello, Python Programming...!
    
    # 여러개를 출력합니다.
    10 20 30 40 50
    Hello, my name is Jinho!
    
    아무것도 출럭하지 않습니다
    -----확인 전용선-----
    
    
    
    
    -----확인 전용선-----

