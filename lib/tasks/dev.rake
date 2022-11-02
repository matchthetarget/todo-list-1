desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do
  User.destroy_all
  Todo.destroy_all

  ["alice", "bob", "carol"].each do |username|
    user = User.new
    user.email = "#{username}@example.com"
    user.password = "password"
    user.save

    ["next_up", "in_progress", "done"].each do |status|
      rand(1..10).times do
        todo = Todo.new
        todo.user_id = user.id
        todo.status = status
        todo.content = Faker::Hacker.say_something_smart
        todo.save
      end
    end
  end
end
