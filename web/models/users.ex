defmodule HelloPhoenix.Users do
  use HelloPhoenix.Web, :model

  schema "users" do
    field :name, :string
    field :password, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    IO.inspect(struct)
    struct
    |> cast(params, [:name, :password])
  end
end
