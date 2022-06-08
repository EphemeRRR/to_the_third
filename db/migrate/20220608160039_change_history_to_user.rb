class ChangeHistoryToUser < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.remove :history
      t.text :history, array:true, default: [['/premiere_page',0]]
    end
  end
end
