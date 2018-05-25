DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id           INT PRIMARY KEY AUTO_INCREMENT,
  first_name   NVARCHAR(255)       NOT NULL,
  last_name    NVARCHAR(255)       NOT NULL,
  email        VARCHAR(255) UNIQUE NOT NULL,
  password     CHAR(40)            NOT NULL,
  phone_number VARCHAR(16)
);

CREATE TABLE products (
  id          INT PRIMARY KEY AUTO_INCREMENT,
  name        NVARCHAR(255) NOT NULL,
  description NVARCHAR(2047),
  price       DOUBLE        NOT NULL,
  user_id     INT           NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE images (
  id         INT PRIMARY KEY AUTO_INCREMENT,
  url        VARCHAR(255) NOT NULL,
  product_id INT          NOT NULL,
  FOREIGN KEY (product_id) REFERENCES products (id)
);


INSERT INTO users (first_name, last_name, email, password, phone_number)
VALUES ('Arsen', 'Grigoryan', 'arsen-grigoryan@gmail.com', 'd66b3bac5c819c46c63f60fad08716950c97f5e3', '+37477864570');
INSERT INTO users (first_name, last_name, email, password, phone_number)
VALUES ('Vahe', 'Mkrtchyan', 'vcmkrtchyan@gmail.com', '56e09dc4b6aa5992be08a3a0d9cb4cae1e42b86e', '+37495914536');

INSERT INTO products (name, description, price, user_id)
VALUES ('LG K20 V 16GB, 2GB RAM, 4x1.4 GHz, 5.3" 720p, 13MP, մատնահետք, Android 7.0', 'Այլ հեռախոսների համար դիտեք իմ մյուս հայտարարությունները։
Բոլոր նկարները հենց վաճառվող հեռախոսինն են։ Գտնվում է իդեալական վիճակում։ Ունի մատնահետքի սենսոր։ Աշխատում է Android 7.0 Nougat համակարգով։ Նկարում է գերազանց նկարներ և վիդեո։',
        53000, 1);

INSERT INTO products (name, description, price, user_id)
VALUES ('Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%','IPhone 6s space gray gold and rose gold Pak tup
16gb-155000 64gb-170000Aparik vajarq 0% kanxavjar ACBA ECONOM. VTBAraqum ANVJARNver patyan ev dimapakiErashxiq!ORIGINAL!', 170000, 2);

INSERT INTO products (name, description, price, user_id)
VALUES ('Rent a car Rolls Royce phantom avtovarcuyt prokat G class Rols roys Yashik Bentl', 'Այլ հեռախոսների համար դիտեք իմ մյուս հայտարարությունները։
Բոլոր նկարները հենց վաճառվող հեռախոսինն են։ Գտնվում է իդեալական վիճակում։ Ունի մատնահետքի սենսոր։ Աշխատում է Android 7.0 Nougat համակարգով։ Նկարում է գերազանց նկարներ և վիդեո։',
        180000, 1);

INSERT INTO products (name, description, price, user_id)
VALUES ('Tun. Norqum. Norq Marash arandznatun','Sepakan tun norqum evroveranorogvac shtap arandznatun arag vacharq'
  , 17000, 2);

INSERT INTO products (name, description, price, user_id)
VALUES ('Vertu Signature S Bentley lriv nor Vertu', 'Vertu signature bentley lriv nor pak pashka 2 qart aranc xntir 1
varkyan ogtagorcac chi... DUAL sim. Patent shat lav 1in 1 sax vertua gold sev vren italakan kashi pashken vertu Lezun
angleren ruseren ev ayln shat lav korpus erkatya. Mots ka mi qani hat bervaca rusastanic heraxos@ nkari mechinna.
CD card i tex uni. Shat lav heraxos',
        300000, 1);

INSERT INTO products (name, description, price, user_id)
VALUES ('Vertu Signature S Design Bentley','Vertu Signature S Design Stainless Steel в наличии в Краснодаре.
Новый. Англия. Доставка по России.
Г А Р А Н Т И Я, сервис и ремонт Верту в Краснодаре.'
  , 600000, 2);

INSERT INTO products (name, description, price, user_id)
VALUES ('Պուֆիկ Պարկաթոռ Բազկաթոռ Pufik Puffik Parkator Bazkatord','
Վիճակ ՆորPatvireq harmaravet yev geghecik pufikner pufik. Am -ic. Mecaqanak patverneri depqum klinen zeghjer. ufik. Am' ,
        1500, 1);

INSERT INTO products (name, description, price, user_id)
VALUES ('Շառավոների վերանորոգում մասնագիտացված','Վերացնում ենք մեքենաների բոլոր անսարգությունները։ Վերանորոգում ենք արտասահմանյան մեքենաների շառավոները, տյագաները, ստաբիլիզատորի ստոյկաները, բուշերը, տուլկիները, բոմբերը, գազայուղային ամորտիզատորները '
  , 1000, 2);





INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/331/25578331.webp', 1);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/332/25578332.webp', 1);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/334/25578334.webp', 1);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/749/24427749.webp', 2);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/556/25339556.webp', 3);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/557/25339557.webp', 3);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/464/24940464.webp', 4);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/465/24940465.webp', 4);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/275/25504275.webp', 5);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/277/25504277.webp', 5);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/148/25697148.webp', 6);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/149/25697149.webp', 6);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/243/25335243.webp', 7);


INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/879/24010879.webp', 8);