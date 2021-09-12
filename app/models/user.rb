class User < ApplicationRecord

  def self.id
    where(name: self.name).pluck(:id)
  end

  def add_user_id_to_tests(test_id)
    current_users_id = Test.where(id: test_id).pluck(:users_id).join(',')
    if current_users_id == ""
      Test.find_by(id: test_id).update(users_id: self.id)
    elsif !current_users_id.split(',').include?(self.id.to_s)
      new_users_id = current_users_id << ',' + self.id.to_s
      Test.find_by(id: test_id).update(users_id: new_users_id)
    end
  end

  def find_user_tests_by(level)
    selected_tests = Test.where.not(users_id: nil).where(level: level).pluck(:title, :users_id)
    if selected_tests != []
      user_tests = []
      selected_tests.each do |test|
        user_tests << test[0] if test[1].split(',').include?(self.id.to_s)
      end
      user_tests
    end
  end
end
