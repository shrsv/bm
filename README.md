# bm: ridiculously simple shell bookmarking

`bm` is an ultra-simple bookmarking script for the bash shell. 

# Installation

Download or clone this repository. Then:
	
	$ cd bm
	$ chmod u+x install.sh
	$ ./install.sh  # will ask for password

# Usage

Goto a folder, type:

	bm a
	
Now type:

	bm
	
You should see a table similar to this:

```
----------------------------------------
| bm_id | name   | path                |
----------------------------------------
| 1     | Videos | /Users/shrsv/Videos |
----------------------------------------
```

Now from any folder, you can `cd` to the `Videos` directory simply by typing this:

	bm 1 
	
That's all there is to it! 

# Why use it

The advantage of this id based approach is that it causes minimum cognitive load to the brain. You just have to scan a list of names and pick one from that, whereas in many bookmarking systems you have to remember the name of the bookmark and then type it to `cd` into it. Even with autocomplete, retrieving things from memory causes more cognitive load compared to a pick & choose approach (in my experience). When working on a complex problem you must focus on the problem and only the problem. Tool or software or filesystem terminology should not come into your working memory, but only the problem terminology should be in your working memory. So: `bm` asks you no questions, asks you to remember nothing; all it asks you to do is scan a list and make a choice.

# Options


1. `bm` show a list of all bookmarks
2. `bm a` add current folder to list of bookmarks
3. `bm id` cd to folder with id=id
4. `bm d id` delete folder with id=id from bookmark list
5. `bm c`clear all dead bookmarks
6. `bm r` renumber all bookmark ids
7. `bm f str` find string str in all bookmark paths and cd to it
8. `bm s (bm_id|name|path|hits|timestamp)` sort the bookmarks table by column

# Files

1. `bm_util` by default installed in `/usr/bin` but you can install it in any `bin` folder of your choice. This python script provides functionality.
2. `~/.bm_bash` contains the shell function `bm`. This file is sourced in `~/.bashrc` by the installation script.
3. `~/.bookmarks.db` sqlite database that contains all the bookmark entries. You can open using: `sqlite3 ~/.bookmarks.db`

