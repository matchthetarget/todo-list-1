class TodosController < ApplicationController
  def index
    @next_up_todos = @current_user.todos.where({ :status => "next_up" }).order({ :created_at => :desc })
    
    @in_progress_todos = @current_user.todos.where({ :status => "in_progress" }).order({ :updated_at => :desc })
    
    @done_todos = @current_user.todos.where({ :status => "done" }).order({ :updated_at => :desc })

    render({ :template => "todos/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_todos = Todo.where({ :id => the_id })

    @the_todo = matching_todos.at(0)

    render({ :template => "todos/show.html.erb" })
  end

  def create
    the_todo = Todo.new
    the_todo.user_id = @current_user.id
    the_todo.content = params.fetch("query_content")
    the_todo.status = "next_up"

    if the_todo.valid?
      the_todo.save
      redirect_to("/", { :notice => "Todo created successfully." })
    else
      redirect_to("/", { :alert => the_todo.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_todo = Todo.where({ :id => the_id }).at(0)

    the_todo.status = params.fetch("query_status")

    if the_todo.valid?
      the_todo.save
      redirect_to("/", { :notice => "Todo updated successfully."} )
    else
      redirect_to("/", { :alert => the_todo.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_todo = Todo.where({ :id => the_id }).at(0)

    the_todo.destroy

    redirect_to("/", { :notice => "Todo deleted successfully."} )
  end
end
