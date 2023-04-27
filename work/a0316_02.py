import requests
from bs4 import BeautifulSoup
import csv

headers = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36"}
url = "https://movie.daum.net/ranking/reservation"
# url = "https://comic.naver.com/webtoon"

# 웹정보 가져오기
res = requests.get(url, headers = headers) # String 그자체

# 여기서 에러나면 밑에 구동하지 마라 종료.
res.raise_for_status() 

# html 파싱
soup = BeautifulSoup(res.text, "lxml")

#=========================================

# 위치 찾기
data = soup.find("ol", {"class":"list_movieranking"})
li_infos = data.find_all("li")

# for문 출력
for li_info in li_infos :
    # a태그안의 class="link_txt"인 애의 get_text()
    screenInfo = li_info.find("a", {"class":"link_txt"})
    print(screenInfo.get_text())
    
    
# csv, xlsx 같아 파일설정
filename = "screen.csv"
# 엑셀파일은 utf-8-sig사용, newline : enter키 제거
f = open(filename, "w", encoding="utf-8-sig", newline="")
writer = csv.writer(f)

# index 포함해서 출력
for idx, li_info in enumerate(li_infos) :
    screenInfo = li_info.find("a", {"class":"link_txt"})
    print(idx+1," : ", screenInfo.get_text())
    grade = li_info.find("span", {"class":"txt_grade"})
    print(idx+1," : ", grade.get_text())
    img = li_info.find("img")["src"]
    print(img)
    
    # csv, xlsx 파일에 데이터 쓰기
    csvdata = [screenInfo.get_text(), grade.get_text(), img] # 3가지 저장
    writer.writerow(csvdata)
        
    # 이미지로 저장하기
    # img_url = requests.get(img)
    # with open("movie_{}.jpg".format(idx+1), "wb" ) as f :
    #     f.write(img_url.content)
        
    # 엑셀파일로 저장하기
    
    
    
    print("----------------------------------------") 








