class RenamePostBodyToContent < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :body, :content
  end
end
