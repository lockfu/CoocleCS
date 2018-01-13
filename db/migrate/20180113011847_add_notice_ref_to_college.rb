class AddNoticeRefToCollege < ActiveRecord::Migration
  def change
    add_reference :colleges, :notice, index: true, foreign_key: true
  end
end
