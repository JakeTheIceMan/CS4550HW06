defmodule Tasks1Web.TaskController do
  use Tasks1Web, :controller

  alias Tasks1.Tasks
  alias Tasks1.Tasks.Task
  alias Tasks1.Users

  def index(conn, _params) do
    tasks = Tasks.list_tasks()
    render(conn, "index.html", tasks: tasks)
  end

  def new(conn, _params) do
    changeset = Tasks.change_task(%Task{})
    worker_ids = Users.list_user_ids()
    worker_names = Users.list_user_names()
    render(conn, "new.html", changeset: changeset, worker_ids: worker_ids, worker_names: worker_names)
  end

  def create(conn, %{"task" => task_params}) do
    case Tasks.create_task(task_params) do
      {:ok, task} ->
        conn
        |> put_flash(:info, "Task created successfully.")
        |> redirect(to: Routes.task_path(conn, :show, task))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    task = Tasks.get_task!(id)
    worker = task.worker;
    render(conn, "show.html", task: task, worker: worker)
  end

  def edit(conn, %{"id" => id}) do
    task = Tasks.get_task!(id)
    worker_ids = Users.list_user_ids()
    worker_names = Users.list_user_names()
    changeset = Tasks.change_task(task)
    render(conn, "edit.html", task: task, changeset: changeset, worker_ids: worker_ids, worker_names: worker_names)
  end

  def update(conn, %{"id" => id, "task" => task_params}) do
    task = Tasks.get_task!(id)

    case Tasks.update_task(task, task_params) do
      {:ok, task} ->
        conn
        |> put_flash(:info, "Task updated successfully.")
        |> redirect(to: Routes.task_path(conn, :show, task))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", task: task, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    task = Tasks.get_task!(id)
    {:ok, _task} = Tasks.delete_task(task)

    conn
    |> put_flash(:info, "Task deleted successfully.")
    |> redirect(to: Routes.task_path(conn, :index))
  end
end
