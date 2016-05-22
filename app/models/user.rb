class User < ActiveRecord::Base
  def completed_tasks_count
    10
  end

  def total_tasks_count
    50
  end
end
