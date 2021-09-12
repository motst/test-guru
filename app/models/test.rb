class Test < ApplicationRecord

  def self.tests_sort_by(category)
    joins('JOIN categories ON categories.id = tests.category_id').
    where(categories: {title: category}).
    pluck(:title).
    sort.reverse
  end
end
