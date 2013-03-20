class CreatePictures < ActiveRecord::Migration
  def up
  	create_table :pictures do |t|
  		t.string :artist
  		t.string :url
  		t.string :title
  	end
  end

  def down
  end
end
