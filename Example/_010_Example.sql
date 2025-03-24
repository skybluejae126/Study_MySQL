# 1. film 테이블에 다음 표와 같이 데이터를 삽입
# title : The Admiral: Roaring Currents
# description : Admiral Yi Sun-sin faces a tough challenge when he is forced to 
# 				defend his nation with just 13 battleships 
# 				against 300 Japanese enemy ships in the 
# 				Battle of Myeongryang.
# release_year : 2014
# language_id : 1
# rental_duration : 5
# rental_rate : 4.99
# length : 128
# replacement_cost : 28.99
# rating : PG
# special_features : Deleted Scenes

INSERT INTO film(title, description,
release_year, language_id, 
rental_duration, rental_rate, length,
replacement_cost, rating, special_features)
VALUES ('The Admiral: Roaring Currents', 
'Admiral Yi Sun-sin faces a tough challenge when he is forced to 
defend his nation with just 13 battleships 
against 300 Japanese enemy ships in the 
Battle of Myeongryang.', 2024, 1, 5, 4.99, 128, 28.99, 'PG', 
'Deleted Scenes');


# 2. film 테이블에 다음 표와 같이 데이터를 수정
# title : The Admiral: Roaring Currents
# description : Admiral Yi Sun-sin faces a tough challenge when he is forced to 
# 				defend his nation with just 13 battleships 
# 				against 300 Japanese enemy ships in the 
# 				Battle of Myeongryang.
# release_year : 2014
# language_id : 1
# rental_duration : 4
# rental_rate : 5.99
# length : 128
# replacement_cost : 26.99
# rating : PG
# special_features : Trailers Deleted Scenes

UPDATE film
SET rental_duration = 4,
    rental_rate = 5.99,
    replacement_cost = 26.99,
    special_features = 'Trailers.Deleted
    Scenes'
WHERE title = 'The Admiral: Roaring
Currente';

# 3. film 테이블에서 title이 The Admiral: Roaring Currents인 데이터 삭제

DELETE FROM film
WHERE title = 'The Admiral: Roaring
Currents';
