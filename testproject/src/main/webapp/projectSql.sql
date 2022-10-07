select * from T_MEMBER

select * from T_MEMBER;
select * from T_MEMBER;

-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- t_shop Table Create SQL
CREATE TABLE t_shop
(
    shop_cd           VARCHAR2(100)     NOT NULL, 
    shop_name         VARCHAR2(30)      NOT NULL, 
    shop_reputaion    NUMBER(1,1)       NOT NULL, 
    shop_img          VARCHAR2(4000)    NULL, 
     PRIMARY KEY (shop_cd)
)
/

COMMENT ON TABLE t_shop IS '상점'
/

COMMENT ON COLUMN t_shop.shop_cd IS '상점 코드'
/

COMMENT ON COLUMN t_shop.shop_name IS '상점 이름'
/

COMMENT ON COLUMN t_shop.shop_reputaion IS '상점 평점'
/

COMMENT ON COLUMN t_shop.shop_img IS '상점 사진1'
/


-- t_member Table Create SQL
CREATE TABLE t_member
(
    mem_id           VARCHAR2(20)    NOT NULL, 
    mem_pw           VARCHAR2(20)    NOT NULL, 
    mem_birthdate    DATE            NOT NULL, 
    mem_gender       CHAR(1)         NOT NULL, 
    mem_joindate     DATE            NOT NULL, 
    mem_type         CHAR(1)         NOT NULL, 
     PRIMARY KEY (mem_id)
)
/

COMMENT ON TABLE t_member IS '회원'
/

COMMENT ON COLUMN t_member.mem_id IS '회원 아이디'
/

COMMENT ON COLUMN t_member.mem_pw IS '회원 비밀번호'
/

COMMENT ON COLUMN t_member.mem_birthdate IS '회원 생년월일'
/

COMMENT ON COLUMN t_member.mem_gender IS '회원 성별'
/

COMMENT ON COLUMN t_member.mem_joindate IS '회원 가입일자. 회원:''M'', 관리자:''A'''
/

COMMENT ON COLUMN t_member.mem_type IS '회원 유형'
/


-- t_category Table Create SQL
CREATE TABLE t_category
(
    category_seq     NUMBER(15, 0)    NOT NULL, 
    category_type    VARCHAR2(30)     NOT NULL, 
    category_name    VARCHAR2(30)     NOT NULL, 
     PRIMARY KEY (category_seq)
)
/

CREATE SEQUENCE t_category_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER t_category_AI_TRG
BEFORE INSERT ON t_category 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_category_SEQ.NEXTVAL
    INTO :NEW.category_seq
    FROM DUAL;
END;
/

--DROP TRIGGER t_category_AI_TRG; /

--DROP SEQUENCE t_category_SEQ; /

COMMENT ON TABLE t_category IS '카테고리'
/

COMMENT ON COLUMN t_category.category_seq IS '카테고리 순번'
/

COMMENT ON COLUMN t_category.category_type IS '카테고리 구분'
/

COMMENT ON COLUMN t_category.category_name IS '카테고리 명'
/


-- t_preference Table Create SQL
CREATE TABLE t_preference
(
    survey_seq       NUMBER(15, 0)    NOT NULL, 
    mem_id           VARCHAR2(20)     NOT NULL, 
    category_seq     NUMBER(15, 0)    NOT NULL, 
    survey_date      DATE             NOT NULL, 
    pre_reputaion    NUMBER(1,1)      NOT NULL, 
    pre_budget       NUMBER(15, 1)    NOT NULL, 
     PRIMARY KEY (survey_seq)
)
/

CREATE SEQUENCE t_preference_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER t_preference_AI_TRG
BEFORE INSERT ON t_preference 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_preference_SEQ.NEXTVAL
    INTO :NEW.survey_seq
    FROM DUAL;
END;
/

--DROP TRIGGER t_preference_AI_TRG; /

--DROP SEQUENCE t_preference_SEQ; /

COMMENT ON TABLE t_preference IS '사용자 설문 조사'
/

COMMENT ON COLUMN t_preference.survey_seq IS '설문 순번'
/

COMMENT ON COLUMN t_preference.mem_id IS '회원 아이디'
/

COMMENT ON COLUMN t_preference.category_seq IS '카테고리 순번'
/

COMMENT ON COLUMN t_preference.survey_date IS '설문 날짜'
/

COMMENT ON COLUMN t_preference.pre_reputaion IS '평점'
/

COMMENT ON COLUMN t_preference.pre_budget IS '회원 예산'
/

ALTER TABLE t_preference
    ADD CONSTRAINT FK_t_preference_mem_id_t_membe FOREIGN KEY (mem_id)
        REFERENCES t_member (mem_id)  
/

ALTER TABLE t_preference
    ADD CONSTRAINT FK_t_preference_category_seq_t FOREIGN KEY (category_seq)
        REFERENCES t_category (category_seq)  
/


-- t_recommendation Table Create SQL
CREATE TABLE t_recommendation
(
    reco_seq     NUMBER(15, 0)    NOT NULL, 
    mem_id       VARCHAR2(20)     NOT NULL, 
    shop_cd      VARCHAR2(100)    NOT NULL, 
    reco_date    DATE             NOT NULL, 
     PRIMARY KEY (reco_seq)
)
/

CREATE SEQUENCE t_recommendation_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER t_recommendation_AI_TRG
BEFORE INSERT ON t_recommendation 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_recommendation_SEQ.NEXTVAL
    INTO :NEW.reco_seq
    FROM DUAL;
END;
/

--DROP TRIGGER t_recommendation_AI_TRG; /

--DROP SEQUENCE t_recommendation_SEQ; /

COMMENT ON TABLE t_recommendation IS '추천'
/

COMMENT ON COLUMN t_recommendation.reco_seq IS '추천 순번'
/

COMMENT ON COLUMN t_recommendation.mem_id IS '회원 아이디'
/

COMMENT ON COLUMN t_recommendation.shop_cd IS '상점 코드'
/

COMMENT ON COLUMN t_recommendation.reco_date IS '추천 날짜'
/

ALTER TABLE t_recommendation
    ADD CONSTRAINT FK_t_recommendation_mem_id_t_m FOREIGN KEY (mem_id)
        REFERENCES t_member (mem_id) 
/

ALTER TABLE t_recommendation
    ADD CONSTRAINT FK_t_recommendation_shop_cd_t_ FOREIGN KEY (shop_cd)
        REFERENCES t_shop (shop_cd)  
/


-- t_menu Table Create SQL
CREATE TABLE t_menu
(
    menu_seq      NUMBER(15, 0)    NOT NULL, 
    shop_cd       VARCHAR2(100)    NOT NULL, 
    menu_name     VARCHAR2(30)     NOT NULL, 
    menu_price    NUMBER(15, 0)    NOT NULL, 
    menu_img1     VARCHAR2(400)    NULL, 
     PRIMARY KEY (menu_seq)
)
/

CREATE SEQUENCE t_menu_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER t_menu_AI_TRG
BEFORE INSERT ON t_menu 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_menu_SEQ.NEXTVAL
    INTO :NEW.menu_seq
    FROM DUAL;
END;
/

--DROP TRIGGER t_menu_AI_TRG; /

--DROP SEQUENCE t_menu_SEQ; /

COMMENT ON TABLE t_menu IS '메뉴'
/

COMMENT ON COLUMN t_menu.menu_seq IS '메뉴 순번'
/

COMMENT ON COLUMN t_menu.shop_cd IS '상점 코드'
/

COMMENT ON COLUMN t_menu.menu_name IS '메뉴 명'
/

COMMENT ON COLUMN t_menu.menu_price IS '메뉴 가격'
/

COMMENT ON COLUMN t_menu.menu_img1 IS '메뉴 사진1'
/

ALTER TABLE t_menu
    ADD CONSTRAINT FK_t_menu_shop_cd_t_shop_shop_ FOREIGN KEY (shop_cd)
        REFERENCES t_shop (shop_cd) 
/


select * from t_member



