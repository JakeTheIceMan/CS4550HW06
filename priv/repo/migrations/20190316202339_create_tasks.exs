defmodule Tasks1.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :string, null: false
      add :desc, :string, null: false
      add :duration, :integer, null: false
      add :complete, :boolean, default: false, null: false
      add :worker_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:tasks, [:worker_id])
  end
end
