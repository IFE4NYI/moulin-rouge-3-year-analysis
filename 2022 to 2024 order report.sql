select * from [dbo].['orders-report01_03_2025 - 1_50p$']


create view new_order as
select increment_id, product_name, price, base_price, qty, 
base_row_total, payment_method, created_at, category
from [dbo].['orders-report01_03_2025 - 1_50p$'];

select * from new_order

select distinct increment_id, product_name, price, base_price, custom_price,
base_custom_price, qty, base_row_total, payment_method, created_at,
updated_at from new_order;


select * from new_order
order by product_name

select count(*)
from new_order
where product_name ='water'

alter table [dbo].['orders-report01_03_2025 - 1_50p$']
add category varchar(50)
select * from [dbo].['orders-report01_03_2025 - 1_50p$']

drop view new_order

update new_order
set category =
case 
when product_name like '%33%' then 'Beer'
when product_name like '%abacha%' then 'Natives'
when product_name like '%absolut%' then 'Vodka'
when product_name like '%amarula%' then 'Cream'
when product_name like '%american%' then 'Whisky'
when product_name like '%amstel%' then 'Soft Drink'
when product_name like '%Five alive%' then 'Soft Drink'
when product_name like '%milkshake%' then 'Milkshake'
when product_name like '%goat curry%' then 'Sauce'
when product_name like '%glenfiddich%' then 'Whisky'
when product_name like '%yellow tail%' then 'Sweet Red Wine'
when product_name like '%pepper soup%' then 'National Pepper Soup'
when product_name like '%remy martin%' then 'Cognac'
when product_name like '%lagos%' then 'Smothie'
when product_name like '%grilled%' then 'Grills and Roasts'
when product_name like '%spagetti%' then 'Noodles & Pasta'
when product_name like '%sauce%' then 'Meats/Proteins'
when product_name like '%declan red%' then 'Sweet Red Wine'
when product_name like '%chivas%' then 'Whisky'
when product_name like '%rosso nobile vanilla%' then 'White Wine'
when product_name like '%Garri%' then 'Swallow'
when product_name like '%sprite%' then 'Soft Drink'
when product_name like '%rosso nobile%' then 'Sweet Red Wine'
when product_name like '%heineken%' then 'Beer'
when product_name like '%catfish full%' then 'National Pepper Soup'
when product_name like '%moulin rouge special%' then 'Classic Cocktail'
when product_name like '%ocean%' then 'Classic Cocktail'
when product_name like '%hollandia%' then 'Juice/Yoghurt'
when product_name like '%downtown%' then 'Whisky'
when product_name like '%schewepp%' then 'Soft Drink'
when product_name like '%Shawarma%' then 'Grills & Roasts'
when product_name like '%burger%' then 'Burger'
when product_name like '%coffe%' then 'Breakfast la carte'
when product_name like '%pepprsoup%' then 'National Pepper Soup'
when product_name like '%chivita%' then 'Juice/Yoghurt'
when product_name like '%nederburg%' then 'Sour Red Wine'
when product_name like '%Gizzard%' then 'Meat/Proteins'
when product_name like '%monin%' then 'Classic Cocktail'
when product_name like '%yamarita%' then 'Finger Food'
when product_name like '%water%' then 'Soft Drink'
when product_name like '%chinese%' then 'Main Kitchen Rice'
when product_name like '%Johnnie%' then 'Whisky'
when product_name like '%hennessy%' then 'Cognac'
when product_name like '%fizzy%' then 'Classic Cocktail'
when product_name like '%fried yam%' then 'Breakfast la Carte'
when product_name like '%azul%' then 'Tequila'
when product_name like '%gizzdo%' then 'Meats/Proteins'
when product_name like '%matini%' then 'Sparkling Wine'
when product_name like '%hot dog%' then 'Meats/Proteins'
when product_name like '%bubble%' then 'Champagne'
when product_name like '%nsala%' then 'Soups'
when product_name like '%chicken%' then 'Meat/Proteins'
when product_name like '%orice%' then 'Main Kitchen'
when product_name like '%bullet%' then 'Energy Drink'
when product_name like '%asun%' then 'Meats/Proteins'
when product_name like '%smirnoff%' then 'Beer'
when product_name like '%stir fry%' then 'Noodles & Pasta'
when product_name like '%salad%' then 'Salad'
when product_name like '%nkwobi%' then 'Natives'
when product_name like '%wake%' then 'Energy'
when product_name like '%chips%' then 'Finger Food'
when product_name like '%porridge%' then 'Natives'
when product_name like '%veuve%' then 'Champagne'
when product_name like '%power horse%' then 'Energy'
when product_name like '%moet%' then 'Champagne'
when product_name like '%sensi%' then 'Champagne'
when product_name like '%carlo%' then 'Sweet Red Wine'
when product_name like '%Bellins%' then 'Classic Cocktail'
when product_name like '%Dragon%' then 'Sweet Red Wine'
when product_name like '%Pinnacolada%' then 'Classic Cocltail'
when product_name like '%Sex on the beach%' then 'Classic Cocktail'
when product_name like '%fanta%' then 'Soft Drink'
when product_name like '%maltina%' then 'Soft Drink'
when product_name like '%ciroc%' then 'Vodka'
when product_name like '%cosl%' then 'Salad'
when product_name like '%Desperado%' then 'Beer'
when product_name like '%platter%' then 'Platters'
when product_name like '%Cowtail%' then 'Native'
when product_name like '%bombay%' then 'Gin-Rum'
when product_name like '%martel%' then 'Whisky'
when product_name like '%Gulder%' then 'Beer'
when product_name like '%Wild Turkey%' then 'Whisky'
when product_name like '%snail%' then 'Meat/Proteins'
when product_name like '%Tequila Shot%' then 'Shot'
when product_name like '%Isi Ewu%' then 'Natives'
when product_name like '%Mai tai%' then 'Classic Cocktail'
when product_name like '%Gulder%' then 'Beer'
when product_name like '%Legend%' then 'Beer'
when product_name like '%Stout%' then 'Beer'
when product_name like '%Declan White%' then 'White Wine'
when product_name like '%Gin shot%' then 'Shot'
when product_name like '%Escudo Rojo%' then 'Sour Red Wine'
when product_name like '%Noodles%' then 'Noodles & Pasta'
when product_name like '%Balleys%' then 'Cream'
when product_name like '%Four Cousins White%' then 'White Wine'
when product_name like '%Explore White%' then 'White Wine'
when product_name like '%Andre Rose%' then 'Champagne'
when product_name like '%Explore Red%' then 'Sweet Red Wine'
when product_name like '%star%' then 'Beer'
when product_name like '%Four Cousins Red%' then 'Sweet Red'
when product_name like '%bellaire%' then 'Champagne'
when product_name like '%dusse%' then 'Cognac'
when product_name like '%poundo%' then 'Swallow'
when product_name like '%Goldberg%' then 'Beer'
when product_name like '%Flyingfish%' then 'Beer'
when product_name like '%%Campari' then 'Gin-Rum'
when product_name like '%William Lawson%' then 'Whisky'
when product_name like '%trophy%' then 'Beer'
when product_name like '%tiger%' then 'Beer'
when product_name like '%Budweiser%' then 'Beer'
when product_name like '%cocacola%' then 'Soft Drink'
when product_name like '%shisha%' then 'Shisha'
when product_name like '%red bull%' then 'Energy Drink'
when product_name like '%Jameson%' then 'Whisky'
when product_name like '%french fries%' then 'Finger Food'
when product_name like '%fayrouz%' then 'Soft Drink'
when product_name like '%castle li%' then 'Beer'
when product_name like '%chappman%' then 'Mocktail'
when product_name like '%take away%' then 'Breakfast la Carte'
when product_name like '%camino%' then 'Tequila'
when product_name like '%exotic%' then 'Juice/Yoghurt'
when product_name like '%cranberry%' then 'Juice/Yoghurt'
when product_name like '%olmeca%' then 'Tequila'
when product_name like '%monkey%' then 'Whisky'
when product_name like '%Spicy Fried Rice%' then 'Main Kitchen'
when product_name like '%Silk & Spice%' then 'Sour Red Wine'
when product_name like '%barcardi%' then 'Teuqila'
when product_name like '%Teqila Shot%' then 'Shot'
when product_name like '%The Islands iced tea%' then 'Classic Cocktail'
when product_name like '%Jack Daniels%' then 'whisky'
when product_name like '%life%' then 'Beer'
when product_name like '%egusi%' then 'Soups'
when product_name like '%monster%' then 'Energy Drink'
when product_name like '%Magarita%' then 'Classic Cocktail'
when product_name like '%ISL%' then 'CLassic Cocktail'
when product_name like '%Coconut Rice%' then 'Main Kitchen'
when product_name like '%turkey%' then 'Meats/Proteins'
when product_name like '%sky%' then 'Vodka'
when product_name like '%Original Jollof Rice%' then 'Main Kitchen'
when product_name like '%rice%' then 'Main Kitchen'
when product_name like '%barcadi%' then 'Tequila'
when product_name like '%Declan Sparkling%' then 'Sparking Wine'
when product_name like '%Peach Malooda%' then 'Classic Cocktail'
when product_name like '%Dajquiri%' then 'Classic Cocktail'
when product_name like '%Mojito%' then 'Classic Cocktail'
when product_name like '%Lastman standing%' then 'Classic Cocktail'
when product_name like '%Side Chickky%' then 'Classic Cocktail'
when product_name like '%The cosmopolitan%' then 'Classic Cocktail'
when product_name like '%Beach Sunrise%' then 'Classic Cocktail'
when product_name like '%Tequila Zombie%' then 'Classic Cocktail'
when product_name like '%gucci%' then 'Champagne'
when product_name like '%plantain%' then 'Finger Food'
when product_name like '%pure haven%' then 'None Achoholic Wine'
when product_name like '%Goat Meat%' then 'Meat/Proteins'
when product_name like '%Pasta%' then 'Noodles & pasta'
when product_name like '%Martini%' then 'Champagne'
when product_name like '%B & G%' then 'Sweet Red Wine'
when product_name like '%Croacker Fish%' then 'Grills & Roasts'
when product_name like '%beef%' then 'Meats/Proteins'
when product_name like '%goat meat%' then 'Meats/Proteins'
when product_name like '%titus%' then 'Grills & Roasts'
when product_name like '%perisecco%' then 'Champagne'
when product_name like '%john bann%' then 'Whisky'
when product_name like '%semo%' then 'Swallow'
when product_name like '%Lion Roar%' then 'Classic Cocktail'
when product_name like '%Mango Fixxzy%' then 'Classic Cocktail'
when product_name like '%Dead or Alive%' then 'Classic Cocktail'
when product_name like '%French kiss%' then 'Classic Cocktail'
when product_name like '%Old fashioned%' then 'Classic Cocktail'
when product_name like '%Mint Baloon%' then 'Classic Cocktail'
when product_name like '%Black Velvet%' then 'Classic Cocktail'
when product_name like '%The Beach%' then 'Classic Cocktail'
when product_name like '%Candy Sex%' then 'Classic Cocktail'
when product_name like '%face to face%' then 'Platter'
when product_name like '%oha%' then 'Soup'
when product_name like '%okro%' then 'Soup'
when product_name like '%Jagermeister%' then 'Gin-Rum'
when product_name like '%FRIED EGG%' then 'Breakfast la Carte'
when product_name like '%Crystal Champagne%' then 'Champagne'
when product_name like '%Divin Bardar VSOP 5 years%' then 'Whisky'
when product_name like '%Seafood Okra%' then 'Seafood'
when product_name like '%Prawns Sweet Corn Soup%' then 'Seafood'
when product_name like '%Prawn in Lemon%' then 'Seafood'
when product_name like '%Tequila prawns%' then 'Seafood'
when product_name like '%Spaghetti%' then 'Noodles & Pasta'
when product_name like '%spinash%' then 'Grills & Roasts'
when product_name like '%dom perign%' then 'Champagne'
when product_name like '%Vegetable Soup%' then 'Soups'
when product_name like '%Vegetable goatmeat%' then 'Natves'
when product_name like '%Croaker fish peppersoup%' then 'National Pepper Soups'
when product_name like '%Chizay Rose%' then 'White Wine'
when product_name like '%Goatmeat peppersoup%' then 'National Pepper Soups'
end;


select * from new_order
select distinct product_name from new_order

select * from new_order 
where product_name like '%graduator%';

select * from new_order
order by created_at

select distinct category from new_order

select top 1500 *
from new_order

select distinct base_custom_price from new_order
sp_help new_order


update new_order
set Created_at =
LEFT(created_at, LEN(created_at) - 8)

update new_order
set updated_at =
left(updated_at, len(updated_at) -8)


select * from new_order
order by increment_id;


alter table [dbo].['orders-report01_03_2025 - 1_50p$']
add year int;



sp_help new_order
alter table [dbo].['orders-report01_03_2025 - 1_50p$']
alter column created_at date;

alter table [dbo].['orders-report01_03_2025 - 1_50p$']

alter table [dbo].['orders-report01_03_2025 - 1_50p$']
alter column updated_at year;

UPDATE [dbo].['orders-report01_03_2025 - 1_50p$']
SET category = updated_as,
    updated_as = NULL;