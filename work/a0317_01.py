import requests
import time
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys

browser = webdriver.Chrome()
# url = "https://www.naver.com"
url = "https://pedia.watcha.com/ko-KR/contents/md7YzgM/comments"
# 크롬부라우저 열기
browser.get(url)

#--------------셀레니움 공통----------------------------------------

elem = browser.find_element(By.NAME, "query")
elem.send_keys("왓챠피디아")
# time.sleep(3)
elem.send_keys(Keys.ENTER)

elem = browser.find_element(By.CLASS_NAME, "link_tit")
elem.click()






# -------------------------
# 자동종료 방지
while(True):
    pass


