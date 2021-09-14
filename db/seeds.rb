# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create! ([
  { name: 'Aleksander' },
  { name: 'Stanislava' }
])
categories = Category.create! ([
  { title: 'Cats' },
  { title: 'Dogs' },
  { title: 'Cartoons' }
])
tests = Test.create! ([
  { title: 'Cats life', level: 3, category_id: categories[0].id },
  { title: 'Other', level: 1, category_id: categories[0].id },
  { title: 'Dogs in history', level: 3, category_id: categories[1].id },
  { title: 'Russian cartoons', level: 1, category_id: categories[2].id },
  { title: 'American cartoons', level: 2, category_id: categories[2].id }
])
questions = Question.create! ([
  { body: 'How many percent of their lives do cats spend in a dream?', test_id: tests[0].id },
  { body: 'What sound does a cat make when it is happy?', test_id: tests[0].id },
  { body: 'What was the name of the first dogs who visited space?', test_id: tests[1].id },
  { body: 'What did Carlson like to eat most of all?', test_id: tests[2].id },
  { body: 'What was the name of the bulldog in the cartoon "Tom and Jerry"', test_id: tests[2].id }
])
answers = Answer.create! ([
  { title: '75 percent', correct: true, question_id: questions[0].id },
  { title: '45 percent', correct: false, question_id: questions[0].id },
  { title: 'Pur, pur', correct: true, question_id: questions[1].id },
  { title: 'Mau, mau', correct: false, question_id: questions[1].id },
  { title: 'Belka and Strelka', correct: true, question_id: questions[2].id },
  { title: 'Zhuchka and Grelka', correct: false, question_id: questions[2].id },
  { title: 'Teftels', correct: true, question_id: questions[3].id },
  { title: 'Honey', correct: false, question_id: questions[3].id },
  { title: 'Spike', correct: true, question_id: questions[4].id },
  { title: 'Rust', correct: false, question_id: questions[4].id }
])
user_tests = UserTest.create! ([
  { user_id: users[0].id, test_id: tests[0].id },
  { user_id: users[0].id, test_id: tests[1].id },
  { user_id: users[0].id, test_id: tests[2].id },
  { user_id: users[0].id, test_id: tests[3].id },
  { user_id: users[0].id, test_id: tests[4].id },
  { user_id: users[1].id, test_id: tests[0].id },
  { user_id: users[1].id, test_id: tests[1].id },
])
