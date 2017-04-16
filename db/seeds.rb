# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

east_ryde = Location.create(
	{
		name: 'East Ryde',
		location_lat: -33.8100,
		location_long: 151.1350,
		heat_zone: '5',
		cool_zone: '10', 
		average_temp: 22,
		ann_rainfall: 863
	})

dundurrabin = Location.create({
		name: 'Dundurrabin',
		location_lat: -30.1888,
		location_long: 152.5474,
		heat_zone: '4',
		cool_zone: '9b', 
		average_temp: 19.5,
		ann_rainfall: 900
	})
	

gardens = Garden.create([
	{
		name: 'East Ryde Veggie Patch',
		garden_type: 'vegie',
		structure: 'standing',
		started: Date.parse('20/09/2016'),
		sun: 'full',
		soil: 'sandy loam',
		drainage: 'good',
		location: east_ryde
	},
	{
		name: 'East Ryde Verandah',
		garden_type: 'ornamental',
		structure: 'standing',
		started: Date.parse('20/09/2016'),
		sun: 'part',
		soil: 'sandy',
		drainage: 'great',
		location: east_ryde
	},
	{
		name: 'East Ryde Front Garden',
		garden_type: 'ornamental',
		structure: 'in-ground',
		started: Date.parse('20/09/2016'),
		sun: 'part',
		soil: 'sandy',
		drainage: 'great',
		location: east_ryde
	},
	{   
		name: 'Dundurrabin house garden',
		garden_type: 'experimental',
		structure: 'in-ground',
		started: Date.parse('01/02/2016'),
		sun: 'part',
		soil: 'clay loam',
		drainage: 'poor',
		location: dundurrabin
	},
	])

test_journal = JournalEntry.create([
	{
		byline: "My first note here!",
		notes: "This is my first note about this garden.",
		temperature: 25,
		rainfall_24hr: 0,
		garden: gardens.first,
		impression: 'positive'
	}

])

blog_entry = Post.create([
	{
	title: 'Test Post Times',
	byline: 'For the first time, a developer rolls their own wordpress.',
	author: 'Sammyjo',
	body: "All I've got to do is pass as an ordinary human being. Simple. What could possibly go wrong? You know how I sometimes have really brilliant ideas? Did I mention we have comfy chairs? Heh-haa! Super squeaky bum time! I'm the Doctor. Well, they call me the Doctor. I don't know why. I call me the Doctor too. I still don't know why. The way I see it, every life is a pile of good things and bad things.…hey.…the good things don't always soften the bad things; but vice-versa the bad things don't necessarily spoil the good things and make them unimportant. It's art! A statement on modern society, 'Oh Ain't Modern Society Awful?'! I am the last of my species, and I know how that weighs on the heart so don't lie to me! It's a fez. I wear a fez now. Fezes are cool."
	}

])
