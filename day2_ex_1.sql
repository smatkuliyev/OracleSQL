/* Formatted on 17/08/2022 10:11:06 (QP5 v5.252.13127.32867) */
CREATE TABLE musteriler
(
   musteri_id   NUMBER (10),
   cadde        VARCHAR2 (30),
   sehir        VARCHAR2 (50),
   ulke_kodu    CHAR (2),
   posta_kodu   CHAR (5)
);

CREATE TABLE musteriler
(
   musteri_id   NUMBER (10),
   adres        adres_tab
)
NESTED TABLE adres
   STORE AS musteri_adres;

DESC musteriler;