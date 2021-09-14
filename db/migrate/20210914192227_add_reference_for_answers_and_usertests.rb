class AddReferenceForAnswersAndUsertests < ActiveRecord::Migration[6.1]
  def change
    add_reference :answers, :question, foreign_key: true
    add_reference :user_tests, :user, foreign_key: true
    add_reference :user_tests, :test, foreign_key: true
  end
end
