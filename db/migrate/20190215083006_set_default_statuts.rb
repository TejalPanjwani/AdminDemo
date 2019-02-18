class SetDefaultStatuts < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :statutsofservice, :integer, default: 0
  end
end
