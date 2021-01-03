# Notes on Diffy Qs WeBWorK Problems

A set of WeBWorK problems for courses teaching a class with the
*Notes on Diffy Qs* textbook.

Coverage is Chapters 0, 1, 2, 3, 4, 6, 7, 8, and appendix A.  It should have
enough for a normal ODE course which uses 0, 1, 2, 6, 7 or perhaps 0, 1, 2, 3,
8 (and maybe A) if doing systems.  Chapters 4, and 8, are a little more sparse.
Section 6.5 has only one problem so far.  There are a few problems for 5.1, but
not enough to run the whole chapter.

## How to use?

To use, download https://www.jirka.org/diffyqs/diffyqs-webwork.tgz
and upload it to your WeBWorK course.  It should automatically unpack and
create the right directory structure.  Then in the homework editor go to import
and then import sets using the "def" files from the diffyqs-webwork directory.
Alternatively go to library browser, look into the diffyqs-webwork directory,
and pick problems one by one.

You could also just unpack this directory into your templates directory, or
even clone it directly from github.  In this case, make sure the directory 
is named exactly `diffyqs-webwork` for the set def files to work.

## Where did the problems come from?

The problems were mostly picked off from the Open Problem Library and modified
(some more heavily than others) to fit the style and notation of the book.
A number of new problems not (yet) in OPL were created and added, though most
of these have in some form now been also contributed to OPL.

The problems are essentially the same problems as those that are in the
Edfinity Notes on Diffy Qs course, which imports from this repository.  I will
keep this repository more up to date, and every once in a while the Edfinity
course will update from here.

I've cleaned off the OPL tags as they are no longer needed, and some of them
were downright confusing and many were just wrong, especially after the edits,
and they just made editing a bit more of a pain.  I've left the authorship
information where it was present to see who the original author was.
I'm slowly adding back full consistent OPL tags, but it's a slow process.

## Miscellanea

*make-defs.sh* creates the basic .def files by listing the .pg files.  So do
not edit the .def files themselves, they'd just get recreated at some point.

*make-tar.sh* creates the tar file useful for uploading directly into WeBWorK.
This will create all the right directory structure.

*stats.sh* gives statistics on number of problems and number of problems with
solutions in the various sections.

## Branches on GitHub

*master* branch is the current version, that should be always usable.  Since
the best way to work is to work on several machines at once, new development is
likely to break things for a little bit so there is the ...

*develop* branch, where new things are done.  Once they are tested, they will
be merged into *master*.  This branch will get merged onto *master* very often,
usually the moment everything is tested and fixed up on the WeBWorK machine.
So most of the time the two branches should be identical.

## Acknowledgements

Thanks to Edfinity for pestering me to motivate me to put these together and
to Andras Balogh and Jan Hlavacek for reporting and fixing errors.
