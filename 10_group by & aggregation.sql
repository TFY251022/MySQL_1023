use my_database;

create table artists(
id int primary key auto_increment,
artist_name varchar(50) not null unique
);

create table songs(
id int not null primary key auto_increment,
song_name varchar(50) not null,
artist_id int,
foreign key(artist_id) references artists(id) on delete cascade
);

insert into artists(artist_name)
values('Bruno Mars'), ('Jay Sean'), ('Usher'), ('Sean Kingston');

insert into songs(song_name, artist_id)
values('Just the way you are', 1), ('Treasure', 1), ('Down', 2), ('Yeah', 3), ('DJ got us fall in love again', 3), ('Beautiful girls', 4);

select * from artists;
select * from songs;

-- 各歌手有多少首歌
# join
select artist_name, count(artist_id) as 'number of songs'
from artists
join songs
on artists.id = artist_id
# group by
group by artist_id;

-- 找兩首歌以上的歌手
select artist_name, count(artist_id) as 'number of songs'
from artists
join songs
on artists.id = artist_id
group by artist_id
having count(artist_id) > 1;