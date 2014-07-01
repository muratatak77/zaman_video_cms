class AddReferencesToProgram < ActiveRecord::Migration
  def change
    add_reference :programs, :category, index: true
  end
end
