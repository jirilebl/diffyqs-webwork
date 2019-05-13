#!/bin/sh
for n in sec_* ; do
	printf '%-10s %2d exercises\n' "$n" `ls -1 $n/*.pg | wc -l`
done

echo
echo Total: `ls -1 */*.pg | wc -l` exercises
