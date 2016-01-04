class ContactsController < ApplicationController
  def process_form
    if params[:contact][:name].blank?
      raise 'Name is blank'
    end
    if params[:contact][:email].blank?
      raise 'Email is blank'
    end
    if params[:contact][:content].blank?
      raise 'Message is blank'
    end
    Rails.logger.debug "DEBUG: params are #{params}"
    message = "Received request from #{params[:contact][:name]}"
    redirect_to root_path, :notice => message
  end
end