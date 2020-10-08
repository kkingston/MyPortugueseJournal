# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Word.delete_all
Entry.delete_all


user = User.create(name: 'kayla kingston', email: 'kkingston09@gmail.com', username: 'kkingston09')
word = Word.create(word: 'O Sol', definition: 'The Sun', pos: 'noun')
Entry.create(word_id: word.id, user_id: user.id, date: 'July, 24, 2020', content: 'Hoje ten muito sol.  Eu nao gosto do sol, por que esta calor.')

user = User.create(name: 'Ashley Flores', email: 'aflores@gmail.com', username: 'aflores22')
word = Word.create(word: 'a palavra', definition: 'the word', pos: 'noun')
Entry.create(word_id: word.id, user_id: user.id, date: 'November 22, 2020', content: 'A palavra do dia esta: O Sol.')








