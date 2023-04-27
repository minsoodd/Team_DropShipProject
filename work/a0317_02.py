import requests
import time
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys


browser = webdriver.Chrome()
# url = "https://www.naver.com"
url = "https://pedia.watcha.com/ko-KR/contents/mdRE96g/comments"
# 크롬부라우저 열기
browser.get(url)

# --------------셀레니움 공통----------------------------------------

# 현재 창 높이 계산
prev_height = browser.execute_script("return document.body.scrollHeight")
print("브라우저 높이 : ", prev_height)

while True:
    browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
    time.sleep(3)
    # 변경된 높이 계산
    curr_height = browser.execute_script("return document.body.scrollHeight")
    print("변경된 높이 : ", curr_height)
    if curr_height == prev_height :
        break
    
    prev_height = curr_height
    
print("스크롤 내림 완료")
time.sleep(2)


# ----정보가져오기(뷰티풀숲)-----
page_url = browser.page_source

# html 파싱
soup = BeautifulSoup(page_url, "lxml")

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
# ----정보가져오기(뷰티풀숲)-----





# -------------------------
# 자동종료 방지
while(True):
    pass


