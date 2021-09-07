class AddNullConstraints < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:tests, :title, false)
    change_column_null(:categories, :title, false)
    change_column_null(:questions, :body, false)
    change_column_null(:answers, :title, false)
    change_column_null(:users, :name, false)
  end
end
