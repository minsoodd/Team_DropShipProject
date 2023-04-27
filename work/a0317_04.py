import requests
from bs4 import BeautifulSoup
import csv

headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36"}
# url = "https://movie.daum.net/ranking/reservation"
url = "https://www.yanolja.com/hotel"
# url = "https://comic.naver.com/webtoon"

# 웹정보 가져오기
res = requests.get(url, headers = headers) # String 그자체

# 여기서 에러나면 밑에 구동하지 마라 종료.
res.raise_for_status() 

# html 파싱
soup = BeautifulSoup(res.text, "lxml")


#=========================================

# 위치찾기
div_infos = soup.find_all("div", {"class":"ListItem_title__1-j89"})

for idx, div_info in enumerate(div_infos) :
    print(idx+1, " : ", div_info.get_text())

print(len(div_infos))
# ----정보가져오기(뷰티풀숲)-----





# -------------------------
# 자동종료 방지
while(True):
    pass


