class ApplicationController < ActionController::API
  #A method to authorize that user is okay before anything else is ran. Keeps app locked essencially.
  before_action :authorized

  #Encode/Decode our token
  #JWT.encode needs 3 arguments: payload to encode, app secret, and one (optional) for the hashing algorithm.
  #store secret in ENV doc
  def encode_token(payload)
    JWT.encode(payload, 'secret')
  end

  #authheader will be in our fetch request on the front end.
  def auth_header
    request.headers['Authorization']
  end
  
  #JWT.decode also needs 3 arguments: JWT as string, app secret, and one (optional) for the hashing algorithm.
  #Begin/Rescue syntax
  def decode_token
    if auth_header
      token = auth_header.split(' ')[1] # << header: { 'Authorization': 'Bearer <token>' } >> That will be in the fetch. <<auth_header.split(' ')[1]>> will split Bearer from the actual token so we can use it.
      begin
        JWT.decode(token, 'secret', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil        
      end
    end
  end  

  #Authentication helper methods:
  def current_user
    if decode_token
      user_id = decoded_token[0]['user_id'] #JWTdecode => [{'user_id' => 1}, {'alg'=> 'HS256'}]
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user #!! shows boolean
  end

  #Authorization helper methods:
  def authorized
    render json: {message: 'Please log in'}, status: :unauthorized unless logged_in?
  end

end
