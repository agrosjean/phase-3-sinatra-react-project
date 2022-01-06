class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/vets' do
    Vet.all.to_json
  end

  get '/dogs' do
    Dog.all.to_json
  end

  get '/appointments' do
    Appointment.all.to_json
  end

  post '/vets' do
    Vet.create(name: params["name"], information: params["information"])
  end

  post '/dogs' do
    Dog.create(name: params["name"], breed: params["breed"])
  end

  post '/appointments' do
    Appointment.create(date: params["date"], time: params["time"], vet_id: params["vet_id"], dog_id: params["dog_id"])
  end
  
  # DELETE /vets/18
  delete '/vets/:id' do
    Vet.delete(params['id'])
    return "Sucessfully deleted vet with id #{params["id"]}"
  end

  delete '/dogs/:id' do
    Dog.delete(params['id'])
    return "Sucessfully deleted dog with id #{params["id"]}"
  end

  delete '/appointments/:id' do
    Appointment.delete(params['id'])
    return "Sucessfully deleted appointment with id #{params["id"]}"
  end


end
