# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
	1. Version control is keeping a software system consisting of many versions organized.
	2. It is useful to make sure there is a synced master version of the project.
* What is a branch and why would you use one?
	1. A branch is pointer to one commit.
	2. The default branch name in Git is master. As you initially make commits, you're given a master branch that points to the last commit you made. Every time you commit, it moves forward automatically.
	3. Using branch makes it easier to segregate tasks within a project.
* What is a commit? What makes a good commit message?
	1. Commit records a snapshot of your history. This will be the basic workflow that you use most of the time.
	2. A good commit message describes what you are doing to the code.
* What is a merge conflict?
 	1. Merge conflict happens if you changed the same part of the same file differently in the two branches you’re merging together, Git won’t be able to merge them.