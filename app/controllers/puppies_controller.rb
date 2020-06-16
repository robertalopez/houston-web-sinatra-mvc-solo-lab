class PuppiesController < ApplicationController
   get '/index' do 
    @puppies = Puppy.all 
    erb :index 
   end 

   get '/index/:id' do 
    @puppy = Puppy.find(params[:id])
    erb :show 
   end 

   get '/index/new' do 
    erb :new_puppy 
   end 

   post '/index' do 
    Puppy.create(params)
    erb :index 
   end 

   get '/index/:id/edit' do 
    @puppy = Puppy.find(params[:id])
    erb :edit
   end 

   patch '/index/:id' do 
   puppy = Puppy.find(params[:id])
   puppy.update(name: params[:name], breed: params[:breed])
   rediredt '/index/#{params[:id]}'
   end 



   delete '/index/:id' do 
    puppy = Puppy.find(params[:id])
    puppy.destroy
    erb :index
   end 

end