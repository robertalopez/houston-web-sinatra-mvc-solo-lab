class PuppiesController < ApplicationController
   get '/index' do 
    @puppies = Puppy.all 
    erb :index 
   end 

   get '/puppy/:id' do 
    @puppy = Puppy.find(params[:id])
    erb :show 
   end 

   get '/puppy/new' do 
    erb :new_puppy 
   end 

   post '/puppies' do 
    Puppy.create(params)
    erb :index 
   end 

   delete '.puppies/:id' do 
    puppy = Puppy.find(params[:id])
    puppy.destroy
    erb :index
   end 

end