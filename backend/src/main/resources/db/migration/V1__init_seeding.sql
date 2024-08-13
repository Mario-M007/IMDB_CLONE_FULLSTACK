-- Seeding movie table
INSERT INTO `imdb_clone`.`movie`
(`id`,
`plot`,
`thumbnail_url`,
`title`,
`video_url`)
VALUES
(1,
"A listless Wade Wilson toils away in civilian life with his days as the morally flexible mercenary, Deadpool, behind him. But when his homeworld faces an existential threat, Wade must reluctantly suit-up again with an even more reluctant Wolverine.",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg",
"Deadpool & Wolverine",
"https://www.youtube.com/embed/73_1biulkYk?si=Gh3DrgE9dl1nDIGl");

INSERT INTO `imdb_clone`.`movie`
(`id`,
`plot`,
`thumbnail_url`,
`title`,
`video_url`)
VALUES
(2,
"Rory and Cobby are unlikely partners thrown together for a heist. But when it goes awry, they team up to outrun police, backward bureaucrats, and a vengeful crime boss.",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/pIz9csYn1yjrzQi0BuBZNJrTMi0.jpg",
"The Instigators",
"https://www.youtube.com/embed/X5oqpxi3U7M?si=A3v3sTk0S4Hg_255");

INSERT INTO `imdb_clone`.`movie`
(`id`,
`plot`,
`thumbnail_url`,
`title`,
`video_url`)
VALUES
(3,
"Gru and Lucy and their girls—Margo, Edith and Agnes—welcome a new member to the Gru family, Gru Jr., who is intent on tormenting his dad. Gru also faces a new nemesis in Maxime Le Mal and his femme fatale girlfriend Valentina, forcing the family to go on the run.",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/wWba3TaojhK7NdycRhoQpsG0FaH.jpg",
"Despicable Me 4",
"https://www.youtube.com/embed/qQlr9-rF32A?si=EmmpazILXNSNnSh8");

INSERT INTO `imdb_clone`.`movie`
(`id`,
`plot`,
`thumbnail_url`,
`title`,
`video_url`)
VALUES
(4,
"Returning to her home planet, an infamous outlaw forms an unexpected alliance with a team of unlikely heroes. Together, they battle alien monsters and dangerous bandits to find a missing girl who holds the key to unimaginable power.",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/lrlSOlTiIlTQqVqJGW4HaWjJaBJ.jpg",
"Borderlands",
"https://www.youtube.com/embed/lU_NKNZljoQ?si=eQcaQIuIXHGQlWwb");

INSERT INTO `imdb_clone`.`movie`
(`id`,
`plot`,
`thumbnail_url`,
`title`,
`video_url`)
VALUES
(5,
"After their late former Captain is framed, Lowrey and Burnett try to clear his name, only to end up on the run themselves.",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/oGythE98MYleE6mZlGs5oBGkux1.jpg",
"Bad Boys: Ride or Die",
"https://www.youtube.com/embed/hRFY_Fesa9Q?si=lgj3bQ1YumPyoxrG");

INSERT INTO `imdb_clone`.`movie`
(`id`,
`plot`,
`thumbnail_url`,
`title`,
`video_url`)
VALUES
(6,
"Lily overcomes a traumatic childhood to embark on a new life. A chance meeting with neurosurgeon Ryle sparks a connection but Lily begins to see sides of him that remind her of her parents' relationship.",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/AjV6jFJ2YFIluYo4GQf13AA1tqu.jpg",
"It Ends with Us",
"https://www.youtube.com/embed/r-GQvSc5ZGw?si=2KVeiiPe_0XUWS6_");

INSERT INTO `imdb_clone`.`movie`
(`id`,
`plot`,
`thumbnail_url`,
`title`,
`video_url`)
VALUES
(7,
"When the ruthless forces of the Motherworld threaten a quiet farming village on a distant moon, a mysterious outsider becomes its best hope for survival.",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/ui4DrH1cKk2vkHshcUcGt2lKxCm.jpg",
"Rebel Moon - Part One: A Child of Fire",
"https://www.youtube.com/embed/fhr3MzT6exg?si=K_4oXn-b2Rnr7QZh");

INSERT INTO `imdb_clone`.`movie`
(`id`,
`plot`,
`thumbnail_url`,
`title`,
`video_url`)
VALUES
(8,
"As the world fell, young Furiosa is snatched from the Green Place of Many Mothers and falls into the hands of a great Biker Horde led by the Warlord Dementus. Sweeping through the Wasteland they come across the Citadel presided over by The Immortan Joe. While the two Tyrants war for dominance, Furiosa must survive many trials as she puts together the means to find her way home.",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/iADOJ8Zymht2JPMoy3R7xceZprc.jpg",
"Furiosa: A Mad Max Saga",
"https://www.youtube.com/embed/XJMuhwVlca4?si=dsF9m9rp3ieGoyl4");

INSERT INTO `imdb_clone`.`movie`
(`id`,
`plot`,
`thumbnail_url`,
`title`,
`video_url`)
VALUES
(9,
"Teenager Riley's mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg",
"Inside Out 2",
"https://www.youtube.com/embed/LEjhY15eCx0?si=ZBiaCyIj_5Bod7qo");

INSERT INTO `imdb_clone`.`movie`
(`id`,
`plot`,
`thumbnail_url`,
`title`,
`video_url`)
VALUES
(10,
"As New York City is invaded by alien creatures who hunt by sound, a woman named Sam fights to survive with her cat.",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/yrpPYKijwdMHyTGIOd1iK1h0Xno.jpg",
"A Quiet Place: Day One",
"https://www.youtube.com/embed/YPY7J-flzE8?si=6ygO0RaK1jGSEjGC");

-- Seeding the cast table
INSERT INTO `imdb_clone`.`cast`
(`biography`,
`first_name`,
`last_name`,
`middle_name`,
`thumbnail_url`,
`movie_id`)
VALUES
("Ryan Rodney Reynolds (born October 23, 1976) is a Canadian actor and film producer. He began his career starring in the Canadian teen soap opera Hillside (1991–1993), and had minor roles before landing the lead role on the sitcom Two Guys and a Girl between 1998 and 2001. Reynolds then starred in a range of films, including comedies such as National Lampoon's Van Wilder (2002), Waiting... (2005), and The Proposal (2009). He also performed in dramatic roles in Buried (2010), Woman in Gold (2015), and Life (2017), starred in action films such as Blade: Trinity (2004), Green Lantern (2011), 6 Underground (2019) and Free Guy (2021), and provided voice acting in the animated features The Croods (2013), Turbo (2013), Pokémon: Detective Pikachu (2019) and The Croods: A New Age (2020).",
"Ryan",
"Reynolds",
"Rodney",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/2Orm6l3z3zukF1q0AgIOUqvwLeB.jpg",
1);

INSERT INTO `imdb_clone`.`cast`
(`biography`,
`first_name`,
`last_name`,
`middle_name`,
`thumbnail_url`,
`movie_id`)
VALUES
("Hugh Michael Jackman (born 12 October 1968) is an Australian actor. Beginning in theatre and television, he landed his breakthrough role as Wolverine / Logan in the X-Men film series (2000–2017), a tenure that earned him the Guinness World Record for longest career as a live-action Marvel superhero. Jackman has received a Grammy Award, a Primetime Emmy Award, and two Tony Awards. During his career, Jackman has headlined films in various genres, including the romantic comedy Kate & Leopold (2001), the action-horror Van Helsing (2004), the drama The Prestige (2006), the period romance Australia (2008), the epic musical Les Misérables (2012), the thriller Prisoners (2013), the musical The Greatest Showman (2017), the political drama The Front Runner (2018), and the crime thriller Bad Education (2019). For his role as Jean Valjean in Les Misérables, Jackman was nominated for the Academy Award for Best Actor and won the Golden Globe Award for Best Actor – Motion Picture Musical or Comedy, and for The Greatest Showman, he received a Grammy Award for Best Soundtrack Album. He also provided voice roles in the animated films Flushed Away (2006), Rise of the Guardians (2012), and Missing Link (2019). Jackman is also known for his early theatre roles in Oklahoma! in 1998 and Carousel in 2002. On Broadway, Jackman won the 2004 Tony Award for Best Actor in a Musical for his role in The Boy from Oz. In 2021 he returned to the theatre as Harold Hill in the Broadway revival of The Music Man. A four-time host of the Tony Awards, he won an Emmy Award for hosting the 2005 ceremony. He also hosted the 81st Academy Awards in 2009. Jackman was appointed a Companion of the Order of Australia in the 2019 Queen's Birthday Honours for services to performing arts and to the global community.",
"Hugh",
"Jackman",
"Michael",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/oX6CpXmnXCHLyqsa4NEed1DZAKx.jpg",
1);

INSERT INTO `imdb_clone`.`cast`
(`biography`,
`first_name`,
`last_name`,
`middle_name`,
`thumbnail_url`,
`movie_id`)
VALUES
("Emma-Louise Corrin (born 13 December 1995) is an English actor. They portrayed Diana, Princess of Wales in the fourth season of the Netflix historical drama The Crown (2020), for which they won a Golden Globe, a Critics' Choice Award, and were nominated for a Primetime Emmy Award.",
"Emma",
"Corin",
"Louise",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/w4gFlPOqdSMRSH1dsuqQMKCGBWg.jpg",
1);

INSERT INTO `imdb_clone`.`cast`
(`biography`,
`first_name`,
`last_name`,
`middle_name`,
`thumbnail_url`,
`movie_id`)
VALUES
("Matthew Paige Damon (born October 8, 1970) is an American actor, film producer, and screenwriter. He is the recipient of various accolades, including an Academy Award from five nominations, and two Golden Globe Awards. He also received three BAFTA Award nominations, seven Primetime Emmy Award nominations, and six Screen Actors Guild Awards.",
"Matt",
"Damon",
"Paige",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/ehwS5WvU5yL5vKcUEqbzGK8Fh8B.jpg",
2);

INSERT INTO `imdb_clone`.`cast`
(`biography`,
`first_name`,
`last_name`,
`middle_name`,
`thumbnail_url`,
`movie_id`)
VALUES
("Casey Affleck is a renowned American actor, filmmaker, and producer recognized for his captivating performances and commitment to independent cinema.",
"Casey",
"Affleck",
NULL,
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/hcggAadv5SwdhoAb4yYMoAFYdWK.jpg",
2);

INSERT INTO `imdb_clone`.`cast`
(`biography`,
`first_name`,
`last_name`,
`middle_name`,
`thumbnail_url`,
`movie_id`)
VALUES
("Hong Chau (born June 25, 1979) is a Vietnamese-American actress who gained recognition for her supporting role in the 2017 film Downsizing, in which she played the character Ngoc Lan Tran. For her performance, she was nominated for several supporting-actress awards. Variety wrote in 2022 that Chau had been prolific in recent years and that she had an acclaimed turn in the TV series Watchmen (2019) and Homecoming (2018–2020).",
"Hong",
"Chau",
NULL,
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/3LIsdizzTUk9Doi0Mwwc1ROfSIy.jpg",
2);

INSERT INTO `imdb_clone`.`cast`
(`biography`,
`first_name`,
`last_name`,
`middle_name`,
`thumbnail_url`,
`movie_id`)
VALUES
("Steven John Carell (born August 16, 1962) is an American actor and comedian. He played Michael Scott in The Office (2005–2011; 2013), NBC’s adaptation of the British series created by Stephen Merchant and Ricky Gervais, where Carell also worked as an occasional producer, writer and director. Carell has received numerous accolades for his performances in both film and television, including the Golden Globe Award for Best Actor – Television Series Musical or Comedy for his work on The Office. He was recognized as America's Funniest Man by Life magazine.",
"Steve",
"Carell",
"John",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/dA6n0qpnlMFBlTr8SBULsZbWkvn.jpg",
3);

INSERT INTO `imdb_clone`.`cast`
(`biography`,
`first_name`,
`last_name`,
`middle_name`,
`thumbnail_url`,
`movie_id`)
VALUES
("A graduate of the University of Southern California, Will Ferrell became interested in performing while a student at University High School in Irvine, California, where he made his school's daily morning announcements over the public address system in disguised voices. He started as a member of the Los Angeles comedy/improvisation group The Groundlings, where fellow cast members Ana Gasteyer, Maya Rudolph and former Saturday Night Live repertory players such as Laraine Newman, Jon Lovitz and Phil Hartman began their careers. It was there he met Chris Kattan and the two became good friends and both went on to Saturday Night Live later. He has also appeared on several television programs, including Strangers with Candy, Grace Under Fire and Living Single during his time at The Groundlings. Will also lent his voice to the armless and legless dad of cartoon family The Oblongs.",
"Will",
"Ferrell",
NULL,
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/xYPM1OOLXZguj4FsgmOzTSUXaXd.jpg",
3);

INSERT INTO `imdb_clone`.`cast`
(`biography`,
`first_name`,
`last_name`,
`middle_name`,
`thumbnail_url`,
`movie_id`)
VALUES
("Catherine Elise Blanchett (born May 14, 1969) is an Australian actor and producer. Regarded as one of the best actresses of her generation, she is known for her versatile work across independent films, blockbusters, and the stage. Blanchett is the recipient of numerous accolades, including two Academy Awards, three British Academy Film Awards, three Screen Actors Guild Awards, and three Golden Globe Awards.",
"Cate",
"Blanchett",
"Elise",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/9V83uemR0ra9Wd9iRXTMlfAQlTB.jpg",
4);

INSERT INTO `imdb_clone`.`cast`
(`biography`,
`first_name`,
`last_name`,
`middle_name`,
`thumbnail_url`,
`movie_id`)
VALUES
("Kevin Darnell Hart (born July 6, 1979) is an American stand-up comedian, actor, and producer. Born and raised in Philadelphia, Pennsylvania, Hart began his career by winning several amateur comedy competitions at clubs throughout New England, culminating in his first real break in 2001 when he was cast by Judd Apatow for a recurring role on the TV series Undeclared. The series lasted only one season, but he soon landed other roles in films such as Paper Soldiers (2002), Scary Movie 3 (2003), Soul Plane (2004), In the Mix (2005), and Little Fockers (2010).",
"Kevin",
"Hart",
"Darnell",
"https://image.tmdb.org/t/p/w300_and_h450_bestv2/tpYZZchhK0cEKwvPSkS1RtTGPf6.jpg",
4);