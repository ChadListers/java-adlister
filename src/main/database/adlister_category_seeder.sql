USE chadlister_db;

# After creating the schema, I was thinking about what categories we should add.
# This made me wonder, what type of ads should our adlister display? We could be very general like craigslist or .. we could focus on something more specific, for example: 'gaming consoles, games, and accessories'  the categories would then be like: n64, playstation 1, playstation 2, playstation 3, gamecube, wii, xbox 360, xbox series x/s, etc, etc.  Another idea theme could be 'computers' the categories could then be:  cpu, gpu, ram, motherboards, mouse, keyboards, etc.  Let me what you guys think!

USE chadlister_db;
INSERT INTO category (category) VALUES  ('appliances'),
                                        ('bikes'),
                                        ('boats'),
                                        ('cars+trucks'),
                                        ('tools');