defmodule Hello.ShoppingCart.Cart do
  use Ecto.Schema
  import Ecto.Changeset

  schema "carts" do
    field :user_uuid, Ecto.UUID
    has_many :items, Hello.ShoppingCart.CartItem
    timestamps()
  end

  @doc false
  def changeset(carts, attrs) do
    carts
    |> cast(attrs, [:user_uuid])
  end
end
