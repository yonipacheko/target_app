class TodoClientsController < ApplicationController
  before_action :set_todo_client, only: [:show, :edit, :update, :destroy]

  # GET /todo_clients
  # GET /todo_clients.json
  def index
    @todo_clients = TodoClient.all
  end

  # GET /todo_clients/1
  # GET /todo_clients/1.json
  def show
  end

  # GET /todo_clients/new
  def new
    @todo_client = TodoClient.new
  end

  # GET /todo_clients/1/edit
  def edit
  end

  # POST /todo_clients
  # POST /todo_clients.json
  def create
    @todo_client = TodoClient.new(todo_client_params)

    respond_to do |format|
      if @todo_client.save
        format.html { redirect_to @todo_client, notice: 'Todo client was successfully created.' }
        format.json { render :show, status: :created, location: @todo_client }
      else
        format.html { render :new }
        format.json { render json: @todo_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_clients/1
  # PATCH/PUT /todo_clients/1.json
  def update
    respond_to do |format|
      if @todo_client.update(todo_client_params)
        format.html { redirect_to @todo_client, notice: 'Todo client was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_client }
      else
        format.html { render :edit }
        format.json { render json: @todo_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_clients/1
  # DELETE /todo_clients/1.json
  def destroy
    @todo_client.destroy
    respond_to do |format|
      format.html { redirect_to todo_clients_url, notice: 'Todo client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_client
      @todo_client = TodoClient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_client_params
      params.require(:todo_client).permit(:title, :notes)
    end
end
