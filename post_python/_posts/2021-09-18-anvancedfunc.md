---
layout: post
title: Chapter 5
subtitle: 함수 고급
gh-repo: jinokiim/jinokiim.github.io
gh-badge: [star, fork, follow]
thumbnail-img: /assets/img/pythonlogo.png
cover-img: /assets/img/pythonbglogo.png
tags: [Python]
comments: true
---  
## tuple 튜플
  
튜플(tuple)은 리스트와 비슷한 자료형이다.   
리스트와 다른점은 한번 결정된 요소를 바꿀 수 없다는 것이다.  
튜플은 다음과 같은 방법으로 생성한다.  
(*데이터, 데이터, 데이터, ...*)


```python
tuple_test = (10, 20, 30)       # 요소를 하나만 가지는 튜플 : (10, )
print(tuple_test[0])
print(tuple_test[1])
print(tuple_test[2])
```

    10
    20
    30



```python
[a, b] = [10, 20]
(c, d) = [30, 40]
print(a)
print(b)
print(c)
print(d)
```

    10
    20
    30
    40


### 변수의 값 교환


```python
e, f = 10, 20
print("교환전 : ", "e : ", e, "/ f : ", f)

e, f = f, e
print("교환후 : ", "e : ", e, "/ f : ", f)
```

    교환전 :  e :  10 / f :  20
    교환후 :  e :  20 / f :  10


## lambda 람다

코드를 좀 더 효율적으로 작성할 수 있도록 lambda 를 사용  
  
함수를 매개변수로 전달하는 대표적인 표준함수로  
map( ) 함수와 filter( ) 함수가 있다.  
map(함수, 리스트) : 리스트의 요소를 함수에 넣고 새로운 리스트를 구성  
filter(함수, 리스트) : 리스트의 요소를 함수에 넣고 리턴된 값이 True  


### map( )함수와 filter( )함수


```python
def power(item):
    return item * item
def under_3(item):
    return item < 3

list_input_a = [1, 2, 3, 4, 5]

# map 함수 사용
output_a = map(power, list_input_a)
print(output_a)
print(list(output_a))
print()
output_b = map(under_3, list_input_a)
output_c = filter(under_3, list_input_a)
print(output_b)
print(list(output_b))
print()
print(output_c)
print(list(output_c))
```

    <map object at 0x7f9369dc5130>
    [1, 4, 9, 16, 25]
    
    <map object at 0x7f9369db5d60>
    [True, True, False, False, False]
    
    <filter object at 0x7f9369db5970>
    [1, 2]


위의 복잡함을 피하고자 람다에 매개변수를 직접 입력


```python
list_input_a = [1, 2, 3, 4, 5]

output_a = map(lambda x: x * x, list_input_a)
print(output_a)
print(list(output_a))
print()

output_b = filter(lambda x: x < 3, list_input_a)
print(output_b)
print(list(output_b))
```

    <map object at 0x7f9369b1fb20>
    [1, 4, 9, 16, 25]
    
    <filter object at 0x7f9369b1f520>
    [1, 2]


### 매개변수가 여러개인 람다도 만들 수 있다.
lambda x, y : x * y

## map( ) 함수 추가

* map 함수는 원본 리스트를 변경하지 않고 새 리스트를 생성한다.
* map 함수는 map 타입으로 결과를 리턴하기 때문에 리스트나 튜플 등으로 변환한다.

list에 저장된 요소를 정수로 변환하고 list로 변환


```python
a = [1.2, 2.5, 3.7, 4.1]
a = list(map(int, a))
print(a)
```

    [1, 2, 3, 4]


* 여러개의 입력값을 받고 변수로 저장


```python
a, b = input().split()      # a, b 의 입력을 공백을 기준으로 각각저장하고,
                            # a 와 b 로 각각 변수로 저장
print(a)
print(b)
```

    10 20
    10
    20


* 위에서 입력같은 값을 바로 정수로 저장


```python
a, b = map(int, input().split())

print(a)
print(b)
```

    10 20 
    10
    20


## 파일 처리

파일을 처리하기 위해 파일열기를 실행하고  
이후 파일 읽기 또는 파일 쓰기를 할 수 있다.  
  
open( ) : 파일을 열때 사용  
파일 객체 = open(파일경로, 읽기 모드)
|모드|설명|
|:---:|:---:|
|w|write 모드(새로 쓰기 모드)|
|a|append 모드(이어서 쓰기 모드)|
|r|read 모드(읽기 모드)|

close( ) : 파일을 닫을때 사용


```python
# 파일 열기
file = open('basic.txt, 'w')
# 파일에 쓸 텍스트 입력
file.write('hello python programming')
# 파일 닫기
file.close()
```

### with 키워드

파일을 열고 닫지않는 실수를 하지 않기위해 with 키워드 사용  
with open(파일 경로, 모드) as 파일 객체:  
문장


```python
with open('basic.txt', 'w') as file:
    file.write('hello python programming')
```

### 텍스트 읽기
파일 객체.read()  

### 랜덤하게 1000명의 키와 몸무게 만들기


```python
# 랜덤함을 만들기 위해 가져오기
import random

# 랜덤이름을 위해 한글 리스트 만들기
h = list('진호정준수정미지민영화주우현재')

# 파일을 쓰기모드로 열기
with open('randomhuman.txt', 'w')as file:
    for i in range(100):
        name = random.choice(h) + random.choice(h)  # h 리스트에서 한글자씩 가져온다
        weight = random.randrange(40, 110)
        heght = random.randrange(140, 195)

        # 텍스트 작성
        file.write('{}, {}, {}\n'.format(name, height, weight))
```


```python
# 반복문으로 파일 한 줄씩 읽기

with open('randomhuman.txt', 'r')as file:
    # 변수 선언
    (name, height, weight) = line.strip().split(', ')

    # 데이터에 문제가 없는지 확인, 문제가 있으면 지나감
    if (not name) or (not height) or (not weight):
        continue
    # 결과계산
    bmi = int(weight) / ((int(weight)/100)**2)
    result = ''
    if 25 <= bmi:
        result = '과체중'
    elif 18.5 <= bmi:
        result = '정상체중'
    else:
        result = '저체중'
    
    # 출력
    print('\n'.join([
        '이름 : {}',
        '키 : {}',
        '몸무게 : {}',
        'BMI : {}',
        '결과 : {}'
    ]).format(name, height, weight, bmi, result)
    )
```
test
