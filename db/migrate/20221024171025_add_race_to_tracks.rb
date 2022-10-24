class AddRaceToTracks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tracks, :race, null: false, foreign_key: true
  end
end
