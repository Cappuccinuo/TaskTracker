defmodule Tasktracker.Mission.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tasktracker.Mission.Task


  schema "tasks" do
    field :description, :string
    field :title, :string
    field :completed, :boolean, default: false
    field :time, :integer, default: 0
    # many_to_many :users, Tasktracker.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:title, :description, :completed, :time])
    |> validate_required([:title, :description, :completed, :time])
  end
end
