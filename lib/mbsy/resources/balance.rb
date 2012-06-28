module Mbsy
  class Balance < Base
    
    def self.update(mode, params={})
      raise ArgumentError, "You must include :email" unless params[:email]
      raise ArgumentError, "You must include :amount" unless params[:amount]
      case mode
      when :add
        call('add', params)
      when :deduct
        call('deduct', params)
      else
        raise ArgumentError, "You must include a mode of either :add or :deduct"
      end
    end
    
  end
end