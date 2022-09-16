names = [ 'Mr. Teacher', 'Antonio Bandras', 'Cynthia Erivo',
'Scarlett Johansson', 'Jonathan Pryce', 'Florence Pugh',
'yalitza Aparicio', 'Olivia Colman', 'Marina de Tavira', 
'Adam Driver', 'Sam Elliott', 'Lady Gaga', 'Richard E. Grant',
'Regina King', 'Rami Malek', 'Mary J. Blige', 'Timothee Chalamet',
'Allison Janny', 'Daniel Kaluuya', 'Lesley Manville',
'Laurie Mercalf', 'Margot Robbie', 'Sam Rockwell', 'Mahershala Ali',
'Andrew Garfield', 'Naomie Harris', 'Lesley Manville',
'Ruth Negga', 'Dev Patel', 'Bryan Cranston', 'Tom Hardy',
'Brie Larson', 'Jennifer Jason Leigh', 'Rachel McAdams',
'Charlotte Rampling', 'Mark Rylance', 'Alicia Vikander',
'Patricia Arquette', 'Steve Carell', 'Benedict Cumberbatch',
'Felicity Jones', 'Michael Keaton', 'Rosamund Pike', 'Eddie Redmayne',
'J. K. Simmons', 'Emma Stone', 'Barked Abdi', 'Chiwetel Ejiofor',
'Michael Fassbender', 'Sally Hawkins', 'Jared Leto',
'Matthew McConaughey', 'Lupita Nyong|', 'June Squibb',
'Bradley Cooper', 'Hugh Jackman', 'Emmanuelle Riva',
'Quvenzhane Wallis', 'Berenice Bejo', 'Demian Bichir',
'Jessica Chastain', 'Jean Dujardin', 'Jonah Hill', 'Rooney Mara',
'Melissa MCCarthy', 'Gary Oldman', 'Octravia Spencer', 
'Christian Bale', 'Jean Dujardin', 'Jonah Hill', 'Rooney Mara',
'Jennifer Lawrence', 'Mark Ruffalo', 'Hailee Steinfeld', 
'Jacki Wwaver', 'Sandra Bullock', 'Vera Farmiga', 'Colin Erirth',
'Maggie Gyllenhaal', 'Anna Kendric', 'Mo|Nique', 'Carey Mulligan',
'Christopher Plummer', 'Jeremy Renner', 'Gabourey Sidibe',
'Stanley Tucci', 'Christoph Waltz', 'Josh Brolin', 'Viola Davis',
'Anne Hathaway', 'Taraji P , Henson', 'Richard Jenkins',
'Frank Langella', 'Melissa Leo', 'Mickey Rourke', 'Michael Shannon',
'Casey Affleck', 'Marion Cotilard', 'Ruby Dee', 'Hal Holbrook',
'Viggo Mortensen', 'Ellen Page', 'Saoires Ronan', 'Tilda Swinton']


names.each_with_index {|name, i|
  uid = sprintf "user%03d", i
  User.create(username: uid, fullname: name,
        password: '123456',
        role: ((i == 0) ? 'teacher' : 'student'))
}






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
