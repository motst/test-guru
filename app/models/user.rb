class User < ApplicationRecord

  def find_user_tests_by(level)
    Test.joins('JOIN user_tests ON tests.id = user_tests.test_id').
    where('user_tests.user_id = ? AND tests.level = ?', id, level)
  end
end

