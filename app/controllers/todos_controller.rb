class TodosController < ApplicationController

def index 
    @code_word= "#{params[:code]} #{params[:word]}"
end

def show 
    id= params[:id]
    if id == '1'
    
        @todo={
            id: id,
            name: 'wake up at 8am',
            duration: 15
        }
    elsif id == "2"
        @todo= {
            id: params[:id],
        name: 'I am tired',
        description: 'All day',
        duration:25
    }
    else
        @todo= {}
    end
    
end
end