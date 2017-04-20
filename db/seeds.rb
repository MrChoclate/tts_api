# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Speaker.delete_all
Audio.delete_all

Speaker.create([
	{name: "John Doe", language: "en"}
])


Audio.create([
	{text: "Hello world", status: "pending", speaker_id: 1}
])