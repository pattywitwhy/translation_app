class AddLanguageToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :language, :string
  end
end
