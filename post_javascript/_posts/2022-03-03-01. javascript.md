---
layout: post
title: javascript
subtitle: javascript 문법 간단요약
gh-repo: jinokiim/jinokiim.github.io
gh-badge: [star, fork, follow]
thumbnail-img: /assets/img/javascript/javascriptthumbnail.png
cover-img: /assets/img/javascript/javascriptcover.png
tags: [javascript]
comments: true
---


### 변수 저장

```javascript
var name = 'kim';
name;

var age = 20;
let address = suwon;
const PI = 3.14;
```
const 는 상수를 선언할때 사용.
var과 다르게 let으로 변수를 선언하면 
초기화 할 수 없다.

### html 에서 hello 란 id를 찾아서 바보로 변경
```javascript
document.getElementById('hello').innerHTML = '바보'
```

### 버튼을 클릭할때 함수 실행

```javascript
document.getElementById('button').addEventListener('click', function() {
    document.getElementById('hello').innerHTML = '바보'
  });
```

### 함수로 만들어서 사용

```javascript
// (string) 처럼 파라미터를 이용해 다양하게 함수를 사용할수 있다.
function changeString(string) {
  document.getElementById('hello').innerHTML = string
}

document.getElementById('button').addEventListener('click', function() {
	changeBabo()
  });
```

### 자료를 여러개 자장.

```javascript
/// array 자료형
var name = ['kim', 'park'];
name;
name[0];  // 인덱스를 이용해서 원하는것만 사용 가능

// object 자료형
var name = {name: 'kim', age: 20};
name.age;
name['age'];  // 이 두방법으로 value를 얻을 수 있다.
```


### 코드를 조건부로 실항하고 싶을때 if/else

```javascript
if(1 === 1){
  console.log('hello');
} else {
  console.log('no thankyou');
}
```

### 반복되는 코드를 줄이고 싶을 때 for 반복문

```javascript
for (var i = 0; i < 3; i ++) {
  console.log('hello');
}
```

```javascript
[1, 2, 3, 4].forEach(function(a) {
  // array의 element의 갯수만큼 반복
  // 파라미터를 이용하여 element를 바로 이용할 수 있다.
});
```



```javascript

```
