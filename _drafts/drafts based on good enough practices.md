blogpost over good enough practices 
scientific computing


Kan eventueel ook gechecked worden door te kijken naar survey resultaten

"Many of our recommendations are for the benefit of the collaborator every
researcher cares about most: their future self 4 . "


Misschien beter een serie van posts
• Data Management: saving both raw and intermediate forms; documenting all
steps; creating tidy data amenable to analysis.
• Software: writing, organizing, and sharing scripts and programs used in an
analysis.
• Collaboration: making it easy for existing and new collaborators to understand
and contribute to a project.
• Project Organization: organizing the digital artifacts of a project to ease
discovery and understanding.
• Tracking Changes: recording how various components of your project change
over time.
• Manuscripts: writing manuscripts in a way that leaves an audit trail and
minimizes manual merging of conflict.

 
## data management:
One is to work towards ready-to-analyze data incrementally,

DENK HIERBIJ OOK AAN VALIDATE PACKAGE 
1. Save the raw data (1a).
2. Create the data you wish to see in the world (1b).  = dit is dplyr enz
   The goal here is to improve machine and human 
readability, but not to do vigorous data filtering or add external information.
change file format
variable names to readable names
file names logical
3. Create analysis-friendly data (1c)
    Dit is waar je tidyr gebruikt 
4. Record all the steps used to process data (1d)
The best way to do this is to write scripts for every stage of data processing.
This might feel frustratingly slow, but you will get faster with practice. The
immediate payoff will be the ease with which you can re-do data preparation
when new data arrives. You can also re-use data preparation logic in the future
for related projects.
5. Anticipate the need to use multiple tables (1e)
 It is generally wise to give each record or unit a unique, persistent key
and to use the same names and codes when variables in two datasets refer to the
same thing.
6. Submit data to a reputable DOI-issuing repository so that others can
access and cite it. (1f)
** Follow your research
community’s standards for how to provide metadata.** Note that there are two
types of metadata: metadata about the dataset as a whole and metadata about
the content within the dataset. If the audience is humans, write the metadata
(the readme file) for humans. If the audience includes automatic metadata
harvesters, fill out the formal metadata and write a good readme file for the
humans [11].


## software
The core realization in these practices is that readable, reusable, and testable are all
side effects of writing modular code, i.e., of building programs out of short,
single-purpose functions with clearly-defined inputs and outputs.

1. Place a brief explanatory comment at the start of every program (2a),
That comment should include at least one example of
how the program is used: remember, a good example is worth a thousand words.
Where possible, the comment should also indicate reasonable values for
parameters.
Synthesize image files for testing circularity estimation algorithm.
Usage: make_images.py -f fuzzing -n flaws -o output -s seed -v -w size
where:
-f fuzzing = fuzzing range of blobs (typically 0.0-0.2)
-n flaws = p(success) for geometric distribution of # flaws/sample (e.g. 0.5-0.8)
-o output = name of output file
-s seed = random number generator seed (large integer)
-v = verbose
-w size = image width/height in pixels (typically 480-800)

*Dit is echt een fantastisch idee!, als package is het niet nodig, omdat je al volledige documetnatie hebt voor al je publieke functies*
2. Decompose programs into functions (2b) 

 The key motivation here is to fit the
program into the most limited memory of all: ours. Human short-term memory
is famously incapable of holding more than about seven items at once [12]. If we
are to understand what our software is doing, we must break it into chunks that
obey this limit, then create programs by combining these chunks.

3. Be ruthless about eliminating duplication (2c).

The easiest code to debug and maintain is code you didn’t actually write, so
always search for well-maintained software libraries that do what you
need (2d) before writing new code yourself, and test libraries before relying
on them (2e).

4. Give functions and variables meaningful names (2f)

 As a rule of thumb, the
greater the scope of a variable, the more informative its name should be: while
it’s acceptable to call the counter variable in a loop i or j, the major data
structures in a program should not have one-letter names.

5. Make dependencies and requirements explicit. (2g)

i.e., by adding a file called
something like requirements.txt to the root directory of the project, or by
adding a “Getting Started” section to the README file.

6. Do not comment and uncomment sections of code to control a
program’s behavior (2h)

 Instead, put if/else statements in the program
to control what it does.
7. Provide a simple example or test data set (2i) 
 
that users (including
yourself) can run to determine whether the program is working and whether it
gives a known correct output for a simple known input.

8. Submit code to a reputable DOI-issuing repository (2j)

## Collaboration
 These collaborators might be new grad students or postdocs in the lab, or they
might be you returning to a project that has been idle for some time. 

1. Create an overview of your project. (3a) 
 This file (generally
called README, README.txt, or something similar) should contain the project’s
title, a brief description, up-to-date contact information, and an example or two
of how to run various cleaning or analysis tasks. It is often the first thing users
of your project will look at, so make it explicit that you welcome contributors
and point them to ways they can help.
You should also create a CONTRIBUTING file that describes what people need to
do in order to get the project going and contribute to it, i.e., dependencies that
need to be installed, tests that can be run to ensure that software has been
installed correctly, and guidelines or checklists that your project adheres to.

2. Create a shared public “to-do” list (3b). 
todo file on shared drive or issues on github or bitbucket. Whatever you choose, describe the items clearly so that they make
sense to newcomers.  (You can even add labels
such as “low hanging fruit” to point newcomers at issues that are good starting
points.)
3. Make the license explicit. (3c) 

4. Make the project citable (3d) 

by including a CITATION file in the project’s
home directory that describes how to cite this project as a whole, and where to
find (and how to cite) any data sets, code, figures, and other artifacts that have
their own DOIs. 
Please cite this work as:
Morris, B.D. and E.P. White. 2013. "The EcoData Retriever:
improving access to existing ecological data." PLOS ONE 8:e65848.
http://doi.org/doi:10.1371/journal.pone.0065848

## Project Organization
Organizing the files that make up a project in a logical and consistent directory
structure will help you and others keep track of them.

1. Put each project in its own directory, which is named after the
project. (4a)
As a rule of thumb, divide work into projects based on the overlap in data and
code files. If two research efforts share no data or code, they will probably be
easiest to manage independently. If they share more than half of their data and
code, they are probably best managed together, while if you are building tools
that are used in several projects, the common code should probably be in a
project of its own.
2. Put text documents associated with the project in the doc
directory. (4b) 
3. Put raw data and metadata in a data directory, and files generated
during cleanup and analysis in a results directory (4c), 
4. Put project source code in the src directory. (4d) 
This directory may contain two conceptually distinct types of files that should
be distinguished either by clear file names or by additional subdirectories. 

- The first type are files or groups of files that perform the core analysis of the research, such as data cleaning or statistical analyses. 
- The second type of file in src is controller or driver scripts that combine the core
analytical functions with particular parameters and data input/output
commands in order to execute the entire project analysis from start to finish.

5. Put external scripts, or compiled programs in the bin directory (4e).
6. Name all files to reflect their content or function. (4f)
 bird count table.csv, manuscript.md, or
sightings analysis.py. Do not using sequential numbers (e.g., result1.csv,
result2.csv) or a location in a final manuscript (e.g., fig 3 a.png), since those
numbers will almost certainly change as the project evolves.

## Keeping Track of Changes
Keeping track of changes that you or your collaborators make to data and software is
a critical part of research. Being able to reference or retrieve a specific version of the
entire project aids in reproducibility for you leading up to publication, when
responding to reviewer comments, and when providing supporting information for
reviewers, editors, and readers.
 We therefore recommend [because this is hard for newcomers to understand and use] that projects
adopt either a systematic manual approach for managing changes or version control in
its full glory.

1. Back up (almost) everything created by a human being as soon as it is
created. (5a)
2. Keep changes small. (5b) 
As a rule of thumb, a good size for a single change is a group of edits that
you could imagine wanting to undo in one step at some point in the future.
3. Share changes frequently. (5c)
Do not allow
individual investigator’s versions of the project repository to drift apart, as the
effort required to merge differences goes up faster than the size of the difference.
4. Create, maintain, and use a checklist for saving and sharing changes
to the project. (5d)
 ### What Not to Put Under Version Control
First, today’s version control systems are not designed to handle megabyte-sized
files, never mind gigabytes, so large data or results files should not be included. What’s “large”? As a benchmark, note that the limit for an individual file on GitHub is 100MB. 
Second, file comparison in version control systems is optimized for plain text files,such as source code. The ability to see so-called “diffs” is one of the great joys of version control. But this does not work well for office files, pdfs, or csv files. 

## Manuscripts
An old joke says that doing the research is the first 90% of any project; writing up is
the other 90%. While writing is rarely addressed in discussions of scientific computing,
computing has changed scientific writing just as much as it has changed research.
A common practice in academic writing is for the lead author to send successive
versions of a manuscript to coauthors to collect feedback, which is returned as changes
to the document, comments on the document, plain text in email, or a mix of all three.
This results in a lot of files to keep track of, and a lot of tedious manual labor to
merge comments to create the next master version.

Instead of an email-based workflow, we recommend mirroring good practices for
managing software and data to make writing scalable, collaborative, and reproducible.
As with our recommendations for version control in general, we suggest that groups
choose one of two different approaches for managing manuscripts. The goals of both
are to:

• Ensure that text is accessible to yourself and others now and in the future by
making a single master document that is available to all coauthors at all times.
• Reduce the chances of work being lost or people overwriting each other’s work.
• Make it easy to track and combine contributions from multiple collaborators.
• Avoid duplication and manual entry of information, particularly in constructing
bibliographies, tables of contents, and lists.
• Make it easy to regenerate the final published form (e.g., a PDF) and to tell if it
is up to date.
• Make it easy to share that final version with collaborators and to submit it to a
journal.

**Single Master Online**
Our first alternative has two parts:
1. Write manuscripts using online tools with rich formatting, change
tracking, and reference management (6a),
2. Include a PUBLICATIONS file in the project’s doc directory (6b) 

with
metadata about each online manuscript (e.g., their URLs). 

**Text-based Documents Under Version Control**
The second approach treats papers exactly like software, and has been used by
researchers in mathematics, astronomy, physics, and related disciplines for decades:
1. Write the manuscript in a plain text format that permits version
control (6c) 
2. Include tools needed to compile manuscripts in the project folder (6d)

This approach re-uses the version control tools and skills used to manage data and
software, and is a good starting point for fully-reproducible research. However, it
requires all contributors to understand a much larger set of tools, including markdown
or LaTeX, make, BiBTeX, and Git/GitHub.

**Supplementary Materials**
In order to make these materials as accessible to others as
possible, do not rely solely on the PDF format, since extracting data from PDFs is
notoriously hard. Instead, we recommend separating the results that you may expect
others to reuse (e.g., data in tables, data behind figures) into separate, text-format
files. The same holds for any commands or code you want to include as supplementary
material: use the format that most easily enables reuse (source code files, Unix shell
scripts etc).


# conclusion
These practices are
pragmatic, accessible to people who consider themselves computing novices, and can
be applied by both individuals and groups.
Most importantly, these practices make
researchers more productive individually by enabling them to get more done in less
time and with less pain. They also accelerate research as a whole by making
computational work (which increasingly means all work) more reproducible.
