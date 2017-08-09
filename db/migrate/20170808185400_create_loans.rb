class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :sum, null: false, default: 0
      t.float :base_percent, null: false, default: 30
      t.float :delay_percent, null: false, default: 50
      t.integer :time, null: false, default: 6
      t.references :company, foreign_key: true, index: true

      #небольшая оптимизация для сокрости, можно и без нее всегда подгружая записи по месяцам
      t.float :total_overdrive, null: false, default: 0

      t.timestamps#в принципе не нужны и для оптимизации можно удалить
    end
  end
end
