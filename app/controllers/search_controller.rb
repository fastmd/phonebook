class SearchController < ApplicationController
   USERNAME, PASSWORD = "usr", "111"
  ip_addr = ""
if ip_addr != "127.0.0.1"
  before_filter :authenticate
end

  
  def search
    @prev_org = params[:fil]
    @abs = params[:q]
    if @prev_org.nil?
      @prev_org = params[:org]
    end
    if @abs.nil?
      @abs = params[:fraz]
    end
    qu1 = params[:fil]
      if qu1.nil?
        
      else
        #@orgs = Org.search(qu1) 
      end
    @mp = params[:fil]
    qu =  @prev_org.to_s()+ " "+ @abs.to_s() + "*"
      if qu.nil?
        @abrecs = []
      else
        @abrecs = Abrec.search(qu).page(params[:page]).per(15)
      end
  end
  
  def search_ru
    @prev_org = params[:fil]
    @abs = params[:q]
    if @prev_org.nil?
      @prev_org = params[:org]
    end
    if @abs.nil?
      @abs = params[:fraz]
    end
    qu1 = params[:fil]
      if qu1.nil?
        qu1 = params[:org]
      else
        #@orgs = Org.search(qu1) 
      end
    @mp = params[:fil]
    qu =  @prev_org.to_s()+ " "+ @abs.to_s() + "*"
      if qu.nil?
        @abrecs = []
      else
        @abrecs = Abrec.search(qu).page(params[:page]).per(15)
      end
  end
  
 def show
      if params[:id].nil?
        @hum = []
      else
        @hum = Abrec.find(params[:id])
      end
  end
  
  def show_ru
      if params[:id].nil?
        @hum = []
      else
        @hum = Abrec.find(params[:id])
      end
  end
  
private
  def authenticate
    @ip = request.ip
    authenticate_or_request_with_http_basic do |username, password|
      username == USERNAME &&
      password == PASSWORD
    end
  end 
   
end
