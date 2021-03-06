-- * 1.
SELECT
    member.name,
    payment_history.order_price
FROM
    member,
    payment_history
WHERE
    payment_history.member_id = member.id;
-- * 2.
SELECT
    member.name,
    payment_history.order_price
FROM
    member,
    payment_history
WHERE
        payment_history.member_id = member.id
    AND ( payment_history.order_price / payment_history.order_count ) >= 100000;
-- * 3.
SELECT
    category.name,
    product.category_id
FROM
    category,
    product
WHERE
    category.id = product.category_id
GROUP BY
    product.category_id, category.name
HAVING
    COUNT(product.category_id) >= 5;
-- * 4.
CREATE TABLE catalogue (
    id      NUMBER NOT NULL,
    name    VARCHAR2(200) NOT NULL,
    price   NUMBER NOT NULL,
    origin  VARCHAR2(200),
    CONSTRAINT catalogue_pk PRIMARY KEY ( id )
);
INSERT INTO catalogue (
    id,
    name,
    price,
    origin
)
    SELECT
        id,
        name,
        price,
        origin
    FROM
        product;
-- * 5.
UPDATE product
SET
    price = 10000000
WHERE
    price >= 100000000;
-- * 6.
SELECT
    *
FROM
    product,
    payment_history
WHERE
        product.id = payment_history.product_id
    AND product.price != payment_history.order_price / payment_history.order_count;
-- * alpha problem 1.
-- * 추가 문제 #1.
-- * 카탈로그 테이블에 CATEGORY_ID 를 추가로 생성해주시고
-- * NAME 기준으로 PRODUCT 테이블에 있는 데이터(카테고리 id)를 CATALOGUE 테이블에 추가해 주시고
-- * CATALOGUE 테이블에서 FK(외래키) 를 설정해주세요
-- * 서브 쿼리 사용 필요
ALTER TABLE catalogue ADD category_id NUMBER;
UPDATE catalogue
SET
    category_id = (
        SELECT
            product.category_id
        FROM
            product,
            category
        WHERE
            product.category_id = category.id
        ORDER BY
            product.id
    );
ALTER TABLE catalogue
    ADD CONSTRAINT catalogue_fk FOREIGN KEY ( category_id )
        REFERENCES category ( id );
-- * 7.
SELECT
    product.name                   AS 상품명,
    category.name                  AS 카테고리명,
    member.name                    AS 구매자명,
    payment_history.order_price    AS 구매금액,
    payment_history.order_count    AS 구매개수
FROM
    product,
    category,
    member,
    payment_history
WHERE
        product.id = payment_history.product_id
    AND category.id = product.category_id
    AND member.id = payment_history.member_id;
-- * 8.
SELECT
    nvl(product.origin, '원산지 없음')       AS 원산지,
    payment_history.order_count          AS 구매개수
FROM
    product,
    payment_history
WHERE
    product.id = payment_history.product_id;
-- * alpha problem 2.
SELECT
    product.name    AS 상품명,
    CASE
        WHEN length(description) >= 10 THEN
            concat(substr(description, 0, 10), '...')
        ELSE
            description
    END             AS 상품설명
FROM
    product;
-- * 9.
SELECT
    product.name                   AS 상품명,
    member.name                    AS 구매자명,
    payment_history.order_price    AS 구매금액,
    payment_history.order_count    AS 구매개수
FROM
    product,
    member,
    payment_history
WHERE
        product.id = payment_history.product_id
    AND member.id = payment_history.member_id
    AND payment_history.order_date >= to_date('20200101')
    AND payment_history.order_date < to_date('20200201')
    AND ROWNUM < 2
ORDER BY
    payment_history.order_price DESC;
-- * 10.
SELECT
    to_char(order_date, 'YYYYMMDD')      AS 일별매출
FROM
    payment_history
GROUP BY
    to_char(order_date, 'YYYYMMDD');
ORDER BY
    일별매출;