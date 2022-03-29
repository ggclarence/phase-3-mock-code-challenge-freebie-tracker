class Freebie < ActiveRecord::Base
  belongs_to :devs
  belongs_to :companies

  def print_details
    "#{dev.name} owns a #{item_name} from #{company.name"
  end
end
