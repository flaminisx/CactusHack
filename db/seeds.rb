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
	email: 'sasha_n@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: false)

yarick =  User.create(name: 'Yaroslav', surname: 'Agnuck', 
	email: 'yarick_a@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: true)

lyab = User.create(name: 'Alecksandr', surname: 'Lyabuh', 
	email: 'sasha_l@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: false)

avram = User.create(name: 'Liza', surname: 'Avramenko', 
	email: 'liza_a@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: true)

ivan = User.create(name: 'Ivan', surname: 'Ablamsckiy', 
	email: 'ivan_a@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: false)

petr = User.create(name: 'Petr', surname: 'Bondarevskiy', 
	email: 'petr_b@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: false)

anton = User.create(name: 'Anton', surname: 'Stepanov', 
	email: 'anton_s@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: true)

dima = User.create(name: 'Dmitriy', surname: 'Samoilenlo', 
	email: 'dima_s@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: false)

vlad = User.create(name: 'Vladislav', surname: 'Teslenko', 
	email: 'vlad_t@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: false)

tolik = User.create(name: 'Anatoliy', surname: 'Donchenko', 
	email: 'tolya_d@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1, free: false)

leen = Team.create(name: 'LeenTeam', speaker: dan, free: false, 
    places: 2) # jff, huh

dryv = Team.create(name: 'DRY-V', speaker: dan, free: false, 
	places: 3)

skynet = Team.create(name: 'SkyNet', speaker: aleck, free: true, 
	places: 4)

moonton = Team.create(name: 'MoonTon', speaker: avram, free: true, 
	places: 3)

coppertino = Team.create(name: 'Coppertino', speaker: petr, free: true, 
	places: 5)

quad = Team.create(name: 'Quad-Squad', speaker: anton, free: true, 
	places: 5)

laser = Team.create(name: 'LED-developers', speaker: vlad, free: true, 
	places: 2)

gimbl = Project.create(name: 'GIMBL', team: leen, logo: 'logo.png', 
	description: 'Find what you need to quickly profit', 
	plan: 'One\nTwo\nThree', money: 'milliom grivnas')

on_point = Project.create(name: 'OnPoint', team: dryv, logo: 'bg.jpg', 
	description: 'The new way to spend time', 
	plan: 'First\nSecond\nTrird', money: '1000 $')

pitcube = Project.create(name: 'PetCube', team: skynet, logo: 'a1.png', 
	description: 'Robots for animals - this is a reality.', 
	plan: 'Cat\nDog\nParrot', money: '10000 UA')

check_io = Project.create(name: 'Check-IO', team: moonton, logo: 'a1.png', 
	description: 'Online Game for developers', 
	plan: 'Ukraine\nEurope\nWorld', money: '750000 UA')

vox = Project.create(name: 'VOX', team: coppertino, logo: 'a1.png', 
	description: 'The besr iTunes"s analog', 
	plan: 'Ukraine\niPad\niMac', money: '7000 $')

talk = Project.create(name: 'Enable-Talk', team: quad, logo: 'a1.png', 
	description: 'The besr iTunes"s analog', 
	plan: 'Ukraine\niPad\niMac', money: '13000 $')

iBlazer = Project.create(name: 'Enable-Talk', team: quad, logo: 'a1.png', 
	description: 'The besr iTunes"s analog', 
	plan: 'Ukraine\niPad\niMac', money: '60000 $')

Event.create(photo: 'bg.jpg', description: 'Started local server for GIMBL', 
	link: '/', project: gimbl, created_at: '2016-05-14T16:36:12.060Z',
	heading: 'Server')
Event.create(photo: 'bg.jpg', description: 'Added pretty view for projects', 
	link: '/', project: gimbl, created_at: '2016-05-14T20:36:12.060Z',
	heading: 'Views')

Event.create(photo: 'bg.jpg', description: 'Started local server for OnPoint', 
	link: '/', project: on_point, created_at: '2016-03-28T16:36:12.060Z',
	heading: 'Server')
Event.create(photo: 'bg.jpg', description: 'Added pretty view for quests', 
	link: '/', project: on_point, created_at: '2016-04-28T20:36:12.060Z', 
	heading: 'Views')

Event.create(photo: 'bg.jpg', description: 'Started local server for Pitcube', 
	link: '/', project: pitcube, created_at: '2016-03-28T16:36:12.060Z',
	heading: 'Server')
Event.create(photo: 'bg.jpg', description: 'Added pretty view for quests', 
	link: '/', project: pitcube, created_at: '2016-04-28T20:36:12.060Z', 
	heading: 'Views')

Event.create(photo: 'bg.jpg', description: 'Started local server for Check-IO', 
	link: '/', project: check_io, created_at: '2016-03-28T16:36:12.060Z',
	heading: 'Server')
Event.create(photo: 'bg.jpg', description: 'Added pretty view for quests', 
	link: '/', project: check_io, created_at: '2016-04-28T20:36:12.060Z', 
	heading: 'Views')

Event.create(photo: 'bg.jpg', description: 'Started local server for Coppertino', 
	link: '/', project: vox, created_at: '2016-03-28T16:36:12.060Z',
	heading: 'Server')
Event.create(photo: 'bg.jpg', description: 'Added pretty view for quests', 
	link: '/', project: vox, created_at: '2016-04-28T20:36:12.060Z', 
	heading: 'Views')

Event.create(photo: 'bg.jpg', description: 'Started local server for Coppertino', 
	link: '/', project: talk, created_at: '2016-03-28T16:36:12.060Z',
	heading: 'Server')
Event.create(photo: 'bg.jpg', description: 'Added pretty view for quests', 
	link: '/', project: talk, created_at: '2016-04-28T20:36:12.060Z', 
	heading: 'Views')

Event.create(photo: 'bg.jpg', description: 'Started local server for Coppertino', 
	link: '/', project: iBlazer, created_at: '2016-03-28T16:36:12.060Z',
	heading: 'Server')
Event.create(photo: 'bg.jpg', description: 'Added pretty view for quests', 
	link: '/', project: iBlazer, created_at: '2016-04-28T20:36:12.060Z', 
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

UserTeam.create(user: avram, team: moonton)
UserTeam.create(user: lyab, team: moonton)

UserTeam.create(user: ivan, team: coppertino)
UserTeam.create(user: petr, team: coppertino)

UserTeam.create(user: dima, team: quad)
UserTeam.create(user: anton, team: quad)

UserTeam.create(user: vlad, team: laser)
UserTeam.create(user: tolik, team: laser)


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
game = Tag.create(tag: 'Game')
ceo = Tag.create(tag: 'CEO')
iMac = Tag.create(tag: 'iMac')

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

UserTag.create(user: avram, tag: ceo)
UserTag.create(user: avram, tag: manager)

UserTag.create(user: lyab, tag: python)
UserTag.create(user: lyab, tag: JS)
UserTag.create(user: lyab, tag: ruby)
UserTag.create(user: lyab, tag: back)

UserTag.create(user: ivan, tag: ceo)
UserTag.create(user: ivan, tag: manager)

UserTag.create(user: petr, tag: python)
UserTag.create(user: petr, tag: JS)
UserTag.create(user: petr, tag: ruby)
UserTag.create(user: petr, tag: back)

UserTag.create(user: dima, tag: ceo)
UserTag.create(user: dima, tag: manager)

UserTag.create(user: anton, tag: ceo)
UserTag.create(user: anton, tag: manager)

UserTag.create(user: vlad, tag: ceo)
UserTag.create(user: vlad, tag: manager)

UserTag.create(user: tolik, tag: ceo)
UserTag.create(user: tolik, tag: manager)

TeamTag.create(team: leen, tag: designer)
TeamTag.create(team: leen, tag: investor)

TeamTag.create(team: dryv, tag: designer)
TeamTag.create(team: dryv, tag: investor)

TeamTag.create(team: skynet, tag: designer)
TeamTag.create(team: skynet, tag: investor)

TeamTag.create(team: moonton, tag: designer)
TeamTag.create(team: moonton, tag: investor)

TeamTag.create(team: coppertino, tag: designer)
TeamTag.create(team: coppertino, tag: investor)

TeamTag.create(team: quad, tag: designer)
TeamTag.create(team: quad, tag: investor)

TeamTag.create(team: laser, tag: designer)
TeamTag.create(team: laser, tag: investor)

ProjectTag.create(project: gimbl, tag: startups)
ProjectTag.create(project: gimbl, tag: aaas)
ProjectTag.create(project: gimbl, tag: saas)

ProjectTag.create(project: on_point, tag: startups)
ProjectTag.create(project: on_point, tag: quests)
ProjectTag.create(project: on_point, tag: saas)

ProjectTag.create(project: pitcube, tag: startups)
ProjectTag.create(project: pitcube, tag: aaas)
ProjectTag.create(project: pitcube, tag: saas)

ProjectTag.create(project: check_io, tag: startups)
ProjectTag.create(project: check_io, tag: aaas)
ProjectTag.create(project: check_io, tag: game)

ProjectTag.create(project: vox, tag: startups)
ProjectTag.create(project: vox, tag: aaas)
ProjectTag.create(project: vox, tag: iMac)

ProjectTag.create(project: talk, tag: startups)
ProjectTag.create(project: talk, tag: aaas)
ProjectTag.create(project: talk, tag: iMac)

ProjectTag.create(project: iBlazer, tag: startups)
ProjectTag.create(project: iBlazer, tag: aaas)
ProjectTag.create(project: iBlazer, tag: iMac)
