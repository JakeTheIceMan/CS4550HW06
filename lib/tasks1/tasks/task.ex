defmodule Tasks1.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset


  schema "tasks" do
    field :complete, :boolean, default: false
    field :desc, :string
    field :duration, :integer
    field :title, :string
    belongs_to :worker, Tasks1.Users.User

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :desc, :duration, :complete, :worker_id])
    |> validate_required([:title, :desc, :duration, :complete, :worker_id])
  end
end
