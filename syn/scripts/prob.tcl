proc test {} {
set inst [filter_collection [get_cells]  is_hierarchical==false]
set reflist [list]
foreach_in_collection reff $inst {set ref [get_attribute $reff ref_name]
				lappend reflist $ref }
set uniquelist [lsort -unique $reflist]
set count 0
foreach a $uniquelist {
foreach all_ref $reflist {
if {$a==$all_ref } {
incr count
}
}
echo "$a\t	$count"
set count 0
}
}
echo "reference name	   number of instances"
set p [test]

