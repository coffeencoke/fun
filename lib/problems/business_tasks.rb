module BusinessTasks
  def self.get_task(tasks, n)
    continuing_increment = 0
    while tasks.size > 1 do
      index_to_delete = (continuing_increment + n - 1) % tasks.size
      tasks.delete_at index_to_delete
      continuing_increment = index_to_delete % tasks.size
    end
    tasks[0]
  end
end
