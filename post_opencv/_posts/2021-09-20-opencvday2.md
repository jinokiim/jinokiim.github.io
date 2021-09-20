# openCV Day2


```python
import numpy as np
import cv2
```

## 이벤트 처리

### 키보드 이벤트

* 키보드에서 어떤 키를 눌렀는지 알아내려면
cv2.waitKey( ) 함수의 반환값을 출력해보면 된다.


```python
import cv2

img_file = './img/girl.jpg'
img = cv2.imread(img_file)
title = 'IMG'
x, y = 100, 100    # 최초 좌표

while True:
    cv2.imshow(title, img)
    cv2.moveWindow(title, x, y)
    key = cv2.waitKey(0) &0xFF   # 키보드 입력을 무한 대기, 8비트 마스크 처리
    print(key, chr(key))     # 키보드 입력값, 문자값 출력
    
    if key == ord('h'):      # h 키 누르면 좌로 10이동
        x -= 10
    elif key == ord('j'):    # j 키 누르면 좌로 10이동
        y += 10
    elif key == ord('k'):    # k 키 누르면 좌로 10이동
        y -= 10
    elif key == ord('l'):    # l 키 누르면 좌로 10이동
        x += 10
    elif key == ord('q') or key == 27:    # q, esc 키 누르면 좌로 10이동
        break
        cv2.destroyAllWindows()
    cv2.moveWindow(title,x,y)    # 새로운 좌표로 창 이동
```

    100 d
    100 d
    100 d
    3 
    3 
    3 
    2 
    104 h
    104 h
    104 h
    108 l
    108 l
    108 l
    108 l
    108 l
    108 l
    107 k
    107 k
    107 k
    106 j
    106 j
    106 j
    106 j
    106 j
    108 l
    108 l
    108 l
    108 l
    108 l
    108 l
    108 l
    108 l
    108 l
    108 l
    108 l
    108 l
    108 l
    108 l
    107 k
    107 k
    106 j
    106 j
    100 d
    27 


### 마우스 이벤트

마우스에서 입력을 받으면 이벤트를 처리할 함수를 미리 선언하고  
cv2.setMouseCallback( ) 함수에 그 함수를 전달한다.

간단히 표연하면 다음과 같다.  
def onMouse(event, x, y, flags, param):
 (마우스 이벤트에 맞게 해야할 작업을 작성)  
cv2.setMouseCallback('title', onMouse)

##### cv2.setMouseCallback(win_name, onMouse [ , param] ) : onMouse 함수를 등록
* win_name : 이벤트를 등록할 윈도 이름
* onMouse : 이벤트 처리를 위해 미리 선언해 놓은 콜백 함수
* 필요에 따라 on Mouse 함수에 전달할 인자

##### MouseCallback(event, x, y, flags, param) : 콜백함수 선언부
* event : 마우스 이벤트 종류, cv2.EVENT_ 로 시작하는 상수
  * cv2.EVENT_MOUSEMOVE : 마우스 움직임
  * cv2.EVENT_LBUTTONDOWN / UP : 마우스 왼쪽 버튼 누름 / 뗌
  * cv2.EVENT_RBUTTONDOWN / UP : 마우스 오른쪽 버튼 누름 / 뗌
  * cv2.EVENT_MBUTTONDOWN / UP : 마우스 가운데 버튼 누름 / 뗌
  * cv2.EVENT_LBUTTONDBLCLK : 왼쪽 버튼 더블클릭
  * cv2.EVENT_RBUTTONDBLCLK : 오른쪽 버튼 더블클릭
  * cv2.EVENT_MBUTTONDBLCLK : 가운데 버튼 더블클릭
  * cv2.EVENT_MOUSEWHEEL : 휠 스크롤
  * cv2.EVENT_MOUSEHWHEEL : 휠 가로스크롤

* x, y : 마우스 좌표
  
* flags : 마우스 동작과 함께 일어난 상태, cv2.EVENT_FLAG_ 로 시작하는 상수
  * cv2.EVENT_FLAG_LBUTTON(1) : 왼쪽 버튼 누름
  * cv2.EVENT_FLAG_RBUTTON(2) : 오른쪽 버튼 누름
  * cv2.EVENT_FLAG_MBUTTON(4) : 가운데 버튼 누름
  * cv2.EVENT_FLAG_CTRLKEY(8) : Ctrl키 누름
  * cv2.EVENT_FLAG_SHIFTKEY(16) : Shift키 누름
  * cv2.EVENT_FLAG_ALTKEY(32) : Alt키 누름

* param : cv2.setMouseCallback( ) 함수에서 전달한 인자

* 마우스 이벤트로 동그라미 그리기


```python
import cv2

title = 'mouse event'
img = cv2.imread('./img/blank_500.jpg')
cv2.imshow(title, img)

def onMouse(event, x, y, flags, param):    # 마우스 콜백 함수 구현
    print(event, x, y)      # 파라미터 출력
    if event == cv2.EVENT_LBUTTONDOWN:   # 왼쪽버튼을 누르면
        cv2.circle(img, (x,y), 30, (0,0,0), -1)   # 원을 좌표에 스림
        cv2.imshow(title, img)   # 그려진 이미지를 다시 표시
        
cv2.setMouseCallback(title, onMouse)   # 마우스 콜백 함수를 GUI 윈도에 등록

while True:
    if cv2.waitKey(0) &0xFF == 27:    # esc로 종료
        break
cv2.destroyAllWindows()
```

    0 336 179
    0 350 179
    0 363 181
    0 377 182
    0 415 188
    0 446 196
    0 476 210
    0 487 216
    0 499 226
    0 462 217
    0 419 206
    0 405 204
    0 382 200
    0 378 200
    0 365 197
    0 356 194
    0 351 191
    0 349 189
    0 344 183
    0 343 180
    0 339 171
    0 338 167
    0 337 162
    0 335 150
    0 335 143
    0 335 129
    0 335 120
    0 336 104
    0 342 87
    0 343 84
    0 348 72
    0 350 68
    0 352 63
    0 352 62
    0 353 61
    0 353 61
    0 353 50
    0 353 43
    0 353 29
    0 353 23
    0 354 6
    0 234 113
    0 233 115
    0 233 115
    0 233 116
    0 233 117
    0 233 118
    0 233 118
    1 233 118
    0 233 118
    4 233 118
    0 233 119
    0 233 125
    0 230 145
    0 227 157
    0 215 186
    0 213 194
    0 202 222
    0 196 235
    0 191 247
    0 184 267
    0 184 271
    0 181 280
    0 180 282
    0 180 286
    0 180 287
    1 180 287
    0 180 287
    4 180 287
    0 182 287
    0 185 287
    0 193 288
    0 199 290
    0 205 292
    0 219 295
    0 234 300
    0 241 302
    0 248 304
    0 253 306
    0 260 309
    0 262 310
    0 265 311
    0 266 312
    0 266 312
    0 267 312
    0 271 312
    0 281 313
    0 287 315
    0 298 322
    0 302 326
    0 323 340
    0 332 349
    0 337 353
    0 342 359
    0 344 361
    0 345 364
    0 346 365
    1 346 365
    0 346 365
    4 346 365
    0 346 365
    0 346 356
    0 348 344
    0 355 315
    0 361 296
    0 368 249
    0 369 227
    0 370 218
    0 371 184
    0 371 179
    0 371 168
    0 371 165
    0 372 164
    0 372 164
    0 373 164
    1 373 165
    0 373 165
    4 373 165
    0 370 165
    0 369 165
    0 361 163
    0 345 157
    0 339 154
    0 317 142
    0 304 136
    0 277 124
    0 265 118
    0 255 114
    0 237 105
    0 229 99
    0 224 96
    0 220 94
    0 214 90
    0 212 89
    0 204 86
    0 201 86
    0 193 85
    0 188 85
    0 182 85
    0 167 85
    0 158 86
    0 142 90
    0 131 93
    0 125 94
    0 116 95
    0 113 96
    0 111 96
    0 108 96
    1 108 96
    0 108 96
    4 108 96


* 플래그를 이용한 동그라미 그리기


```python
import cv2

title = 'mouse event'
img = cv2.imread('./img/blank_500.jpg')
cv2.imshow(title, img)

colors = {'black':(0,0,0),
         'red' : (0,0,255),
         'blue' : (255,0,0)
         'green' : (0,255,0)}

def onMouse(event, x, y, flags, param):
    print(event, x, y)
    color = colors['black']
    if event == cv2.EVENT_LBUTTONDOWN:
        if flags & cv2.EVENT_FLAG_CTRLKEY and flags & cv2.EVENT_FLAG_SHIFTKEY:
            color = colors['green']
        elif flags & cv2.EVENT_FLAG_SHIFTKEY:
            color = colors['blue']
        elif flags & cv2.EVENT_FLAG_CTRLKEY:
            color = colors['red']
        
        cv2.circle(img, (x,y), 30, (0,0,0), -1)
        cv2.imshow(title, img)
        
cv2.setMouseCallback(title, onMouse)

while True:
    if cv2.waitKey(0) &0xFF == 27:
        break
cv2.destroyAllWindows()
```

    0 497 285
    0 467 256
    0 444 238
    0 438 233
    0 426 223
    0 421 218
    0 412 209
    0 409 203
    0 406 198
    0 403 192
    0 402 188
    0 400 179
    0 400 172
    0 400 165
    0 400 159
    0 402 153
    0 403 149
    0 406 143
    0 407 141
    0 409 140
    0 409 139
    0 410 139
    0 411 139
    0 411 139
    1 411 139
    0 411 139
    4 411 139
    0 411 139
    0 407 140
    0 405 141
    0 399 142
    0 396 143
    0 384 147
    0 378 148
    0 366 151
    0 363 151
    0 354 153
    0 350 153
    0 346 153
    0 338 153
    0 335 153
    0 330 154
    0 327 154
    0 319 155
    0 318 156
    0 312 158
    0 310 159
    0 307 161
    0 305 161
    0 303 162
    0 302 163
    0 302 163
    0 302 164
    0 301 164
    0 301 164
    0 301 164
    0 300 164
    0 300 164
    0 299 164
    0 299 164
    0 298 164
    0 297 163
    0 295 162
    0 295 162
    0 294 162
    0 294 161
    0 293 161
    0 293 161
    0 292 161
    0 292 161
    0 291 161
    0 291 161
    0 290 161
    0 290 161
    0 290 161
    0 290 161
    1 290 161
    4 290 161
    0 290 161
    0 290 166
    0 290 170
    0 290 177
    0 290 182
    0 290 194
    0 290 199
    0 290 205
    0 290 213
    0 290 218
    0 290 226
    0 290 229
    0 291 235
    0 291 238
    0 292 243
    0 292 244
    0 292 246
    0 292 248
    0 293 250
    0 293 251
    0 294 251
    0 294 251
    0 295 252
    0 295 252
    0 295 252
    0 295 252
    0 295 252
    0 295 252
    0 295 253
    0 296 253
    0 296 253
    0 296 253
    0 297 253
    0 297 254
    0 297 254
    0 297 254
    0 297 255
    0 297 255
    0 297 257
    0 297 258
    0 297 258
    0 297 260
    0 297 260
    0 297 262
    0 298 262
    0 298 264
    0 299 265
    0 299 266
    0 300 267
    0 300 269
    0 301 269
    0 301 270
    0 302 271
    0 302 271
    0 303 273
    0 303 273
    0 304 274
    0 304 275
    0 305 276
    0 305 277
    0 306 278
    0 306 278
    0 306 279
    0 306 280
    0 306 280
    0 307 281
    0 307 281
    0 307 282
    0 307 282
    0 307 283
    0 307 283
    0 307 283
    0 307 283
    0 307 283
    1 307 283
    0 307 283
    4 307 283
    0 306 283
    0 305 283
    0 303 283
    0 302 283
    0 300 283
    0 298 283
    0 296 283
    0 294 283
    0 291 283
    0 290 283
    0 286 283
    0 283 283
    0 281 283
    0 275 281
    0 272 281
    0 265 278
    0 262 277
    0 256 274
    0 252 273
    0 247 270
    0 244 269
    0 239 266
    0 237 266
    0 233 264
    0 232 263
    0 230 263
    0 229 263
    0 229 263
    0 229 263
    0 228 262
    0 228 262
    0 228 263
    0 228 264
    0 228 267
    0 228 269
    0 228 269
    0 228 270
    0 228 270
    0 228 271
    0 228 271
    0 228 271
    1 228 271
    4 228 271
    0 228 271
    0 227 271
    0 224 271
    0 221 271
    0 218 271
    0 210 271
    0 206 271
    0 197 268
    0 192 266
    0 178 253
    0 173 247
    0 166 235
    0 162 228
    0 156 214
    0 154 208
    0 150 198
    0 148 193
    0 145 185
    0 144 182
    0 142 177
    0 142 176
    0 141 175
    0 141 174
    0 141 174
    1 141 174
    4 141 174
    0 141 171
    0 141 167
    0 142 157
    0 144 152
    0 151 133
    0 157 124
    0 167 107
    0 172 101
    0 181 91
    0 183 90
    0 187 88
    0 193 85
    0 195 85
    0 199 85
    0 200 85
    0 202 85
    0 203 85
    0 204 87
    0 205 88
    0 205 89
    0 205 89
    0 206 89
    0 206 90
    0 207 90
    0 207 90
    0 209 90
    0 210 89
    0 210 89
    0 210 89
    0 211 89
    1 211 89
    4 211 89
    0 208 89
    0 206 89
    0 204 89
    0 198 88
    0 195 87
    0 179 79
    0 174 77
    0 153 65
    0 142 59
    0 132 53
    0 112 40
    0 102 35
    0 85 26
    0 75 21
    0 60 17
    0 53 15
    0 39 13
    0 36 13
    0 27 12
    0 24 12
    0 20 11
    0 17 10
    0 17 10
    0 16 9
    0 16 9
    0 16 7
    0 16 6
    0 15 5
    0 15 4
    0 15 2
    0 15 1
    0 189 54
    0 299 121
    0 329 142
    0 346 154
    0 361 165
    0 381 181
    0 389 187
    0 395 195


### 트랙바

슬라이드 모양의 인터페이스를 마우스로 움직여서 값을 입력받는 GUI 이다.

##### cv2.createTrackbar(trackbar_name, win_name, value, count, onChange) : 트랙바 생성
* traackbar_name : 트랙바 이름
* win_name : 트랙바를 표시할 창 이름
* value : 트랙바 초기 값, 0-count 사이의 값
* count : 트랙바 눈금의 개수, 트랙바가 표시할 수 있는 최대 값
* onChange : TrackbarCallback, 트랙바 이벤트 핸들러 함수

##### TrackbarCallback(value) : 트랙바 이벤트 콜백 함수
* value : 트랙바가 움직인 새 위치 값

##### pos = cv2.getTrackbarPos(trackbar_name, win_name)
* trackbar_name : 찾고자 하는 트랙바 이름
* win_name : 트랙바가 있는 창의 이름
* pos : 트랙바 위치 값


```python
import cv2
import numpy as np

win_name = 'Trackbar'

img = cv2.imread('./img/blank_500.jpg')
cv2.imshow(win_name, img)    # 초기 이미지 창에 표시

def onChange(x):
    print(x)         # 트랙바의 새로운 위치 값
    # 트랙바 위치 값
    r = cv2.getTrackbarPos('R', win_name)
    g = cv2.getTrackbarPos('G', win_name)
    b = cv2.getTrackbarPos('B', win_name)
    print(r, g, b)
    img[:] = [b,g,r]    # 기존 이미지에 새로운 픽셀 값 적용
    cv2.imshow(win_name, img)     # 새 이미지 창에 표시

cv2.createTrackbar('R', win_name, 255, 255, onChange)
cv2.createTrackbar('G', win_name, 255, 255, onChange)
cv2.createTrackbar('B', win_name, 255, 255, onChange)

while True:
    if cv2.waitKey(1) & 0xFF == 27:
        break
cv2.destroyAllWindows()
```

    178
    255 178 255
    178
    255 178 255
    178
    255 178 255
    147
    147 178 255
    147
    147 178 255
    40
    147 178 40
    39
    147 178 39
    39
    147 178 39
    0
    147 178 0
    0
    147 178 0
    0
    147 178 0
    0
    147 178 0
    249
    147 249 0
    249
    147 249 0
    249
    147 249 0
    255
    147 255 0
    255
    147 255 0
    0
    0 255 0
    0
    0 255 0
    0
    0 255 0
    0
    0 255 0
    78
    0 78 0
    78
    0 78 0
    7
    0 7 0
    7
    0 7 0
    7
    0 7 0
    0
    0 0 0
    0
    0 0 0


## numpy 복습


```python
a = np.array([1, 2, 3, 4])
a
```




    array([1, 2, 3, 4])




```python
a.dtype
```




    dtype('int64')




```python
a.shape
```




    (4,)




```python
b = np.array([[1, 2, 3, 4],[5, 6, 7, 8]])
b
```




    array([[1, 2, 3, 4],
           [5, 6, 7, 8]])




```python
b.shape
```




    (2, 4)




```python
c = np.array([1, 2, 3.14, 4])
c
```




    array([1.  , 2.  , 3.14, 4.  ])




```python
c.dtype
```




    dtype('float64')




```python
d = np.array([1, 2, 3, 4], dtype=np.float32)
d
```




    array([1., 2., 3., 4.], dtype=float32)



66~69 실행


```python

```


```python

```


```python

```


```python

```

### 시퀀스와 난수로 생성


```python
a = np.arange(5)
a
```




    array([0, 1, 2, 3, 4])




```python
a.dtype
```




    dtype('int64')




```python
a.shape
```




    (5,)




```python
b = np.arange(5.0)
b
```




    array([0., 1., 2., 3., 4.])




```python
b.dtype
```




    dtype('float64')




```python
c = np.arange(3, 9, 2)
c
```




    array([3, 5, 7])




```python
np.random.rand()
```




    0.02285858057022161




```python
np.random.randn()
```




    0.48078871515121746




```python
a=np.random.rand(2,3)
a
```




    array([[0.38832821, 0.33165737, 0.14226445],
           [0.16790181, 0.16539196, 0.12832403]])




```python
b=np.random.randn(2,3)
b
```




    array([[-0.13559487,  0.39575157,  0.62658166],
           [ 0.14630926, -0.60472903, -1.59230845]])



### dtype 변경


```python
a=np.arange(5)
a
```




    array([0, 1, 2, 3, 4])




```python
a.dtype
```




    dtype('int64')




```python
b = a.astype('float32')
b
```




    array([0., 1., 2., 3., 4.], dtype=float32)



### 차원 변경


```python
a = np.arange(6)
a
```




    array([0, 1, 2, 3, 4, 5])




```python
b = a.reshape(2,3)
b
```




    array([[0, 1, 2],
           [3, 4, 5]])




```python
c = np.reshape(a, (2,3))
c
```




    array([[0, 1, 2],
           [3, 4, 5]])




```python
d = np.arange(100).reshape(2, -1)
d
```




    array([[ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15,
            16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
            32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47,
            48, 49],
           [50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65,
            66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81,
            82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97,
            98, 99]])




```python
e = np.arange(100).reshape(-1,5)
e
```




    array([[ 0,  1,  2,  3,  4],
           [ 5,  6,  7,  8,  9],
           [10, 11, 12, 13, 14],
           [15, 16, 17, 18, 19],
           [20, 21, 22, 23, 24],
           [25, 26, 27, 28, 29],
           [30, 31, 32, 33, 34],
           [35, 36, 37, 38, 39],
           [40, 41, 42, 43, 44],
           [45, 46, 47, 48, 49],
           [50, 51, 52, 53, 54],
           [55, 56, 57, 58, 59],
           [60, 61, 62, 63, 64],
           [65, 66, 67, 68, 69],
           [70, 71, 72, 73, 74],
           [75, 76, 77, 78, 79],
           [80, 81, 82, 83, 84],
           [85, 86, 87, 88, 89],
           [90, 91, 92, 93, 94],
           [95, 96, 97, 98, 99]])




```python
e.shape
```




    (20, 5)




```python
f = np.zeros((2,3))
f
```




    array([[0., 0., 0.],
           [0., 0., 0.]])




```python
f.reshape((6,))
```




    array([0., 0., 0., 0., 0., 0.])




```python
f.reshape(-1)
```




    array([0., 0., 0., 0., 0., 0.])




```python
np.ravel(f)
```




    array([0., 0., 0., 0., 0., 0.])




```python
g=np.arange(10).reshape(2,-1)
g
```




    array([[0, 1, 2, 3, 4],
           [5, 6, 7, 8, 9]])




```python
g.T
```




    array([[0, 5],
           [1, 6],
           [2, 7],
           [3, 8],
           [4, 9]])



### 브로드캐스팅 연산


```python
a = np.ones((2,3))
a
```




    array([[1., 1., 1.],
           [1., 1., 1.]])




```python
c = np.arange(3)
c
```




    array([0, 1, 2])




```python
a+c
```




    array([[1., 2., 3.],
           [1., 2., 3.]])



### 인덱싱과 슬라이싱


```python

```

### 팬시 인덱싱


```python
a = np.arange(5)
a
```




    array([0, 1, 2, 3, 4])




```python
a[[1,3]]
```




    array([1, 3])




```python
a[[True, False, True, False, True]]
```




    array([0, 2, 4])




```python
a=np.arange(10)
a
```




    array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])




```python
b = a>5
b
```




    array([False, False, False, False, False, False,  True,  True,  True,
            True])




```python
a[b]
```




    array([6, 7, 8, 9])




```python
a[a>5]
```




    array([6, 7, 8, 9])




```python
a
```




    array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])




```python
b=np.arange(12).reshape(3,4)
b
```




    array([[ 0,  1,  2,  3],
           [ 4,  5,  6,  7],
           [ 8,  9, 10, 11]])




```python
b[[0,2]]
```




    array([[ 0,  1,  2,  3],
           [ 8,  9, 10, 11]])




```python
b[[0,2],[2,3]]
```




    array([ 2, 11])



### 병합과 분리


```python
a = np.arange(4).reshape(2,2)
a
```




    array([[0, 1],
           [2, 3]])




```python
b=np.arange(10,14).reshape(2,2)
b
```




    array([[10, 11],
           [12, 13]])




```python
np.vstack((a,b))
```




    array([[ 0,  1],
           [ 2,  3],
           [10, 11],
           [12, 13]])




```python
np.hstack((a,b))
```




    array([[ 0,  1, 10, 11],
           [ 2,  3, 12, 13]])




```python
np.concatenate((a,b),0)
```




    array([[ 0,  1],
           [ 2,  3],
           [10, 11],
           [12, 13]])




```python
np.concatenate((a,b),1)
```




    array([[ 0,  1, 10, 11],
           [ 2,  3, 12, 13]])




```python
a=np.arange(12).reshape(4,3)
a
```




    array([[ 0,  1,  2],
           [ 3,  4,  5],
           [ 6,  7,  8],
           [ 9, 10, 11]])




```python
b=np.arange(10,130,10).reshape(4,3)
b
```




    array([[ 10,  20,  30],
           [ 40,  50,  60],
           [ 70,  80,  90],
           [100, 110, 120]])




```python
c=np.stack((a,b),0)
c
```




    array([[[  0,   1,   2],
            [  3,   4,   5],
            [  6,   7,   8],
            [  9,  10,  11]],
    
           [[ 10,  20,  30],
            [ 40,  50,  60],
            [ 70,  80,  90],
            [100, 110, 120]]])




```python
d=np.stack((a,b),1)
d
```




    array([[[  0,   1,   2],
            [ 10,  20,  30]],
    
           [[  3,   4,   5],
            [ 40,  50,  60]],
    
           [[  6,   7,   8],
            [ 70,  80,  90]],
    
           [[  9,  10,  11],
            [100, 110, 120]]])




```python
e=np.stack((a,b),2)
e
```




    array([[[  0,  10],
            [  1,  20],
            [  2,  30]],
    
           [[  3,  40],
            [  4,  50],
            [  5,  60]],
    
           [[  6,  70],
            [  7,  80],
            [  8,  90]],
    
           [[  9, 100],
            [ 10, 110],
            [ 11, 120]]])




```python
ee=np.stack((a,b),-1)
ee
```




    array([[[  0,  10],
            [  1,  20],
            [  2,  30]],
    
           [[  3,  40],
            [  4,  50],
            [  5,  60]],
    
           [[  6,  70],
            [  7,  80],
            [  8,  90]],
    
           [[  9, 100],
            [ 10, 110],
            [ 11, 120]]])




```python
a=np.arange(12)
a
```




    array([ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11])




```python
np.hsplit(a,3)
```




    [array([0, 1, 2, 3]), array([4, 5, 6, 7]), array([ 8,  9, 10, 11])]




```python
np.hsplit(a,[3,6])
```




    [array([0, 1, 2]), array([3, 4, 5]), array([ 6,  7,  8,  9, 10, 11])]




```python
np.hsplit(a,[3,6,9])
```




    [array([0, 1, 2]), array([3, 4, 5]), array([6, 7, 8]), array([ 9, 10, 11])]




```python
np.split(a,3,0)
```




    [array([0, 1, 2, 3]), array([4, 5, 6, 7]), array([ 8,  9, 10, 11])]




```python
np.split(a,[3,6,9],0)
```




    [array([0, 1, 2]), array([3, 4, 5]), array([6, 7, 8]), array([ 9, 10, 11])]




```python
b=np.arange(12).reshape(4,3)
b
```




    array([[ 0,  1,  2],
           [ 3,  4,  5],
           [ 6,  7,  8],
           [ 9, 10, 11]])




```python
np.vsplit(b,2)
```




    [array([[0, 1, 2],
            [3, 4, 5]]),
     array([[ 6,  7,  8],
            [ 9, 10, 11]])]




```python
np.split(b,2,0)
```




    [array([[0, 1, 2],
            [3, 4, 5]]),
     array([[ 6,  7,  8],
            [ 9, 10, 11]])]




```python
np.hsplit(b,[1])
```




    [array([[0],
            [3],
            [6],
            [9]]),
     array([[ 1,  2],
            [ 4,  5],
            [ 7,  8],
            [10, 11]])]




```python
np.split(b,[1],1)
```




    [array([[0],
            [3],
            [6],
            [9]]),
     array([[ 1,  2],
            [ 4,  5],
            [ 7,  8],
            [10, 11]])]



### 검색


```python
a=np.arange(10,20)
a
```




    array([10, 11, 12, 13, 14, 15, 16, 17, 18, 19])




```python
np.where(a>15)
```




    (array([6, 7, 8, 9]),)




```python
np.where(a>15, 1,0)
```




    array([0, 0, 0, 0, 0, 0, 1, 1, 1, 1])




```python
a
```




    array([10, 11, 12, 13, 14, 15, 16, 17, 18, 19])




```python
np.where(a>15, 99, a)
```




    array([10, 11, 12, 13, 14, 15, 99, 99, 99, 99])




```python
np.where(a>15,a,0)
```




    array([ 0,  0,  0,  0,  0,  0, 16, 17, 18, 19])




```python
a
```




    array([10, 11, 12, 13, 14, 15, 16, 17, 18, 19])




```python
b=np.arange(12).reshape(3,4)
b
```




    array([[ 0,  1,  2,  3],
           [ 4,  5,  6,  7],
           [ 8,  9, 10, 11]])




```python
coords = np.where(b>6)
coords
```




    (array([1, 2, 2, 2, 2]), array([3, 0, 1, 2, 3]))




```python
np.stack((coords[0],coords[1]),-1)
```




    array([[1, 3],
           [2, 0],
           [2, 1],
           [2, 2],
           [2, 3]])




```python
z = np.array([0,1,2,0,1,2])
np.nonzero(z)
```




    (array([1, 2, 4, 5]),)




```python
zz = np.array([[0,1,2], [1,2,0], [2,0,1]])
zz
```




    array([[0, 1, 2],
           [1, 2, 0],
           [2, 0, 1]])




```python
coords = np.nonzero(zz)
coords
```




    (array([0, 0, 1, 1, 2, 2]), array([1, 2, 0, 1, 0, 2]))




```python
np.stack((coords[0], coords[1]),-1)
```




    array([[0, 1],
           [0, 2],
           [1, 0],
           [1, 1],
           [2, 0],
           [2, 2]])




```python
a
```




    array([10, 11, 12, 13, 14, 15, 16, 17, 18, 19])




```python
np.nonzero(a>15)
```




    (array([6, 7, 8, 9]),)




```python
np.where(a>15)
```




    (array([6, 7, 8, 9]),)




```python
b
```




    array([[ 0,  1,  2,  3],
           [ 4,  5,  6,  7],
           [ 8,  9, 10, 11]])




```python
np.nonzero(b>6)
```




    (array([1, 2, 2, 2, 2]), array([3, 0, 1, 2, 3]))




```python
np.where(b>6)
```




    (array([1, 2, 2, 2, 2]), array([3, 0, 1, 2, 3]))




```python
t=np.array([True, True, True])
np.all(t)
```




    True




```python
t[1]=False
t
```




    array([ True, False,  True])




```python
np.all(t)
```




    False




```python
tt=np.array([[True, True], [False, True], [True, True]])
tt
```




    array([[ True,  True],
           [False,  True],
           [ True,  True]])




```python
np.all(tt,0)
```




    array([False,  True])




```python
np.all(tt,1)
```




    array([ True, False,  True])




```python
a=np.arange(10)
a
```




    array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])




```python
b=np.arange(10)
b
```




    array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])




```python
a==b
```




    array([ True,  True,  True,  True,  True,  True,  True,  True,  True,
            True])




```python
np.all(a==b)
```




    True




```python
b[5] = -1
```


```python
np.all(a==b)
```




    False




```python
np.where(a==b)
```




    (array([0, 1, 2, 3, 4, 6, 7, 8, 9]),)




```python
np.where(a!=b)
```




    (array([5]),)



### 기초 통계 함수


```python

```


```python

```


```python

```

### 이미지 생성


```python
import cv2
import numpy as np

img = np.zeros((120,120), dtype=np.uint8)
img[25:35, :] = 45
img[55:65, :] = 115
img[85:95, :] = 160
img[:, 34:45] = 205
img[:, 75:85] = 255
cv2.imshow('Gray', img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```


```python
import cv2
import numpy as np

img = np.zeros((120,120,3), dtype=np.uint8)
img[25:35, :] = [255,0,0]
img[55:65, :] = [0,255,0]
img[85:95, :] = [0,0,255]
img[:, 34:45] = [255,255,0]
img[:, 75:85] = [255,0,255]
cv2.imshow('BGR', img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```

### subplot


```python
import matplotlib.pyplot as plt
import numpy as np

x=np.arange(10)

plt.subplot(2,2,1)
plt.plot(x, x**2)

plt.subplot(2,2,2)
plt.plot(x,x*5)

plt.subplot(223)
plt.plot(x, np.sin(x))

plt.subplot(224)
plt.plot(x,np.cos(x))

plt.show()
```


    
![png](output_138_0.png)
    


### 이미지 표시


```python
import cv2
from matplotlib import pyplot as plt

img = cv2.imread('./img/girl.jpg')

plt.imshow(img)
plt.show()
```


    
![png](output_140_0.png)
    



```python
img1 = cv2.imread('./img/model.jpg')
img2 = cv2.imread('./img/model2.jpg')
img3 = cv2.imread('./img/model3.jpg')

plt.subplot(1, 3, 1)
plt.imshow(img1[:,:,(2,1,0)])   # 색 순서 변환(matplot에서만)
plt.xticks([])    # x축 y축 제거
plt.yticks([])

plt.subplot(1, 3, 2)
plt.imshow(img2[:,:,::-1])
plt.xticks([])
plt.yticks([])

plt.subplot(1, 3, 3)
plt.imshow(img3[:,:,::-1])
plt.xticks([])
plt.yticks([])

plt.show()
```


    
![png](output_141_0.png)
    


# 이미지 프로세싱 기초

## 관심영역

### 관심영역 지정

전체 이미지에서 연산과 분석의 대상이 되는 영역만을 지정하고 떼어내는 것을
관심역역(Region Of Interest, ROI)을 지정한다고 한다.


```python
import cv2
import numpy as np

img = cv2.imread('./img/sunset.jpg')

x=320; y=150; w=50; h=50
roi = img[y:y+h, x:x+w]
img2 = roi.copy()
img[y:y+h, x+w:x+w+w] = roi
cv2.rectangle(img, (x,y), (x+w+w, y+h), (0,255,0))

cv2.imshow('img', img)
cv2.imshow('roi', img2)

cv2.waitKey(0)
cv2.destroyAllWindows()
```

### 마우스로 관심영역 지정


```python
import cv2
import numpy as np

isDragging = False
x0, y0, w, h = -1,-1,-1,-1
blue, red = (255,0,0),(0,0,255)

def onMouse(event,x,y,flags,param):
    global isDragging, x0, y0, img
    if event == cv2.EVENT_LBUTTONDOWN:
        isDragging = True
        x0 = x
        y0 = y
    elif event == cv2.EVENT_MOUSEMOVE:
        if isDragging:
            img_draw = img.copy()
            cv2.rectangle(img_draw, (x0, y0), (x, y), blue, 2)
            cv2.imshow('img', img_draw)
    elif event == cv2.EVENT_LBUTTONUP:
        if isDragging:
            isDragging = False
            w = x-x0
            h = y-y0
            print('x:%d, y%d, w%d, h%d' % (x0, y0, w, h))
            if w>0 and h>0:
                img_draw=img.copy()
                cv2.rectangle(img_draw, (x0, y0), (x, y), red, 2)
                cv2.imshow('img', img_draw)
                roi = img[y0:y0+h, x0:x0+w]
                cv2.imshow('cropped',roi)
                cv2.moveWindow('cropped', 0, 0)
                cv2.imwrite('./cropped.jpg',roi)
                print('cropped')
            else:
                cv2.imshow('img', img)
                
img = cv2.imread('./img/sunset.jpg')
cv2.imshow('img', img)
cv2.setMouseCallback('img', onMouse)
cv2.waitKey()
cv2.destroyAllWindows()
```

    x:168, y49, w208, h161
    cropped


OpenCV는 관심영역을 지정하기 위한 새로운 함수를 제공한다.

##### ret = cv2.selectROI([win_name,] img[, showCrossHair=True, fromCenter=False])
* win_name : ROI 선택을 진행할 창의 이름, str
* img : ROI 선택을 진행할 이미지, numpy ndarray
* showCrossHair : 선택 영역 중심에 십자 모양 표시 여부
* fromCenter : 마우스 시작 지점을 영역의 중심으로 지정
* ret : 선택한 영역 좌표와 크기(x, y, w, h), 선택을 취소한 경우 모두 0


```python
import cv2, numpy as np

img = cv2.imread('./img/sunset.jpg')

x,y,w,h=cv2.selectROI('img', img, False)
if w and h:
    roi = img[y:y+h, x:x+w]
    cv2.imshow('cropped', roi)
    cv2.moveWindow('cropped', 0, 0)
    cv2.imwrite('./cropped2.jpg', roi)
    
cv2.imshow('img', img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```

### 컬러 스페이스


```python
import cv2
import numpy as np

img = cv2.imread('./img/opencv_logo.png')    # 기본값 옵션
bgr = cv2.imread('./img/opencv_logo.png', cv2.IMREAD_COLOR)    # IMREAD_COLOR 옵션
bgra = cv2.imread('./img/opencv_logo.png', cv2.IMREAD_UNCHANGED)    # IMREAD_UNCHANGED 옵션

print('default : ', img.shape, 'color : ', bgr.shape, 'unchanged : ', bgra.shape)

cv2.imshow('bgr', bgr)
cv2.imshow('bgra', bgra)
cv2.imshow('alpha', bgra[:,:,3])    # 알파 채널만 표시
cv2.waitKey(0)
cv2.destroyAllWindows()
```

    default :  (120, 98, 3) color :  (120, 98, 3) unchanged :  (120, 98, 4)



```python

```
