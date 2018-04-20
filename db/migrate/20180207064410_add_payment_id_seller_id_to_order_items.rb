class AddPaymentIdSellerIdToOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :payment_id, :string
    add_column :order_items, :seller_id, :integer
  end
end
