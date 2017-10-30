# This migration comes from spree_account_recurring (originally 20140301141327)
class AddStripeCustomerIdToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :stripe_customer_id, :string
    add_column :spree_subscriptions, :plan_id, :integer
    add_column :spree_subscriptions, :email, :string
    add_column :spree_subscriptions, :user_id, :integer
    add_column :spree_subscriptions, :subscribed_at, :datetime
    add_column :spree_subscriptions, :unsubscribed_at, :datetime

    add_index :spree_subscriptions, :subscribed_at
    add_index :spree_subscriptions, :unsubscribed_at
    add_index :spree_subscriptions, :plan_id
  end
end
