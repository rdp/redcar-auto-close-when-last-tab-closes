module Redcar
  
  class SaveAllOnLoseFocus2
    
    def self.sensitivities
      Redcar.app.add_listener(:new_window) do |win|
        win.add_listener(:tab_closed) do
          if Redcar.app.focussed_window.all_tabs.length == 0
             Redcar::Top::CloseWindowCommand.new.run(Redcar.app.focussed_window)
          end
        end
      end
    end
  end
end
    