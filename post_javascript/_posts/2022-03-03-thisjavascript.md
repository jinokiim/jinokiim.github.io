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

## this

### this -1
그냥 출력하거나 함수에서 출력하면
```javascript
console.log(this)

function thisfunction() {
  consolt.log(this);
}
thisfunction();
```
window{ ... } 라는 objact 형태로 값이 나온다.
window는 모든 전역변수, 함수, DOM을 보관하고 관리하는 전역 객체이다.

### this -2
object 자료형 내에 함수에서 사용하면 메소드를 가지고 있는 오브젝트를 의미한다.
```javascript
var object1 = {
  data : 'kim'
  objectfunction: function(){
    console.log(this)
  }
}
objectfunction();
```
object1에 해당하는 {data: 'kim' ... } 이 출력된다.
하지만 에로우 함수를 이용할 경우 this는 window object를 출력한다.

```javascript
var object2 = {
  data : 'kim'
  objectfunction2: () => {
    console.log(this)
  }
}
objectfunction();
```

### this -3
반복적인 object를 생성할때 constructor를 이용한다.
```javascript
function constructor(){
  this.name = 'kim'
}

var constructor1 = new constructor();
```
constructor1 {name: 'kim'} 으로 오브잭트가 생성된다.


### this -4
id가 button인 버튼이 있을때,
```javascript
document.getElementById('button').addEventListener('click', function(e){
  console.log(this);
  console.log(e.currentTarget)
})
```
이때 this는 e.currentTarget(지금 이벤트가 동작하고 있는 곳.)와 동일하다.
클릭한 button에 관련한 html 태그가 this이다.


```javascript
document.getElementById('button').addEventListener('click', function(e){
  var array = [1, 2, 3];
  array.forEach(function(a){
    console.log(a);
    console.log(this);
  });
});
```
이때 this는 window가 나온다.


```javascript
var object1 = {
  names: ['kim','lee','park'],
  func: function(){
    console.log(this)  // 1번
    object1.names.forEach(function(){
      console.log(this) // 2번
    });
  }
}

object1.func();
```

1번에서는 object1이 출력되고,
2번은 window가 출력된다.


하지만 아래처럼 애로우함수를 이용하면
```javascript
var object1 = {
  names: ['kim','lee','park'],
  func: function(){
    object1.names.forEach( () => {
      console.log(this)
    });
  }
}

object1.func();
```
this는 바로 외부 this값을 그대로 받아쓴다.
arrow 함수는 내부의 this값을 변화시키지 않는다.




```javascript

```
