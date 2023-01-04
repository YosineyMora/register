class PeopleController < ApplicationController

    def index
        @people = Person.all
    end

    #se centra en mostrar el formulario para crear una nueva imagem
    def new
        @person = Person.new
    end

    #recibe la información para crear una imagen
    def create
        #render plain: params[:person].inspect
        @person = Person.new person_params
        
    end

    def show 
        @person = Person.find params[:id]
    end
    #buscar la imagen que queremos editar
    def edit 
        @person = Person.find params[:id]
    end

    #actualiza la informacion
    def update
        @person = Person.find params[:id]
     
    end

    def destroy
        @person = Person.find params[:id]

    end

    private
    def person_params
        params.require(:person).permit(:name, :last_name)
    end
end
