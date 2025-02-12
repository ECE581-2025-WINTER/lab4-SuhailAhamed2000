proc test {a1 b1 a2 b2} {
if {$a2<=$a1 || $b2<=$b1} {
puts "invalid"
return
}
set l [expr $a2-$a1]
set b [expr $b2-$b1]
set area [expr $l*$b]
return $area
}
set q [test 2 0 5 3]

