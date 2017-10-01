class TodosController < ApplicationController

def index 
   # @code_word= "#{params[:code]} #{params[:word]}"
   @todos=Todo.all
   
end

def create
    todo= Todo.create(
    name:params[:name],
    description:params[:description],
    duration:params[:duration],
    compleate:params[:compleate]

        )
    redirect_to "/todos/#{todo.id}"    

end

def show 
    @todo=Todo.find(params[:id])
end

def update
 todo=Todo.find(params[:id])
 todo.update(
    name:params[:name],
    description:params[:description],
    duration:params[:duration],
    compleate:params[:compleate]
 )
 redirect_to "/todos/#{todo.id}"

end
def destroy 
todo=Todo.find(params[:id])
todo.destroy
redirect_to "/"
end
end