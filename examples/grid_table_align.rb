require 'rubygems'
require 'cheri/swing'

include Cheri::Swing

swing.frame('Anchor/Align') {|f|
  grid_table_layout f, :wx=>0.1, :wy=>0.1
  size 480, 360
  on_window_closing {f.dispose}
  content_pane {background :BLUE}
  grid_row{
    button('NW', :align=>:nw, :colspan=>2) {on_click{puts 'boo'}}
    button('RIGHT', :align=>:right) {on_click{puts 'boo'}}
  }
  grid_row{
    button('CENTER', :align=>:center, :colspan=>3) {on_click{puts 'boo'}}
  }
  grid_row{
    button('LEFT', :align=>:left, :colspan=>2) {on_click{puts 'boo'}}
    button('SE', :align=>:se) {on_click{puts 'boo'}}
  }
  grid_row{
    grid_table(:colspan=>3, :wx=>0.1, :wy=>0.1, :f=>:both, :i=>[64,16], :p=>[5,5]) {
      defaults :wx=>0.1, :wy=>0.1
      etched_border :RAISED
      background :RED
      grid_row(:i=>12){
        checkbox 'who?', :a=>:left
        checkbox 'what?', true
        checkbox 'where?', :a=>:right
      }
    }
  }
}.visible = true
