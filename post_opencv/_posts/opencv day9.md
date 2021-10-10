### 모자이크 처리


```python
import cv2

ksize = 30       # 블러 처리에 사용할 커널 크기
win_title = 'mosaic'
img = cv2.imread('./img/taekwonv1.jpg')

while True:
    x,y,w,h = cv2.selectROI(win_title, img, False)   # 관심 영역 선택
    if w>0 and h>0:    # 폭과 높이가 양수이면 ROI선택 완료
        roi = img[y:y+h, x:x+w]  # 관심영역 지정
        roi = cv2.blur(roi, (ksize, ksize))  # 블러처리
        img[y:y+h, x:x+w] = roi   # 원본 이미지에 적용
        cv2.imshow(win_title, img)
    else:
        break

cv2.destroyAllWindows()
```

    Select a ROI and then press SPACE or ENTER button!
    Cancel the selection process by pressing c button!


![opencv](/assets/img/opencv/basic/opencvch6_2_1.png)
![opencv](/assets/img/opencv/basic/opencvch6_2_3.png)

### 스케치 효과 카메라


```python
import cv2
import numpy as np

# 카메라 연결
cap = cv2.VideoCapture(0)
while cap.isOpened():
    # 프레임 읽기
    ret, frame = cap.read()
    # 속도 향상을 위해 영상 크기를 절반으로 축소
    frame = cv2.resize(frame, None, fx=0.5, fy=0.5, interpolation=cv2.INTER_AREA)
    if cv2.waitKey(1)==27:
        break
    # 그레이 스케일로 변경
    img_gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    # 라플라시안 필터로 엣지 검출
    img_gray = cv2.GaussianBlur(img_gray, (9,9),0)
    # 스레시홀드로 경계 값만 남기고 제거하면서 화면 반전(흰바탕에 검은선)
    edges = cv2.Laplacian(img_gray, -1, None, 5)
    ret, sketch = cv2.threshold(edges, 70, 255, cv2.THRESH_BINARY_INV)
    
    # 경계선 강조를 위해 팽창 연산
    kernel = cv2.getStructuringElement(cv2.MORPH_CROSS, (3,3))
    sketch = cv2.erode(sketch, kernel)
    # 경계선을 자연스럽게 하기 위해 미디언 블러 필터 적용
    sketch = cv2.medianBlur(sketch, 5)
    # 그레이스케일에서 BGR컬러 스케일로 변경
    img_sketch = cv2.cvtColor(sketch, cv2.COLOR_GRAY2BGR)
    
    # 컬러 이미지 선명선을 없애기 위해 평균 블러 필터 적용
    img_paint = cv2.blur(frame, (10,10))
    # 컬러 영상과 스케치 영상과 합성
    img_paint = cv2.bitwise_and(img_paint, img_paint, mask=sketch)
    merged = np.hstack((img_sketch, img_paint))
    cv2.imshow('Sketch Camera', merged)
cap.release()
cv2.destroyAllWindows()
```

![opencv](/assets/img/opencv/basic/opencvch6_2_3.png)
