class AddSlugToRecordings < ActiveRecord::Migration[5.2]
  def change
    add_column :recordings, :slug, :string
  end
end
