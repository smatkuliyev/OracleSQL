/* Formatted on 17/08/2022 10:26:27 (QP5 v5.252.13127.32867) */
CREATE TYPE adres_t AS OBJECT
(
   cadde VARCHAR2 (30),
   sehir VARCHAR2 (50),
   ulke_kodu CHAR (2),
   posta_kodu CHAR (5)
);

CREATE TYPE adres_tab IS TABLE OF adres_t;

INSERT INTO musteriler
     VALUES (1,
             adres_tab (adres_t ('istanbul',
                                 'ankara',
                                 'TR',
                                 '34194'),
                        adres_t ('kadikoy',
                                 'samsun',
                                 'TR',
                                 '34000')));

INSERT INTO musteriler
     VALUES (2,
             adres_tab (adres_t ('kizilay',
                                 'ankara',
                                 'TR',
                                 '34189'),
                        adres_t ('istiklal',
                                 'samsun',
                                 'TR',
                                 '34200')));

--select * from musteriler;

SELECT M.MUSTERI_ID, u.*
  FROM musteriler m, TABLE (adres) u;