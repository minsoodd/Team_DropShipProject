import requests
from bs4 import BeautifulSoup
import csv

headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36"}
# url = "https://movie.daum.net/ranking/reservation"
url = "https://pedia.watcha.com/ko-KR/contents/md7YzgM/comments"
# url = "https://comic.naver.com/webtoon"

# 웹정보 가져오기
res = requests.get(url, headers = headers) # String 그자체

# 여기서 에러나면 밑에 구동하지 마라 종료.
res.raise_for_status() 

# html 파싱
soup = BeautifulSoup(res.text, "lxml")

#=========================================

# 위치찾기
div_infos = soup.find_all("div", {"class":"css-bawlbm"})

for idx, div_info in enumerate(div_infos) :
    nickname = div_info.find("div", {"class":"css-1agoci2"})
    print(nickname.get_text())
    
    comment_span = div_info.find("div", {"class":"css-1g78l7j"})
    comment = comment_span.find("span")
    print(comment.get_text())

print(len(div_infos))




# div_infos = soup.find_all("div", {"class":"css-1agoci2"})

# for div_info in div_infos :
#     print(div_info.get_text())
    
