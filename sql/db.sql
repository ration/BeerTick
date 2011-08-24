-- SQLite version of the db
CREATE TABLE Brewery (
   id INTEGER PRIMARY KEY,
   name VARCHAR(2048)
);

CREATE TABLE Beer (
   id INTEGER PRIMARY KEY,
   name VARCHAR(2048),
   brewer INTEGER,
   ratebeerId INTEGER, 
   FOREIGN KEY(brewer) REFERENCES Brewery(id)
);

CREATE TABLE Review (
  id INTEGER PRIMARY KEY,
  beer INTEGER NOT NULL,
  aroma INTEGER,
  taste INTEGER,
  palate INTEGER,
  overall INTEGER,
  review TEXT,
  FOREIGN KEY(beer) REFERENCES Beer(id)
);
--  CHECK(aroma < 6) These necessary?

-- Aroma

-- Malt
-- caramel, bread, hay, cereal, chocolate, coffee, nuts, toast, roasty 

-- Hops
-- resin, floral, grass, spruce, citrus, herbs 

-- Yeast/Bacteria
-- dough, barnyard, cheese, basement aromas, leather, earthy, leaves 

-- Other
-- alcohol, banana, bubblegum, butterscotch, clove, cooked vegetables, cough drop, ginger, licorice, raisin, rotten eggs, soy sauce, skunky, smoke, vanilla, woody


- 

-- Appearance is how a beer appeals to the eye and includes notes on color, the liquid's visual texture and the head -- the beer's foam top. Click on a term below to add it to your tasting notes.

-- Color
-- pale, golden, amber orange red brown black 

-- Liquid
-- clear, hazy, cloudy, sparkling 

-- Head
-- rocky, frothy, minimal, white, tan, brown




-- Taste is what can be appreciated with the tongue. It's easy to mistake aromas for tastes -- the tongue only senses sweet, bitter, sour, salt and umami. Click on a term below to add it to your tasting notes.

-- Sweet
-- light, medium, heavy 

-- Bitter
-- light, medium, heavy 

-- Sour
-- light, medium, heavy 

-- Other
-- salty, umami


-- The palate includes touch sensations on the lips, tongue, gums and roof of the mouth. Click on a term below to add it to your tasting notes.

-- Body
-- light, medium, full 

-- Texture
-- thin, oily, creamy, sticky, slick, thick 

-- Carbonation
-- fizzy, lively, average, soft, flat 

-- Finish
-- astringent, bitter, abrupt, long


-- Your overall score quantifies how much you enjoyed all the beer's elements combined as a sensory experience. Was this a standout beer? Were your expectations met? Did the beer go well with your food? Would you recommend this to a friend? This isn't about how well the beer conformed to its style definition -- it's about a measurement of your own appreciation.