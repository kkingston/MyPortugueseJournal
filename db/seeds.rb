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

user = User.create(name: 'kayla kingston', email: 'kkingston09@gmail.com', username: 'kkingston09', password: 'test')
word = Word.create(word: 'Sol', definition: 'Estrela em torno da qual gira a Terra. Sun', pos: 'noun')
Entry.create(word_id: word.id, user_id: user.id, content: 'Hoje ten muito sol.  Eu nao gosto do sol, por que esta calor.', date: 'July, 24, 2020')

user = User.create(name: 'Ashley Flores', email: 'aflores@gmail.com', username: 'aflores22', password: 'test')
word = Word.create(word: 'Palavra', definition: 'Letra ou conjunto de letras com sentido. Word', pos: 'noun')
Entry.create(word_id: word.id, user_id: user.id, content: 'Ainda não sei muitas palavras.', date: 'July, 24, 2020')

user = User.create(name: 'Georgie Ditter', email: 'annageorgina@gmail.com', username: 'gditter', password: 'test')
word = Word.create(word: 'Pêssego', definition: 'Fruto de pele aveludada com caroço. Fuzzy fruit that is good in pies. Peach', pos: 'noun')
Entry.create(word_id: word.id, user_id: user.id, content: 'Pêssegos crescem em árvores.', date: 'July, 24, 2020')

user = User.create(name: 'mickenzie martinez', email: 'mkmartinez@gmail.com', username: 'cricketkenz', password: 'test')
word = Word.create(word: 'Ananás', definition: 'Fruto tropical. Tropical fruit with a big crown. Pineapple.', pos: 'noun')
Entry.create(word_id: word.id, user_id: user.id, content: 'Sao muitas de ananás em Brasil.', date: 'July, 24, 2020')

user = User.create(name: 'sophie bellmann', email: 'sbellmann@gmail.com', username: 'sbellmann12', password: 'test')
word = Word.create(word: 'Amiga', definition: 'Que se sente próximo de alguém. Friend', pos: 'noun')
Entry.create(word_id: word.id, user_id: user.id, content: 'Minhas amigas estam em casa.', date: 'July, 24, 2020')

user = User.create(name: 'Jose Bica', email: 'jbica@gmail.com', username: 'jbica', password: 'test')
word = Word.create(word: 'Comer', definition: 'Ingerir alimentos. To eat.', pos: 'verb')
Entry.create(word_id: word.id, user_id: user.id, content: 'Vou comer pipocas para jantar.', date: 'July, 24, 2020')

user = User.create(name: 'Liza Dinh', email: 'bizadinh@gmail.com', username: 'bizadinh', password: 'test')
word = Word.create(word: 'Escalar', definition: 'Subir a um lugar íngreme. To climb', pos: 'verb')
Entry.create(word_id: word.id, user_id: user.id, content: 'Escalo as montanhas em Squamish.', date: 'July, 24, 2020')

user = User.create(name: 'cory tsai', email: 'tsaiborg@gmail.com', username: 'ctsai', password: 'test')
word = Word.create(word: 'Bicicleta', definition: 'Veículo de duas rodas. Bike', pos: 'noun')
Entry.create(word_id: word.id, user_id: user.id, content: 'Tu andas sua bicicleta para minha casa.', date: 'July, 24, 2020')







