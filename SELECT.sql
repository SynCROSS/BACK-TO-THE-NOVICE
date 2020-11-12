-- * PROBLEM 1.
SELECT
    *
FROM
    member
WHERE
    email LIKE '%@gmail.com'; -- * '*'==='%'
-- * PROBLEM 2.
SELECT
    *
FROM
    member
WHERE
    email LIKE '%@gmail.com'
    AND length(email) >= 12;
-- * PROBLEM 3.
SELECT
    *
FROM
    member
WHERE
    ( email LIKE '%@gmail.com'
      AND length(email) >= 12 )
    OR ( email LIKE '%@naver.com'
         AND length(email) >= 10 );

SELECT
    COUNT(1)
FROM
    member; -- * MEMBER COUNT
-- * PROBLEM 4.
SELECT
    *
FROM
    payment_history
WHERE
    ( order_price >= 1000000
      AND order_count <= 10 )
    OR ( order_price <= 100000
         AND order_count >= 10 );
-- * PROBLEM 5.
SELECT
    *
FROM
    payment_history
WHERE ( ( order_price >= 1000000
          AND order_count <= 10 )
        OR ( order_price <= 100000
             AND order_count >= 10 )
        AND address IN ( '서울', '서울시', '서울특별시' );
-- * mini PROBLEM 1.
SELECT
    COUNT(1) AS table_row_count
FROM
    member;

SELECT
    *
FROM
    payment_history
WHERE
    ( ( order_price >= 1000000
        AND order_count <= 10 )
      OR ( order_price <= 100000
           AND order_count >= 10 ) )
    AND address NOT IN ( '서울', '서울시', '서울특별시' );
-- * PROBLEM 6.
SELECT
    *
FROM
    payment_history
WHERE
    order_price BETWEEN 1000000 AND 10000000;
-- * PROBLEM 7.
SELECT
    *
FROM
    product
WHERE
    origin IS NULL;
-- * PROBLEM 8.
SELECT
    *
FROM
    member
WHERE
    ( email LIKE '%@gmail.com'
      AND address LIKE '%서울시%'
          AND length(password) >= 10 )
    OR ( email LIKE '%@naver.com'
         AND phone LIKE '%1%' )
       AND age <= 100;
-- * PROBLEM 9.
SELECT DISTINCT
    address
FROM
    member;

SELECT DISTINCT
    address
FROM
    payment_history;

SELECT
    *
FROM
    member
ORDER BY
    id DESC;
-- * mini PROBLEM 2.
SELECT
    *
FROM
    product
WHERE
    stock >= 10
ORDER BY
    stock desc;SELECT
    product.id AS product_id,
    category.id AS category_id,
    product.name AS 상품명,
    category.name AS 카테고리명
FROM
    category,
    product
WHERE
    category.id = product.category_id
-- * PROBLEM 10.
SELECT
    member.id                      AS 구매자명,
    payment_history.order_price    AS 구매금액,
    payment_history.order_date     AS 구매일자
FROM
    member,
    payment_history
WHERE
AND member.id =
payment_history.member_id;
-- * PROBLEM 11.
SELECT
    member.id                      AS 구매자명,
    payment_history.order_price    AS 구매금액,
    payment_history.order_date     AS 구매일자
FROM
    member,
    payment_history
WHERE
        payment_history.order_price >= 1000000
    AND member.id = payment_history.member_id
ORDER BY
    payment_history.order_price DESC;
-- * PROBLEM 12.
SELECT
    payment_history.order_price    AS 구매금액,
    payment_history.order_count    AS 구매개수,
    category.name                  AS 카테고리명,
    product.name                   AS 상품명
FROM
    payment_history,
    product,
    category
WHERE
        category.id = product.category_id
    AND product.id = payment_history.product_id;
-- * PROBLEM 13.
SELECT
    payment_history.order_price    AS 구매금액,
    payment_history.order_count    AS 구매개수,
    category.name                  AS 카테고리명,
    product.name                   AS 상품명,
    member.name                    AS 구매자
FROM
    payment_history,
    product,
    category,
    member
WHERE
        category.id = product.category_id
    AND product.id = payment_history.product_id
    AND member.id = payment_history.member_id;