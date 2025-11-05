class CreateFalls < ActiveRecord::Migration[8.1]
  def change
    create_table :falls do |t|
      t.string :status
      t.datetime :detected_at

      t.timestamps
    end
  end
end
