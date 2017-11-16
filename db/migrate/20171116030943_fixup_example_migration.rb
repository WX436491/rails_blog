require_relative '20171116030547_example_migration'
class FixupExampleMigration < ActiveRecord::Migration[5.1]
  def change
    revert ExampleMigration

    create_table(:apples) do |t|
      t.string :variety
    end
  end
end
