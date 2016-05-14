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
	email: 'anichindaniil@gmail.com', salt: salt_1, avatar: 'a1.jpg',
	password_digest: pass_1)
igor = User.create(name: 'Igor', surname: 'TheBest', 
	email: 'optimum.flaminis@gmail.com', salt: salt_1, avatar: 'ava2.png',
	password_digest: pass_1)
dan = User.create(name: 'Danil', surname: 'Sizov', 
	email: 'danilsizov3@gmail.com', salt: salt_1, avatar: 'a1.jpg',
	password_digest: pass_1)


leen = Team.create(name: 'LeenTeam', speaker: dan) # jff, huh
dryv = Team.create(name: 'DRY-V', speaker: dan)

gimbl = Project.create(name: 'GIMBL', team: leen, logo: '2.png', 
	description: 'Find what you need to quickly profit')
on_point = Project.create(name: 'DRY-V', team: dryv, logo: 'a1.png', 
	description: 'The new way to spend time')

UserTeam.create(user: dann, team: leen)
UserTeam.create(user: igor, team: leen)
UserTeam.create(user: dan, team: leen)
UserTeam.create(user: dann, team: dryv)
UserTeam.create(user: igor, team: dryv)
UserTeam.create(user: dan, team: dryv)

manager = Tag.create(tag: 'manager')
designer = Tag.create(tag: 'designer')
investor = Tag.create(tag: 'investor')
python = Tag.create(tag: 'Python-dev')
ruby = Tag.create(tag: 'Ruby-dev')
JS = Tag.create(tag: 'Full-stack-JS-dev')
AR = Tag.create(tag: 'AR')
VR = Tag.create(tag: 'VR')
quests = Tag.create(tag: 'Quests')
startups = Tag.create(tag: 'Startups')
saas = Tag.create(tag: 'SaaS')
aaas = Tag.create(tag: 'Acselerator aaS')

UserTag.create(user: dann, tag: python)
UserTag.create(user: dann, tag: ruby)
UserTag.create(user: igor, tag: JS)
UserTag.create(user: igor, tag: ruby)

TeamTag.create(team: leen, tag: designer)
TeamTag.create(team: leen, tag: investor)
TeamTag.create(team: dryv, tag: designer)
TeamTag.create(team: dryv, tag: investor)

ProjectTag.create(project: gimbl, tag: startups)
ProjectTag.create(project: gimbl, tag: aaas)
ProjectTag.create(project: gimbl, tag: saas)

