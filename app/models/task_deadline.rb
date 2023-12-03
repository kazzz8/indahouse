class TaskDeadline
  include ActiveModel::Model
  attr_accessor :title, :category_id, :url, :note, :user_id, :deadline, :completed, :tasks_id
  # attr_accessor :postal_code, :prefecture, :city, :house_number, :building_name, :price, :user_id

  def save
    # タスクを保存し、変数taskに代入
    task = Task.create(title: title, category_id: category_id, url: url, note: note, user_id: user_id)

    # 期限を保存する
    Deadline.create(deadline: deadline, completed: completed, task_id: task.id)
  end

end