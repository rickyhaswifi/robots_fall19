class AddInventorRefToRobots < ActiveRecord::Migration[6.0]
  def change
    add_reference :robots, :inventor, null: false, foreign_key: true
  end
end
