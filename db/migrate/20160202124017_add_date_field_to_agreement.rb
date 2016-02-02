class AddDateFieldToAgreement < ActiveRecord::Migration
  def change
    add_column :agreements, :date, :datetime
  end
end
