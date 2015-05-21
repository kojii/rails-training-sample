class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :book_id           # ISBNなどの識別子
      t.string :title, null: false # タイトル
      t.string :author             # 著者
      t.string :publisher          # 出版社
      t.date   :publish_date       # 出版日

      t.timestamp                  # レコード作成日時と更新日時が作成される
    end
  end
end
