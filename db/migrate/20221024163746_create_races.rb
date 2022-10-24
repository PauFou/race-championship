class CreateRaces < ActiveRecord::Migration[7.0]
  def change
    create_table :races do |t|
      t.references :championship, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
