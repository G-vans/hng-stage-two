class PeopleController < ApplicationController
  before_action :set_person, only: [ :show, :update, :destroy ]

  # GET /api
  def index
    @people = Person.all

    render json: @people
  end

  # GET /api/:id
  def show
    render json: @person
  end

  # POST /api
  def create
    @person = Person.new(person_params)

    if @person.save
      render json: @person, status: :created
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

   # PUT /api/:id
   def update
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/:id
  def destroy
    @person.destroy
    render json: { message: 'Person removed successfully.' }
  end

  private
    
    def set_person
      @person = Person.find(params[:id])
    end
    
  
    def person_params
      params.require(:person).permit(:name, :email, :age)
    end
end
