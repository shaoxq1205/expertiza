class CreateTeamRolesets < ActiveRecord::Migration
  def self.up
    create_table "team_rolesets", :force => true do |t|
<<<<<<< HEAD
      #t.integer "id"
=======
>>>>>>> E1455/rails4
      t.string "roleset_name"
    end
  end

  def self.down
    drop_table :team_rolesets
  end
end
