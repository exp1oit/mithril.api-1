defmodule Mithril.ClientAPI.ConnectionSearch do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset
  alias __MODULE__
  alias Ecto.UUID
  alias Mithril.Ecto.StringLike

  embedded_schema do
    field(:client_id, UUID)
    field(:consumer_id, UUID)
    field(:redirect_uri, StringLike)
  end

  def changeset(%ConnectionSearch{} = connection, attrs) do
    connection
    |> cast(attrs, ConnectionSearch.__schema__(:fields))
    |> validate_required(:client_id)
  end
end
