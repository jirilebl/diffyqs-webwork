#!/bin/sh
for n in `ls -1d sec_* | sort -V` ; do
	printf '%-10s %2d exercises (%2d with solution, %2d untagged, %2d w/o comment, %2d w/o booklink)\n' "$n" `ls -1 $n/*.pg | wc -l` `grep -l '^BEGIN_.*SOLUTION' $n/*.pg | wc -l` `grep -L '^## TitleText1.*Notes on Diffy Qs' $n/*.pg | wc -l` `grep -L '^COMMENT(' $n/*.pg | wc -l` `grep -L 'htmlLink.*jirka.org/diffyqs/html' $n/*.pg | wc -l`
done

echo
echo Total: `ls -1 */*.pg | wc -l` exercises
echo With solutions: `grep -l '^BEGIN_.*SOLUTION' */*.pg | wc -l` exercises
echo Still untagged: `grep -L '^## TitleText1.*Notes on Diffy Qs' */*.pg | wc -l` exercises
echo Still without comment: `grep -L '^COMMENT(' */*.pg | wc -l` exercises
echo Without booklink: `grep -L 'htmlLink.*jirka.org/diffyqs/html' */*.pg | wc -l` exercises
