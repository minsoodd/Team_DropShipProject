import requests
from bs4 import BeautifulSoup

headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36"}
url = "https://movie.daum.net/ranking/reservation"
# url = "https://comic.naver.com/webtoon"

# 웹정보 가져오기
res = requests.get(url, headers = headers) # String 그자체

# html 파싱
soup = BeautifulSoup(res.text, "lxml")

# 위치 찾는 방법

# 태그찾기 - 태그출력
print("title : ", soup.title) 
# 태그찾기 - 글자출력
print("title : ", soup.title.get_text()) 

# 속성찾기
print("href : ", soup.a["href"])
print("href : ", soup.a.get_text())


# 여기서 에러나면 밑에 구동하지 마라 종료.
res.raise_for_status() 


# html 파일저장
with open("test.html", "w", encoding="utf-8") as f :
    f.write(res.text)

# 출력 (String)
# print(res.text)
print(len(res.text))








