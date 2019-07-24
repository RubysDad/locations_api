class RemoveSlugFromRecordings < ActiveRecord::Migration[5.2]
  def change
    remove_column :recordings, :slug
  end
end
