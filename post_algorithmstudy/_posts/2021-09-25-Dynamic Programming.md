---
layout: post
title: 다이나믹 프로그래밍(Dynamic Programming)
subtitle: 알고리즘 개념과 원리
gh-repo: jinokiim/jinokiim.github.io
gh-badge: [star, fork, follow]
thumbnail-img: /assets/img/algorithmstudy/algorithmthumbnail.png
cover-img: /assets/img//algorithmstudy/algorithmbg.jpg
tags: [Python, algorithm]
comments: true
---



# 다이나믹 프로그래밍(Dynamic Programming)



## 다이나믹 프로그래밍이란?

다이나믹 프로그래밍은 쉽게 말해 '하나의 문제는 단 한번만 풀도록 하는 알고리즘' 이다. 한번 푼 것을 여러번 다시 풀지 않아 효율적으로 아라고리즘을 개선시키는 방법이다.



분할 정복 기법에서 동일한 문제를 다시 푼다는 단점이 발생할 수 있다. 피보나치 수열은 단점이 발생한 좋은 예시이다. 특정한 숫자를 구하기 위해 그 앞의 있는 숫자와 두개 앞에 있는 숫자의 합을 구해야 한다. 



**피보나치 수열의 점화식:** D[i] = D[i - 1] + D[i - 2]

분할 정복 기법을 이용하여 D[15]를 구하려면 D[14]와 D[13]의 값을 구해야 하고, D[14]를 구하기 위해선 D[13]와 D[12] 를 구해야 한다. 계속해서 동일한 데이터를 구해야 하는 단점이 발생한다. 따라서 이럴 때는 **동적 프로그래밍 기법**을 사용해야한다.



다이나믹 프로그래밍은 다음의 가정에서 사용할수 있다.

1. 큰 문제를 작은 문제로 나눌 수 있다.
2. 작은 문제에서 구한 정답은 다른 큰문제 안에서의 동일한 작은 문제의 정답과 동일하다.

다시 말하면 크고 어려운 문제를 먼저 작게 나누어 해결하여 전체의 답을 구하는 것이다. 이 과정에서 '메모이제이션(Memoization)'이 사용된다. 이미 계산한 결과를 배열에 저장함으로써 나중에 동일한 문제는 단순히 저장된 값만 반환만 하면 되는 것이다. 

다시 피보나치 수열문제에서 

```python
d = [0]*40
d[1]=1
d[2]=1
def fibonacci(number):
        if d[number]!=0:
            return d[number]
        else:
            d[number] = fibonacci(number-1)+fibonacci(number-2)
            return d[number]

print(fibonacci(30))
```

0으로 이루어진 배열 d 를 만들어주고, 처음 1과 2의 값을 1로 입력하여준다.

그리고 0이아니라면 값을 바로 반환하도록 설정하여 함수를 만들어준다.
