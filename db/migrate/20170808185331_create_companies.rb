class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name, null: false, default: ""

      t.timestamps#в принципе не нужны и для оптимизации можно удалить
    end
  end
end
