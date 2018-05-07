require 'irb/ext/save-history'
#History configuration
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
IRB.conf[:PROMPT][:RAILS_ENV] = {
  :PROMPT_I => "%N(%m):%03n:%i#{"(\e[31m" + Rails.env.upcase + "\e[0m)" if defined? Rails}> ",
  :PROMPT_N => "%N(%m):%03n:%i#{"(\e[31m" + Rails.env.upcase + "\e[0m)" if defined? Rails}> ",
  :PROMPT_C => "%N(%m):%03n:%i#{"(\e[31m" + Rails.env.upcase + "\e[0m)" if defined? Rails}* ",
  :PROMPT_S => "%N(%m):%03n:%i%l ",
  :RETURN => "%s\n" # used to printf
}

#IRB.conf[:PROMPT_MODE] = :RAILS_ENV
