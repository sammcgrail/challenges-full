require "pry"
require "sinatra"

get "/tasks" do
  tasks = File.readlines("tasks.txt")
  erb :index, locals: { tasks: tasks }
end

get "/tasks/:task_name" do
  erb :show, locals: { task_name: params[:task_name] }
end

post "/tasks" do
#  binding.pry
  task = params["task_name"]
  File.open("tasks.txt", "a") do |file|
   file.puts(task)
  end

  redirect "/tasks"
#  binding.pry
end
