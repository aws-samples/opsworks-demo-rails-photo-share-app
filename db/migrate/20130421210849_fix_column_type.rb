class FixColumnType < ActiveRecord::Migration
  def up
    change_table :pictures do |t|
      t.change :file_contents, :binary, :limit => 10.megabyte
    end
  end

  def down
  end
end
