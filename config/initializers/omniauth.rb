OmniAuth.config.logger = Rails.logger
OmniAuth.config.full_host = 'http://localhost:3000'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '614802585295949', 'c130976d7e00d296a6f9aa70c8f51ae1'
  provider :google_oauth2,'452399550176-djvmv9cl1lqgq05qkr63j8mjh8ur9234.apps.googleusercontent.com','2ByAZmbTGyhINmy0klwbN0ga' 
 # provider :facebook,'371090859705925','b7ff71145d844ce82d0c40cd72c8ea8d'
 	  
           
end