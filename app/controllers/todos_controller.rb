class TodosController < ApplicationController
  before_action :authenticate_user
  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  
  # GET /todos
  # GET /todos.json
  def index
    @todos = Todo.all
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
  end

  # GET /todos/new
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos
  # POST /todos.json
  def create
    todo = Todo.create(todo_params)
    render json: todo
  end

  # PATCH/PUT /todos/1
  # PATCH/PUT /todos/1.json
  def update
    @todo.update(todo_params)
    render json: @todo
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
    render json: @todo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:task, :isComplete)
    end
end
