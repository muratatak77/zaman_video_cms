class AddVideoToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :video, :text
  end
end
