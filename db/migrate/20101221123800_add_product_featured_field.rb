class AddProductFeaturedField < ActiveRecord::Migration
  def self.up
    add_column :products, :featured, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :products, :featured
  end
end
