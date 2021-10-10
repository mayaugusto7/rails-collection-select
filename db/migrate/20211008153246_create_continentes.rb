class CreateContinentes < ActiveRecord::Migration[6.1]
  def change
    create_table :continentes do |t|
      t.string :name

      t.timestamps
    end
  end
end
