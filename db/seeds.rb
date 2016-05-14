# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
salt_1 = BCrypt::Engine.generate_salt
salt_2 = BCrypt::Engine.generate_salt
pass_1 = BCrypt::Engine.hash_secret('password_1', salt_1)
pass_2 = BCrypt::Engine.hash_secret('password_2', salt_2)

dann = User.create(name: 'Daniil', surname: 'Anichin', 
	email: 'anichindaniil@gmail.com', salt: salt_1, 
	password_digest: pass_1)
igor = User.create(name: 'Igor', surname: 'TheBest', 
	email: 'optimum.flaminis@gmail.com', salt: salt_2, 
	password_digest: pass_2)

leen = Team.create(name: 'LeenTeam', speaker: igor) # jff, huh

gimbl = Project.create(name: 'GIMBL', owner: leen,
	description: 'Find what you need to quickly profit')

UserTeam.create(user: dann, team: leen)
UserTeam.create(user: igor, team: leen)

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

ProjectTag.create(project: gimbl, tag: startups)
ProjectTag.create(project: gimbl, tag: aaas)
ProjectTag.create(project: gimbl, tag: saas)

