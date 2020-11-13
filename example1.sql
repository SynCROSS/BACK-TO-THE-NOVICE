SELECT
    *
FROM
    payment_history
WHERE
        order_date >= to_date('20200101')
    AND order_date < to_date('20200201');
-- * Problem 1.
SELECT
    SUM(order_price) AS 총매출액
FROM
    payment_history
WHERE
        order_date >= to_date('20200101')
    AND order_date < to_date(' 20200201 ');

SELECT
    to_char(order_date, 'YYYYMM')      AS 월별매출,
    SUM(order_price)                   AS 총매출액
FROM
    payment_history
GROUP BY
    to_char(order_date, 'YYYYMM');
-- * Problem 2.
SELECT
    to_char(order_date, 'YYYYMMDD')      AS 일별매출,
    SUM(order_price)                     AS 총매출액
FROM
    payment_history
WHERE
        order_date >= to_date('20200101')
    AND order_date < to_date('20200101')
GROUP BY
    to_char(order_date, 'YYYYMMDD');
ORDER BY
    일별매출;
-- * Problem 3.
SELECT
    to_char(order_date, 'YYYYMM')      AS 월별매출,
    COUNT(order_price)                 AS 판매대수,
    SUM(order_price)                   AS 총매출액
FROM
    payment_history
WHERE
        order_date >= to_date('20200101')
    AND order_date < to_date('20200401')
GROUP BY
    to_char(order_date, 'YYYYMM');
-- * Problem 4.
SELECT
    to_char(order_date, 'YYYYMM')      AS 월별매출,
    MAX(order_price)                   AS 단일최대매출액
FROM
    payment_history
GROUP BY
    to_char(order_date, 'YYYYMM');
-- * Problem 5.
SELECT
    product.name                           AS 상품명,
    SUM(order_count)                       AS 최다판매량,
    MAX(payment_history.order_price)       AS 최고매출액
FROM
    payment_history,
    product
WHERE
    product.id = payment_history.product_id
GROUP BY
    product_id,
    product.name
ORDER BY
    최다판매량 DESC,
    최고매출액 DESC;
-- * Problem 6.
SELECT
    category.name,
    SUM(price) AS 총매출액
FROM
    category,
    product
WHERE
    product.category_id = category.id
GROUP BY
    category.id,
    category.name
ORDER BY
    총매출액 DESC;
-- * Problem 7.
SELECT
    ( order_price / order_count ) AS 평균단가,
    payment_history.*
FROM
    payment_history
WHERE
    ( order_price / order_count ) <= 100000;
-- * Problem 8.
SELECT
    address,
    sum(order_price)
FROM
    payment_history
GROUP BY
    address;