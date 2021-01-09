# Cheri version of Sun's GridBagLayoutDemo.java demo.

# See http://java.sun.com/docs/books/tutorial/uiswing/layout/gridbag.html

require 'rubygems'
require 'cheri/swing'

include Cheri::Swing

def later(&block)
 javax.swing.SwingUtilities.invoke_later(&block)
end
later {
@frame = swing.frame('grid_bag_layout_demo') {|f|
  grid_table_layout f, :wx=>0.1, :f=>:h
  default_close_operation :EXIT_ON_CLOSE
  grid_row{button 'Button 1'; button 'Button 2'; button 'Button 3'}
  grid_row{button('Long-Named Button 4', :w=>3, :py=>40, :f=>:both){on_click{later{puts 'hi'}}}}
  grid_row{button '5', :a=>:se, :x=>1, :w=>2, :wy=> 0.1, :i=>[10,0,0,0]}
}
@frame.pack
@frame.visible = true
}
