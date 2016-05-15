# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
salt_1 = BCrypt::Engine.generate_salt
pass_1 = BCrypt::Engine.hash_secret('password_1', salt_1)

dann = User.create(name: 'Daniil', surname: 'Anichin', 
	email: 'anichindaniil@gmail.com', salt: salt_1, avatar: 'daniil.jpg',
	password_digest: pass_1, free: false)

igor = User.create(name: 'Igor', surname: 'TheBest', 
	email: 'optimum.flaminis@gmail.com', salt: salt_1, avatar: 'igor.jpg',
	password_digest: pass_1, free: false)

dan = User.create(name: 'Danil', surname: 'Sizov', 
	email: 'danilsizov3@gmail.com', salt: salt_1, avatar: 'danil.jpg',
	password_digest: pass_1, free: true)

iliya = User.create(name: 'Iliya', surname: 'Chernyavskiy', 
	email: 'iliachernyavsckiy@gmail.com', salt: salt_1, avatar: 'iliya.jpg',
	password_digest: pass_1, free: true)

aleck = User.create(name: 'Alecksandr', surname: 'Neskin', 
	email: 'untitled_1@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: false)

yarick = User.create(name: 'Yaroslav', surname: 'Agnuck', 
	email: 'untitled_2@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: false)

leen = Team.create(name: 'LeenTeam', speaker: dan, free: false, 
    places: 2) # jff, huh

dryv = Team.create(name: 'DRY-V', speaker: dan, free: false, 
	places: 3)

skynet = Team.create(name: 'SkyNet', speaker: aleck, free: true, 
	places: 4)

gimbl = Project.create(name: 'GIMBL', team: leen, logo: 'logo.png', 
	description: 'Find what you need to quickly profit', 
	plan: 'One\nTwo\nThree', money: 'milliom grivnas')

on_point = Project.create(name: 'OnPoint', team: dryv, logo: 'bg.jpg', 
	description: 'The new way to spend time', 
	plan: 'First\nSecond\nTrird', money: '1000 $')

pitcube = Project.create(name: 'PetCube', team: skynet, logo: 'a1.png', 
	description: 'Robots for animals - this is a reality.', 
	plan: 'Cat\nDog\nParrot', money: '10000 UA')

Event.create(photo: 'bg.jpg', description: 'Started local server for GIMBL', 
	link: 'localhost:3000', project: gimbl, created_at: '2016-05-14T16:36:12.060Z',
	heading: 'Server')
Event.create(photo: 'bg.jpg', description: 'Added pretty view for projects', 
	link: 'localhost:3000', project: gimbl, created_at: '2016-05-14T20:36:12.060Z',
	heading: 'Views')
Event.create(photo: 'bg.jpg', description: 'Started local server for OnPoint', 
	link: 'localhost:3000', project: on_point, created_at: '2016-03-28T16:36:12.060Z',
	heading: 'Server')
Event.create(photo: 'bg.jpg', description: 'Added pretty view for quests', 
	link: 'localhost:3000', project: on_point, created_at: '2016-04-28T20:36:12.060Z', 
	heading: 'Views')
Event.create(photo: 'bg.jpg', description: 'Started local server for OnPoint', 
	link: 'localhost:3000', project: pitcube, created_at: '2016-03-28T16:36:12.060Z',
	heading: 'Server')
Event.create(photo: 'bg.jpg', description: 'Added pretty view for quests', 
	link: 'localhost:3000', project: pitcube, created_at: '2016-04-28T20:36:12.060Z', 
	heading: 'Views')


UserTeam.create(user: iliya, team: leen)
UserTeam.create(user: dann, team: leen)
UserTeam.create(user: igor, team: leen)
UserTeam.create(user: dan, team: leen)

UserTeam.create(user: dann, team: dryv)
UserTeam.create(user: igor, team: dryv)
UserTeam.create(user: dan, team: dryv)

UserTeam.create(user: aleck, team: skynet)
UserTeam.create(user: yarick, team: skynet)

manager = Tag.create(tag: 'manager')
designer = Tag.create(tag: 'designer')
investor = Tag.create(tag: 'investor')
back = Tag.create(tag: 'back-end')
python = Tag.create(tag: 'Python-dev')
ruby = Tag.create(tag: 'Ruby-dev')
JS = Tag.create(tag: 'Full-stack-JS-dev')
AR = Tag.create(tag: 'AR')
VR = Tag.create(tag: 'VR')
quests = Tag.create(tag: 'Quests')
startups = Tag.create(tag: 'Startups')
saas = Tag.create(tag: 'SaaS')
aaas = Tag.create(tag: 'Acselerator aaS')
ceo = Tag.create(tag: 'CEO')

UserTag.create(user: dann, tag: python)
UserTag.create(user: dann, tag: ruby)

UserTag.create(user: igor, tag: JS)
UserTag.create(user: igor, tag: ruby)

UserTag.create(user: dan, tag: manager)
UserTag.create(user: dan, tag: designer)

UserTag.create(user: iliya, tag: back)
UserTag.create(user: iliya, tag: designer)

UserTag.create(user: aleck, tag: manager)
UserTag.create(user: aleck, tag: python)

UserTag.create(user: yarick, tag: ceo)
UserTag.create(user: yarick, tag: designer)

TeamTag.create(team: leen, tag: designer)
TeamTag.create(team: leen, tag: investor)

TeamTag.create(team: dryv, tag: designer)
TeamTag.create(team: dryv, tag: investor)

TeamTag.create(team: skynet, tag: designer)
TeamTag.create(team: skynet, tag: investor)

ProjectTag.create(project: gimbl, tag: startups)
ProjectTag.create(project: gimbl, tag: aaas)
ProjectTag.create(project: gimbl, tag: saas)

ProjectTag.create(project: on_point, tag: startups)
ProjectTag.create(project: on_point, tag: quests)
ProjectTag.create(project: on_point, tag: saas)

ProjectTag.create(project: pitcube, tag: startups)
ProjectTag.create(project: pitcube, tag: aaas)
ProjectTag.create(project: pitcube, tag: saas)
