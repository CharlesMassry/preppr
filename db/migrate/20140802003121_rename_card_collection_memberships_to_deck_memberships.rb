class RenameCardCollectionMembershipsToDeckMemberships < ActiveRecord::Migration
  def change
    rename_table :card_collection_memberships, :deck_memberships
  end
end
