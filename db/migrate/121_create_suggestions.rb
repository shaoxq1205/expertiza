class CreateSuggestions < ActiveRecord::Migration
  def self.up
    create_table :suggestions do |t|
<<<<<<< HEAD
     #t.column  :id,                 :int
=======
>>>>>>> E1455/rails4
     t.column  :assignment_id,      :int
     t.column  :title,              :string
     t.column  :description,        :string, :limit=>750
     t.column  :status,             :string
     t.column  :unityID,            :string
     t.column  :signup_preference,  :string
    end
  end

  def self.down
    drop_table :suggestions
  end
end
