-- ** 테이블 순서 바뀌면 안됨. 외래키 참조를 안하는 DB(부모) -> 외래키 참조를 해야하는 DB(자식)순서대로 만들어져야.

---------↓--------↓ 관리자 테이블 (Admin) / 
-------↓----시퀀스(admin_seq) 생성  ↓--------↓--------
CREATE TABLE Admin
(
    id                NUMBER(4)       NOT NULL, 
    admin_name        VARCHAR2(30)    NOT NULL, 
    admin_login_id    VARCHAR2(20)    NOT NULL, 
    admin_pw          NUMBER(4)       NOT NULL, 
    admin_isSuper     NUMBER(1)       DEFAULT 0 NOT NULL, 
    admin_phone       VARCHAR2(12)    NOT NULL, 
    admin_reg_date    DATE            DEFAULT sysdate NOT NULL, 
    admin_ban         NUMBER(1)       DEFAULT 0 NOT NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Admin_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Admin_SEQ; 

-- 관리자 id 1인 관리자 1명 생성해야
INSERT INTO admin VALUES (ADMIN_SEQ.NEXTVAL, '관리자씨', 'admin', 1111, 1, '01022223333', sysdate, 0);

---------↓--------↓ 작가 테이블 (Artist) / 
-------↓----작가 시퀀스(Artist_seq) 생성  ↓--------↓--------
CREATE TABLE Artist
(
    id                     NUMBER(4)         NOT NULL, 
    artist_korean_name     VARCHAR2(300)     NULL, 
    artist_english_name    VARCHAR2(300)     NULL, 
    artist_img_url         VARCHAR2(500)     NULL, 
    artist_country         VARCHAR2(100)     NULL, 
    artist_birth_death     VARCHAR2(100)     NULL, 
    artist_main            VARCHAR2(200)     NULL, 
    artist_content         VARCHAR2(4000)    NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Artist_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Artist_SEQ; 

---------↓--------↓ 배송 테이블 (Delivery) / 
-------↓---- 배송 시퀀스(Delivery_seq) 생성  ↓--------↓--------
CREATE TABLE Delivery
(
    id                    NUMBER(4)        NOT NULL, 
    delivery_start        DATE             NOT NULL, 
    delivery_end          DATE             NOT NULL, 
    delivery_departure    VARCHAR2(100)    DEFAULT '경기도 고양시 일산동구 산황로 178-15' NOT NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Delivery_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Delivery_SEQ; 


---------↓--------↓ 비회원 테이블 (Non_Member) 생성  
-------↓----비회원 시퀀스(Non_Member_seq) 생성↓--------↓--------
CREATE TABLE Non_Member
(
    id                 NUMBER(3)       NOT NULL, 
    nonMember_name     VARCHAR2(20)    NOT NULL, 
    nonMember_pw       VARCHAR2(20)    NOT NULL, 
    nonMember_email    VARCHAR2(20)    NOT NULL, 
    nonMember_phone    VARCHAR2(20)    NOT NULL, 
    nonMember_zip      VARCHAR2(6)     NOT NULL, 
    nonMember_road     VARCHAR2(20)    NOT NULL, 
    nonMember_addr     VARCHAR2(20)    NOT NULL, 
     PRIMARY KEY (id)
);

-- 비회원 고유번호(ID)는 보통 랜덤 String으로 만들기 때문에 sequence 사용안함. 그러나
-- 쉽게 가려면 시퀀스 쓰는게 나을수도 있을거 같아서 일단 sequnce사용하는 코드도 두었음
CREATE SEQUENCE Non_Member_SEQ
START WITH 1
INCREMENT BY 1;


---------↓--------↓ 회원 테이블 (Member) / 
-------↓---- 회원 시퀀스(Member_seq) 생성  ↓--------↓--------
CREATE TABLE Member
(
    id                 NUMBER(4)        NOT NULL, 
    member_login_id    VARCHAR2(100)    NOT NULL, 
    member_pw          VARCHAR2(300)    NOT NULL, 
    member_name        VARCHAR2(100)    NOT NULL, 
    member_email       VARCHAR2(200)    NOT NULL, 
    member_phone       VARCHAR2(15)     NOT NULL, 
    member_birth       VARCHAR2(50)     NOT NULL, 
    member_zip         VARCHAR2(10)     NOT NULL, 
    member_road        VARCHAR2(300)    NOT NULL, 
    member_addr        VARCHAR2(400)    NOT NULL, 
    member_nName       VARCHAR2(50)     NOT NULL, 
    member_reg_date    DATE             NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Member_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Member_SEQ; 


---------↓--------↓ 작품 옵션 테이블 (Work_Option) / 
-------↓---- 작품 옵션 시퀀스(Work_Option_seq) 생성  ↓--------↓--------
CREATE TABLE Work_Option
(
    id                             NUMBER(4)      NOT NULL, 
    option_size                    NUMBER(1)      DEFAULT 0 NOT NULL, 
    option_size_added_price        NUMBER(5)      DEFAULT 36500 NOT NULL, 
    option_media                   NUMBER(1)      DEFAULT 0 NOT NULL, 
    option_media_price_multiple    NUMBER(3,2)    DEFAULT 1.00 NOT NULL, 
    option_mattier                 NUMBER(1)      DEFAULT 0 NOT NULL, 
    option_frame                   NUMBER(1)      DEFAULT 0 NOT NULL, 
    option_frame_added_price       NUMBER(5)      DEFAULT 0 NOT NULL, 
    option_matt                    NUMBER(1)      DEFAULT 0 NOT NULL, 
    option_matt_added_price        NUMBER(5)      DEFAULT 0 NOT NULL, 
    option_quantity                NUMBER(2)      DEFAULT 1 NOT NULL, 
    option_selected_price          NUMBER(8)      NOT NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Work_Option_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Work_Option_SEQ; 


---------↓--------↓ 인화 작품 테이블 (Print_Work) / 
-------↓---- 인화 작품 시퀀스(Print_Work_seq) 생성  ↓--------↓--------
CREATE TABLE Print_Work
(
    id                  NUMBER(4)        NOT NULL, 
    print_work_url      VARCHAR2(400)    NULL, 
    print_work_price    NUMBER(6)        NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Print_Work_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Print_Work_SEQ; 

---------↓--------↓ 회원주문 테이블 (Order_Member) / 
-------↓---- 회원주문 시퀀스(Order_Member_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE Order_Member
(
    id                  NUMBER(4)        NOT NULL, 
    member_id           NUMBER(4)        NOT NULL, 
    order_date          DATE             DEFAULT sysdate NOT NULL, 
    order_status        NUMBER(1)        DEFAULT 0 NOT NULL, 
    delivery_id         NUMBER(4)        DEFAULT null NULL, 
    delivery_name       VARCHAR2(60)     NOT NULL, 
    delivery_phone      VARCHAR2(100)    NOT NULL, 
    delivery_zip        VARCHAR2(6)      NOT NULL, 
    delivery_road       VARCHAR2(200)    NOT NULL, 
    delivery_address    VARCHAR2(500)    NOT NULL, 
    delivery_request    VARCHAR2(200)    NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Order_Member_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Order_Member_SEQ; 

-- Foreign Key 설정 SQL - Order_Member(member_id) -> Member(id)
ALTER TABLE Order_Member
    ADD CONSTRAINT FK_Order_Member_member_id_Member_id FOREIGN KEY (member_id)
        REFERENCES Member (id) ;

-- Foreign Key 설정 SQL - Order_Member(delivery_id) -> Delivery(id)
ALTER TABLE Order_Member
    ADD CONSTRAINT FK_Order_Member_delivery_id_Delivery_id FOREIGN KEY (delivery_id)
        REFERENCES Delivery (id) ;


---------↓--------↓ 작품 테이블 (Work) / 
-------↓---- 작품 시퀀스(Work_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE Work
(
    id                    NUMBER(4)         NOT NULL, 
    work_name             VARCHAR2(200)     NOT NULL, 
    artist_id             NUMBER(4)         NOT NULL, 
    work_genre	          VARCHAR2(50)      DEFAULT '초상화' NOT NULL, 
    work_subject          VARCHAR2(50)      DEFAULT '봄' NOT NULL, 
    work_img_url          VARCHAR2(2000)     NOT NULL, 
    work_content          VARCHAR2(4000)    NOT NULL, 
    work_sale             NUMBER(4,2)       DEFAULT 0.00 NOT NULL, 
    work_isBest           NUMBER(1)         DEFAULT 0 NOT NULL, 
    work_reg_date         DATE              DEFAULT sysdate NOT NULL, 
    work_price            NUMBER(9)         DEFAULT 10000 NOT NULL, 
    work_display_position VARCHAR2(500)     DEFAULT 'https://www.google.com/maps?cid=13363865620386383060' NULL, 
    work_hit              NUMBER(4)         DEFAULT 0 NOT NULL, 
    admin_id              NUMBER(3)         DEFAULT 1 NULL, 
    work_available        NUMBER(1)         DEFAULT 1 NOT NULL, 
--  work_is_ai            NUMBER(1)         DEFAULT 0 NULL,	    -- 맨 아래에서 add로 해놓음
--  work_ai_prompt        VARCHAR2(500)     DEFAULT '' NULL, 	-- 맨 아래에서 add로 해놓음
     PRIMARY KEY (id)	
);

CREATE SEQUENCE Work_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Work_SEQ; 

-- Foreign Key 설정 SQL - Work(admin_id) -> Admin(id)
ALTER TABLE Work
    ADD CONSTRAINT FK_Work_admin_id_Admin_id FOREIGN KEY (admin_id)
        REFERENCES Admin (id) ;

-- Foreign Key 설정 SQL - Work(artist_id) -> Artist(id)
ALTER TABLE Work
    ADD CONSTRAINT FK_Work_artist_id_Artist_id FOREIGN KEY (artist_id)
        REFERENCES Artist (id) ;

---------↓--------↓ 자유게시판 테이블 (FreeBoard) / 
-------↓---- 자유게시판 시퀀스(FreeBoard_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE FreeBoard
(
    id                       NUMBER(4)         NOT NULL, 
    freeBoard_head           NUMBER(1)         DEFAULT 0 NOT NULL, 
    freeBoard_isNotice       NUMBER(1)         DEFAULT 0 NOT NULL, 
    freeBoard_isTop          NUMBER(1)         DEFAULT 0 NOT NULL, 
    freeBoard_isAnswer       NUMBER(1)         DEFAULT null NULL, 
    member_id                NUMBER(4)         NULL, 
    admin_id                 NUMBER(4)         DEFAULT null NULL, 
    freeBoard_title          VARCHAR2(200)     NOT NULL, 
    freeBoard_content        VARCHAR2(4000)    NOT NULL, 
    freeBoard_date           DATE              DEFAULT sysdate NOT NULL, 
    freeBoard_update_date    DATE              DEFAULT sysdate NOT NULL, 
    freeBoard_file_name      VARCHAR2(200)     DEFAULT null NULL, 
    freeBoard_hit            NUMBER(4)         DEFAULT 0 NOT NULL, 
    freeBoard_ban            NUMBER(1)         DEFAULT 0 NULL, 
     PRIMARY KEY (id)
);

-- freeBoard_Seq 만들기
CREATE SEQUENCE FreeBoard_seq
START WITH 1
INCREMENT BY 1;

-- Foreign Key 설정 SQL - FreeBoard(member_id) -> Member(id)
ALTER TABLE FreeBoard
    ADD CONSTRAINT FK_FreeBoard_member_id_Member_id FOREIGN KEY (member_id)
        REFERENCES Member (id) ;
        
-- Foreign Key 설정 SQL - FreeBoard(admin_id) -> Admin(id)
ALTER TABLE FreeBoard
    ADD CONSTRAINT FK_FreeBoard_admin_id_Admin_id FOREIGN KEY (admin_id)
        REFERENCES Admin (id) ;


---------↓--------↓ 비회원주문 테이블 (Order_NonMember) / 
-------↓---- 비회원주문 시퀀스(Order_NonMember_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE Order_NonMember
(
    id                  NUMBER(4)        NOT NULL, 
    nonMember_id        NUMBER(4)        NOT NULL, 
    order_date          DATE             DEFAULT sysdate NOT NULL, 
    order_status        NUMBER(1)        DEFAULT 0 NOT NULL, 
    delivery_id         NUMBER(4)        DEFAULT null NULL, 
    delivery_name       VARCHAR2(50)     NOT NULL, 
    delivery_phone      VARCHAR2(30)     NOT NULL, 
    delivery_zip        VARCHAR2(6)      NOT NULL, 
    delivery_road       VARCHAR2(200)    NOT NULL, 
    delivery_address    VARCHAR2(200)    NOT NULL, 
    delivery_request    VARCHAR2(200)    NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Order_NonMember_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Order_NonMember_SEQ; 

-- Foreign Key 설정 SQL - Order_NonMember(delivery_id) -> Delivery(id)
ALTER TABLE Order_NonMember
    ADD CONSTRAINT FK_Order_NonMember_delivery_id_Delivery_id FOREIGN KEY (delivery_id)
        REFERENCES Delivery (id) ;

-- Foreign Key 설정 SQL - Order_NonMember(nonMember_id) -> Non_Member(id)
ALTER TABLE Order_NonMember
    ADD CONSTRAINT FK_Order_NonMember_nonMember_id_Non_Member_id FOREIGN KEY (nonMember_id)
        REFERENCES Non_Member (id) ;


---------↓--------↓ 작가미상 작품 테이블 (Anonymous_Work) / 
-------↓---- 작가미상 작품 시퀀스(Anonymous_Work_seq) 생성 ↓--------↓--------
CREATE TABLE Anonymous_Work
(
    id                              NUMBER(4)         NOT NULL, 
    anonymous_work_name             VARCHAR2(200)     NOT NULL, 
    anonymous_work_genre    	    VARCHAR2(50)      NOT NULL, 
    anonymous_work_subject          VARCHAR2(50)      NOT NULL, 
    anonymous_work_img_url          VARCHAR2(500)     NOT NULL, 
    anonymous_work_content          VARCHAR2(4000)    NOT NULL, 
    anonymous_work_sale             NUMBER(4,2)       DEFAULT 0.00 NOT NULL, 
    anonymous_work_reg_date         DATE              DEFAULT sysdate NOT NULL, 
    anonymous_work_price            NUMBER(9)         NOT NULL, 
    anonymous_work_display_position VARCHAR2(500)     NULL, 
    anonymous_work_hit              NUMBER(4)         NOT NULL, 
    anonymous_work_available        NUMBER(1)         NOT NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Anonymous_Work_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Anonymous_Work_SEQ; 


---------↓--------↓ 인화작품 주문 테이블 (Print_Order) / 
-------↓---- 인화작품 주문 시퀀스(Print_Order_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE Print_Order
(
    id                  NUMBER(4)        NOT NULL, 
    member_id           NUMBER(4)        NOT NULL, 
    order_date          DATE             DEFAULT sysdate NOT NULL, 
    order_status        NUMBER(1)        DEFAULT 0 NOT NULL, 
    delivery_id         NUMBER(4)        DEFAULT null NULL, 
    delivery_name       VARCHAR2(60)     NOT NULL, 
    delivery_phone      VARCHAR2(100)    NOT NULL, 
    delivery_zip        VARCHAR2(6)      NOT NULL, 
    delivery_road       VARCHAR2(200)    NOT NULL, 
    delivery_address    VARCHAR2(500)    NOT NULL, 
    delivery_request    VARCHAR2(200)    NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Print_Order_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Print_Order_SEQ; 

-- Foreign Key 설정 SQL - Print_Order(member_id) -> Member(id)
ALTER TABLE Print_Order
    ADD CONSTRAINT FK_Print_Order_member_id_Member_id FOREIGN KEY (member_id)
        REFERENCES Member (id) ;

-- Foreign Key 설정 SQL - Print_Order(delivery_id) -> Delivery(id)
ALTER TABLE Print_Order
    ADD CONSTRAINT FK_Print_Order_delivery_id_Delivery_id FOREIGN KEY (delivery_id)
        REFERENCES Delivery (id) ;


---------↓--------↓ 인화작품 주문상세 테이블 (Print_Order_Detail) / 
-------↓---- 인화작품 주문상세 시퀀스(Print_Order_Detail_seq) 생성 / 
-------↓-----외래키 생성 ↓--------↓--------
CREATE TABLE Print_Order_Detail
(
    id                NUMBER(4)    NOT NULL, 
    print_order_id    NUMBER(4)    NOT NULL, 
    work_id           NUMBER(4)    NOT NULL, 
    option_id         NUMBER(4)    NOT NULL, 
    final_price       NUMBER(7)    NOT NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Print_Order_Detail_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Print_Order_Detail_SEQ; 

-- Foreign Key 설정 SQL - Print_Order_Detail(print_order_id) -> Print_Order(id)
ALTER TABLE Print_Order_Detail
    ADD CONSTRAINT FK_Print_Order_Detail_print_order_id_Print_Order_id FOREIGN KEY (print_order_id)
        REFERENCES Print_Order (id) ;

-- Foreign Key 설정 SQL - Print_Order_Detail(option_id) -> Work_Option(id)
ALTER TABLE Print_Order_Detail
    ADD CONSTRAINT FK_Print_Order_Detail_option_id_Work_Option_id FOREIGN KEY (option_id)
        REFERENCES Work_Option (id) ;


-- Foreign Key 설정 SQL - Print_Order_Detail(work_id) -> Print_Work(id)
ALTER TABLE Print_Order_Detail
    ADD CONSTRAINT FK_Print_Order_Detail_work_id_Print_Work_id FOREIGN KEY (work_id)
        REFERENCES Print_Work (id) ;

        
---------↓--------↓ 비회원 장바구니 테이블 (Cart_NonMember) / 
-------↓---- 비회원 장바구니 시퀀스(Cart_NonMember_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE Cart_NonMember
(
    id              NUMBER(4)    NOT NULL, 
    nonMember_id    NUMBER(3)    NOT NULL, 
    work_id         NUMBER(4)    NOT NULL, 
    option_id       NUMBER(4)    NOT NULL, 
    added_date      DATE         DEFAULT sysdate NOT NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Cart_NonMember_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Cart_NonMember_SEQ; 

-- Foreign Key 설정 SQL - Cart_NonMember(work_id) -> Work(id)
ALTER TABLE Cart_NonMember
    ADD CONSTRAINT FK_Cart_NonMember_work_id_Work_id FOREIGN KEY (work_id)
        REFERENCES Work (id) ;

-- Foreign Key 설정 SQL - Cart_NonMember(option_id) -> Work_Option(id)
ALTER TABLE Cart_NonMember
    ADD CONSTRAINT FK_Cart_NonMember_option_id_Work_Option_id FOREIGN KEY (option_id)
        REFERENCES Work_Option (id) ;

-- Foreign Key 설정 SQL - Cart_NonMember(nonMember_id) -> Non_Member(id)
ALTER TABLE Cart_NonMember
    ADD CONSTRAINT FK_Cart_NonMember_nonMember_id_Non_Member_id FOREIGN KEY (nonMember_id)
        REFERENCES Non_Member (id) ;


---------↓--------↓ 비회원 주문상세 테이블 (Order_Detail_NonMember) / 
-------↓---- 비회원 주문상세 시퀀스(Order_Detail_NonMember_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE Order_Detail_NonMember
(
    id                    NUMBER(4)    NOT NULL, 
    order_NonMember_id    NUMBER(4)    NOT NULL, 
    work_id               NUMBER(4)    NOT NULL, 
    option_id             NUMBER(4)    NOT NULL, 
    total_price           NUMBER(7)    NOT NULL, 
    event_work_sale       NUMBER(3)    DEFAULT 0 NOT NULL, 
    event_period_sale     NUMBER(3)    NOT NULL, 
    final_price           NUMBER(7)    NOT NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Order_Detail_NonMember_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Order_Detail_NonMember_SEQ; 

-- Foreign Key 설정 SQL - Order_Detail_NonMember(option_id) -> Work_Option(id)
ALTER TABLE Order_Detail_NonMember
    ADD CONSTRAINT FK_Order_Detail_NonMember_Work_Option_id FOREIGN KEY (option_id)
        REFERENCES Work_Option (id) ;

-- Foreign Key 설정 SQL - Order_Detail_NonMember(work_id) -> Work(id)
ALTER TABLE Order_Detail_NonMember
    ADD CONSTRAINT FK_Order_Detail_NonMember_work_id_Work_id FOREIGN KEY (work_id)
        REFERENCES Work (id) ;

-- Foreign Key 설정 SQL - Order_Detail_NonMember(nonMember_order_id) -> Order_NonMember(id)
ALTER TABLE Order_Detail_NonMember
    ADD CONSTRAINT FK_Order_Detail_NonMember_order_NonMember_id_Order_NonMember_id FOREIGN KEY (order_NonMember_id)
        REFERENCES Order_NonMember (id) ;


---------↓--------↓ 작품 리뷰 테이블 (Work_Review) / 
-------↓---- 작품 리뷰 시퀀스(Work_Review_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE Work_Review
(
    id                NUMBER(4)        NOT NULL, 
    work_id           NUMBER(4)        NOT NULL, 
    member_id         NUMBER(4)        NOT NULL, 
    review_date       DATE             DEFAULT sysdate NOT NULL, 
    review_rate       NUMBER(1)        DEFAULT 5 NOT NULL, 
    review_title      VARCHAR2(100)     NOT NULL, 
    review_content    VARCHAR2(600)    NOT NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Work_Review_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Work_Review_SEQ; 

-- Foreign Key 설정 SQL - Work_Review(member_id) -> Member(id)
ALTER TABLE Work_Review
    ADD CONSTRAINT FK_Work_Review_member_id_Member_id FOREIGN KEY (member_id)
        REFERENCES Member (id) ;

-- Foreign Key 설정 SQL - Work_Review(work_id) -> Work(id)
ALTER TABLE Work_Review
    ADD CONSTRAINT FK_Work_Review_work_id_Work_id FOREIGN KEY (work_id)
        REFERENCES Work (id) ;


---------↓--------↓ 이벤트게시판 테이블 (EventBoard) / 
-------↓---- 이벤트게시판 시퀀스(EventBoard_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE EventBoard
(
    id                        NUMBER(4)         NOT NULL, 
    eventBoard_isTop          NUMBER(1)         DEFAULT 0 NOT NULL, 
    admin_id                  NUMBER(4)         NOT NULL, 
    eventBoard_title          VARCHAR2(200)     NOT NULL, 
    eventBoard_content        VARCHAR2(4000)    NOT NULL, 
    eventBoard_date           DATE              NOT NULL, 
    eventBoard_update_date    DATE              NOT NULL, 
    eventBoard_file_name      VARCHAR2(400)     DEFAULT null NULL, 
    eventBoard_hit            NUMBER(4)         NOT NULL, 
     PRIMARY KEY (id)
);

--alter table EventBoard rename column member_id to admin_id;

CREATE SEQUENCE EventBoard_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE EventBoard_SEQ; 

-- Foreign Key 설정 SQL - EventBoard(admin_id) -> Admin(id)
ALTER TABLE EventBoard
    ADD CONSTRAINT FK_EventBoard_admin_id_Admin_id FOREIGN KEY (admin_id)
        REFERENCES Admin (id) ;

---------↓--------↓ 공지게시판 테이블 (NoticeBoard) / 
-------↓---- 공지게시판 시퀀스(NoticeBoard_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE NoticeBoard
(
    id                         NUMBER(4)         NOT NULL, 
    noticeBoard_isTop          NUMBER(1)         DEFAULT 0 NOT NULL, 
    admin_id                   NUMBER(4)         NOT NULL, 
    noticeBoard_title          VARCHAR2(200)     NOT NULL, 
    noticeBoard_content        VARCHAR2(4000)    NOT NULL, 
    noticeBoard_date           DATE              DEFAULT sysdate NOT NULL, 
    noticeBoard_update_date    DATE              DEFAULT sysdate NOT NULL, 
    noticeBoard_file_name      VARCHAR2(400)     NULL, 
    noticeBoard_hit            NUMBER(4)         DEFAULT 1 NOT NULL, 
     PRIMARY KEY (id)
);

--alter table NoticeBoard rename column member_id to admin_id;

CREATE SEQUENCE NoticeBoard_SEQ
START WITH 1
INCREMENT BY 1;

-- Foreign Key 설정 SQL - NoticeBoard(admin_id) -> Admin(id)
ALTER TABLE NoticeBoard
    ADD CONSTRAINT FK_NoticeBoard_admin_id_Admin_id FOREIGN KEY (admin_id)
        REFERENCES Admin (id) ;


---------↓--------↓ 댓글 테이블 (freeBoard_Comment) / 
-------↓---- 댓글 시퀀스(freeBoard_Comment_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE freeBoard_Comment
(
    id                 NUMBER(4)         NOT NULL, 
    freeBoard_id       NUMBER(4)         NOT NULL, 
    member_id          NUMBER(4)         NOT NULL, 
    comment_pw         VARCHAR2(4)       DEFAULT null NULL, 
    comment_content    VARCHAR2(1000)    NOT NULL, 
    comment_date       DATE              DEFAULT sysdate NOT NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE freeBoard_Comment_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE freeBoard_Comment_SEQ; 

-- Foreign Key 설정 SQL - freeBoard_Comment(member_id) -> Member(id)
ALTER TABLE freeBoard_Comment
    ADD CONSTRAINT FK_freeBoard_Comment_member_id_Member_id FOREIGN KEY (member_id)
        REFERENCES Member (id) ;

-- Foreign Key 설정 SQL - freeBoard_Comment(freeBoard_id) -> FreeBoard(id)
ALTER TABLE freeBoard_Comment
    ADD CONSTRAINT FK_freeBoard_Comment_freeBoard_id_FreeBoard_id FOREIGN KEY (freeBoard_id)
        REFERENCES FreeBoard (id) ;


---------↓--------↓ 찜리스트 테이블 (Wishlist) / 
-------↓---- 찜리스트 시퀀스(Wishlist_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE Wishlist
(
    id            NUMBER(4)    NOT NULL, 
    member_id     NUMBER(4)    NOT NULL, 
    work_id       NUMBER(4)    NOT NULL, 
    added_date    DATE         DEFAULT sysdate NOT NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Wishlist_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Wishlist_SEQ; 

-- Foreign Key 설정 SQL - Wishlist(member_id) -> Member(id)
ALTER TABLE Wishlist
    ADD CONSTRAINT FK_Wishlist_member_id_Member_id FOREIGN KEY (member_id)
        REFERENCES Member (id) ;

-- Foreign Key 설정 SQL - Wishlist(work_id) -> Work(id)
ALTER TABLE Wishlist
    ADD CONSTRAINT FK_Wishlist_work_id_Work_id FOREIGN KEY (work_id)
        REFERENCES Work (id) ;


---------↓--------↓ 회원 장바구니 테이블 (Cart_Member) / 
-------↓---- 회원 장바구니 시퀀스(Cart_Member_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE Cart_Member
(
    id            NUMBER(4)    NOT NULL, 
    member_id     NUMBER(4)    NOT NULL, 
    work_id       NUMBER(4)    NOT NULL, 
    option_id     NUMBER(4)    NOT NULL, 
    added_date    DATE         DEFAULT sysdate NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Cart_Member_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Cart_Member_SEQ; 

-- Foreign Key 설정 SQL - Cart_Member(option_id) -> Work_Option(id)
ALTER TABLE Cart_Member
    ADD CONSTRAINT FK_Cart_Member_option_id_Work_Option_id FOREIGN KEY (option_id)
        REFERENCES Work_Option (id) ;

-- Foreign Key 설정 SQL - Cart_Member(member_id) -> Member(id)
ALTER TABLE Cart_Member
    ADD CONSTRAINT FK_Cart_Member_member_id_Member_id FOREIGN KEY (member_id)
        REFERENCES Member (id) ;

-- Foreign Key 설정 SQL - Cart_Member(work_id) -> Work(id)
ALTER TABLE Cart_Member
    ADD CONSTRAINT FK_Cart_Member_work_id_Work_id FOREIGN KEY (work_id)
        REFERENCES Work (id) ;


---------↓--------↓ 회원 주문상세 테이블 (Order_Detail) / 
-------↓---- 회원 주문상세 시퀀스(Order_Detail_seq) 생성 / 외래키 생성 ↓--------↓--------
CREATE TABLE Order_Detail
(
    id                   NUMBER(4)    NOT NULL, 
    order_member_id      NUMBER(4)    NOT NULL, 
    work_id              NUMBER(4)    NOT NULL, 
    option_id            NUMBER(4)    NOT NULL, 
    total_price          NUMBER(7)    NOT NULL, 
    event_work_sale      NUMBER(3)    DEFAULT 0 NOT NULL, 
    event_period_sale    NUMBER(3)    DEFAULT 0 NOT NULL, 
    final_price          NUMBER(7)    NOT NULL, 
     PRIMARY KEY (id)
);

CREATE SEQUENCE Order_Detail_SEQ
START WITH 1
INCREMENT BY 1;

-- DROP SEQUENCE Order_Detail_SEQ; 

-- Foreign Key 설정 SQL - Order_Detail(member_order_id) -> Order_Member(id)
ALTER TABLE Order_Detail
    ADD CONSTRAINT FK_Order_Detail_order_member_id_Order_Member_id FOREIGN KEY (order_member_id)
        REFERENCES Order_Member (id) ;

-- Foreign Key 설정 SQL - Order_Detail(work_id) -> Work(id)
ALTER TABLE Order_Detail
    ADD CONSTRAINT FK_Order_Detail_work_id_Work_id FOREIGN KEY (work_id)
        REFERENCES Work (id) ;

-- Foreign Key 설정 SQL - Order_Detail(option_id) -> Work_Option(id)
ALTER TABLE Order_Detail
    ADD CONSTRAINT FK_Order_Detail_option_id_Work_Option_id FOREIGN KEY (option_id)
        REFERENCES Work_Option (id) ;
        
        
------------------------- 0406 수정	--------------------
-- 이벤트게시판 이벤트시작, 종료, 상태 컬럼 추가
ALTER TABLE EventBoard
ADD (eventBoard_start DATE NOT NULL,
eventBoard_end DATE NOT NULL,
eventBoard_status NUMBER(1) DEFAULT 0 NOT NULL);

-- 자유게시판 노출여부 컬럼 추가
ALTER TABLE freeBoard
ADD freeBoard_ban NUMBER(1) DEFAULT 0 NULL;

-- 작품 테이블 ai작품인지 여부 컬럼 추가 (0-일반, 1-ai) 
ALTER TABLE Work
ADD (work_is_ai NUMBER(1) DEFAULT 0 NULL);

-- 작품 테이블 ai작품일 때 사용된 프롬프트 뭐 썼는지 컬럼 추가 
ALTER TABLE Work
ADD (work_ai_prompt VARCHAR2(500) DEFAULT '' NULL);

-- 작품 테이블 work_img_url 사이즈 늘림(ai로 이미지 만들면 url주소가 엄청 길어서)
ALTER TABLE work MODIFY work_img_url VARCHAR2(2000);

-- 자유게시판 답글 기능 추가위해
ALTER TABLE FreeBoard
    ADD (freeBoard_ban           NUMBER(1)         DEFAULT 0 NOT NULL,
         freeBoard_group         NUMBER(3)         NOT NULL,
         freeBoard_indent        NUMBER(1)         DEFAULT 0 NOT NULL,
         freeBoard_step          NUMBER(4)         DEFAULT 0 NOT NULL);

-- 자유게시판 댓글 기능 추가 위해 
ALTER TABLE freeBoard_comment
MODIFY (comment_pw VARCHAR2(4));

commit;

-- 작품 리뷰 마이페이지에서 중복으로 나오는거 제거 위해 
-- work_review 테이블에 주문번호 컬럼 추가
ALTER TABLE Work_Review 
ADD order_member_id number(4) not null;

ALTER TABLE Work_Review
ADD CONSTRAINT FK_Review_order_member_id_Order_Member_id
FOREIGN KEY (order_member_id)
REFERENCES Order_Member (id);

-- 장바구니에 같은 작품 다른옵션으로 여러개 주문했을 때 option_id로 구분해서 리뷰 작성할 수 있게 
-- work_review 테이블에 option_id 컬럼 추가
ALTER TABLE Work_Review 
ADD option_id number(4) null;

ALTER TABLE Work_Review
ADD CONSTRAINT FK_Work_Review_option_id_Work_Option_id
FOREIGN KEY (option_id)
REFERENCES Work_Option (id);


