class RemoveNoticeRefToCollege < ActiveRecord::Migration
  def change
    remove_reference :colleges, :notice, index: true, foreign_key: true
  end
end
