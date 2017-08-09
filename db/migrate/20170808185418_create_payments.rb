class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :order, null: false#порядковый номер платежа
      t.string :status, null: false, default: :normal#обычный/просроченный/досрочное закрытие
      t.references :loan, foreign_key: true, index: true
      
      t.timestamps#в принципе не нужны и для оптимизации можно удалить
    end
  end
end
