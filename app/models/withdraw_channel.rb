class WithdrawChannel < ActiveYaml::Base
  include Enumerizeable

  set_root_path "#{Rails.root}/config"
  set_filename "withdraw_channel"

  def self.currency(category)
    self.find_by_id(category).currency.to_s
  end
end
