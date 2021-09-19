---
layout: post
title: Chapter 4
subtitle: 리스트와 반복문
gh-repo: jinokiim/jinokiim.github.io
gh-badge: [star, fork, follow]
thumbnail-img: /assets/img/pythonlogo.png
cover-img: /assets/img/pythonbglogo.png
tags: [Python]
comments: true
---
## list 와 반복문  
  
list : 여러가지 자료를 저장할 수 있는 자료  
 [element, element, element, ...] 형태로 입력  
  
list_a = [273, 32, 103, 'string', True, False] 일때  
각 요소가 들어있는 위치는

|list_a|273|32|103|string|True|False|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|[0]|[1]|[2]|[3]|[4]|[5]|[6]|
  
이때 [ ] 안에 들어간 숫자를 인덱스(index)라고 부른다.  
  
  
## 리스트 연산자 : 연결(+), 반복(*), len( )
  






```python
list_a = [1, 2, 3]
list_b = [4, 5, 6]
print("# list")
print("list_a : ", list_a)
print("list_b : ", list_b)
print()

print("# list 기본 연산자")
print("list_a + list_b = ", list_a + list_b)
print("list_a * 3 = ", list_a * 3)
print()

print("list 길이구하기")
print("list 의 길이 = ", len(list_a))
```

    # list
    list_a :  [1, 2, 3]
    list_b :  [4, 5, 6]
    
    # list 기본 연산자
    list_a + list_b =  [1, 2, 3, 4, 5, 6]
    list_a * 3 =  [1, 2, 3, 1, 2, 3, 1, 2, 3]
    
    list 길이구하기
    list 의 길이 =  3


## 리스트에 요소 추가하기 : append, insert
  
listname.append(element) : list 뒤에 element 추가  
listname.insert(위치, element) : 지정 위치에 요소 추가  


```python
list_c = [1, 2, 3]
list_c.append(4)
print(list_c)
print()
list_c.insert(2, 8)
print(list_c)

```

    [1, 2, 3, 4]
    
    [1, 2, 8, 3, 4]


## 리스트 요소 제거하기
    
del listname[index]  
listname.pop(index)  
listname.remove(값)  
listname.clear( ) : 모두 제거하기


```python
list_d = [1, 2, 3, 4, 5]
del list_d[1]
print(list_d)
list_d.pop(3)
print(list_d)
list_d.remove(3)
print(list_d)
list_d.clear()
print(list_d)
```

    [1, 3, 4, 5]
    [1, 3, 4]
    [1, 4]
    []


## 리스트 내부에 있는지 확인하기 : in / not in 연산자
  
값 in listname


```python
list_h = [1, 2, 3, 4, 5, 6, 7]

print(3 in list_h)
print(10 in list_h)
```

    True
    False


## For 반복문
  
조건에 맞게 반복한다.


```python
for i in range(10):
    print('print')
```

    print
    print
    print
    print
    print
    print
    print
    print
    print
    print


## For 반복문 list 와 함께 사용하기
  
기본형태  
for *반복자* in *반복할 수 있는 것* :  
&#4; 코드


```python
array = [273, 32, 103, 57, 52]

for element in array:
    print(element)
print()
# 문자열에선
for character in 'hello world':
    print("- ", character)
```

    273
    32
    103
    57
    52
    
    -  h
    -  e
    -  l
    -  l
    -  o
    -   
    -  w
    -  o
    -  r
    -  l
    -  d


## 딕셔너리와 반복문
  
리스트는 '인덱스'를 기반으로 값을 저장하는 것 이라면  
딕셔너리(dictionary)는 '키'를 기반으로 값을 저장한다.  
{  
    '키A' : 10(키값),  
}  
  
|자료형|의미|가리키는 위치|선언 형식|
|:---:|:---:|:---:|:---:|
|리스트|인덱스를 기반으로 값을 저장|인덱스|변수 = [ ]|
|딕셔너리|키를 기반으로 값을 저장|키|변수 = { }|
  
## 딕셔너리 선언하기
  
변수 = {  
        키 : 값,  
        키 : 값,  
        ...
        키 : 값,  
}  



```python
# dictionary 선언하기
dict_avengers = {
    "name" : "avengers endgame",
    "type" : "hero movie",
    "release date" : "april 4th",
    "character" : ["ironman", "thor", "cpt america", "hulk"],
    "director" : "russo"
}

# 출력하기
print('name : ', dict_avengers['name'])
print('type : ', dict_avengers['type'])
print('realease date : ', dict_avengers['release date'])
print('character : ', dict_avengers['character'])
print('director : ', dict_avengers['director'])
print()
# 값을 변경하기
dict_avengers["director"] = "joe russo"
print("director : ", dict_avengers["director"])

```

    name :  avengers endgame
    type :  hero movie
    realease date :  april 4th
    character :  ['ironman', 'thor', 'cpt america', 'hulk']
    director :  russo
    
    director :  joe russo


## dictionary 에 새로운 값 추가하기
 dictionary 에 새로운값 추가하기  
 dictionaryname['새로운 키'] = 새로운 값  
  
 dictionary 에 요소 제거하기  
 del dictionaryname['key]  
  
## key 가 존재하는지 확인  
  
1. if 를 활용  
key = input("접근하고자 하는 키 입력하시오 > ")  : 원하는 key를 입력받음  
if key in dictionary:  
print(dictionary[key])  
else:  
  print("존재하지 않는 키")
  
2. get 함수를 이용  
  value = dictionary.get("존재하지 않는 키")   : 존재하지 않는 key를 value로 확인  
print(value) : value가 없으면 None로 출력
  
 반복문(for) 과 dictionary  
 for key in dictionary :  
 print(key, " : ", dictionary[key])

## 반복문과 while 반복문
  
### range(범위)
  
1. range(A)  * A 는 숫자  


```python
a = range(5)
print(list(a))
```

    [0, 1, 2, 3, 4]


2. range(A, B)  
A 부터 B - 1 까지 정수로 범위를 만든다.


```python
b = range(3, 7)
print(list(b))
```

    [3, 4, 5, 6]


3. range(A, B, C)  
A 부터 B-1 까지 정수로 범위를 만드는데, 앞뒤의 숫자가 C 만큼의 차이를 가진다.



```python
c = range(0, 10, 2)
print(list(c))

```

    [0, 2, 4, 6, 8]


## for 반복문과 함께 사용하기
  
  for `숫자 변수` in range


```python
for i in range(5):
    print(str(i) + " 는 " + str(i + 1) + "번째 출력입니다.")
```

    0 는 1번째 출력입니다.
    1 는 2번째 출력입니다.
    2 는 3번째 출력입니다.
    3 는 4번째 출력입니다.
    4 는 5번째 출력입니다.


## for 반복문과 list 와 range 조합하기


```python
array = [273, 32, 103, 57, 52]      # list 선언하기
for element in array:               # list 에 반복문 적용
    print(element)                  # list element 출력
print()

for i in range(len(array)):         # list 의 length 만큼 range 를 준다
    print("{}번째 요소 : {}".format(i, array[i]))

```

    273
    32
    103
    57
    52
    
    0번째 요소 : 273
    1번째 요소 : 32
    2번째 요소 : 103
    3번째 요소 : 57
    4번째 요소 : 52


## while 반복문
  
특정 횟수만틈 반복하는 경우에는 for 을 사용했니만  
while 반복문은 boolean이 True 인 동안 문장을 계속 반복한다.

`while boolean 표현식:`  
    문장  



```python
i = 0
while i < 10:
    print('{}번째 반복입니다.'.format(i))
    i += 1
```

    0번째 반복입니다.
    1번째 반복입니다.
    2번째 반복입니다.
    3번째 반복입니다.
    4번째 반복입니다.
    5번째 반복입니다.
    6번째 반복입니다.
    7번째 반복입니다.
    8번째 반복입니다.
    9번째 반복입니다.



```python
list_test = [1, 2, 1, 2,1, 2, 1, 2]
value = 2
while value in list_test:
    list_test.remove(value)
print(list_test)
```

    [1, 1, 1, 1]



```python
import time
time.time()

number = 0
target_tick = time.time() + 5
while time.time() < target_tick:
    number +=1

print('5초동안 {}번 반복했습니다.'.format(number))
```

    5초동안 31879236번 반복했습니다.



```python
i = 0
while True:
    print("{}번째 반복입니다.".format(i + 1))
    i += 1
    # 반복을 종료
    input_text = input("quit??? (y/n) : ")
    if input_text in ["y", "Y"]:
        print("quit")
        break
print()

```

    1번째 반복입니다.
    2번째 반복입니다.
    3번째 반복입니다.
    4번째 반복입니다.
    5번째 반복입니다.
    quit
    



```python
numbers = [5, 15, 6, 20, 7, 25]

for number in numbers:
    if number < 10:
        continue
    print(number)
```

    15
    20
    25


## list 에 적용할 수 있는 기본 함수
  
|함수|설명|
|:---:|:---:|
|min()|list 내부에서 최솟값을 찾습니다.|
|max()|list 내부에서 최댓값을 찾습니다.|
|sum()|list 내부에서 값을 모두 더합니다.|
|reversed()|list 뒤집기|
|enumerate()|현재 인덱스가 몇 번째인지 확인하기|
|items()|딕셔너리로 쉽게 반복문 작성하기|




```python
l = [1, 2, 3, 4, 5]
print(min(l))
print(max(l))
print(sum(l))
rl = reversed(l)
print(list(rl))
```

    1
    5
    15
    [5, 4, 3, 2, 1]





```python
l = ['a', 'b', 'c', 'd', 'e']
print(list(enumerate(l)))
```

    [(0, 'a'), (1, 'b'), (2, 'c'), (3, 'd'), (4, 'e')]



```python
dictionary_a = {
    "keyA" : "elementA",
    "keyB" : "elementB",
    "keyC" : "elementC"
} 
for key, element in dictionary_a.items():
    print("dictionary[{}] : {}".format(key, element))
print()
```

    dictionary[keyA] : elementA
    dictionary[keyB] : elementB
    dictionary[keyC] : elementC
    



```python
array = []
for i in range(0, 20, 2):
    array.append(i*i)
print(array)
```

    [0, 4, 16, 36, 64, 100, 144, 196, 256, 324]



```python
array_a = [i * i for i in range(0, 20, 2)]        # 최종 결과를 맨 앞에 작성(i * i)
print(array_a)
```

    [0, 4, 16, 36, 64, 100, 144, 196, 256, 324]



```python
array_b = ["apple", "banana", "orange", "chocolate"]
output = [fruit for fruit in array_b if fruit != "chocolate"]
print(output)
```

    ['apple', 'banana', 'orange']


## 진수 변환하기
  
### 방법 1



```python
value = 60
b = format(value, 'b')      # 2진수 
o = format(value, 'o')      # 8진수
h = format(value, 'x')      # 16진수
print(b)
print(h)
print(o)
print(type(b))
print()
ib = int(b)
print(ib)
print(type(ib))
```

    111100
    3c
    74
    <class 'str'>
    
    111100
    <class 'int'>


### 방법 2


```python
b = '{:b}'.format(60)
print(b)
print(type(b))
print()
ib = int(b)
print(ib)
print(type(ib))
```

    111100
    <class 'str'>
    
    111100
    <class 'int'>


## list 연습문제
  
### 1.


```python
numbers = [273, 103, 5, 32, 65, 9, 72, 800, 99]

for n in numbers:
    if n >= 100:
        print('- 100 이상의 수 : {}'.format(n))
    
```

    - 100 이상의 수 : 273
    - 100 이상의 수 : 103
    - 100 이상의 수 : 800


### 2.


```python
numbers = [273, 103, 5, 32, 65, 9, 72, 800, 99]

for i in numbers:
    if i % 2 == 0:
        print('{} 는 짝수입니다.'.format(i))
    else:
        print('{} 는 홀수입니다.'.format(i))

for i in numbers:
    print('{} 는 {} 자릿수입니다.'.format(i, len(str(i))))
```

    273 는 홀수입니다.
    103 는 홀수입니다.
    5 는 홀수입니다.
    32 는 짝수입니다.
    65 는 홀수입니다.
    9 는 홀수입니다.
    72 는 짝수입니다.
    800 는 짝수입니다.
    99 는 홀수입니다.
    273 는 3 자릿수입니다.
    103 는 3 자릿수입니다.
    5 는 1 자릿수입니다.
    32 는 2 자릿수입니다.
    65 는 2 자릿수입니다.
    9 는 1 자릿수입니다.
    72 는 2 자릿수입니다.
    800 는 3 자릿수입니다.
    99 는 2 자릿수입니다.




### 3.


```python
l = [
    [1, 2, 3],
    [4, 5, 6, 7],
    [8, 9]
]

for i in l:
    for j in i:
        print(j)

```

    1
    2
    3
    4
    5
    6
    7
    8
    9


## 4.


```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
output = [[], [], []]

for number in numbers:
    output[(number + 2)%3].append(number)
print(output)
```

    [[1, 4, 7], [2, 5, 8], [3, 6, 9]]

