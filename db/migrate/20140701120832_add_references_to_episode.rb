class AddReferencesToEpisode < ActiveRecord::Migration
  def change
    add_reference :episodes, :program, index: true
  end
end
