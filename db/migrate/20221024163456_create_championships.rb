class CreateChampionships < ActiveRecord::Migration[7.0]
  def change
    create_table :championships do |t|
      t.date :start_date
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
