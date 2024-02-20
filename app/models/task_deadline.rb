class TaskDeadline
  include ActiveModel::Model
  attr_accessor :title, :category_id, :url, :note, :user_id, :due, :completed

  # バリデーション
  validates :title, :category_id, :user_id, :due, presence: { message: "を入力してください" }
  validates :title, length: { maximum: 16, message: "は16文字以下で入力してください" }
  validates :url, allow_blank: true, format: { with: /\A#{URI::regexp(%w(http https))}\z/, message: "が正しいか確認してください" }
  validates :category_id, numericality: { other_than: 1, message: "を選択してください" }
  # ※deadlineの日付形式でないと受け付けないバリデーションは不要(入力フォームのdate_fieldで弾くことができる)

  def save
    # タスクを保存し、変数taskに代入
    task = Task.create(title: title, category_id: category_id, url: url, note: note, user_id: user_id)

    # 期限を保存する
    Deadline.create(due: due, completed: completed, task_id: task.id)
  end

end