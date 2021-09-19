---
layout: post
title: Chapter 2
subtitle: 자료형과 문자열
gh-repo: jinokiim/jinokiim.github.io
gh-badge: [star, fork, follow]
thumbnail-img: /assets/img/pythonlogo.png
cover-img: /assets/img/pythonbglogo.png
tags: [Python]
comments: true
---

## 자료형과 기본 자료형

자료형 : 쉽게 사용할 수 있도록 기느오가 역할에 따라 자료를 구분했다.
        기본적인 자료형으로는 *문자열*, *숫자*, *불* 이 있다.
* strin(문자열) : 제목, 메시지 내용 등
* number(숫자) : 가격, 성적 등
* boolean(불) : Trure, Flase

## 자료형(data type) 확인하기 : type()


```python
print(type('Hello'))
print(type(273))
```

    <class 'str'>
    <class 'int'>


## 문자열 만들기


```python
# make string
print("Hello, world!")
print('Hello, world!')
print()

# "  "와 '  '를 동시에 이용하여 표현
print("my name is 'Jinho'")
print() 

# '  ' 사용하여 표현 ("  " 만 일때도 동일)
print('my name is \'Jinho\'')
print()

# \n -> 줄바꿈
# \t -> 탭
print("name\tage\tcountry")
print("Jinho\t27\tKorea")
print("Sivila\t23\tItaly")
print("Mike\t24\tUSA")
print("Rodrigo\t29\tSpain")
print()

# """를(3번)이용하면 보이는 그대로 출력가능 
#  """뒤에 \를 입력해주면 처음, 마지막 줄 공백 제거 가능(ex; """\)
print("""
동해물과 백두산이 마르고 닳도록
하느님이 보우하사 우리나라 만세
무궁화 삼천리 화려강산
대한사람 대한으로 길이 보전하세
""")
```

    Hello, world!
    Hello, world!
    
    my name is 'Jinho'
    
    my name is 'Jinho'
    
    name	age	country
    Jinho	27	Korea
    Sivila	23	Italy
    Mike	24	USA
    Rodrigo	29	Spain
    
    
    동해물과 백두산이 마르고 닳도록
    하느님이 보우하사 우리나라 만세
    무궁화 삼천리 화려강산
    대한사람 대한으로 길이 보전하세
    


## 문자열 연산자

문자열에는 + 기호로 문자열 연결 연산을 적용할 수 이있다.
         * 기호로 문자열을 반복할 수 있다.ㅔ


```python
print("Hello " + "world")
print("Hello world" +"!")
print()
print("Hello " * 3)
print(3 * "Hello ")
```

    Hello world
    Hello world!
    
    Hello Hello Hello 
    Hello Hello Hello 


## 문자열 선택 연산자(indexing) : [ ]

문자열 선택 연산자는 문자열 내부의 문자 하나를 선택하는 연산자이다.
[]안에 선택할 문자의 위치를 지정하며 index 라고 부른다.


```python
print("# index")
print("Hello")
print("Hello"[0])
print("Hello"[1])
print("Hello"[2])
print("Hello"[3])
print("Hello"[4])
# 4번까지 있기 때문에 [5]는 error
print()

print("# 거꾸로 출력")
print("Hello"[-1])
print("Hello"[-2])
print("Hello"[-3])
print("Hello"[-4])
print("Hello"[-5])

```

    # index
    Hello
    H
    e
    l
    l
    o
    
    # 거꾸로 출력
    o
    l
    l
    e
    H


## 문자열 범위 선택 연산자(슬라이싱) : [ : ]

문자열의 특정 범위를 선택할 때 사용.


```python
print("Hello world"[2:9])
#        llo wor 로 출력

# 3번부터 끝까지
print("Hello world"[3:])

# 처음부터 7번 전까지
print("Hello world"[:7])
```

    llo wor
    lo world
    Hello w


## 문자열의 길이 구하기 : len( )

( )내부에 문자열을 넣으면 문자열에 들어있는 문자의 개수(문자의 길이)를 구해준다.


```python
print(len("Hello world"))
```

    11


# 2-2 숫자

## 숫자의 종류

소수점이 없는 수자를 정수형(interger) 이라고 하고,
소수점이 있는 숫자를 실수형(floating point, 부동소수점) 이라고 한다.


```python
print(273)
print(52.273)
print(type(52))         # 정수(interger)
print(type(52.273))     # 실수(float)
print(type(0))          # int
print(type(0.0))        # float
print(0.52273e2)        # 0.52273 * 10^2
print(0.52273e-2)       # 0.52273 * 10^-2
```

    273
    52.273
    <class 'int'>
    <class 'float'>
    <class 'int'>
    <class 'float'>
    52.273
    0.0052273


## 숫자 연산자

|연산자|설명|구문|
|:---:|:---:|:---:|
|+|덧샘|숫자 + 숫자|
|-|뺄셈|숫자 - 숫자|
|* |곱셈|숫자 * 숫자|
|** |제곱|숫자 ** 숫자|
|/|나눗셈|숫자 / 숫자|
|//|몫 | 숫자 // 숫자|
|%|나머지|숫자 % |


```python
print("안녕" + "하세요" * 3)
print()

print(("안녕" + "하세요") * 3)
print()

# 연습문제
print("3462 를 17로 나누었을때의")
print(" - 몫 : ", 3462 // 17)
print(" - 나머지 : ", 3462 % 17)
```

    안녕하세요하세요하세요
    
    안녕하세요안녕하세요안녕하세요
    
    3462 를 17로 나누었을때의
     - 몫 :  203
     - 나머지 :  11


# 2-3 변수와 입력

## 변수 만들기 / 사용하기

### 변수를 활용하는 방법

1. 변수 선언
    변수를 생성하는 것을 의미한다.

2. 변수에 값을 할당
    변수에 값을 넣는 것을 의미한다.

3. 변수 참조
    변수에서 값을 꺼내는 것을 의미한다.


```python
# 변수 선언과 할당
pi = 3.14
r = 10

# 확인 및 계산
print("원주율 = ", pi)
print("원의 반지름 = ", r)
print("원의 둘레 = ", 2 * pi * r)
print("원의 넓이 = ", pi * r * r)
```

    원주율 =  3.14
    원의 반지름 =  10
    원의 둘레 =  62.800000000000004
    원의 넓이 =  314.0


## 복합 대입 연산자

|연산자 이름|설명|||
|:---:|:---:|||
|+=|숫자 덧셈 후 대입|a += 10  | a = a + 10|
|-=|숫자 뺼셈 후 대입|a -= 10  | a = a - 10 |
|* =|숫자 곱셈 후 대입|a * = 10  | a = a * 10|
|/=|숫자 나눗셈 후 대입| a /= 10  | a = a / 10|
|%=|숫자의 나머지를 구한 후 대입|a %= 10  | a = a % 10|
|**|숫자 제곱 후 대입|a **= 10 | a = a ** 10|


```python
n = 10
n += 10     # 새로운 n = 기존의 n + 10 로 대체 
n += 30
print(n)
print()
a = "hello"
a += "!"
print(a)
```

    50
    
    hello!


## 사용자 입력 : input( )

### input( ) 함수로 사용자 입력받기

사용자로부터 데이터를 입력받기 위해 다음 코드를 입력한다.
이때 input 함수 괄호 안에 입력한 내용을 프롬프트 문자열 이라고 하며,
사용자로부터 입력을 요구하는 안내 내용을 포함한다.
사용자가 입력한 결과는 항상 문자열(string) 이다.

### 입력 자료형 확인하기


```python
string = input("입력 > ")

print('자료 : ', string)
print('자료형 : ', type(string))
```

    입력 > 273
    자료 :  273
    자료형 :  <class 'str'>


## 문자열을 숫자로 바꾸기

입력받은 문자열은 숫자로 변환해야 숫자 연산에 할용할 수 있다.
cast 라고 부른다.

* int( ) : 문자열을 int 자료형으로 변환
* float( ) : 문자열을 float 자료형으로 변환


```python
string_a = input('A 입력 > ')
int_a = int(string_a)

string_b = input('B 입력 > ')
int_b = int(string_b)

print("문자열자료 sting_a + string_b : ", string_a + string_b)
print("숫자자료 int_a + int_b : ", int_a + int_b)

```

    A 입력 > 273
    B 입력 > 52
    문자열자료 sting_a + string_b :  27352
    숫자자료 int_a + int_b :  325


## 숫자를 문자열로 바꾸기

str(다른 자료형)


```python
output_a = str(52)
output_b = str(52.273)
print(output_a, type(output_a))
print(output_b, type(output_b))
```

    52 <class 'str'>
    52.273 <class 'str'>


# 연습


```python
print("inch -> cm 변환기 ")
str_input = input("인치 입력>")
num_input = float(str_input)

print()
print("입력한 ",num_input, "inch 는")
print((num_input * 2.54), "cm")
print()
```

    inch -> cm 변환기 
    인치 입력>20
    
    입력한  20.0 inch 는
    50.8 cm
    


## 숫자와 문자의 다양한 기능

### 문자열의 format( ) 함수

format( )함수는 문자열이 가지고 있는 함수이다.
{ }를 포함한 문자열 뒤에 . 을 찍고 함수를 사용하는데,
{ }의 개수와 format 함수 안의 매개변수의 개수는 같아야한다.

### format( ) 함수로 숫자를 문자열로 변환하기


```python
string_a = '{}'.format(10)

print(string_a)
print(type(string_a))
```


```python

```
