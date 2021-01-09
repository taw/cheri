require 'rubygems'
require 'cheri/swing'

include Cheri::Swing

swing.frame('Columns') {|f|
  grid_table_layout f, :wx=>0.1#, :wy=>0.1
  size 600, 400
  on_window_closing {f.dispose}
  grid_row(:f=>:h,:a=>:nw){
    label 'Foo', :wx=>0.1
    label 'Bar', :wx=>0.3
    label 'Baz', :wx=>0.6
  }
  10.times {|n|
    grid_row(:f=>:h,:a=>:nw){
      label('xxx'){background :RED; opaque true}
      label('yyy'){background :GREEN; opaque true}
      label('zzz'){background :BLUE; opaque true}
    }
  }
  # empty row with weighty = 1.0, to force others to the top
  grid_row{label '', :wy=>1.0}
}.visible = true
