class LdapController < ApplicationController
	def create
		


		ldap_return = request.env["omniauth.auth"]["extra"]["raw_info"]
        firstname = ldap_return.givenname[0].to_s
        lastname = ldap_return.sn[0].to_s
        displayname = ldap_return.displayname[0].to_s
        username = ldap_return.sAMAccountName[0].to_s
        email = ldap_return.proxyaddresses[0][5..-1].to_s
    	session[:user_uid] = username
    	redirect_to root_url
  end
  def destroy
  	session.clear
  	redirect_to root_url
  end
end

