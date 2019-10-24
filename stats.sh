#!/bin/sh
for n in sec_* ; do
	printf '%-10s %2d exercises (%2d with solution)\n' "$n" `ls -1 $n/*.pg | wc -l` `grep -l '^BEGIN_.*SOLUTION' $n/*.pg | wc -l`
done

echo
echo Total: `ls -1 */*.pg | wc -l` exercises
echo With solutions: `grep -l '^BEGIN_.*SOLUTION' */*.pg | wc -l` exercises
