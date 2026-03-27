import '../utils/quiz.dart';
import '../utils/utils.dart';

const Map<int, String> gitTopics = {
  1: "The Local Repository",
  2: "Branching & The Safety Net",
  3: "Remote Connectivity",
  4: "Distributed Collaboration",
  5: "Troubleshooting & Data Integrity",
  6: "Android Studio Integration",
};

const Map<int, Map<int, String>> gitModules = {
  1: {
    // The Local Repository
    1: "What is Version Control? (The 'Final_v2' Problem)",
    2: "Setup: Installing Git & Identity (user.name/email)",
    3: "The .git Directory: Understanding the Hidden Database",
    4: "git init: Initializing a New Repository",
    5: "git status: Checking the State of Your Files",
    6: "git add: Moving Files to the Staging Area",
    7: "git commit: Creating a Permanent Snapshot",
    8: "The Power of Ignoring: The .gitignore File",
    9: "Reviewing History with git log --oneline",
  },
  2: {
    // Branching & The Safety Net
    10: "The Concept of Branching (Parallel Universes)",
    11: "Creating and Listing Branches (git branch)",
    12: "Switching Contexts (git checkout / git switch)",
    13: "The Basic Merge (Fast-Forward Logic)",
    14: "Understanding the 'Safety Net' (git stash)",
    15: "Managing Multiple Stashes (list & pop)",
    16: "Advanced Branching: Three-Way Merge",
    17: "Comparing Branches (git diff main..feature)",
    18: "Deleting and Renaming Branches Safely",
  },
  3: {
    // Remote Connectivity
    19: "What is a Remote? (GitHub vs Git)",
    20: "Creating a Remote Repository on GitHub",
    21: "Linking Local to Remote (remote add origin)",
    22: "Authentication: Personal Access Tokens & SSH",
    23: "Uploading Code: git push -u origin main",
    24: "Downloading Code: git pull",
    25: "Fetching vs Pulling: Safety First",
    26: "Managing Remote Branches on the Server",
    27: "Remote Troubleshooting: Mismatched Histories",
  },
  4: {
    // Distributed Collaboration
    28: "The World of Open Source and Forking",
    29: "Cloning: Downloading Entire Project Histories",
    30: "Forking: Creating Your Personal Server Copy",
    31: "The Pull Request (PR) Concept",
    32: "Creating Your First PR (The Contribution Flow)",
    33: "Code Review: Handling Feedback and Changes",
    34: "Managing 'Upstream' Remotes",
    35: "Syncing Your Fork with the Original Project",
    36: "Contributing Etiquette and Issue Tracking",
  },
  5: {
    // Troubleshooting & Data Integrity
    37: "Anatomy of a Merge Conflict",
    38: "Resolving Conflicts Manually (The Marker Logic)",
    39: "Undoing Local Changes with git restore",
    40: "Moving the Timeline: git reset (--hard vs --soft)",
    41: "Public Safety: Undo with git revert",
    42: "Amending the Last Commit (--amend)",
    43: "Recovering the 'Lost': Using git reflog",
    44: "Checking Database Integrity (git fsck)",
    45: "Best Practices for a Clean Project History",
  },
  6: {
    // Android Studio Integration
    46: "Connecting GitHub Account to Android Studio",
    47: "The Visual Commit Tool Window (Alt + 0)",
    48: "Navigating the Visual Git Log Tab",
    49: "Visual Branching and Switching (Bottom-Right Menu)",
    50: "The 3-Way Merge: Visual Conflict Resolution",
    51: "Stashing vs Shelving in the IDE",
    52: "The Power of 'Annotate' (Visual Git Blame)",
    53: "Remote Icons: One-Click Pull, Push, & Fetch",
    54: "Managing Pull Requests Directly inside the IDE",
  },
};

final Map<int, Lesson> gitLessons = {
  1: Lesson(1, 1),
  2: Lesson(1, 2),
  3: Lesson(1, 3),
  4: Lesson(1, 4),
  5: Lesson(1, 5),
  6: Lesson(1, 6),
  7: Lesson(1, 7),
  8: Lesson(1, 8),
  9: Lesson(1, 9),
  10: Lesson(2, 10),
  11: Lesson(2, 11),
  12: Lesson(2, 12),
  13: Lesson(2, 13),
  14: Lesson(2, 14),
  15: Lesson(2, 15),
  16: Lesson(2, 16),
  17: Lesson(2, 17),
  18: Lesson(2, 18),
  19: Lesson(3, 19),
  20: Lesson(3, 20),
  21: Lesson(3, 21),
  22: Lesson(3, 22),
  23: Lesson(3, 23),
  24: Lesson(3, 24),
  25: Lesson(3, 25),
  26: Lesson(3, 26),
  27: Lesson(3, 27),
  28: Lesson(4, 28),
  29: Lesson(4, 29),
  30: Lesson(4, 30),
  31: Lesson(4, 31),
  32: Lesson(4, 32),
  33: Lesson(4, 33),
  34: Lesson(4, 34),
  35: Lesson(4, 35),
  36: Lesson(4, 36),
  37: Lesson(5, 37),
  38: Lesson(5, 38),
  39: Lesson(5, 39),
  40: Lesson(5, 40),
  41: Lesson(5, 41),
  42: Lesson(5, 42),
  43: Lesson(5, 43),
  44: Lesson(5, 44),
  45: Lesson(5, 45),
  46: Lesson(6, 46),
  47: Lesson(6, 47),
  48: Lesson(6, 48),
  49: Lesson(6, 49),
  50: Lesson(6, 50),
  51: Lesson(6, 51),
  52: Lesson(6, 52),
  53: Lesson(6, 53),
  54: Lesson(6, 54),
};

final List<Quiz> gitQuizM1 = [
  // --- Topic 1: What is Version Control? ---
  Quiz(
    1,
    "What problem does Version Control primarily solve for developers?",
    ["Managing multiple versions like 'Final_v2' and tracking changes over time", "Increasing the speed of the computer processor", "Designing the user interface of an application", "Translating code into machine language"],
  ),
  Quiz(
    2,
    "In the 'Final_v2' problem, why is manual renaming of files considered bad practice?",
    ["It is disorganized, prone to human error, and lacks a history of what changed", "It takes up too much space on the hard drive", "It prevents the application from being compiled", "It is only compatible with Windows operating systems"],
  ),
  Quiz(
    3,
    "What is the primary purpose of a Version Control System (VCS)?",
    ["To record changes to a file or set of files over time so you can recall specific versions later", "To automatically write code for the developer", "To host a website on a public server", "To scan for viruses in the project folder"],
  ),
  Quiz(
    4,
    "Which type of VCS stores the complete history of the project on every contributor's computer?",
    ["Distributed Version Control System (like Git)", "Centralized Version Control System", "Local Version Control System", "Manual File Naming System"],
  ),
  Quiz(
    5,
    "What happens if you don't use Version Control and you accidentally delete a week's worth of code?",
    ["The code is likely lost forever unless you have a manual backup", "Git will automatically recover it from the cloud", "The operating system will undo the deletion automatically", "The code is stored in the hidden .git folder by default even without init"],
  ),

  // --- Topic 2: Setup: Installing Git & Identity ---
  Quiz(
    6,
    "Which command is used to check the version of Git installed on your system?",
    ["git --version", "git check", "git install --status", "git -v"],
  ),
  Quiz(
    7,
    "Why is it important to configure 'user.name' and 'user.email' in Git?",
    ["To associate every commit with a specific author for accountability", "To log in to your Windows account", "To allow Git to send you marketing emails", "To encrypt your source code"],
  ),
  Quiz(
    8,
    "Which command sets your global username in Git?",
    ["git config --global user.name 'Your Name'", "git set --user 'Your Name'", "git identity --name 'Your Name'", "git config user = 'Your Name'"],
  ),
  Quiz(
    9,
    "What does the '--global' flag mean in a git config command?",
    ["The setting will apply to all repositories on your current computer", "The setting will be shared with everyone on the internet", "The setting is only for the current project folder", "The setting allows Git to work without an internet connection"],
  ),
  Quiz(
    10,
    "Which command allows you to view all your current Git configurations?",
    ["git config --list", "git show --settings", "git view --config", "git status --global"],
  ),

  // --- Topic 3: The .git Directory ---
  Quiz(
    11,
    "What is the '.git' folder?",
    ["A hidden database that stores all history, configurations, and snapshots of the project", "A folder where your compiled Android APK is stored", "A temporary cache that can be deleted safely at any time", "A system folder used by Windows to run Git commands"],
  ),
  Quiz(
    12,
    "What happens to the version history if you delete the '.git' directory?",
    ["All version history is deleted, and the folder becomes a regular directory", "Only the last commit is deleted", "The history is moved to the Recycle Bin for 30 days", "Nothing, Git stores the history in the cloud automatically"],
  ),
  Quiz(
    13,
    "Where is the '.git' folder usually located?",
    ["In the root directory of your project", "In the C:/Program Files/Git folder", "In the user's Documents folder", "Inside the src/ folder of your project"],
  ),
  Quiz(
    14,
    "Why is the '.git' folder hidden by default?",
    ["To prevent users from accidentally modifying or deleting the internal database", "To save space on the screen", "Because it contains secret passwords for GitHub", "Because it is an empty folder that isn't needed by the user"],
  ),
  Quiz(
    15,
    "Does Git track your files if the '.git' directory is missing?",
    ["No, the folder must be present for Git to track anything", "Yes, Git tracks files using the Windows Registry", "Yes, if you have a GitHub account", "No, but it will start tracking as soon as you open Android Studio"],
  ),

  // --- Topic 4: git init ---
  Quiz(
    16,
    "What is the purpose of the 'git init' command?",
    ["To initialize a new, empty Git repository in the current folder", "To install Git on your computer", "To download a project from GitHub", "To create a new Flutter project"],
  ),
  Quiz(
    17,
    "What is created immediately after running 'git init'?",
    ["A hidden '.git' directory", "A README.md file", "A .gitignore file", "The first commit of the project"],
  ),
  Quiz(
    18,
    "Can you run 'git init' inside an existing project folder that already has code?",
    ["Yes, it will start tracking the existing project from that point forward", "No, it only works in empty folders", "Yes, but it will delete all existing files first", "No, you must use git clone instead"],
  ),
  Quiz(
    19,
    "What is the result of running 'git init' in a folder that is already a Git repository?",
    ["It reinitializes the repository but usually doesn't overwrite existing history", "It deletes the existing repository and starts over", "It causes a fatal error and crashes the terminal", "It automatically pushes the code to GitHub"],
  ),
  Quiz(
    20,
    "Which command would you use to start version control in a new folder named 'MaoApp'?",
    ["cd MaoApp followed by git init", "git create MaoApp", "git start --new MaoApp", "git install MaoApp"],
  ),

  // --- Topic 5: git status ---
  Quiz(
    21,
    "What does 'git status' tell the user?",
    ["The current state of the working directory and staging area", "The list of all users who have access to the project", "The remaining battery life of the computer", "The number of lines of code in the project"],
  ),
  Quiz(
    22,
    "In 'git status', what does 'untracked files' mean?",
    ["Files that exist in the folder but are not yet being tracked by Git", "Files that have been deleted from the hard drive", "Files that are currently being uploaded to GitHub", "Files that Git is ignoring because of .gitignore"],
  ),
  Quiz(
    23,
    "If a file name appears in red in 'git status', it usually means:",
    ["The file is modified or untracked but not yet staged", "The file has a syntax error in the code", "The file is ready to be pushed to GitHub", "The file is about to be deleted"],
  ),
  Quiz(
    24,
    "How often should you run 'git status'?",
    ["Frequently, to verify which files are staged, modified, or untracked", "Only once when you start the project", "Only when you encounter an error", "Only before you turn off your computer"],
  ),
  Quiz(
    25,
    "What message does 'git status' show when there is nothing to commit?",
    ["nothing to commit, working tree clean", "status: OK", "no changes found", "everything is up to date"],
  ),

  // --- Topic 6: git add ---
  Quiz(
    26,
    "What is the purpose of the 'Staging Area' in Git?",
    ["To prepare and organize a set of changes before committing them", "To store code that is ready for the Play Store", "To test if the code has bugs", "To act as a trash can for unwanted code"],
  ),
  Quiz(
    27,
    "Which command adds a specific file named 'main.dart' to the staging area?",
    ["git add main.dart", "git stage --file main.dart", "git commit main.dart", "git move main.dart to staging"],
  ),
  Quiz(
    28,
    "What does the command 'git add .' do?",
    ["Adds all new, modified, and deleted files in the current directory to staging", "Deletes all untracked files in the folder", "Commits all changes with a default message", "Sends all files to GitHub immediately"],
  ),
  Quiz(
    29,
    "If you modify a file after running 'git add', what must you do?",
    ["Run 'git add' again to stage the newest changes", "Nothing, Git tracks the changes automatically once added once", "Run 'git commit' immediately", "Delete the file and start over"],
  ),
  Quiz(
    30,
    "Does 'git add' create a permanent snapshot in history?",
    ["No, it only prepares the files; 'git commit' creates the snapshot", "Yes, it is the same as a commit", "Yes, but only for untracked files", "No, it only renames the files"],
  ),

  // --- Topic 7: git commit ---
  Quiz(
    31,
    "What is a 'commit' in Git?",
    ["A permanent snapshot of the project at a specific point in time", "A request to join a project on GitHub", "A command to delete the '.git' folder", "A way to comment out code in Dart"],
  ),
  Quiz(
    32,
    "Which command is used to commit staged changes with a descriptive message?",
    ["git commit -m 'Your message'", "git save -message 'Your message'", "git snapshot -m 'Your message'", "git log -m 'Your message'"],
  ),
  Quiz(
    33,
    "What happens if you run 'git commit' without the '-m' flag?",
    ["Git opens a default text editor (like Vim) for you to type a message", "The commit fails immediately", "The commit is saved with no message", "Git automatically generates a random message"],
  ),
  Quiz(
    34,
    "Why should commit messages be descriptive (e.g., 'Add login button' instead of 'Update')?",
    ["To help yourself and others understand what changes were made in that version", "To make the '.git' folder smaller", "To bypass Git security checks", "To make the code run faster"],
  ),
  Quiz(
    35,
    "Can you commit files that have not been added to the staging area?",
    ["No, only files in the staging area are included in the commit", "Yes, git commit includes all files in the folder", "Yes, but only if you use the -a flag", "No, you must push them first"],
  ),

  // --- Topic 8: The .gitignore File ---
  Quiz(
    36,
    "What is the purpose of the '.gitignore' file?",
    ["To specify which files or folders Git should intentionally not track", "To hide files from the Android Studio project view", "To delete unnecessary files from the computer", "To password-protect sensitive source code"],
  ),
  Quiz(
    37,
    "Which of the following is commonly added to .gitignore?",
    ["Sensitive keys, build/ folders, and temporary log files", "The main.dart file", "The .git folder", "The commit history"],
  ),
  Quiz(
    38,
    "How do you tell Git to ignore all files inside a folder named 'bin'?",
    ["Add 'bin/' to the .gitignore file", "Delete the 'bin' folder", "Run 'git stop bin'", "Run 'git ignore bin'"],
  ),
  Quiz(
    39,
    "What happens if you add a file to .gitignore that was already being tracked by Git?",
    ["Git will continue to track it until you manually remove it from the index", "Git will immediately stop tracking it and delete it from history", "Git will crash when you next commit", "Git will ignore the .gitignore rule for that file"],
  ),
  Quiz(
    40,
    "Why is it important to ignore the 'build/' folder in Android/Flutter projects?",
    ["Because it contains large, auto-generated files that change frequently and aren't source code", "Because it contains the app's secret icons", "Because it is required for the app to run on a real phone", "Because Git cannot read .jar or .class files"],
  ),

  // --- Topic 9: Reviewing History with git log ---
  Quiz(
    41,
    "What does 'git log' show?",
    ["A list of all commits made in the repository's history", "A list of files currently in the staging area", "The status of the internet connection to GitHub", "The contents of the .gitignore file"],
  ),
  Quiz(
    42,
    "What is the benefit of using 'git log --oneline'?",
    ["It shows each commit as a single line, making it easier to read a long history", "It makes the text colorful", "It only shows the very first commit", "It displays the full code changes for every file"],
  ),
  Quiz(
    43,
    "What is a 'Commit Hash' (the long string of letters and numbers in the log)?",
    ["A unique ID for that specific commit generated using the SHA-1 algorithm", "The user's password for GitHub", "The time the commit was made converted to hex", "The name of the computer that made the commit"],
  ),
  Quiz(
    44,
    "How do you exit the 'git log' screen if it gets stuck in the terminal?",
    ["Press the 'q' key", "Press 'Ctrl + Alt + Delete'", "Type 'exit'", "Restart the terminal"],
  ),
  Quiz(
    45,
    "If you want to see who made a specific change, which log command is most useful?",
    ["git log", "git status", "git diff", "git init"],
  ),

  // --- Mixed Review Module 1 (Questions 46 - 100) ---
  Quiz(
    46,
    "Which command sequence is standard for saving work in Git?",
    ["git add followed by git commit", "git commit followed by git add", "git init followed by git push", "git status followed by git log"],
  ),
  Quiz(
    47,
    "Does Git track empty folders?",
    ["No, Git only tracks files; a folder must contain at least one file to be tracked", "Yes, Git tracks everything created", "Yes, but only if you use git add -all", "No, empty folders are automatically added to .gitignore"],
  ),
  Quiz(
    48,
    "Which command shows exactly which lines of code were changed in a modified file?",
    ["git diff", "git log", "git status", "git check"],
  ),
  Quiz(
    49,
    "If 'git status' shows 'Changes to be committed', where are those files?",
    ["In the Staging Area", "In the .gitignore file", "In the remote GitHub repository", "On the Desktop"],
  ),
  Quiz(
    50,
    "Can you change a commit message after you have already committed (but not pushed)?",
    ["Yes, using git commit --amend", "No, commits are permanent and cannot be changed", "Yes, by deleting the .git folder", "Yes, by running git init again"],
  ),
  Quiz(
    51,
    "What is the difference between Git and GitHub?",
    ["Git is a local tool; GitHub is an online hosting service for Git repositories", "They are the exact same thing", "Git is for Windows; GitHub is for Mac", "Git is for Android; GitHub is for iOS"],
  ),
  Quiz(
    52,
    "Which command should you run first when starting a brand new project?",
    ["git init", "git commit", "git push", "git add"],
  ),
  Quiz(
    53,
    "In 'git log', what does the 'HEAD' pointer represent?",
    ["Your current location in the commit history", "The very first commit ever made", "The master server on GitHub", "The developer's computer name"],
  ),
  Quiz(
    54,
    "What does 'git add *' do?",
    ["Adds all files in the current folder (except those starting with a dot)", "Deletes all files", "Adds only the .gitignore file", "Commits everything automatically"],
  ),
  Quiz(
    55,
    "What is 'SHA-1' used for in Git?",
    ["To generate a unique 40-character checksum for commits and files", "To encrypt the user's password", "To speed up the upload to GitHub", "To compress images in the project"],
  ),
  Quiz(
    56,
    "If you create a file called 'secrets.txt' and don't want it on GitHub, what is the best step?",
    ["Add 'secrets.txt' to the .gitignore file", "Rename it to '.secrets.txt'", "Never save the file", "Encrypt the file with a password"],
  ),
  Quiz(
    57,
    "Which command shows your commit history in a simple graph format?",
    ["git log --oneline --graph --all", "git show graph", "git status --visual", "git list --history"],
  ),
  Quiz(
    58,
    "Can Git be used for projects other than programming (like writing a book)?",
    ["Yes, Git can track changes in any text-based files", "No, it only works for .java or .dart files", "No, it is strictly for software engineers", "Yes, but only if the book is about coding"],
  ),
  Quiz(
    59,
    "What is the 'Working Directory'?",
    ["The actual folder on your computer where you are currently editing files", "The internal storage inside the .git folder", "The cloud storage on GitHub", "The staging area"],
  ),
  Quiz(
    60,
    "What is the 'Index' in Git terms?",
    ["Another name for the Staging Area", "A list of all developers in the project", "The first page of a website", "A file that lists all commits"],
  ),
  Quiz(
    61,
    "What command is used to move a file or rename a file while keeping the Git history?",
    ["git mv", "git rename", "git move", "git change"],
  ),
  Quiz(
    62,
    "What command is used to remove a file from the working directory and the Git index?",
    ["git rm", "git delete", "git remove", "git trash"],
  ),
  Quiz(
    63,
    "If you want to see the details of a specific commit, which command do you use?",
    ["git show [commit-hash]", "git log --details", "git status --commit", "git view [hash]"],
  ),
  Quiz(
    64,
    "What does 'git add -A' do?",
    ["Adds all changes, including deletions, in the entire repository", "Adds only files named A", "Aborts the current staging process", "Adds only the Author information"],
  ),
  Quiz(
    65,
    "Which command will remove a file from staging but keep it in the working directory?",
    ["git reset HEAD [file]", "git rm --cached [file]", "git undo add", "git restore --staged [file]"],
  ),
  Quiz(
    66,
    "Why is Git called a 'Distributed' VCS?",
    ["Because every developer has a full copy of the project history locally", "Because it is distributed via the internet", "Because it only works on many computers at once", "Because the files are distributed across different hard drives"],
  ),
  Quiz(
    67,
    "Which file stores the configurations for a specific local repository?",
    [".git/config", ".gitignore", "git.exe", "settings.json"],
  ),
  Quiz(
    68,
    "What is the default name often given to the primary branch in Git?",
    ["main (or master)", "primary", "root", "first"],
  ),
  Quiz(
    69,
    "Does 'git init' require an internet connection?",
    ["No, it is a local command", "Yes, to verify the license", "Yes, to connect to GitHub", "Only if you are using a Mac"],
  ),
  Quiz(
    70,
    "What command clears the terminal screen?",
    ["clear (or cls on Windows)", "git clear", "git clean", "git reset screen"],
  ),
  Quiz(
    71,
    "What happens if you commit without adding any files first?",
    ["Git will say 'nothing to commit'", "Git will commit every file in the folder", "Git will crash", "Git will create an empty commit"],
  ),
  Quiz(
    72,
    "How can you see only the last 3 commits in the log?",
    ["git log -n 3", "git log --last 3", "git show 3", "git status -3"],
  ),
  Quiz(
    73,
    "What happens if you run 'git add' on a file that is already in .gitignore?",
    ["Git will ignore the command unless you use the -f (force) flag", "Git will automatically remove it from .gitignore", "Git will delete the file", "Git will commit it immediately"],
  ),
  Quiz(
    74,
    "Which command shows who changed which line in a file?",
    ["git blame [file]", "git who [file]", "git log --lines", "git status --author"],
  ),
  Quiz(
    75,
    "Can you undo a 'git init'?",
    ["Yes, by deleting the hidden .git folder", "No, it is a permanent change to the hard drive", "Yes, by running git deinit", "Yes, by uninstalling Git"],
  ),
  Quiz(
    76,
    "What is the purpose of the 'git help' command?",
    ["To display manual pages and documentation for Git commands", "To ask GitHub support for help", "To fix errors in your code", "To search for coding tutorials on Google"],
  ),
  Quiz(
    77,
    "In 'git log', what does 'Author' refer to?",
    ["The person who originally wrote the code in that commit", "The person who owns the GitHub repository", "The creator of the Git software (Linus Torvalds)", "The company that hired the programmer"],
  ),
  Quiz(
    78,
    "Which of these is NOT a valid Git command?",
    ["git save", "git commit", "git status", "git add"],
  ),
  Quiz(
    79,
    "What is a 'Repository' (or Repo)?",
    ["A project folder that is being tracked by Git", "A website that hosts code", "A computer used for coding", "A specific line of code"],
  ),
  Quiz(
    80,
    "What does 'staged' mean?",
    ["The file is marked to be included in the next commit", "The file is ready to be deleted", "The file is currently being edited", "The file has been successfully uploaded to GitHub"],
  ),
  Quiz(
    81,
    "Which command shows the configuration for the current user's name?",
    ["git config user.name", "git show name", "git whoami", "git user --get"],
  ),
  Quiz(
    82,
    "Is Git Case-Sensitive regarding file names?",
    ["Usually yes, depending on the operating system's file system", "No, Git ignores casing", "Yes, always", "Only for .dart files"],
  ),
  Quiz(
    83,
    "What happens to tracked files if you rename them outside of Git (using Windows Explorer)?",
    ["Git sees it as the old file being deleted and a new file being created", "Git automatically renames it in the database", "Git deletes the history of that file", "The file becomes corrupted"],
  ),
  Quiz(
    84,
    "Can you have a .gitignore file inside a sub-folder?",
    ["Yes, and it will only apply to that specific sub-folder and its children", "No, there can only be one .gitignore at the root", "Yes, but it must be named .sub-gitignore", "No, Git will ignore it"],
  ),
  Quiz(
    85,
    "What is the 'commit -a' flag used for?",
    ["It automatically stages all modified tracked files and commits them in one step", "It adds all untracked files", "It amends the last commit", "It asks for the author's name"],
  ),
  Quiz(
    86,
    "What command tells you which branch you are currently on?",
    ["git branch", "git status", "git log", "All of the above"],
  ),
  Quiz(
    87,
    "How does Git store data?",
    ["As a series of snapshots of the project", "As a list of changes (diffs) only", "As a single large ZIP file", "As a collection of Word documents"],
  ),
  Quiz(
    88,
    "What is 'Garbage Collection' (git gc) in Git?",
    ["A process that cleans up unnecessary files and optimizes the local repository", "A command that deletes all your code", "A way to remove files from .gitignore", "A feature that identifies bad code"],
  ),
  Quiz(
    89,
    "Which character is used to represent a comment in the .gitignore file?",
    ["#", "//", "/*", "--"],
  ),
  Quiz(
    90,
    "What does 'unmerged' status mean in Git?",
    ["There was a conflict that needs to be resolved before committing", "The file was not pushed to GitHub", "The file was not staged", "The file was edited by two people at the same time locally"],
  ),
  Quiz(
    91,
    "Can you track changes in images with Git?",
    ["Yes, but Git cannot show a 'diff' of what changed inside the image itself", "No, Git only tracks text", "Yes, Git shows exactly which pixels were changed", "Only if the image is a .png file"],
  ),
  Quiz(
    92,
    "What is the command to initialize a repository and set the initial branch name to 'main'?",
    ["git init -b main", "git init --name main", "git start main", "git init -m main"],
  ),
  Quiz(
    93,
    "What is 'detached HEAD'?",
    ["When you checkout a specific commit instead of a branch", "When your computer is not connected to the internet", "When you delete the .git folder", "When you forget to type a commit message"],
  ),
  Quiz(
    94,
    "How do you tell Git to ignore all '.log' files?",
    ["Add *.log to .gitignore", "Run git ignore .log", "Delete all .log files", "Move .log files to the .git folder"],
  ),
  Quiz(
    95,
    "Does Git store your local history in the cloud by default?",
    ["No, you must 'push' it to a service like GitHub", "Yes, as soon as you commit", "Only if you use the --cloud flag", "Yes, but only for private repositories"],
  ),
  Quiz(
    96,
    "What command is used to see the list of ignored files?",
    ["git clean -ndX", "git status --ignored", "git check-ignore *", "All of the above"],
  ),
  Quiz(
    97,
    "What does 'git config --local' do?",
    ["Sets a configuration that applies only to the current repository", "Sets a configuration for your local Wi-Fi", "Makes the repository private", "Optimizes the project for local performance"],
  ),
  Quiz(
    98,
    "What is the 'root-commit'?",
    ["The very first commit in a repository's history", "A commit made by a user with admin rights", "The folder where Git is installed", "A commit that deletes the project"],
  ),
  Quiz(
    99,
    "If you want to unstage all files, what command do you use?",
    ["git reset", "git add --undo", "git commit --revert", "git status --clean"],
  ),
  Quiz(
    100,
    "What is the best way to learn Git?",
    ["Practice using commands in a terminal on real projects", "Watching videos without typing anything", "Memorizing the manual without trying it", "Paying someone else to do the Version Control"],
  ),
];
final List<Quiz> gitQuizM2 = [
  // --- Topic 10: The Concept of Branching ---
  Quiz(
    101,
    "What is the primary purpose of branching in Git?",
    ["To work on different features or fixes in isolation without affecting the main code", "To create a backup of the project on a different hard drive", "To make the code run faster on older Android phones", "To delete the history of the project and start fresh"],
  ),
  Quiz(
    102,
    "Which analogy best describes Git branching?",
    ["Parallel universes where different versions of the project exist at the same time", "A straight line that never changes", "A single document that everyone edits simultaneously", "A physical book where you can only write on the next page"],
  ),
  Quiz(
    103,
    "What is the name of the default branch created when you initialize a repository?",
    ["main (or master)", "primary", "root", "develop"],
  ),
  Quiz(
    104,
    "What happens to the 'main' branch when you create and work on a new 'feature' branch?",
    ["The 'main' branch stays exactly as it was until you merge changes back into it", "The 'main' branch is deleted automatically", "The 'main' branch is updated in real-time with the 'feature' branch", "The 'main' branch becomes locked and uneditable"],
  ),
  Quiz(
    105,
    "Why is branching useful for a team of developers?",
    ["It allows multiple people to work on different tasks simultaneously without interfering with each other", "It prevents developers from seeing each other's code", "It automatically merges all code at the end of the day", "It reduces the size of the Flutter project"],
  ),

  // --- Topic 11: Creating and Listing Branches ---
  Quiz(
    106,
    "Which command is used to list all the local branches in your repository?",
    ["git branch", "git list --branches", "git show --all", "git status --branch"],
  ),
  Quiz(
    107,
    "Which command creates a new branch named 'login-ui' but does not switch to it?",
    ["git branch login-ui", "git checkout login-ui", "git new-branch login-ui", "git create branch login-ui"],
  ),
  Quiz(
    108,
    "In the 'git branch' list, how do you know which branch you are currently working on?",
    ["It is marked with an asterisk (*) and usually highlighted in a different color", "It is the first branch in the alphabetical list", "It is the only branch shown in the list", "It is underlined"],
  ),
  Quiz(
    109,
    "What command creates a branch and switches to it immediately?",
    ["git checkout -b new-feature", "git branch -s new-feature", "git start new-feature", "git move -b new-feature"],
  ),
  Quiz(
    110,
    "Can you create a branch while you have unstaged changes in your working directory?",
    ["Yes, but the changes will 'follow' you to the new branch", "No, Git will force you to commit first", "Yes, and the changes will be deleted", "No, you must run git init again"],
  ),

  // --- Topic 12: Switching Contexts ---
  Quiz(
    111,
    "Which command is used to switch from one existing branch to another?",
    ["git checkout [branch-name] (or git switch)", "git move [branch-name]", "git go [branch-name]", "git branch --change [branch-name]"],
  ),
  Quiz(
    112,
    "What happens to the files in your project folder when you switch branches?",
    ["Git updates the files to match the snapshot of the branch you are switching to", "The files stay exactly the same regardless of the branch", "All files are deleted and re-downloaded from GitHub", "Git creates a new folder for each branch"],
  ),
  Quiz(
    113,
    "What is the modern, more specific command recommended for switching branches (introduced in Git 2.23)?",
    ["git switch", "git jump", "git change-to", "git branch-move"],
  ),
  Quiz(
    114,
    "What error occurs if you try to switch branches while you have local changes that would be overwritten?",
    ["Git will prevent the switch and ask you to commit or stash your changes", "Git will delete your local changes and switch anyway", "Git will merge the changes automatically", "The terminal will crash"],
  ),
  Quiz(
    115,
    "How can you switch back to the previous branch you were on without typing the name?",
    ["git checkout -", "git checkout back", "git checkout previous", "git switch last"],
  ),

  // --- Topic 13: The Basic Merge (Fast-Forward Logic) ---
  Quiz(
    116,
    "What does 'git merge' do?",
    ["Combines the history and changes from one branch into another", "Deletes a branch after work is finished", "Uploads code to GitHub", "Compares two files line by line"],
  ),
  Quiz(
    117,
    "What is a 'Fast-Forward' merge?",
    ["A merge where Git simply moves the branch pointer forward because no new commits were made on the base branch", "A merge that happens very quickly because the files are small", "A merge that skips the staging area", "A merge that only works with the main branch"],
  ),
  Quiz(
    118,
    "If you want to merge 'feature' into 'main', which branch should you be on when you run the merge command?",
    ["main", "feature", "It doesn't matter", "A third temporary branch"],
  ),
  Quiz(
    119,
    "What is the command to merge a branch named 'ui-fix' into your current branch?",
    ["git merge ui-fix", "git combine ui-fix", "git add ui-fix --merge", "git branch --join ui-fix"],
  ),
  Quiz(
    120,
    "Does a Fast-Forward merge create a new 'merge commit'?",
    ["No, it just moves the pointer to the latest commit", "Yes, it always creates a merge commit", "Only if you are merging into 'main'", "Yes, but only if you use the -m flag"],
  ),

  // --- Topic 14: Understanding the 'Safety Net' (git stash) ---
  Quiz(
    121,
    "What is the purpose of 'git stash'?",
    ["To temporarily save uncommitted changes and clean the working directory", "To permanently delete unwanted code", "To send code to a hidden folder on GitHub", "To ignore files like build/ folders"],
  ),
  Quiz(
    122,
    "When should you use 'git stash'?",
    ["When you need to switch branches but aren't ready to commit your current work", "When you want to finish the project", "When you are ready to push to production", "When you want to delete a branch"],
  ),
  Quiz(
    123,
    "What happens to your 'modified' files after you run 'git stash'?",
    ["They are reverted to the state of the last commit, and the changes are stored in a 'stash' list", "They are moved to the Recycle Bin", "They are committed automatically with a random message", "They are uploaded to the cloud"],
  ),
  Quiz(
    124,
    "Which command brings your stashed changes back and removes them from the stash list?",
    ["git stash pop", "git stash return", "git stash apply", "git stash undo"],
  ),
  Quiz(
    125,
    "Does 'git stash' save untracked (new) files by default?",
    ["No, you must use the -u (untracked) flag", "Yes, it saves everything in the folder", "Yes, but only if they are .dart files", "No, it only saves deleted files"],
  ),

  // --- Topic 15: Managing Multiple Stashes ---
  Quiz(
    126,
    "How can you see a list of all your saved stashes?",
    ["git stash list", "git stash show --all", "git stash status", "git list stashes"],
  ),
  Quiz(
    127,
    "How are stashes identified in the stash list?",
    ["By an index like stash@{0}, stash@{1}, etc.", "By the date they were created", "By the branch name they were on", "By a unique 40-character hash"],
  ),
  Quiz(
    128,
    "What is the difference between 'git stash pop' and 'git stash apply'?",
    ["'pop' applies the stash and deletes it; 'apply' applies the stash but keeps it in the list", "'pop' is for the main branch; 'apply' is for feature branches", "'apply' is faster than 'pop'", "There is no difference"],
  ),
  Quiz(
    129,
    "How do you delete all your saved stashes at once?",
    ["git stash clear", "git stash delete-all", "git stash drop --all", "git stash reset"],
  ),
  Quiz(
    130,
    "Which command allows you to apply a specific stash from the list (e.g., the second one)?",
    ["git stash apply stash@{1}", "git stash pop 2", "git stash get second", "git stash load index=1"],
  ),

  // --- Topic 16: Advanced Branching: Three-Way Merge ---
  Quiz(
    131,
    "When does a 'Three-Way Merge' occur?",
    ["When both the base branch and the feature branch have new commits since they diverged", "When you merge three different branches at the same time", "When you merge a branch into itself", "When you have three developers working on the same file"],
  ),
  Quiz(
    132,
    "What is the 'common ancestor' in a Three-Way Merge?",
    ["The last commit that both branches shared before they split apart", "The very first commit in the repository", "The main branch", "The developer who started the project"],
  ),
  Quiz(
    133,
    "What is created at the end of a successful Three-Way Merge?",
    ["A new 'Merge Commit' that has two parent commits", "A new branch", "A .gitignore file", "A duplicate of the project folder"],
  ),
  Quiz(
    134,
    "If a Three-Way Merge fails due to overlapping changes, what is the result?",
    ["A Merge Conflict", "The project is deleted", "Git automatically chooses the newest version", "The terminal reboots"],
  ),
  Quiz(
    135,
    "How does Git distinguish a Three-Way Merge from a Fast-Forward merge?",
    ["By checking if the base branch has moved forward since the branch was created", "By the number of files changed", "By the speed of the internet connection", "By the user's name"],
  ),

  // --- Topic 17: Comparing Branches ---
  Quiz(
    136,
    "Which command shows the difference in code between the 'main' branch and a 'feature' branch?",
    ["git diff main..feature", "git compare main feature", "git log main feature", "git status main..feature"],
  ),
  Quiz(
    137,
    "What does 'git diff main..feature' actually display?",
    ["The lines of code that were added, modified, or removed in 'feature' compared to 'main'", "The list of commit messages in both branches", "The list of file names only", "The names of the developers working on both"],
  ),
  Quiz(
    138,
    "How can you see only the names of the files that are different between two branches?",
    ["git diff --name-only branch1..branch2", "git show --files branch1 branch2", "git status --diff", "git list-changes branch1..branch2"],
  ),
  Quiz(
    139,
    "Which command allows you to see the commits that exist on 'feature' but not on 'main'?",
    ["git log main..feature", "git diff main..feature", "git show feature", "git log --compare"],
  ),
  Quiz(
    140,
    "Can you compare your local 'main' branch with a remote branch on GitHub?",
    ["Yes, using git diff main..origin/main", "No, Git only compares local files", "Yes, but only if you use a browser", "No, you must merge them first"],
  ),

  // --- Topic 18: Deleting and Renaming Branches Safely ---
  Quiz(
    141,
    "Which command is used to delete a local branch that has already been merged?",
    ["git branch -d [branch-name]", "git branch -delete [branch-name]", "git rm branch [branch-name]", "git destroy [branch-name]"],
  ),
  Quiz(
    142,
    "What happens if you try to delete a branch with '-d' that contains unmerged work?",
    ["Git will refuse to delete it to protect your work", "Git will delete it anyway", "Git will merge it into main automatically", "The terminal will ask for a password"],
  ),
  Quiz(
    143,
    "Which flag is used to 'force delete' a branch even if it hasn't been merged?",
    ["-D (git branch -D branch-name)", "-f", "--force-remove", "-X"],
  ),
  Quiz(
    144,
    "How do you rename your current branch to 'new-name'?",
    ["git branch -m new-name", "git branch -rename new-name", "git move-branch new-name", "git set-name new-name"],
  ),
  Quiz(
    145,
    "Is it safe to delete a branch after it has been merged into 'main'?",
    ["Yes, because all its changes are now part of the 'main' history", "No, you will lose the history of that feature", "Only if you have pushed to GitHub", "No, Git requires you to keep all branches"],
  ),

  // --- Mixed Review Module 2 (Questions 146 - 200) ---
  Quiz(
    146,
    "What does 'git checkout main' do?",
    ["Switches your working directory to the 'main' branch", "Deletes all branches except main", "Pushes the main branch to GitHub", "Creates a new branch named main"],
  ),
  Quiz(
    147,
    "What is the 'Merge Message'?",
    ["A default or custom message used for a merge commit", "An email sent to the team when a merge happens", "A warning that a conflict occurred", "The name of the branch being merged"],
  ),
  Quiz(
    148,
    "Which command shows all branches, including those on the remote server?",
    ["git branch -a", "git branch --all-remote", "git list branches --remote", "git show branches"],
  ),
  Quiz(
    149,
    "If you are on 'feature' and want to see what is in 'main', what should you do?",
    ["git checkout main to see the files, then git checkout feature to return", "Delete the feature branch", "Run git init again", "Look at GitHub only"],
  ),
  Quiz(
    150,
    "What is a 'Topic Branch'?",
    ["A short-lived branch created to work on a specific task or bug", "The main branch of a project", "A branch used for discussing ideas", "A branch that contains only documentation"],
  ),
  Quiz(
    151,
    "Does 'git branch -d' delete the commits associated with that branch?",
    ["No, the commits stay in the database; only the pointer (name) is removed", "Yes, all code is wiped out", "Yes, but only if they are not merged", "No, it moves the commits to the Recycle Bin"],
  ),
  Quiz(
    152,
    "What is the 'Master' branch?",
    ["The older default name for the 'main' branch", "A special branch for the project owner only", "A branch that cannot be deleted", "The branch that stores the '.git' folder"],
  ),
  Quiz(
    153,
    "What happens if you run 'git stash pop' and there is a conflict?",
    ["Git will apply the changes but keep the stash in the list until you resolve it", "Git will delete the stash and the files", "Git will automatically fix the conflict", "The terminal will crash"],
  ),
  Quiz(
    154,
    "Can you stash only one specific file?",
    ["Yes, using git stash push [file-path]", "No, stash always takes the whole directory", "Yes, but you must move it to a different folder first", "No, stash only works on branches"],
  ),
  Quiz(
    155,
    "Which command displays the contents of the most recent stash without applying it?",
    ["git stash show -p", "git stash view", "git stash log", "git stash peek"],
  ),
  Quiz(
    156,
    "What does the '--no-ff' flag do during a merge?",
    ["Forces Git to create a merge commit even if a fast-forward is possible", "Prevents the merge from happening", "Fast-forwards even if there is a conflict", "Merges without showing a message"],
  ),
  Quiz(
    157,
    "What is 'Context Switching' in development?",
    ["Moving from one task (branch) to another quickly", "Changing the theme of Android Studio", "Switching from Java to Python", "Rebooting the computer to clear memory"],
  ),
  Quiz(
    158,
    "If you want to rename a branch that is NOT your current branch, what is the command?",
    ["git branch -m [old-name] [new-name]", "git rename [old] [new]", "git branch [new] --replace [old]", "git checkout [old] --rename [new]"],
  ),
  Quiz(
    159,
    "Which command shows which branches have already been merged into your current branch?",
    ["git branch --merged", "git branch --done", "git show merged", "git list --integrated"],
  ),
  Quiz(
    160,
    "Which command shows which branches still have work that hasn't been merged?",
    ["git branch --no-merged", "git branch --pending", "git list --active", "git show unmerged"],
  ),
  Quiz(
    161,
    "What is 'Feature Branch Workflow'?",
    ["A practice where every new feature is developed in a dedicated branch", "A way to download features from the internet", "A type of Flutter architecture", "A method for designing app icons"],
  ),
  Quiz(
    162,
    "What is the 'recursive' strategy in Git?",
    ["The default strategy used for Three-Way Merges", "A way to delete folders within folders", "A method for repeating commits", "A type of loop in Dart code"],
  ),
  Quiz(
    163,
    "Can you merge two branches if they have never shared a common ancestor?",
    ["No, unless you use the --allow-unrelated-histories flag", "Yes, Git handles it automatically", "No, it is physically impossible", "Yes, but only in empty repositories"],
  ),
  Quiz(
    164,
    "What is a 'Conflict Marker'?",
    ["Visual indicators (<<<<, ====, >>>>) placed in a file by Git during a conflict", "A red icon in Android Studio", "A error message in the console", "A special file created during a merge"],
  ),
  Quiz(
    165,
    "How do you abort a merge that has conflicts and go back to how things were?",
    ["git merge --abort", "git undo merge", "git reset --hard", "git stop merge"],
  ),
  Quiz(
    166,
    "What is the result of 'git branch -v'?",
    ["Lists branches along with the last commit message for each", "Shows the version of Git", "Shows the author of each branch", "Deletes empty branches"],
  ),
  Quiz(
    167,
    "If you 'pop' a stash, does it go back to the exact same branch you were on?",
    ["It applies the changes to whatever branch you are currently on", "Yes, it automatically switches you back to the original branch", "No, it only works on the main branch", "It creates a new branch for the stash"],
  ),
  Quiz(
    168,
    "What is 'Git Flow'?",
    ["A popular branching model/strategy for managing project releases", "The speed at which code is pushed to GitHub", "A command to visualize the commit graph", "A plugin for Android Studio"],
  ),
  Quiz(
    169,
    "Can you create a branch from a specific commit hash instead of the current HEAD?",
    ["Yes, using git branch [name] [hash]", "No, branches always start from the current tip", "Yes, but only if the commit is in the main branch", "No, you must use git checkout first"],
  ),
  Quiz(
    170,
    "What does 'git checkout .' do?",
    ["Discards all local changes in the current directory (reverts to last commit)", "Adds all files to the staging area", "Deletes all files", "Switches to the root branch"],
  ),
  Quiz(
    171,
    "What is the purpose of 'git stash drop'?",
    ["To delete a specific stash from the list without applying it", "To apply a stash and keep it", "To move a stash to a different branch", "To upload a stash to GitHub"],
  ),
  Quiz(
    172,
    "What happens if you try to merge a branch into itself?",
    ["Git will say it is 'already up to date'", "The project will crash", "Git will create a duplicate of all files", "A merge conflict will occur"],
  ),
  Quiz(
    173,
    "Which command is safer for switching branches in modern Git?",
    ["git switch", "git checkout", "git change", "git move"],
  ),
  Quiz(
    174,
    "How can you rename a branch if you are NOT on it?",
    ["git branch -m [old-name] [new-name]", "git branch -r [old-name] [new-name]", "git rename-branch [old] [new]", "git config branch.[old].name [new]"],
  ),
  Quiz(
    175,
    "What is the maximum number of branches you can have in Git?",
    ["Virtually unlimited; it depends on your storage space", "100", "1024", "Only one for each developer"],
  ),
  Quiz(
    176,
    "What is a 'Snapshot' in the context of Git?",
    ["The state of all files in the project at a specific commit", "A screenshot of the code", "A backup on an external drive", "An image file in the assets folder"],
  ),
  Quiz(
    177,
    "Does Git store the differences between files or the whole file?",
    ["It stores the whole file (compressed) for each version it changes", "It only stores the changed lines", "It stores only the file names", "It stores code in a text file"],
  ),
  Quiz(
    178,
    "What command shows the most recent changes on the current branch?",
    ["git show", "git log -1", "git status", "Both A and B"],
  ),
  Quiz(
    179,
    "Can you merge a remote branch directly into your local feature branch?",
    ["Yes, using git merge origin/feature", "No, you must merge into main first", "Yes, but only if you are connected to the internet", "No, you must use git pull --force"],
  ),
  Quiz(
    180,
    "What is 'Merge Conflict Resolution'?",
    ["The process of manually editing files to decide which code to keep", "A software that fixes bugs automatically", "A meeting between developers", "A command like git fix-all"],
  ),
  Quiz(
    181,
    "What does 'Fast-Forward' mean in terms of history?",
    ["The history remains a straight line with no merge commits", "The history is deleted to save space", "The history moves to a different repository", "The history becomes a complex web of lines"],
  ),
  Quiz(
    182,
    "Which command shows you all the stashed changes with details of what changed in each?",
    ["git stash list -p", "git stash show --all", "git stash detail", "git stash log"],
  ),
  Quiz(
    183,
    "If you have changes in your stash, does 'git status' show them?",
    ["No, stashed changes are hidden from git status", "Yes, they appear as 'stashed'", "Yes, they appear as modified", "Only if you use git status --all"],
  ),
  Quiz(
    184,
    "What is 'Upstream'?",
    ["Usually refers to the original repository on GitHub (the source)", "The main branch on your computer", "A newer version of Git", "The developer's manager"],
  ),
  Quiz(
    185,
    "What happens to your 'Staging Area' when you run 'git stash'?",
    ["It is cleared; both modified and staged files are moved to the stash", "Only modified files are stashed; staged files stay", "Nothing happens to the staging area", "The staging area is committed"],
  ),
  Quiz(
    186,
    "How can you check if you are in the middle of a merge?",
    ["git status will show 'You have unmerged paths'", "The terminal will turn red", "The .git folder will disappear", "Git log will be empty"],
  ),
  Quiz(
    187,
    "What is the best way to handle a very complex merge conflict?",
    ["Break it down into small parts and use a visual tool like Android Studio's merge tool", "Delete the project and start over", "Force push to GitHub", "Ask Git to ignore the conflict"],
  ),
  Quiz(
    188,
    "Does deleting a branch delete the history shown in 'git log' for 'main' (if merged)?",
    ["No, the history is preserved in main", "Yes, all history related to that branch disappears", "Only if it was a fast-forward merge", "Yes, but only the commit messages"],
  ),
  Quiz(
    189,
    "What is 'HEAD~1'?",
    ["The commit immediately before the current one", "A new branch", "The very first commit", "A special error code"],
  ),
  Quiz(
    190,
    "Which command creates a new branch but doesn't move you to it?",
    ["git branch [name]", "git checkout -b [name]", "git switch -c [name]", "git new [name]"],
  ),
  Quiz(
    191,
    "What command shows all local branches AND their last commit hashes?",
    ["git branch -v", "git branch --hash", "git list --details", "git log --branches"],
  ),
  Quiz(
    192,
    "Can you rename the 'main' branch?",
    ["Yes, using git branch -m main [new-name]", "No, 'main' is a protected name", "Yes, but only on GitHub", "No, it will break the repository"],
  ),
  Quiz(
    193,
    "What is 'git stash apply --index'?",
    ["Tries to re-apply the changes and also keep the staging area state", "Applies the stash to the index only", "Applies only the first file in the stash", "Shows the index of the stash"],
  ),
  Quiz(
    194,
    "Which command shows the merge base (ancestor) of two branches?",
    ["git merge-base branch1 branch2", "git ancestor branch1 branch2", "git find-root branch1 branch2", "git log --base"],
  ),
  Quiz(
    195,
    "What is a 'Dangling Commit'?",
    ["A commit that is no longer part of any branch or tag", "A commit that is waiting to be pushed", "A commit with a syntax error", "A commit made by a deleted user"],
  ),
  Quiz(
    196,
    "Can you merge a branch into 'main' if you haven't committed your current work on 'main'?",
    ["No, Git will usually require you to have a clean working directory", "Yes, Git will combine everything", "Yes, but only if there are no conflicts", "Only if you use the --force flag"],
  ),
  Quiz(
    197,
    "What is the most common cause of a Merge Conflict?",
    ["Two branches modifying the same line of the same file", "Creating too many branches", "Changing the file name", "Using a slow internet connection"],
  ),
  Quiz(
    198,
    "Does 'git checkout branch-name' work if the branch only exists on origin (remote)?",
    ["Modern Git will automatically create a local branch that tracks the remote one", "No, you must use git fetch first", "No, you must use git clone", "Yes, but only for the main branch"],
  ),
  Quiz(
    199,
    "What is the difference between 'git branch -d' and 'git branch -D'?",
    ["-d is a safe delete; -D is a forced delete", "-d is for local; -D is for remote", "-d renames; -D deletes", "There is no difference"],
  ),
  Quiz(
    200,
    "Why should you delete feature branches after merging them?",
    ["To keep the repository clean and avoid confusion about what work is still 'in progress'", "To save hard drive space", "Because Git will stop working if you have too many", "Because GitHub charges more for extra branches"],
  ),
];
final List<Quiz> gitQuizM3 = [
  // --- Topic 19: What is a Remote? (GitHub vs Git) ---
  Quiz(
    201,
    "What is a 'Remote' in the context of Git?",
    ["A version of your project hosted on the internet or a network server", "A physical hardware device like a USB drive", "A command used to delete the .git folder", "A specialized keyboard for coding"],
  ),
  Quiz(
    202,
    "What is the primary difference between Git and GitHub?",
    ["Git is the local version control tool; GitHub is the cloud platform that hosts Git repositories", "Git is paid software; GitHub is free", "Git is only for Linux; GitHub is for everyone", "There is no difference; they are two names for the same thing"],
  ),
  Quiz(
    203,
    "Which of the following is a benefit of using a remote repository like GitHub?",
    ["It allows for collaboration, off-site backup, and easy code sharing", "It makes your local computer process code faster", "It automatically writes the README file for you", "It hides your code so only you can see it"],
  ),
  Quiz(
    204,
    "Can you have multiple remotes for a single local repository?",
    ["Yes, you can link your project to multiple servers like GitHub, GitLab, or Bitbucket", "No, Git only allows one remote named 'origin'", "Yes, but they must all have the same name", "No, remotes are restricted by the operating system"],
  ),
  Quiz(
    205,
    "What does 'Cloud Hosting' provide for your Git project?",
    ["A central point of truth where team members can push and pull changes", "A way to run your Flutter app without a phone", "An automatic virus scanner for your source code", "A way to bypass the need for a .git folder"],
  ),

  // --- Topic 20: Creating a Remote Repository on GitHub ---
  Quiz(
    206,
    "When creating a new repository on GitHub, what does 'Public' mean?",
    ["Anyone on the internet can see this repository and its code", "Only you and invited collaborators can see it", "The code is automatically published to the Play Store", "The repository is only visible to people in your city"],
  ),
  Quiz(
    207,
    "What is the purpose of the 'README.md' file often suggested during GitHub setup?",
    ["To provide a description of the project, installation instructions, and usage details", "To store the user's password for the project", "To list all the bugs in the code", "To act as the main executable file for the app"],
  ),
  Quiz(
    208,
    "What happens if you initialize a repository on GitHub with a README or .gitignore when your local repo already has code?",
    ["It creates 'unrelated histories' which will require special merging later", "GitHub will automatically delete your local code", "The local code will overwrite the GitHub files immediately", "The internet connection will fail"],
  ),
  Quiz(
    209,
    "What is a 'Repository Description' on GitHub?",
    ["A short text summary that helps people understand what the project does", "The full source code of the project", "A list of all the commits in the history", "The license file for the software"],
  ),
  Quiz(
    210,
    "Which file defines the legal terms for how others can use your code on GitHub?",
    ["LICENSE", "README.md", ".gitignore", "package.json"],
  ),

  // --- Topic 21: Linking Local to Remote (remote add origin) ---
  Quiz(
    211,
    "What does the command 'git remote add origin [URL]' do?",
    ["Links your local repository to a remote server and names the connection 'origin'", "Downloads all files from the URL to your computer", "Deletes the current project and replaces it with the one at the URL", "Sets up a password for the local repository"],
  ),
  Quiz(
    212,
    "What is 'origin' in the command 'git remote add origin'?",
    ["The default conventional name for your primary remote repository", "A special Git command", "The name of your local branch", "The username of the developer"],
  ),
  Quiz(
    213,
    "How can you check which remote URLs are currently linked to your local repository?",
    ["git remote -v", "git show remotes", "git status --remote", "git list --urls"],
  ),
  Quiz(
    214,
    "What command would you use to change the URL of an existing remote named 'origin'?",
    ["git remote set-url origin [new-URL]", "git remote change origin [new-URL]", "git remote update origin [new-URL]", "git config remote.origin.url [new-URL]"],
  ),
  Quiz(
    215,
    "What command removes the link to a remote named 'origin'?",
    ["git remote remove origin", "git remote delete origin", "git rm remote origin", "git detach origin"],
  ),

  // --- Topic 22: Authentication: Personal Access Tokens & SSH ---
  Quiz(
    216,
    "Why does GitHub no longer accept your regular account password for Git operations via HTTPS?",
    ["To improve security by using scoped tokens that can be revoked", "Because passwords are too short", "Because passwords don't work on Linux", "To force users to use the GitHub website"],
  ),
  Quiz(
    217,
    "What is a 'Personal Access Token' (PAT)?",
    ["A unique string of characters used instead of a password for Git authentication", "A code sent to your phone via SMS", "A file you download to your Desktop", "A special name for your computer"],
  ),
  Quiz(
    218,
    "What does 'SSH' stand for in terms of Git connectivity?",
    ["Secure Shell", "Simple Shared History", "System Software Host", "Synchronized Source Handler"],
  ),
  Quiz(
    219,
    "What is the main advantage of using SSH keys over HTTPS with tokens?",
    ["You don't have to type a token or password every time you communicate with GitHub", "It makes the upload speed 10x faster", "It is easier to set up for beginners", "It works without an internet connection"],
  ),
  Quiz(
    220,
    "What are the two parts of an SSH key pair?",
    ["A Public key (on GitHub) and a Private key (on your computer)", "A Username and a Password", "A Token and a Hash", "A .git folder and a .gitignore file"],
  ),

  // --- Topic 23: Uploading Code: git push -u origin main ---
  Quiz(
    221,
    "What does 'git push' do?",
    ["Uploads your local commits to a remote repository", "Downloads the latest code from GitHub", "Merges two local branches", "Creates a new branch on GitHub"],
  ),
  Quiz(
    222,
    "What is the purpose of the '-u' flag in 'git push -u origin main'?",
    ["It sets the 'upstream' tracking so you can just type 'git push' next time", "It stands for 'untracked' files", "It encrypts the upload", "It forces the push even if there are conflicts"],
  ),
  Quiz(
    223,
    "What happens if you try to 'git push' but someone else has pushed new changes to the same branch on GitHub?",
    ["The push will be rejected, and you must 'pull' and merge their changes first", "GitHub will overwrite their changes with yours", "GitHub will create a new branch for you automatically", "Your local repository will be deleted"],
  ),
  Quiz(
    224,
    "Which command pushes your 'feature-x' branch to the 'origin' remote?",
    ["git push origin feature-x", "git push feature-x to origin", "git upload origin feature-x", "git remote push feature-x"],
  ),
  Quiz(
    225,
    "Can you push code that hasn't been committed yet?",
    ["No, only commits can be pushed", "Yes, Git will commit them automatically for you", "Yes, if you use the --all flag", "Only if the files are in the staging area"],
  ),

  // --- Topic 24: Downloading Code: git pull ---
  Quiz(
    226,
    "What does 'git pull' do?",
    ["Fetches changes from the remote and automatically merges them into your current branch", "Only downloads the file names from GitHub", "Uploads your changes to GitHub", "Deletes your local changes to match GitHub"],
  ),
  Quiz(
    227,
    "What two commands is 'git pull' actually a combination of?",
    ["git fetch and git merge", "git fetch and git push", "git clone and git status", "git add and git commit"],
  ),
  Quiz(
    228,
    "What happens if 'git pull' encounters a conflict between remote and local code?",
    ["It will pause and ask you to resolve the merge conflict manually", "It will prioritize the GitHub version and delete yours", "It will prioritize your version and ignore GitHub", "The terminal will restart"],
  ),
  Quiz(
    229,
    "Which command would you use to pull changes specifically from the 'develop' branch on origin?",
    ["git pull origin develop", "git pull develop", "git get origin/develop", "git fetch --all"],
  ),
  Quiz(
    230,
    "Is 'git pull' safe to run if you have uncommitted changes in your working directory?",
    ["It is risky; Git may refuse to pull if your local changes would be overwritten", "Yes, it is always safe", "No, it will delete your local changes", "Yes, but only if you are on the main branch"],
  ),

  // --- Topic 25: Fetching vs Pulling: Safety First ---
  Quiz(
    231,
    "What is the main difference between 'git fetch' and 'git pull'?",
    ["'fetch' only downloads data without changing your code; 'pull' downloads and merges immediately", "'fetch' is for public repos; 'pull' is for private ones", "'fetch' is faster but less secure", "There is no difference"],
  ),
  Quiz(
    232,
    "Why is 'git fetch' considered 'safer' than 'git pull'?",
    ["It allows you to review the changes before merging them into your local work", "It doesn't require an internet connection", "It automatically fixes bugs in the downloaded code", "It only downloads files that are smaller than 1MB"],
  ),
  Quiz(
    233,
    "After running 'git fetch origin', how do you see the changes that were downloaded?",
    ["git log origin/main", "git status --remote", "git show --fetch", "git list --changes"],
  ),
  Quiz(
    234,
    "How do you merge the changes after a 'git fetch origin' if you are on 'main'?",
    ["git merge origin/main", "git pull --now", "git combine fetch", "git add ."],
  ),
  Quiz(
    235,
    "Does 'git fetch' update your local branch pointers?",
    ["No, it only updates the remote-tracking pointers (like origin/main)", "Yes, it updates everything", "Only if you use the --force flag", "Yes, but only if there are no conflicts"],
  ),

  // --- Topic 26: Managing Remote Branches on the Server ---
  Quiz(
    236,
    "Which command shows you all branches that exist on the remote server 'origin'?",
    ["git branch -r", "git list --remote", "git show --origin", "git remote branches"],
  ),
  Quiz(
    237,
    "How do you delete a branch named 'old-feature' from the remote GitHub server?",
    ["git push origin --delete old-feature", "git branch -dr old-feature", "git remote rm old-feature", "git pull --delete old-feature"],
  ),
  Quiz(
    238,
    "What is a 'Remote-Tracking Branch'?",
    ["A local copy of a branch that exists on the remote server (e.g., origin/main)", "A branch that follows your mouse movement", "A hidden branch on GitHub", "A branch used for GPS data"],
  ),
  Quiz(
    239,
    "How do you download a branch from GitHub that you don't have locally yet?",
    ["git checkout --track origin/[branch-name]", "git download [branch-name]", "git add remote/[branch-name]", "git clone [branch-URL]"],
  ),
  Quiz(
    240,
    "What command updates your local list of remote branches (in case someone deleted one on GitHub)?",
    ["git fetch --prune (or git remote prune origin)", "git update --branches", "git refresh --remote", "git sync --list"],
  ),

  // --- Topic 27: Remote Troubleshooting: Mismatched Histories ---
  Quiz(
    241,
    "What does the error 'refusing to merge unrelated histories' mean?",
    ["You are trying to merge two repositories that do not share a common first commit", "Your internet connection is too slow", "Your Git version is outdated", "The files have different extensions"],
  ),
  Quiz(
    242,
    "In what scenario might you see 'unrelated histories'?",
    ["When you initialize a repo locally and another on GitHub with a README, then try to pull", "When you have a merge conflict", "When you forget to use a .gitignore", "When you change your GitHub username"],
  ),
  Quiz(
    243,
    "How can you force Git to merge unrelated histories?",
    ["git pull origin main --allow-unrelated-histories", "git merge --force-all", "git push --overwrite", "git init --sync"],
  ),
  Quiz(
    244,
    "What is a 'Force Push' (git push -f)?",
    ["Overwriting the history on the remote server with your local history", "Pushing code very quickly", "Pushing code to a private repository", "Pushing code without a message"],
  ),
  Quiz(
    245,
    "Why is 'Force Pushing' to a shared branch dangerous?",
    ["It can delete the work of other team members that you haven't pulled yet", "It can crash the GitHub servers", "It makes the repository public", "It deletes the .git folder"],
  ),

  // --- Mixed Review Module 3 (Questions 246 - 300) ---
  Quiz(
    246,
    "What is 'origin/main'?",
    ["A pointer to the state of the 'main' branch on the 'origin' remote as of the last fetch", "A new branch you created", "The main folder of the project", "The URL of the GitHub repository"],
  ),
  Quiz(
    247,
    "Which command clones a repository from GitHub to your computer for the first time?",
    ["git clone [URL]", "git pull [URL]", "git get [URL]", "git download [URL]"],
  ),
  Quiz(
    248,
    "Does 'git clone' automatically set up a remote called 'origin'?",
    ["Yes, it sets 'origin' to the URL you cloned from", "No, you must add it manually", "Only if you use the -o flag", "Yes, but it names it 'source'"],
  ),
  Quiz(
    249,
    "What is the default behavior of 'git pull' in recent Git versions?",
    ["It requires you to specify a merge or rebase strategy", "It always does a fast-forward merge", "It deletes local changes by default", "It only fetches without merging"],
  ),
  Quiz(
    250,
    "Which command shows the URL for the 'origin' remote?",
    ["git remote get-url origin", "git show origin", "git config remote.url", "git list origin"],
  ),
  Quiz(
    251,
    "What happens if you delete a local branch that was tracking a remote branch?",
    ["The remote branch remains on GitHub unaffected", "The remote branch is also deleted from GitHub", "Git will ask you to delete the remote branch too", "The remote server will send an error"],
  ),
  Quiz(
    252,
    "What is 'GitHub Pages'?",
    ["A service that lets you host a website directly from a GitHub repository", "A list of all users on GitHub", "A documentation tool for Java code", "A social media feature for developers"],
  ),
  Quiz(
    253,
    "What is a 'Fork' on GitHub?",
    ["A personal copy of someone else's repository on your own GitHub account", "A way to delete a repository", "A tool for merging branches", "A type of commit message"],
  ),
  Quiz(
    254,
    "How is a 'Fork' different from a 'Clone'?",
    ["A Fork lives on GitHub; a Clone lives on your local computer", "A Fork is private; a Clone is public", "A Fork is only for team members; a Clone is for everyone", "There is no difference"],
  ),
  Quiz(
    255,
    "What is a 'Pull Request' (PR)?",
    ["A way to propose changes from your branch/fork to the original repository", "A command like git pull", "An error message on GitHub", "A request to join a private team"],
  ),
  Quiz(
    256,
    "Which command is used to see the status of your local branch compared to its remote counterpart?",
    ["git status", "git log", "git remote show origin", "Both A and C"],
  ),
  Quiz(
    257,
    "What does 'Everything up-to-date' mean after a git push?",
    ["All your local commits are already present on the remote server", "Your internet is disconnected", "You have no files in your folder", "Your computer is clean of viruses"],
  ),
  Quiz(
    258,
    "What is 'HTTPS' in the context of Git remotes?",
    ["A protocol for secure communication over the web using a username/token", "A type of programming language", "A brand of computer", "The name of a branch"],
  ),
  Quiz(
    259,
    "Can you push to a repository that you do not have permission for?",
    ["No, GitHub will deny the push (Authentication or Permission error)", "Yes, Git is open source", "Yes, but only if you use --force", "No, unless you are using Linux"],
  ),
  Quiz(
    260,
    "What is the '.git/refs/remotes/' folder?",
    ["Where Git stores information about the state of remote branches", "Where your images are stored", "Where GitHub stores its password", "A folder you should edit manually"],
  ),
  Quiz(
    261,
    "What command lists the names of all current remotes?",
    ["git remote", "git list remotes", "git status remotes", "git config remotes"],
  ),
  Quiz(
    262,
    "Which command is used to rename a remote from 'origin' to 'github'?",
    ["git remote rename origin github", "git remote set-name origin github", "git config origin name github", "git move remote origin github"],
  ),
  Quiz(
    263,
    "What is the difference between 'public' and 'private' repositories on GitHub?",
    ["Public is visible to everyone; private is only for you and invited collaborators", "Public is free; private always costs money", "Public allows 10 users; private allows only 1", "Public repositories cannot be cloned"],
  ),
  Quiz(
    264,
    "What happens if you run 'git pull' without being on a branch?",
    ["Git will show an error or say you are in a 'detached HEAD' state", "Git will pull into the main branch automatically", "Git will create a new branch", "The repository will be deleted"],
  ),
  Quiz(
    265,
    "What is the purpose of 'git push -all'?",
    ["Pushes all your local branches to the remote server at once", "Pushes only the main branch", "Pushes only the .git folder", "Deletes all files on GitHub"],
  ),
  Quiz(
    266,
    "What is 'Upstream' tracking?",
    ["A link between a local branch and a remote branch for easier pulling/pushing", "Tracking the price of Bitcoin", "Measuring the upload speed", "A way to see who is currently online"],
  ),
  Quiz(
    267,
    "How can you check the SSH connection to GitHub?",
    ["ssh -T git@github.com", "git check-ssh", "ping github.com", "ssh status github"],
  ),
  Quiz(
    268,
    "Which command fetches changes from all remotes at once?",
    ["git fetch --all", "git fetch --everything", "git fetch origin main", "git pull --all"],
  ),
  Quiz(
    269,
    "What is 'SSH Config' file used for?",
    ["To manage multiple SSH keys and settings for different servers", "To store the .gitignore rules", "To speed up the Flutter build", "To track branch names"],
  ),
  Quiz(
    270,
    "What does 'git push origin :old-branch' do in older versions of Git?",
    ["Deletes the branch 'old-branch' from the remote", "Creates a new branch", "Renames the branch", "Pushes an empty commit"],
  ),
  Quiz(
    271,
    "What is 'Merge Commit' in the context of a Pull?",
    ["A commit created when 'git pull' combines remote and local changes", "A commit that deletes history", "A commit made by a bot", "A commit with no changes"],
  ),
  Quiz(
    272,
    "Can you push tags to a remote repository?",
    ["Yes, using git push origin --tags", "No, tags are only local", "Yes, tags are pushed automatically with commits", "No, tags are only for GitHub Releases"],
  ),
  Quiz(
    273,
    "What is a 'Collaborator' on GitHub?",
    ["A user who has been given explicit permission to push to your repository", "Anyone who clones your repository", "A person who follows you on GitHub", "A bot that checks for bugs"],
  ),
  Quiz(
    274,
    "What is 'Rebase' instead of Merge during a Pull?",
    ["A strategy that puts your local commits on top of the remote commits for a cleaner history", "A way to delete the remote history", "A method for changing the author of a commit", "A way to push without a token"],
  ),
  Quiz(
    275,
    "How do you configure 'git pull' to always use rebase by default?",
    ["git config --global pull.rebase true", "git set pull rebase", "git config rebase pull", "git pull --always-rebase"],
  ),
  Quiz(
    276,
    "What is 'Git LFS' (Large File Storage)?",
    ["An extension for Git to handle very large files (like videos or high-res images) efficiently", "A way to increase hard drive space", "A paid feature for GitHub", "A type of database"],
  ),
  Quiz(
    277,
    "What does 'git remote show origin' display?",
    ["Detailed information about the remote, including tracking branches and URLs", "The history of the remote repository", "The list of developers on GitHub", "The file size of the project"],
  ),
  Quiz(
    278,
    "How do you download only the last commit of a repository (Shallow Clone)?",
    ["git clone --depth 1 [URL]", "git clone --fast [URL]", "git clone --only-last [URL]", "git get --limit 1 [URL]"],
  ),
  Quiz(
    279,
    "What is 'GPG Signing'?",
    ["A way to verify that a commit actually came from you using digital signatures", "A way to compress code", "A rule in .gitignore", "A type of branch naming"],
  ),
  Quiz(
    280,
    "What is the 'Default Branch' setting on GitHub?",
    ["The branch that is shown first and used as the base for PRs (usually 'main')", "The only branch that can be pushed to", "A branch that is deleted every day", "The branch that contains the password"],
  ),
  Quiz(
    281,
    "Which command shows the commit history of a remote branch?",
    ["git log origin/main", "git log remote", "git show origin", "git status --remote"],
  ),
  Quiz(
    282,
    "What is the purpose of 'git remote prune origin'?",
    ["To remove local references to branches that have been deleted on the remote server", "To delete the remote repository", "To clean the code on GitHub", "To remove the .git folder"],
  ),
  Quiz(
    283,
    "Can you push to GitHub if you are offline?",
    ["No, pushing requires a network connection to the server", "Yes, Git will queue it and push later automatically", "Yes, using the --offline flag", "No, unless you are using a local server"],
  ),
  Quiz(
    284,
    "What is 'GitHub Desktop'?",
    ["A visual (GUI) application for managing Git repositories without using the terminal", "A type of computer sold by GitHub", "A folder on your desktop", "A command-line tool"],
  ),
  Quiz(
    285,
    "What happens if you change the name of a repository on GitHub?",
    ["The remote URL changes, and you must update it locally using git remote set-url", "The repository is deleted", "The local code is updated automatically", "Nothing happens"],
  ),
  Quiz(
    286,
    "What is a 'Starred' repository on GitHub?",
    ["A way to bookmark or show appreciation for a project", "A repository that is verified as safe", "A repository that costs money", "A repository with no bugs"],
  ),
  Quiz(
    287,
    "What is 'GitHub Actions'?",
    ["A feature for automating workflows like testing and deploying your code", "A list of things you can do on GitHub", "A social media game", "A way to delete branches"],
  ),
  Quiz(
    288,
    "What is a 'Conflict' in a Pull Request?",
    ["When the PR branch and the target branch have modified the same lines", "When the developers disagree on a feature", "When the internet is disconnected", "When the code has a syntax error"],
  ),
  Quiz(
    289,
    "How do you link a local branch to a remote branch manually?",
    ["git branch --set-upstream-to=origin/[branch] [local-branch]", "git link [local] [remote]", "git add tracking [remote]", "git set remote [remote]"],
  ),
  Quiz(
    290,
    "What is 'SSH Key Passphrase'?",
    ["An optional extra password for your SSH key for added security", "Your GitHub account password", "A token from GitHub", "The name of your project"],
  ),
  Quiz(
    291,
    "Which command is used to download everything from a repository including all branches and history?",
    ["git clone [URL]", "git pull --all", "git fetch --all", "Both A and C"],
  ),
  Quiz(
    292,
    "What does 'git push origin main:feature' do?",
    ["Pushes your local 'main' branch to a remote branch named 'feature'", "Merges main into feature on GitHub", "Renames main to feature", "Deletes the feature branch"],
  ),
  Quiz(
    293,
    "Can you push a branch that has the same name as a tag?",
    ["It is possible but discouraged as it confuses Git; you may need to specify refs/heads/", "No, Git will refuse", "Yes, Git handles it perfectly", "Only on GitHub Ultra"],
  ),
  Quiz(
    294,
    "What is 'GitHub CLI' (gh)?",
    ["A tool that brings GitHub features (like PRs and issues) to your terminal", "The name of the GitHub website", "A programming language created by GitHub", "A type of server"],
  ),
  Quiz(
    295,
    "What is 'Draft Pull Request'?",
    ["A PR that is not yet ready for review and cannot be merged", "A PR that is written on paper", "A PR with no code", "A PR that is automatically accepted"],
  ),
  Quiz(
    296,
    "How do you see all the contributors of a repository on GitHub?",
    ["On the 'Insights' or 'Contributors' tab of the GitHub repository page", "By running git show-contributors", "By looking at the .git folder", "By emailing GitHub support"],
  ),
  Quiz(
    297,
    "What is 'Squash and Merge' on GitHub?",
    ["Combining all commits from a PR into one single commit when merging to main", "Deleting the history of a PR", "Merging two repositories together", "Increasing the file size of the project"],
  ),
  Quiz(
    298,
    "What is 'Protected Branch' on GitHub?",
    ["A setting that prevents direct pushing or deletion of key branches like 'main'", "A branch that is encrypted", "A branch that only the owner can see", "A branch with no code"],
  ),
  Quiz(
    299,
    "What is 'Git Hooks'?",
    ["Scripts that run automatically when certain Git events occur (like before a commit)", "Tools for catching fish", "A type of branch naming", "A way to connect to GitHub"],
  ),
  Quiz(
    300,
    "Why is it a good practice to 'pull' before you 'push'?",
    ["To ensure you have the latest code and resolve any conflicts locally first", "To make the upload faster", "To save battery life", "To bypass GitHub's security check"],
  ),
];
final List<Quiz> gitQuizM4 = [
  // --- Topic 28: The World of Open Source and Forking ---
  Quiz(
    301,
    "What is 'Open Source' software?",
    ["Software with source code that anyone can inspect, modify, and enhance", "Software that is free to download but cannot be changed", "Software created only by Google or Microsoft", "Software that does not require an operating system"],
  ),
  Quiz(
    302,
    "What is the primary platform for hosting most Open Source projects today?",
    ["GitHub", "Facebook", "Windows Update", "Play Store"],
  ),
  Quiz(
    303,
    "In the Open Source world, what does 'Contributing' mean?",
    ["Fixing bugs or adding features to a project owned by someone else", "Paying money to use the software", "Downloading the app to your phone", "Writing a review in the App Store"],
  ),
  Quiz(
    304,
    "What is a 'Maintainer' in an Open Source project?",
    ["The person or group responsible for reviewing and accepting changes to the project", "The person who pays for the server", "The user who downloads the software the most", "A bot that automatically writes code"],
  ),
  Quiz(
    305,
    "Why is Version Control essential for Open Source?",
    ["It allows thousands of strangers to collaborate without overwriting each other's work", "It prevents people from seeing the code", "It makes the software run on iPhones", "It charges users a fee for every commit"],
  ),

  // --- Topic 29: Cloning: Downloading Entire Project Histories ---
  Quiz(
    306,
    "What does 'git clone' do?",
    ["Copies an entire remote repository, including all history and branches, to your local machine", "Downloads only the latest version of the main file", "Creates a shortcut to the website on your desktop", "Copies a single file from GitHub"],
  ),
  Quiz(
    307,
    "How is 'git clone' different from downloading a ZIP file of the code?",
    ["A clone includes the full Git history and .git folder; a ZIP is just the current files", "A clone is faster than a ZIP", "A ZIP includes the Git history; a clone does not", "A clone requires a password; a ZIP does not"],
  ),
  Quiz(
    308,
    "If you clone a repository, do you need to run 'git init'?",
    ["No, the cloned folder is already a fully initialized Git repository", "Yes, to start the tracking", "Only if you want to change the name", "No, but you must run git remote add origin"],
  ),
  Quiz(
    309,
    "Which command clones a project into a specific folder name instead of the default?",
    ["git clone [URL] [folder-name]", "git clone [URL] --rename [name]", "git get [URL] into [name]", "git download [URL] --to [name]"],
  ),
  Quiz(
    310,
    "Can you clone a private repository that you don't have access to?",
    ["No, Git will return an authentication or 'Not Found' error", "Yes, but you can only see the README", "Yes, if you use the --force flag", "Yes, but you cannot make changes"],
  ),

  // --- Topic 30: Forking: Creating Your Personal Server Copy ---
  Quiz(
    311,
    "What is a 'Fork' on GitHub?",
    ["A copy of a repository that lives on your personal GitHub account", "A command in the Git terminal", "A way to delete a project", "A tool for fixing merge conflicts"],
  ),
  Quiz(
    312,
    "Why would you 'Fork' a repository instead of just 'Cloning' it?",
    ["To have a remote place where you have permission to push your changes", "To make the code run faster", "To hide the code from the original owner", "To delete the original project"],
  ),
  Quiz(
    313,
    "Where does a Forked repository exist?",
    ["On the GitHub servers under your username", "Only on your local hard drive", "In the Recycle Bin", "On the original owner's computer"],
  ),
  Quiz(
    314,
    "If you fork a project, does the original owner see your commits immediately?",
    ["No, your commits stay in your fork until you submit a Pull Request", "Yes, they are updated in real-time", "Yes, but only if they follow you", "No, unless you pay for GitHub Pro"],
  ),
  Quiz(
    315,
    "Does forking a repository copy all its branches and tags?",
    ["Yes, it is a complete server-side copy of the entire repository state", "No, it only copies the main branch", "Only if the repository is public", "No, it only copies the README file"],
  ),

  // --- Topic 31: The Pull Request (PR) Concept ---
  Quiz(
    316,
    "What is a 'Pull Request' (PR)?",
    ["A proposal to merge your changes from your fork/branch into the original repository", "A command like git pull", "A request to download code from GitHub", "A way to ask the owner for money"],
  ),
  Quiz(
    317,
    "What is the main purpose of a Pull Request?",
    ["To allow for code review and discussion before changes are accepted", "To bypass the need for testing", "To notify users that the app is updated", "To delete the previous version of the code"],
  ),
  Quiz(
    318,
    "In a PR, what is the 'Base' branch?",
    ["The branch you want to merge your changes INTO (usually the original project's main)", "The branch where you wrote your code", "The .git folder", "The branch that contains the bugs"],
  ),
  Quiz(
    319,
    "In a PR, what is the 'Head' branch?",
    ["The branch that contains your new changes (the source of the PR)", "The main branch of the original project", "A deleted branch", "The branch used for documentation"],
  ),
  Quiz(
    320,
    "Who can approve and merge a Pull Request in an Open Source project?",
    ["The project maintainers/owners", "Anyone who has a GitHub account", "The person who wrote the code", "A random computer algorithm"],
  ),

  // --- Topic 32: Creating Your First PR (The Contribution Flow) ---
  Quiz(
    321,
    "What is the correct order of steps for a standard contribution flow?",
    ["Fork -> Clone -> Branch -> Commit -> Push -> Pull Request", "Clone -> Commit -> PR -> Fork", "PR -> Push -> Clone -> Fork", "Fork -> Branch -> PR -> Clone"],
  ),
  Quiz(
    322,
    "Why should you create a new branch for your PR instead of using 'main'?",
    ["To keep your changes organized and allow you to work on multiple PRs at once", "Because GitHub doesn't allow PRs from 'main'", "To hide your code from other contributors", "To make the file size smaller"],
  ),
  Quiz(
    323,
    "What should you include in a PR description?",
    ["A clear explanation of what changed, why, and any issues it fixes", "Your home address and phone number", "A list of every commit you've ever made", "Random text to fill the box"],
  ),
  Quiz(
    324,
    "What is a 'Draft' Pull Request?",
    ["A PR that shows your progress but is not yet ready to be merged", "A PR that was deleted", "A PR written in a different language", "A PR that has no code changes"],
  ),
  Quiz(
    325,
    "Can you add more commits to a PR after it has already been opened?",
    ["Yes, by simply pushing more commits to the same branch in your fork", "No, you must close it and open a new one", "Only if the maintainer gives you permission", "No, PRs are locked once created"],
  ),

  // --- Topic 33: Code Review: Handling Feedback and Changes ---
  Quiz(
    326,
    "What is 'Code Review'?",
    ["The process where others read your code and suggest improvements or find bugs", "A test that the computer runs automatically", "A way to rank developers by speed", "A meeting where you read your code out loud"],
  ),
  Quiz(
    327,
    "If a maintainer asks for 'Changes Requested' on your PR, what should you do?",
    ["Modify your code based on the feedback, commit, and push to the same branch", "Delete the project and stop contributing", "Argue with them until they accept it", "Open a new PR with the same code"],
  ),
  Quiz(
    328,
    "What are 'Inline Comments' in a GitHub PR?",
    ["Comments made directly on a specific line of code in the diff view", "Comments hidden in the .git folder", "Comments that only the author can see", "Messages sent via email"],
  ),
  Quiz(
    329,
    "What does it mean when a PR is 'Approved'?",
    ["The reviewer is satisfied with the changes and they are ready to be merged", "The code has been deleted", "The code is now live on the Play Store", "The developer has been paid"],
  ),
  Quiz(
    330,
    "What is 'Conversation Thread' on GitHub?",
    ["A grouped discussion around a specific comment or piece of feedback", "A list of all developers", "A type of programming loop", "A private chat room"],
  ),

  // --- Topic 34: Managing 'Upstream' Remotes ---
  Quiz(
    331,
    "What does 'Upstream' usually refer to in a forked workflow?",
    ["The original repository from which you created your fork", "Your own local repository", "The GitHub website", "The main branch on your computer"],
  ),
  Quiz(
    332,
    "How do you link your local repository to the original project (Upstream)?",
    ["git remote add upstream [Original-URL]", "git link upstream [URL]", "git remote set-upstream [URL]", "git add source [URL]"],
  ),
  Quiz(
    333,
    "Why do you need an 'upstream' remote?",
    ["To keep your fork updated with the latest changes from the original project", "To push your changes directly to the original owner", "To delete your fork", "To increase your internet speed"],
  ),
  Quiz(
    334,
    "Which command lists all your remotes, including 'origin' and 'upstream'?",
    ["git remote -v", "git show remotes", "git list --all", "git status"],
  ),
  Quiz(
    335,
    "What is the conventional name for the original repository in Git?",
    ["upstream", "source", "parent", "master-repo"],
  ),

  // --- Topic 35: Syncing Your Fork with the Original Project ---
  Quiz(
    336,
    "What is the first step to sync your local branch with the upstream project?",
    ["git fetch upstream", "git push origin", "git merge origin", "git delete branch"],
  ),
  Quiz(
    337,
    "After fetching upstream, how do you update your local 'main' branch?",
    ["git checkout main followed by git merge upstream/main", "git pull origin main", "git push upstream main", "git commit -m 'update'"],
  ),
  Quiz(
    338,
    "What happens if you don't sync your fork for a long time?",
    ["Your code may become outdated and cause complex merge conflicts later", "GitHub will delete your fork", "Your computer will slow down", "The project owner will block you"],
  ),
  Quiz(
    339,
    "How do you update your GitHub fork (origin) after syncing your local machine?",
    ["git push origin main", "git fetch origin", "git pull upstream", "GitHub updates it automatically"],
  ),
  Quiz(
    340,
    "What is the 'Sync fork' button on GitHub?",
    ["A button on the website that automatically updates your fork's branch from the original", "A button that deletes your fork", "A button that turns your fork into a new project", "A button that sends an email to the owner"],
  ),

  // --- Topic 36: Contributing Etiquette and Issue Tracking ---
  Quiz(
    341,
    "What is a 'GitHub Issue'?",
    ["A place to report bugs, suggest features, or discuss tasks in a repository", "A problem with your internet connection", "A conflict in your code", "A deleted commit"],
  ),
  Quiz(
    342,
    "What is a 'CONTRIBUTING.md' file?",
    ["A document that explains the rules and process for contributing to that project", "A list of everyone who donated money", "A file that contains the app's code", "A hidden file used by Git"],
  ),
  Quiz(
    343,
    "Why should you usually open an Issue before creating a large Pull Request?",
    ["To discuss the idea with maintainers and make sure they want the change", "To get paid for your work", "To reserve the feature so no one else can do it", "To test your internet connection"],
  ),
  Quiz(
    344,
    "What does 'Closes #12' in a PR description do?",
    ["Automatically closes Issue number 12 when the PR is merged", "Deletes Issue number 12", "Sends an email to user number 12", "Creates a new branch named #12"],
  ),
  Quiz(
    345,
    "What is a 'Code of Conduct'?",
    ["A set of rules for professional and respectful behavior within a project community", "A guide on how to write clean code", "A law enforced by the government", "A type of programming language"],
  ),

  // --- Mixed Review Module 4 (Questions 346 - 400) ---
  Quiz(
    346,
    "What does it mean to 'Clone' a repository?",
    ["Download a full copy of a repository to your computer", "Duplicate a branch", "Rename a project", "Copy a single commit"],
  ),
  Quiz(
    347,
    "Can you contribute to an Open Source project without writing code?",
    ["Yes, by improving documentation, reporting bugs, or designing icons", "No, Git is only for code", "Yes, but only if you pay a fee", "No, maintainers only accept code"],
  ),
  Quiz(
    348,
    "What is the difference between 'upstream' and 'origin' remotes?",
    ["'origin' is your fork; 'upstream' is the original project", "'origin' is for public; 'upstream' is for private", "They are the same thing", "origin is for Windows; upstream is for Linux"],
  ),
  Quiz(
    349,
    "What is a 'Fork-and-Pull' workflow?",
    ["Forking a project, making changes locally, and submitting a Pull Request", "Pulling code and then forking it", "Deleting a project and starting over", "Merging two projects together"],
  ),
  Quiz(
    350,
    "How can you see the list of all forks of a project?",
    ["By clicking the 'Forks' number at the top of the GitHub repository page", "By running git show-forks", "By looking in the .git folder", "You cannot see other people's forks"],
  ),
  Quiz(
    351,
    "What is a 'Labels' in GitHub Issues?",
    ["Tags like 'bug', 'enhancement', or 'help wanted' to categorize issues", "The name of the project", "A way to hide issues", "A type of commit message"],
  ),
  Quiz(
    352,
    "What does 'LGTM' stand for in code reviews?",
    ["Looks Good To Me", "Let's Go To Main", "Login Git To Merge", "List Git Total Messages"],
  ),
  Quiz(
    353,
    "What is a 'Milestone' on GitHub?",
    ["A way to group issues and PRs toward a specific goal or release date", "The first commit ever made", "A long-distance server", "A reward for top contributors"],
  ),
  Quiz(
    354,
    "What is 'Git Bisect' used for?",
    ["Finding the specific commit that introduced a bug using binary search", "Cutting a branch into two parts", "Merging two files together", "Deleting history"],
  ),
  Quiz(
    355,
    "What happens to your local changes when you run 'git clone'?",
    ["Clone creates a new folder, so it doesn't affect your other projects", "Clone overwrites everything on your Desktop", "Clone merges with your existing code", "Clone deletes your local .git folder"],
  ),
  Quiz(
    356,
    "What is a 'Repository License'?",
    ["Legal permission for others to use, copy, or modify your code", "A certificate showing you passed a Git test", "A password for GitHub", "A type of hardware"],
  ),
  Quiz(
    357,
    "How can you contribute if you don't have 'Push' access to a repository?",
    ["By Forking the repository and submitting a Pull Request", "You cannot contribute", "By emailing the code to the owner", "By calling GitHub support"],
  ),
  Quiz(
    358,
    "What is the 'Diff' view on GitHub?",
    ["A visual comparison showing exactly which lines were added or removed", "A list of different developers", "A way to download files", "A setting to change the theme"],
  ),
  Quiz(
    359,
    "What is 'Squash' in the context of PRs?",
    ["Merging all commits of a PR into one clean commit", "Deleting the code", "Compressing images", "Increasing the font size"],
  ),
  Quiz(
    360,
    "What does 'WIP' stand for?",
    ["Work In Progress", "Web Interface Protocol", "Windows Integrated Program", "With Internal Permission"],
  ),
  Quiz(
    361,
    "Can you fork your own repository?",
    ["No, GitHub does not allow you to fork your own repo under the same account", "Yes, as many times as you want", "Only if it is a private repository", "Yes, but it is called a 'clone'"],
  ),
  Quiz(
    362,
    "What is 'Git Blame' (Annotate)?",
    ["A tool that shows who changed each line of a file and in which commit", "A way to insult other developers", "A command to delete a file", "A bug reporting tool"],
  ),
  Quiz(
    363,
    "What is 'upstream/main'?",
    ["The state of the 'main' branch in the original repository as of your last fetch", "Your local main branch", "A branch on your fork", "A folder on GitHub"],
  ),
  Quiz(
    364,
    "How do you resolve a conflict in a Pull Request?",
    ["Pull the latest changes from upstream, merge/rebase locally, fix conflicts, and push", "Ask the maintainer to fix it for you", "Delete the PR and start over", "Force merge on GitHub"],
  ),
  Quiz(
    365,
    "What is 'Github Stars' used for?",
    ["To show appreciation for a repository and save it to your bookmarks", "To rank the quality of the code", "To pay the developers", "To make the project private"],
  ),
  Quiz(
    366,
    "What is 'Forks Count'?",
    ["The number of times a repository has been forked by others", "The number of files in the project", "The number of branches", "The number of downloads"],
  ),
  Quiz(
    367,
    "Can you merge your own PR into someone else's project?",
    ["No, only people with 'Write' access to the original project can merge", "Yes, if the code is good", "Yes, if no one reviews it in 3 days", "No, unless you pay for GitHub Enterprise"],
  ),
  Quiz(
    368,
    "What is 'Git Cherry-pick'?",
    ["Applying a specific commit from one branch to another", "Selecting the best developer for a project", "Deleting unwanted commits", "Renaming a branch"],
  ),
  Quiz(
    369,
    "What is the 'Reviewers' section in a PR?",
    ["A place to invite specific people to check your code", "A list of people who liked the project", "A place to write a summary of the project", "A list of bugs"],
  ),
  Quiz(
    370,
    "What is a 'Project Wiki' on GitHub?",
    ["A separate section for long-form documentation and guides", "A list of developers", "A place to download images", "A type of programming language"],
  ),
  Quiz(
    371,
    "What is 'GitHub Discussions'?",
    ["A forum-like space for community conversations outside of issues and PRs", "A private chat between two people", "A way to write code together", "A list of all commits"],
  ),
  Quiz(
    372,
    "How do you clone a repository using SSH?",
    ["git clone git@github.com:username/repo.git", "git clone https://github.com/...", "git clone ssh://repo", "git get --ssh [URL]"],
  ),
  Quiz(
    373,
    "What is 'Personal Access Token' scope?",
    ["The specific permissions (like repo access) given to a token", "The physical size of the token", "The name of the user", "The time the token expires"],
  ),
  Quiz(
    374,
    "What is 'Markdown' (.md)?",
    ["A simple markup language used for formatting text (like README files)", "A type of database", "A programming language for Android", "An image format"],
  ),
  Quiz(
    375,
    "What is the difference between a PR and a Commit?",
    ["A commit is a local snapshot; a PR is a proposal to share those snapshots", "They are the same thing", "A PR is for code; a commit is for images", "A commit is on GitHub; a PR is local"],
  ),
  Quiz(
    376,
    "What is 'Social Coding'?",
    ["The practice of collaborating and sharing code openly on platforms like GitHub", "Writing code for Facebook", "Coding while talking to friends", "A type of mobile app"],
  ),
  Quiz(
    377,
    "What is 'Upstream Tracking Branch'?",
    ["A local branch that is linked to a branch on a remote server", "A branch that tracks the price of the software", "A hidden branch", "A branch used for testing"],
  ),
  Quiz(
    378,
    "What is 'Git Submodule'?",
    ["A way to include one Git repository as a folder inside another", "A small version of Git", "A plugin for Android Studio", "A way to delete history"],
  ),
  Quiz(
    379,
    "Can you fork a private repository?",
    ["Yes, if you have access, but the fork will also be private", "No, private repos cannot be forked", "Yes, and the fork becomes public", "Only if you are the owner"],
  ),
  Quiz(
    380,
    "What is 'Semantic Versioning' (v1.0.0)?",
    ["A convention for naming project versions based on the type of changes", "A way to name branches", "A list of commit hashes", "A rule in .gitignore"],
  ),
  Quiz(
    381,
    "What is 'GitHub Release'?",
    ["A specific point in history (usually a tag) that is packaged for users to download", "When you delete a project", "A new version of the GitHub website", "A type of commit message"],
  ),
  Quiz(
    382,
    "What is 'Rebase and Merge' on GitHub?",
    ["Replaying your commits on top of the base branch before merging", "Deleting the history of the project", "Merging two projects together", "Increasing the file size"],
  ),
  Quiz(
    383,
    "What is 'Assignees' in Issues?",
    ["Specifying who is responsible for working on that specific issue", "A list of all project followers", "A way to hide the issue", "A type of hardware"],
  ),
  Quiz(
    384,
    "What is 'Git Reflog'?",
    ["A record of every time the tip of a branch was updated (the ultimate undo)", "A log of all files", "A way to delete history", "A bug reporting tool"],
  ),
  Quiz(
    385,
    "What is 'Open Source Etiquette'?",
    ["Being polite, following contribution rules, and being patient with maintainers", "Writing code as fast as possible", "Copying code without permission", "Demanding that your PR be merged immediately"],
  ),
  Quiz(
    386,
    "How can you see the 'upstream' URL of your project?",
    ["git remote get-url upstream", "git show upstream", "git config upstream", "git status"],
  ),
  Quiz(
    387,
    "What is a 'Contributor' graph?",
    ["A visualization showing how much work each person has done over time", "A list of all files", "A type of branch", "A setting on GitHub"],
  ),
  Quiz(
    388,
    "What is 'Git Revert'?",
    ["Creating a new commit that undoes the changes of a previous commit", "Deleting a commit from history", "Renaming a project", "Pushing code to GitHub"],
  ),
  Quiz(
    389,
    "What is 'Git Reset --hard'?",
    ["Discarding all local changes and matching the last commit exactly (dangerous)", "Adding files to staging", "Renaming a branch", "Connecting to GitHub"],
  ),
  Quiz(
    390,
    "What is 'GitHub Marketplace'?",
    ["A place to find and buy tools/apps to enhance your development workflow", "A place to buy code", "A social media feature", "A type of hardware"],
  ),
  Quiz(
    391,
    "What is 'Git Sparse-checkout'?",
    ["Downloading only a specific part or folder of a large repository", "Checking out a branch quickly", "Deleting a folder", "Renaming a project"],
  ),
  Quiz(
    392,
    "What is 'Fast-forward merge' in PRs?",
    ["Updating the base branch to the new commits without creating a merge commit", "Merging code quickly", "Deleting history", "Renaming a branch"],
  ),
  Quiz(
    393,
    "What is 'Git Staging' in the context of PRs?",
    ["There is no staging in PRs; commits are already permanent in the branch", "Preparing the PR for merge", "Deleting the code", "Renaming the project"],
  ),
  Quiz(
    394,
    "What is 'GitHub Organizations'?",
    ["A shared account for groups/companies to manage multiple projects and teams", "A list of all users", "A way to write code together", "A type of database"],
  ),
  Quiz(
    395,
    "How do you update your fork directly on GitHub website?",
    ["Click the 'Sync fork' button on your repository page", "Delete the fork and re-fork", "You cannot update it on the website", "Email GitHub support"],
  ),
  Quiz(
    396,
    "What is 'Branch Protection Rule'?",
    ["A setting to prevent force-pushing or unauthorized merging into a branch", "A way to hide a branch", "A type of branch naming", "A rule in .gitignore"],
  ),
  Quiz(
    397,
    "What is 'Git Flow'?",
    ["A popular branching model for managing project releases", "The speed of the internet", "A way to write code", "A type of database"],
  ),
  Quiz(
    398,
    "What is 'Upstream Master'?",
    ["The main branch of the original project you forked from", "Your own main branch", "A deleted branch", "A folder on GitHub"],
  ),
  Quiz(
    399,
    "What is 'PR Review' status?",
    ["Shows if a PR is 'Approved', 'Changes Requested', or 'Pending'", "The number of files changed", "The time the PR was created", "The name of the developer"],
  ),
  Quiz(
    400,
    "Why is GitHub called 'Social Coding'?",
    ["Because it combines Version Control with community features like following and stars", "Because you code on social media", "Because it is owned by Facebook", "Because it only works for social apps"],
  ),
];
final List<Quiz> gitQuizM5 = [
  // --- Topic 37: Anatomy of a Merge Conflict ---
  Quiz(
    401,
    "What is a 'Merge Conflict' in Git?",
    ["When Git cannot automatically combine changes because the same line was modified in different ways", "When the internet connection fails during a merge", "When you try to merge two different programming languages", "When you delete the .git folder by accident"],
  ),
  Quiz(
    402,
    "What does the marker '<<<<<<< HEAD' indicate in a conflict file?",
    ["The start of the changes from your current local branch", "The end of the conflict section", "The changes coming from the remote server", "A syntax error in your Dart code"],
  ),
  Quiz(
    403,
    "What does the '=======' separator represent in a conflict marker?",
    ["The boundary between your local changes and the incoming changes", "The end of the file", "A line of code that was deleted", "A comment added by GitHub"],
  ),
  Quiz(
    404,
    "What does the '>>>>>>> [branch-name]' marker indicate?",
    ["The end of the changes coming from the external or feature branch", "The start of the repository", "The user who wrote the code", "The location of the .gitignore file"],
  ),
  Quiz(
    405,
    "In which file type do merge conflicts most commonly occur?",
    ["Text-based source code files (like .dart, .java, .txt)", "Image files like .png", "Compiled files like .apk", "Encrypted password files"],
  ),

  // --- Topic 38: Resolving Conflicts Manually (The Marker Logic) ---
  Quiz(
    406,
    "What is the first step in resolving a merge conflict manually?",
    ["Open the conflicting file and locate the Git markers (<<<<, ====, >>>>)", "Delete the file and start over", "Run git init again", "Restart Android Studio"],
  ),
  Quiz(
    407,
    "After choosing which code to keep, what must you do with the conflict markers?",
    ["Delete all markers (<<<<, ====, >>>>) from the file", "Keep them so Git knows you fixed it", "Move them to the top of the file", "Rename them to comments"],
  ),
  Quiz(
    408,
    "Which command tells Git that you have finished resolving the conflicts in a file?",
    ["git add [file-name]", "git resolve [file-name]", "git commit --fixed", "git merge --done"],
  ),
  Quiz(
    409,
    "How do you finalize a merge after staging the resolved files?",
    ["Run 'git commit' without a message (Git will provide a default merge message)", "Run 'git push' immediately", "Run 'git merge --abort'", "Delete the branch"],
  ),
  Quiz(
    410,
    "What command lets you completely cancel a merge and return to the state before it started?",
    ["git merge --abort", "git undo merge", "git reset --soft", "git checkout ."],
  ),

  // --- Topic 39: Undoing Local Changes with git restore ---
  Quiz(
    411,
    "What is the purpose of 'git restore [file]'?",
    ["To discard uncommitted changes in your working directory and return a file to its last committed state", "To download a file from GitHub", "To delete a file from the repository", "To rename a file"],
  ),
  Quiz(
    412,
    "Which command removes a file from the Staging Area but keeps the actual code changes in the file?",
    ["git restore --staged [file]", "git add --undo", "git rm --cached", "git reset --hard"],
  ),
  Quiz(
    413,
    "If you accidentally deleted a few lines of code and haven't committed yet, which command helps?",
    ["git restore [file]", "git log", "git stash", "git init"],
  ),
  Quiz(
    414,
    "Does 'git restore' affect your commit history?",
    ["No, it only affects your current working files or the staging area", "Yes, it deletes the last commit", "Yes, it creates a new commit", "Only if you use the --force flag"],
  ),
  Quiz(
    415,
    "What command restores all files in the current directory to their last committed state?",
    ["git restore .", "git reset --all", "git undo *", "git checkout --all"],
  ),

  // --- Topic 40: Moving the Timeline: git reset ---
  Quiz(
    416,
    "What does 'git reset --soft HEAD~1' do?",
    ["Undoes the last commit but keeps your changes in the Staging Area", "Deletes the last commit and all your code changes", "Moves the project to a different branch", "Uploads the last commit to GitHub"],
  ),
  Quiz(
    417,
    "What does 'git reset --hard HEAD~1' do?",
    ["Deletes the last commit AND discards all code changes associated with it (Dangerous!)", "Only deletes the commit message", "Moves the code to the stash", "Creates a backup of the last commit"],
  ),
  Quiz(
    418,
    "Why should you never use 'git reset' on commits that have already been pushed to GitHub?",
    ["It rewrites history and will cause major conflicts for other team members", "It will crash the GitHub server", "GitHub does not support the reset command", "It will make your account private"],
  ),
  Quiz(
    419,
    "What is 'HEAD~2' in a reset command?",
    ["Refers to the commit two steps back from the current one", "A branch named 'HEAD'", "The second developer in the project", "A way to reset two files at once"],
  ),
  Quiz(
    420,
    "Which reset mode is the default if you don't specify --soft or --hard?",
    ["--mixed (keeps changes in working directory but unstages them)", "--soft", "--hard", "--force"],
  ),

  // --- Topic 41: Public Safety: Undo with git revert ---
  Quiz(
    421,
    "How is 'git revert' different from 'git reset'?",
    ["'revert' creates a new commit that undoes changes; 'reset' deletes commits from history", "'revert' is only for private repos", "'revert' deletes the .git folder", "There is no difference"],
  ),
  Quiz(
    422,
    "Why is 'git revert' safer for public or shared branches?",
    ["It doesn't delete history, so it doesn't break the timeline for other developers", "It is faster than reset", "It doesn't require an internet connection", "It automatically fixes bugs"],
  ),
  Quiz(
    423,
    "What happens when you run 'git revert [commit-hash]'?",
    ["Git creates a new commit that does the exact opposite of the specified commit", "Git deletes the specified commit", "Git renames the commit", "Git moves the commit to a different branch"],
  ),
  Quiz(
    424,
    "Can a revert result in a merge conflict?",
    ["Yes, if the changes you are reverting conflict with newer code in the project", "No, reverts are always automatic", "Only if you are on the main branch", "Yes, but only in Java projects"],
  ),
  Quiz(
    425,
    "Which command shows the commit hashes you need for a revert?",
    ["git log --oneline", "git status", "git branch", "git remote -v"],
  ),

  // --- Topic 42: Amending the Last Commit (--amend) ---
  Quiz(
    426,
    "What is the purpose of 'git commit --amend'?",
    ["To modify the most recent commit (e.g., fix a typo in the message or add a forgotten file)", "To delete the last commit", "To merge two branches together", "To change the author's email for all commits"],
  ),
  Quiz(
    427,
    "If you forget to include 'style.css' in your last commit, how do you fix it with --amend?",
    ["Stage the file (git add) then run git commit --amend --no-edit", "Run git commit --amend style.css", "Delete the last commit and start over", "You cannot fix it"],
  ),
  Quiz(
    428,
    "Does 'git commit --amend' change the commit hash ID?",
    ["Yes, because it technically replaces the old commit with a brand new one", "No, the ID stays the same", "Only if you change the message", "Only if you add new files"],
  ),
  Quiz(
    429,
    "Is it safe to amend a commit that has already been pushed to GitHub?",
    ["No, because it rewrites history and will cause push errors (Mismatched histories)", "Yes, GitHub encourages it", "Yes, but only for README files", "Only if you are the project owner"],
  ),
  Quiz(
    430,
    "What does the '--no-edit' flag do in an amend command?",
    ["It keeps the existing commit message and only updates the files", "It prevents you from adding new files", "It hides the commit from the log", "It skips the staging area"],
  ),

  // --- Topic 43: Recovering the 'Lost': Using git reflog ---
  Quiz(
    431,
    "What is 'git reflog'?",
    ["A record of every time the 'HEAD' pointer moved (the ultimate history of your actions)", "A list of all deleted files", "A way to contact GitHub support", "A backup of your .gitignore file"],
  ),
  Quiz(
    432,
    "How can 'reflog' help you if you accidentally ran 'git reset --hard' and lost code?",
    ["It shows the commit hash of the lost code, allowing you to reset back to it", "It automatically undoes the last command", "It recovers files from the Recycle Bin", "It sends an email with the lost code"],
  ),
  Quiz(
    433,
    "Is 'reflog' shared with other developers on GitHub?",
    ["No, reflog is local to your computer only", "Yes, it is pushed with every commit", "Yes, but only if you use --global", "No, it is stored on the GitHub server only"],
  ),
  Quiz(
    434,
    "How long does Git usually keep reflog entries?",
    ["Usually 30 to 90 days before they are automatically cleaned up", "Forever", "Until you turn off the computer", "Until the next commit"],
  ),
  Quiz(
    435,
    "What is the notation for the previous position of HEAD in the reflog?",
    ["HEAD@{1}", "HEAD-1", "PREV_HEAD", "LAST_COMMIT"],
  ),

  // --- Topic 44: Checking Database Integrity (git fsck) ---
  Quiz(
    436,
    "What does 'git fsck' stand for?",
    ["File System CheK", "File Sync Control", "Fix Staging Key", "Format System Cache"],
  ),
  Quiz(
    437,
    "What is the primary use of 'git fsck'?",
    ["To check the integrity of the Git database and find corrupt or missing objects", "To check for syntax errors in your code", "To see if your internet is fast enough for Git", "To delete old branches"],
  ),
  Quiz(
    438,
    "What is a 'dangling commit' in the context of git fsck?",
    ["A commit that is not reachable by any branch or tag", "A commit that has no author", "A commit that failed to push", "A commit that was made on a Friday"],
  ),
  Quiz(
    439,
    "When should you run 'git fsck'?",
    ["If you suspect your Git repository is corrupted or if your computer crashed during a commit", "Every time you save a file", "Before you start a new Flutter project", "Only when GitHub is down"],
  ),
  Quiz(
    440,
    "Does 'git fsck' automatically fix corrupt files?",
    ["No, it primarily reports problems; fixing usually requires manual recovery or a new clone", "Yes, it fixes everything automatically", "It deletes corrupt files and downloads them from GitHub", "Only if you use the --fix flag"],
  ),

  // --- Topic 45: Best Practices for a Clean Project History ---
  Quiz(
    441,
    "What does 'Commit Small, Commit Often' mean?",
    ["Make frequent commits for small, logical changes rather than one giant commit for many changes", "Use a small font size for commit messages", "Only commit on small projects", "Delete old commits to keep the list short"],
  ),
  Quiz(
    442,
    "Which is a better commit message according to best practices?",
    ["Fix: Resolve null pointer exception in Login screen", "Update code", "Fixing stuff", "asdfasdf"],
  ),
  Quiz(
    443,
    "Why should you avoid committing 'Broken' code that doesn't compile?",
    ["To ensure that the project history remains 'bisectable' and every version is functional", "To save space on GitHub", "Because Git will refuse to commit broken code", "To prevent your computer from overheating"],
  ),
  Quiz(
    444,
    "What is the benefit of a 'Clean History'?",
    ["It makes it much easier to track down bugs, review code, and understand the project's evolution", "It makes the App run faster on Android", "It allows you to skip using .gitignore", "It increases your GitHub 'Stars' count"],
  ),
  Quiz(
    445,
    "What should you do with temporary 'work-in-progress' commits before pushing to a shared branch?",
    ["Clean them up using amend or interactive rebase to make the history professional", "Leave them as they are; more commits are always better", "Delete the whole branch and start over", "Rename the branch to 'backup'"],
  ),

  // --- Mixed Review Module 5 (Questions 446 - 500) ---
  Quiz(
    446,
    "Which command sequence resolves a merge conflict?",
    ["Edit file -> git add -> git commit", "git commit -> Edit file -> git add", "git add -> git commit -> Edit file", "git merge --abort -> git commit"],
  ),
  Quiz(
    447,
    "What does 'git reset --mixed' (the default) do?",
    ["Moves HEAD, unstages changes, but keeps changes in your working directory", "Deletes all files", "Pushes code to GitHub", "Only changes the commit message"],
  ),
  Quiz(
    448,
    "If you want to see what your project looked like 5 commits ago without changing anything permanently, what do you use?",
    ["git checkout [hash]", "git reset --hard [hash]", "git revert [hash]", "git status"],
  ),
  Quiz(
    449,
    "How do you remove a specific file from the last commit but keep it in your folder?",
    ["git reset HEAD~1 [file] followed by git commit --amend --no-edit", "git rm [file]", "git restore [file]", "git init"],
  ),
  Quiz(
    450,
    "What is the safest way to undo a commit that has been shared on GitHub?",
    ["git revert", "git reset --hard", "git commit --amend", "Deleting the repository"],
  ),
  Quiz(
    451,
    "In a merge conflict, the 'Incoming Change' refers to:",
    ["The code coming from the branch you are merging IN", "The code you just wrote in your current branch", "A new file created by Git", "The .gitignore file"],
  ),
  Quiz(
    452,
    "In a merge conflict, the 'Current Change' refers to:",
    ["The code in the branch you are currently ON (HEAD)", "The code coming from GitHub", "The last commit you made yesterday", "The code in the master branch"],
  ),
  Quiz(
    453,
    "What is the danger of 'git reset --hard'?",
    ["You can lose uncommitted work forever as it wipes the working directory clean", "It makes the terminal slow", "It requires a password", "It changes your GitHub username"],
  ),
  Quiz(
    454,
    "Which command shows you the history of your HEAD movements even after you've deleted branches?",
    ["git reflog", "git log", "git status", "git remote -v"],
  ),
  Quiz(
    455,
    "How do you change the author's name for the very last commit?",
    ["git commit --amend --author='New Name <email@example.com>'", "git config --global user.name 'New Name'", "git reset --author", "You cannot change the author"],
  ),
  Quiz(
    456,
    "What is 'Git Garbage Collection' (git gc)?",
    ["A command that optimizes the repository by removing unreachable objects", "A tool for deleting bad code", "A way to uninstall Git", "A feature in Android Studio to clean the project"],
  ),
  Quiz(
    457,
    "Which command would you use to see the changes made in a specific commit from the reflog?",
    ["git show HEAD@{2}", "git log --reflog", "git status --last", "git diff HEAD"],
  ),
  Quiz(
    458,
    "What happens if you resolve a conflict but forget to delete the '<<<<<<<' markers?",
    ["The code will have syntax errors and will not compile/run", "Git will delete them automatically during commit", "The markers will be hidden in the app", "Nothing happens"],
  ),
  Quiz(
    459,
    "What is the 'Conflict Resolution Strategy'?",
    ["The logic Git uses to decide how to merge (e.g., recursive, ort)", "A meeting between developers to stop fighting", "A list of rules in .gitignore", "A type of programming pattern"],
  ),
  Quiz(
    460,
    "How can you check if a specific file has conflicts without opening it?",
    ["git status (conflicting files are listed under 'Unmerged paths')", "git log", "git diff", "git check-conflict"],
  ),
  Quiz(
    461,
    "What does 'git checkout --ours [file]' do during a conflict?",
    ["Automatically chooses your version of the file and ignores the incoming one", "Deletes the file", "Asks the maintainer for help", "Merges both versions automatically"],
  ),
  Quiz(
    462,
    "What does 'git checkout --theirs [file]' do during a conflict?",
    ["Automatically chooses the incoming version of the file and ignores yours", "Renames the file", "Pushes the file to GitHub", "Checks the file for bugs"],
  ),
  Quiz(
    463,
    "Can you 'revert' a 'revert' commit?",
    ["Yes, if you revert a revert, you effectively re-apply the original changes", "No, you can only revert once", "Only if you use the --force flag", "Yes, but it deletes the history"],
  ),
  Quiz(
    464,
    "What is an 'Orphaned Commit'?",
    ["Another name for a dangling commit that has no parent and no branch pointer", "A commit with no author", "A commit that was made on a holiday", "A commit that was never pushed"],
  ),
  Quiz(
    465,
    "What is 'Git Integrity'?",
    ["The assurance that the data in the repository is correct and hasn't been corrupted", "The honesty of the developer", "A feature that prevents you from lying in commit messages", "The speed of the merge"],
  ),
  Quiz(
    466,
    "Which command removes untracked files from your working directory?",
    ["git clean -f", "git rm --untracked", "git reset", "git restore"],
  ),
  Quiz(
    467,
    "How do you see the diff of a conflict before you resolve it?",
    ["git diff", "git log -p", "git status --diff", "git show conflict"],
  ),
  Quiz(
    468,
    "What is 'Three-way merge'?",
    ["A merge that uses three snapshots: the two branch tips and their common ancestor", "A merge between three people", "A merge that takes three hours", "A merge that creates three files"],
  ),
  Quiz(
    469,
    "What is 'Interactive Rebase' (git rebase -i)?",
    ["A powerful tool for rewriting, combining, or deleting multiple commits in history", "A way to talk to other developers", "A game played in the terminal", "A type of animation in Flutter"],
  ),
  Quiz(
    470,
    "Can you recover a deleted branch if you know its last commit hash?",
    ["Yes, using 'git branch [name] [hash]'", "No, once a branch is deleted, it is gone forever", "Only if you have a backup on GitHub", "Yes, but it will be empty"],
  ),
  Quiz(
    471,
    "What is 'Fast-forward merge'?",
    ["A merge that simply moves the pointer because there were no new commits on the base branch", "A merge that happens instantly", "A merge that skips the tests", "A merge that only works on Linux"],
  ),
  Quiz(
    472,
    "What is 'Git Index'?",
    ["Another name for the Staging Area", "A list of all developers", "The first page of a website", "A folder inside .git/objects"],
  ),
  Quiz(
    473,
    "What is the 'Working Tree'?",
    ["The actual files you are currently seeing and editing in your folder", "The graph in git log", "The .git folder", "The server on GitHub"],
  ),
  Quiz(
    474,
    "What happens to your changes if you 'git stash' before a 'git reset --hard'?",
    ["Your changes are safe in the stash and won't be deleted by the reset", "The stash is also deleted", "The reset is cancelled", "The changes are committed automatically"],
  ),
  Quiz(
    475,
    "What is 'Merge Commit'?",
    ["A special commit that has two parent commits, representing the union of two branches", "A commit that deletes a branch", "A commit with a conflict", "A commit that was pushed to GitHub"],
  ),
  Quiz(
    476,
    "What is 'Conflict marker logic'?",
    ["The standard way Git highlights overlapping changes in a file", "A way to name variables in code", "A rule for writing README files", "A feature in GitHub Actions"],
  ),
  Quiz(
    477,
    "How do you list all files that have conflicts?",
    ["git diff --name-only --diff-filter=U", "git status", "git log --conflicts", "Both A and B"],
  ),
  Quiz(
    478,
    "What is 'Git Object Database'?",
    ["The internal storage in Git where files, commits, and trees are stored as objects", "A database like MySQL or Firebase", "A list of project goals", "A type of hardware"],
  ),
  Quiz(
    479,
    "What is 'Blob' in Git?",
    ["Binary Large Object - representing the content of a single file", "A type of bug", "A slow developer", "A large commit message"],
  ),
  Quiz(
    480,
    "What is 'Tree' in Git objects?",
    ["Represents a directory (folder), pointing to blobs or other trees", "The commit history graph", "A Flutter widget", "The .gitignore file"],
  ),
  Quiz(
    481,
    "How do you view the content of a Git object if you have its hash?",
    ["git cat-file -p [hash]", "git show object [hash]", "git view --hash [hash]", "Open it in Notepad"],
  ),
  Quiz(
    482,
    "What is 'Git Prune'?",
    ["Removes objects that are no longer reachable from any branch or tag", "Deletes the main branch", "Removes files from the working directory", "Cleans the computer screen"],
  ),
  Quiz(
    483,
    "Can you undo a 'git commit --amend'?",
    ["Yes, by using the reflog to find the commit hash before the amend and resetting to it", "No, amend is permanent", "Yes, by running git undo", "Only if you haven't saved the file"],
  ),
  Quiz(
    484,
    "What is the 'Diverged' state in Git?",
    ["When both your local branch and the remote branch have new, different commits", "When your code has a syntax error", "When you have two .git folders", "When you switch to a new branch"],
  ),
  Quiz(
    485,
    "What is the best way to keep a clean history when pulling from a shared branch?",
    ["Use 'git pull --rebase'", "Use 'git pull --force'", "Delete your local branch and clone again", "Never pull, only push"],
  ),
  Quiz(
    486,
    "What is 'Atomic Commit'?",
    ["A commit that contains only one complete and functional change or feature", "A commit made by a nuclear scientist", "A very large commit", "A commit with no files"],
  ),
  Quiz(
    487,
    "What is 'Git Checkout -- [file]' (older Git versions)?",
    ["The same as 'git restore [file]' - it discards local changes", "A way to delete a file", "A way to push a file", "A way to rename a file"],
  ),
  Quiz(
    488,
    "What is 'Mismatched Histories' error?",
    ["Usually caused by rewriting history locally (e.g., amend/reset) and trying to push", "When your clock is wrong", "When you use two different versions of Git", "When the file names are too long"],
  ),
  Quiz(
    489,
    "What is 'Detached HEAD'?",
    ["A state where you are looking at a specific commit instead of being on a branch", "When your computer mouse is disconnected", "When you delete the .git folder", "When a commit has no message"],
  ),
  Quiz(
    490,
    "How do you fix a 'Detached HEAD' and save your work?",
    ["Create a new branch from that point: 'git checkout -b [new-branch-name]'", "Run git commit", "Run git init", "Restart the project"],
  ),
  Quiz(
    491,
    "What is 'Git Plumbing' commands?",
    ["Low-level commands that Git uses internally (e.g., cat-file, hash-object)", "Commands for fixing water leaks", "Commands for managing GitHub Teams", "Commands for designing icons"],
  ),
  Quiz(
    492,
    "What is 'Git Porcelain' commands?",
    ["High-level commands that humans use (e.g., add, commit, status, branch)", "Commands for cleaning the project", "Commands for making the app look pretty", "Commands for deleting history"],
  ),
  Quiz(
    493,
    "What happens if you run 'git reset --hard' without a commit hash?",
    ["It resets your current working directory to the last commit (HEAD)", "It deletes every commit", "It does nothing", "It pushes code to GitHub"],
  ),
  Quiz(
    494,
    "What is 'Conflict Marker Style'?",
    ["A configuration (like diff3) that can show the common ancestor code in conflicts", "The color of the markers in Android Studio", "The way you name your branches", "A type of CSS file"],
  ),
  Quiz(
    495,
    "Can Git recover a file that was never added or committed?",
    ["No, Git only knows about files that were at least added to the staging area", "Yes, it tracks everything on your hard drive", "Only if you use a Mac", "Yes, if you have a GitHub account"],
  ),
  Quiz(
    496,
    "What is 'HEAD@{0}' in reflog?",
    ["The current position of the HEAD pointer", "The very first commit", "A deleted branch", "A way to reset the computer"],
  ),
  Quiz(
    497,
    "What is the purpose of 'git merge --no-commit'?",
    ["Performs the merge but stops before creating a commit, allowing you to inspect it", "Merges without showing a message", "Merges but doesn't change the files", "Only works if there are no conflicts"],
  ),
  Quiz(
    498,
    "What is 'Merge Conflict Resolution Tool'?",
    ["A visual software (like in Android Studio) that makes resolving conflicts easier", "A command like git fix", "A meeting between developers", "A rule in .gitignore"],
  ),
  Quiz(
    499,
    "How do you check the version of Git you are using?",
    ["git --version", "git status", "git log", "git help"],
  ),
  Quiz(
    500,
    "What is the most important rule of Git Troubleshooting?",
    ["Don't panic and use 'git status' and 'git reflog' to understand the situation", "Delete the folder immediately", "Always use --force", "Email GitHub support for every error"],
  ),
];
final List<Quiz> gitQuizM6 = [
  // --- Topic 46: Connecting GitHub Account to Android Studio ---
  Quiz(
    501,
    "Where do you go in Android Studio settings to link your GitHub account?",
    ["Version Control > GitHub", "Appearance > Accounts", "Build > Execution", "Editor > GitHub"],
  ),
  Quiz(
    502,
    "What is the easiest way to log in to GitHub from Android Studio?",
    ["Log In via GitHub... (opens a browser for authorization)", "Type your password directly into the IDE", "Upload your .git folder to the settings", "Send an email to GitHub"],
  ),
  Quiz(
    503,
    "What is a 'Personal Access Token' (PAT) used for in the IDE?",
    ["As an alternative login method if browser authorization fails", "To increase the internet speed of the IDE", "To change the theme of Android Studio", "To encrypt your project files"],
  ),
  Quiz(
    504,
    "Which feature is enabled once you connect your GitHub account?",
    ["The ability to Share Project on GitHub and manage Pull Requests directly", "Automatic code writing", "Free cloud storage for images", "Automatic app publishing"],
  ),
  Quiz(
    505,
    "How do you check if your GitHub account is successfully connected?",
    ["Your profile picture and username appear in the GitHub settings pane", "The IDE turns green", "You receive a text message", "A new file is created in your project"],
  ),

  // --- Topic 47: The Visual Commit Tool Window (Alt + 0) ---
  Quiz(
    506,
    "What is the shortcut to open the Commit Tool Window in Android Studio?",
    ["Alt + 0 (or Cmd + 0 on Mac)", "Alt + 9", "Ctrl + K", "Shift + F10"],
  ),
  Quiz(
    507,
    "What does the 'Changes' list show in the Commit window?",
    ["All files that have been modified, added, or deleted since the last commit", "The list of all developers", "The code bugs", "The project size"],
  ),
  Quiz(
    508,
    "How can you see a 'Diff' (comparison) of a file before committing?",
    ["Double-click the file in the Changes list", "Right-click and select 'Delete'", "Hover over the file name", "Press Alt + F4"],
  ),
  Quiz(
    509,
    "What is the 'Commit and Push' button useful for?",
    ["Saving your changes locally and uploading them to GitHub in one click", "Deleting the code and starting over", "Merging two branches", "Creating a new branch"],
  ),
  Quiz(
    510,
    "What does 'Optimize Imports' do during the commit process?",
    ["Removes unused imports and organizes them automatically", "Downloads new libraries", "Makes the app icons smaller", "Changes the app name"],
  ),

  // --- Topic 48: Navigating the Visual Git Log Tab ---
  Quiz(
    511,
    "Where is the Git Log tab located in Android Studio?",
    ["At the bottom in the 'Git' tool window", "In the Project view on the left", "In the Help menu", "Inside the Settings window"],
  ),
  Quiz(
    512,
    "What does the 'Graph' in the Git Log represent?",
    ["A visual timeline of all commits and branch movements", "The memory usage of the app", "The number of users downloading the app", "The folder structure"],
  ),
  Quiz(
    513,
    "How can you filter the Git Log to see only commits from a specific person?",
    ["Use the 'User' filter dropdown in the log tab", "Search by the person's phone number", "Right-click on the code editor", "Delete all other commits"],
  ),
  Quiz(
    514,
    "What does 'Reset Current Branch to Here' do in the visual log?",
    ["Moves your current branch pointer to that specific commit (like git reset)", "Deletes the log", "Pushes the commit to GitHub", "Renames the commit"],
  ),
  Quiz(
    515,
    "What information is shown in the 'Selection Details' (right side of log)?",
    ["The files modified in that commit and the full commit message", "The user's password", "The list of all project branches", "The computer's temperature"],
  ),

  // --- Topic 49: Visual Branching and Switching (Bottom-Right Menu) ---
  Quiz(
    516,
    "Where can you find the quick-access menu for Git branches?",
    ["The bottom-right corner of the IDE status bar", "The top-left File menu", "The help search bar", "Inside the README file"],
  ),
  Quiz(
    517,
    "How do you switch to a different branch using the UI?",
    ["Select the branch from the menu and click 'Checkout'", "Double-click the branch name in the project view", "Rename the folder", "Restart Android Studio"],
  ),
  Quiz(
    518,
    "What is the difference between 'Local Branches' and 'Remote Branches' in the menu?",
    ["Local are on your computer; Remote are on GitHub server", "Local are free; Remote cost money", "Local are for code; Remote are for images", "There is no difference"],
  ),
  Quiz(
    519,
    "How do you create a new branch from the UI?",
    ["Click '+ New Branch' in the branch menu", "Type 'git branch' in the editor", "Right-click the desktop", "Create a new folder"],
  ),
  Quiz(
    520,
    "What happens when you click 'Merge into Current' on a branch in the menu?",
    ["Git merges that branch into the one you are currently working on", "The branch is deleted", "The branch is renamed to 'Current'", "The project is pushed to GitHub"],
  ),

  // --- Topic 50: The 3-Way Merge: Visual Conflict Resolution ---
  Quiz(
    521,
    "What is the '3-Way Merge' window in Android Studio?",
    ["A tool that shows your version, their version, and the result in three panes", "A way to merge three different projects", "A setting for three-button mice", "A list of three developers"],
  ),
  Quiz(
    522,
    "In the 3-Way Merge tool, what is the middle pane?",
    ["The 'Result' - where you build the final code by accepting changes", "The code from GitHub", "The code from your local machine", "The commit history"],
  ),
  Quiz(
    523,
    "What do the '>>' and '<<' arrows do in the merge tool?",
    ["Accept the changes from either the left or right side into the result", "Delete the code", "Move to the next file", "Scroll the page"],
  ),
  Quiz(
    524,
    "What is the 'Magic Wand' icon (Apply All Non-Conflicting Changes) used for?",
    ["To automatically resolve simple changes that don't overlap", "To fix all bugs in the code", "To change the app theme", "To push to GitHub"],
  ),
  Quiz(
    525,
    "When you click 'Apply' in the merge tool, what does Android Studio do?",
    ["Saves the resolution, stages the file, and prepares to finish the merge", "Deletes the branch", "Restarts the computer", "Opens the browser"],
  ),

  // --- Topic 51: Stashing vs Shelving in the IDE ---
  Quiz(
    526,
    "What is 'Shelve' in Android Studio?",
    ["An IDE-specific feature to save changes without committing, similar to Git Stash", "A place to store physical books", "A way to delete code", "A tool for designing icons"],
  ),
  Quiz(
    527,
    "How is 'Shelf' different from 'Git Stash'?",
    ["Shelf is managed by the IDE; Stash is managed by the Git database", "Shelf is only for Java; Stash is for Dart", "Shelf is public; Stash is private", "They are exactly the same"],
  ),
  Quiz(
    528,
    "Where can you find your shelved changes?",
    ["In the 'Shelf' tab within the Commit tool window", "In the Recycle Bin", "On GitHub", "In the Project Settings"],
  ),
  Quiz(
    529,
    "Why would you use 'Unshelve'?",
    ["To bring your saved changes back into the working directory", "To delete the changes", "To send them to a different developer", "To ignore them"],
  ),
  Quiz(
    530,
    "Which one is better if you need to switch branches and your changes aren't ready?",
    ["Either Git Stash or IDE Shelf will work fine", "Only Git Stash", "Only IDE Shelf", "Neither, you must commit"],
  ),

  // --- Topic 52: The Power of 'Annotate' (Visual Git Blame) ---
  Quiz(
    531,
    "What does 'Annotate with Git Blame' do in the editor?",
    ["Shows the author and commit date next to every line of code", "Checks the code for errors", "Translates the code to Shan", "Hides the line numbers"],
  ),
  Quiz(
    532,
    "How do you enable 'Annotate'?",
    ["Right-click the line number bar (Gutter) and select 'Annotate with Git Blame'", "Press Alt + F4", "Double-click the code", "Type 'git blame' in the console"],
  ),
  Quiz(
    533,
    "What happens when you hover over an annotation in the gutter?",
    ["It shows the full commit message and details for that line", "It deletes the line", "It renames the variable", "It opens the browser"],
  ),
  Quiz(
    534,
    "Why is Annotate useful for team collaboration?",
    ["It helps you understand why a line was changed and who to ask for help", "It ranks the best developers", "It prevents others from editing the code", "It automatically writes documentation"],
  ),
  Quiz(
    535,
    "How do you remove the annotations from the screen?",
    ["Right-click the gutter and select 'Close Annotations'", "Restart the IDE", "Delete the .git folder", "Commit your changes"],
  ),

  // --- Topic 53: Remote Icons: One-Click Pull, Push, & Fetch ---
  Quiz(
    536,
    "What does the blue 'Down Arrow' icon (Update Project) on the top toolbar do?",
    ["Performs a 'git pull' to get the latest code from GitHub", "Downloads a new version of Android Studio", "Moves the code to the bottom of the file", "Deletes the project history"],
  ),
  Quiz(
    537,
    "What does the green 'Checkmark' icon do?",
    ["Opens the Commit tool window to save changes locally", "Checks if the code has bugs", "Checks the internet connection", "Approves a Pull Request"],
  ),
  Quiz(
    538,
    "What does the green 'Up Arrow' icon do?",
    ["Performs a 'git push' to upload commits to GitHub", "Increases the font size", "Runs the app on a phone", "Moves to the next branch"],
  ),
  Quiz(
    539,
    "Where can you find the 'Fetch' command in the menu?",
    ["Git > Fetch", "File > Fetch", "Build > Fetch", "Help > Fetch"],
  ),
  Quiz(
    540,
    "What visual indicator shows that there are new commits on GitHub you haven't pulled yet?",
    ["A blue arrow appears next to the branch in the Git Log", "The IDE turns blue", "A popup appears every 5 minutes", "The 'Push' icon disappears"],
  ),

  // --- Topic 54: Managing Pull Requests Directly inside the IDE ---
  Quiz(
    541,
    "Can you view GitHub Pull Requests without leaving Android Studio?",
    ["Yes, using the 'Pull Requests' tool window tab", "No, you must use a browser", "Yes, but only for public repositories", "No, only for Java projects"],
  ),
  Quiz(
    542,
    "What can you do in the Pull Requests tab?",
    ["View, review, comment on, and merge PRs directly", "Only see the names of PRs", "Delete other people's PRs", "Change the project owner"],
  ),
  Quiz(
    543,
    "How do you add a comment to a specific line in a Pull Request inside the IDE?",
    ["Open the diff view of the PR and click the '+' icon on a line", "Type it in the terminal", "Email the author", "You cannot comment inside the IDE"],
  ),
  Quiz(
    544,
    "What does the 'Merge' button in the PR tab do?",
    ["Accepts the Pull Request and merges it into the target branch on GitHub", "Merges your local branches", "Deletes the code", "Renames the repository"],
  ),
  Quiz(
    545,
    "Why is 'Checkout' a PR branch useful?",
    ["It lets you run and test the PR code on your own machine before merging", "It makes the code yours", "It deletes the author's copy", "It increases your GitHub contribution score"],
  ),

  // --- Mixed Review Module 6 (Questions 546 - 600) ---
  Quiz(
    546,
    "What is the main benefit of using Git through Android Studio GUI?",
    ["It makes complex tasks like merging and reviewing code more visual and easier", "It makes the app run faster", "It doesn't require Git to be installed", "It is the only way to use GitHub"],
  ),
  Quiz(
    547,
    "What does 'Git > Show History' on a specific file do?",
    ["Shows the log of commits that only affected that specific file", "Shows the browser history", "Shows the entire project history", "Shows who deleted the file"],
  ),
  Quiz(
    548,
    "Can you resolve a conflict by simply choosing 'Accept Yours' or 'Accept Theirs'?",
    ["Yes, Android Studio provides these as quick options in the conflict popup", "No, you must always edit manually", "Only if you are the owner", "Yes, but only for images"],
  ),
  Quiz(
    549,
    "What is 'VCS' in Android Studio menus?",
    ["Version Control System (The menu where Git settings were located in older versions)", "Video Coding System", "Visual Code Studio", "Variable Control Set"],
  ),
  Quiz(
    550,
    "Which command is equivalent to 'Update Project' in Android Studio?",
    ["git pull", "git push", "git commit", "git status"],
  ),
  Quiz(
    551,
    "How do you share a brand new local project to GitHub using the UI?",
    ["Git > GitHub > Share Project on GitHub", "File > Export to GitHub", "Right-click the folder > Send to GitHub", "You must use the command line"],
  ),
  Quiz(
    552,
    "What is 'Git > Rollback' in Android Studio?",
    ["Equivalent to 'git restore' - it discards local uncommitted changes", "It deletes the last 10 commits", "It reboots the computer", "It renames the branch"],
  ),
  Quiz(
    553,
    "Does Android Studio support other Version Control systems besides Git?",
    ["Yes, it also supports Mercurial and Subversion (SVN)", "No, only Git", "Yes, it supports Google Drive", "No, only GitHub"],
  ),
  Quiz(
    554,
    "What is the 'Local History' feature in Android Studio?",
    ["A built-in backup that tracks every change you make, even if you don't use Git", "A list of your browser history", "The same as git log", "A way to see who is nearby"],
  ),
  Quiz(
    555,
    "How is 'Local History' different from Git?",
    ["Local History is automatic and local; Git is manual and can be shared", "Git is automatic; Local History is manual", "They are the same", "Local History is only for images"],
  ),
  Quiz(
    556,
    "What happens if you delete a file in the project view?",
    ["Android Studio automatically stages the deletion for Git", "Nothing, Git doesn't notice", "The file is moved to the .git folder", "The project is corrupted"],
  ),
  Quiz(
    557,
    "What does 'Reformat Code' before commit do?",
    ["Cleans up the code style (spacing, tabs) to match project standards", "Changes the programming language", "Deletes comments", "Optimizes images"],
  ),
  Quiz(
    558,
    "Where can you see the 'Diff' of a commit you made yesterday?",
    ["Select the commit in the Git Log tab and look at the changed files list", "In the Recycle Bin", "In the Project view", "You cannot see it"],
  ),
  Quiz(
    559,
    "What is 'Cherry-pick' in the Git Log context menu?",
    ["Applying the changes from a selected commit to your current branch", "Selecting the best code", "Deleting a commit", "Renaming a branch"],
  ),
  Quiz(
    560,
    "Can you manage GitHub Issues inside Android Studio?",
    ["Yes, there is a task/issue management feature that can sync with GitHub", "No, only PRs", "Yes, but it costs money", "No, only in VS Code"],
  ),
  Quiz(
    561,
    "What does 'Compare with Branch' do?",
    ["Shows the differences between your current file/branch and another branch", "Merges two branches", "Deletes a branch", "Renames the project"],
  ),
  Quiz(
    562,
    "What is 'Git > Rebase' in the IDE menu?",
    ["A visual way to perform a git rebase operation", "A way to delete history", "A tool for fixing images", "A type of code comment"],
  ),
  Quiz(
    563,
    "What is 'Clone' in the Welcome Screen of Android Studio?",
    ["An easy way to start a new project by downloading a repository from GitHub", "A way to duplicate a local folder", "A tool for copying code", "A type of virus scanner"],
  ),
  Quiz(
    564,
    "What does 'Checking out' a tag do in the IDE?",
    ["Moves the project to the exact state it was in when the tag was created", "Deletes the tag", "Renames the project", "Pushes the tag to GitHub"],
  ),
  Quiz(
    565,
    "Can you use Git commands in the terminal while Android Studio is open?",
    ["Yes, the IDE will automatically detect the changes and update its UI", "No, it will cause an error", "Yes, but you must restart the IDE", "Only on Linux"],
  ),
  Quiz(
    566,
    "What is the 'Git > Branches' menu?",
    ["Another way to access the branch list and management tools", "A list of trees", "A way to delete the .git folder", "A documentation section"],
  ),
  Quiz(
    567,
    "What does 'Show Diff with Working Tree' do?",
    ["Compares a specific commit with your current uncommitted changes", "Compares your computer with GitHub", "Deletes the current changes", "Shows a list of files"],
  ),
  Quiz(
    568,
    "How do you resolve conflicts if the 3-Way Merge window doesn't open?",
    ["You can find conflicting files in the Commit window and click 'Resolve'", "You must use the terminal", "Restart the project", "Delete the .git folder"],
  ),
  Quiz(
    569,
    "What is 'Group by Directory' in the Commit window?",
    ["Organizes the changed files list by folders for easier viewing", "Moves all files to one folder", "Deletes empty folders", "Renames folders"],
  ),
  Quiz(
    570,
    "What is 'Analyze Code' before commit?",
    ["Checks for potential bugs, warnings, and code smells before you save", "Runs the app on a phone", "Counts the lines of code", "Checks the internet speed"],
  ),
  Quiz(
    571,
    "What is 'Git > Remotes'?",
    ["A place to manage the URLs of your linked GitHub repositories", "A list of remote developers", "A tool for changing the theme", "A type of hardware"],
  ),
  Quiz(
    572,
    "How can you tell which files are ignored by .gitignore in the Project view?",
    ["They usually appear in a different color (like gray or yellow)", "They are invisible", "They have a red 'X' next to them", "They are underlined"],
  ),
  Quiz(
    573,
    "What does 'Git > Pull' in the menu allow you to do?",
    ["Pull changes from a specific remote and branch with more options", "Pull a single file", "Pull the .git folder", "Push changes"],
  ),
  Quiz(
    574,
    "What is 'Git > Push' dialog?",
    ["A window that shows exactly which commits you are about to upload to GitHub", "A message that says 'Success'", "A way to delete a branch", "A tool for icons"],
  ),
  Quiz(
    575,
    "Can you see the commit hash of a commit in the Git Log?",
    ["Yes, it is shown in the Selection Details pane", "No, it is hidden", "Only if you use the terminal", "Only for the project owner"],
  ),
  Quiz(
    576,
    "What is 'Git > Tags' in the menu?",
    ["A place to view and create release tags (v1.0, etc.)", "A list of file extensions", "A way to name variables", "A type of code comment"],
  ),
  Quiz(
    577,
    "What does 'Revert' on a commit in the log do?",
    ["Creates a new commit that undoes the changes of that selected commit", "Deletes the commit from history", "Renames the commit", "Pushes the commit"],
  ),
  Quiz(
    578,
    "What is 'Git > Repository > Clean'?",
    ["Removes untracked files from your project (same as git clean)", "Deletes the code", "Washes the computer screen", "Deletes the .git folder"],
  ),
  Quiz(
    579,
    "Can you use Android Studio's Git features for a non-Android project (like a website)?",
    ["Yes, any project folder opened in the IDE can use its Git tools", "No, only for Android", "Only if it has a .java file", "No, only for Flutter"],
  ),
  Quiz(
    580,
    "What is 'Git > Repository > Squash Commits'?",
    ["Combines multiple local commits into one clean commit", "Compresses the images", "Deletes the commits", "Pushes the commits"],
  ),
  Quiz(
    581,
    "What is 'Background Update' in Git settings?",
    ["Allows the IDE to periodically fetch changes from GitHub in the background", "Updates the app icons", "Updates the computer clock", "Pushes code while you sleep"],
  ),
  Quiz(
    582,
    "What does 'Git > Manage Remotes' allow you to change?",
    ["The name (like origin) and the URL of your remote repositories", "The project owner", "The developer's name", "The branch name"],
  ),
  Quiz(
    583,
    "How do you see the changes in a PR before checking it out?",
    ["Click the 'Files' tab in the Pull Request details window", "You cannot see them", "By running the app", "In the README file"],
  ),
  Quiz(
    584,
    "What is 'Git > Repository > Push Tags'?",
    ["Uploads your local version tags to GitHub", "Deletes the tags", "Renames the tags", "Pushes the code"],
  ),
  Quiz(
    585,
    "Can you change the commit message of a commit you just made in the UI?",
    ["Yes, by using the 'Amend' checkbox in the Commit window for the next commit", "No, it is permanent", "Yes, by right-clicking the log", "Only in the terminal"],
  ),
  Quiz(
    586,
    "What is 'Git > Clone' from the main menu?",
    ["A way to download a project from GitHub by entering its URL", "A tool for copying text", "A way to duplicate a file", "A type of database"],
  ),
  Quiz(
    587,
    "What does 'Git > Pull' vs 'Update Project' mean?",
    ["'Update Project' is a simpler, automated pull; 'Pull' gives you more settings", "They are the same", "Update Project is for images", "Pull is for code"],
  ),
  Quiz(
    588,
    "What is 'Git > Stash Changes' in the menu?",
    ["A visual way to perform a git stash", "A way to delete code", "A tool for icons", "A type of comment"],
  ),
  Quiz(
    589,
    "What is 'Git > Unstash Changes'?",
    ["A window that lets you see and apply your saved stashes", "A way to delete stashes", "A way to push stashes", "A type of code comment"],
  ),
  Quiz(
    590,
    "What is 'Git > Resolve Conflicts'?",
    ["Opens a list of all files currently in a conflict state for you to fix", "Automatically fixes bugs", "Renames the project", "Pushes code to GitHub"],
  ),
  Quiz(
    591,
    "How can you see which branch a commit in the log belongs to?",
    ["Branches are often labeled with tags (like 'main', 'feature') next to the commit", "By the color of the text", "By the author's name", "It is not shown"],
  ),
  Quiz(
    592,
    "What is 'Git > Compare with Branch' on a folder?",
    ["Shows all differences between your local folder and that branch", "Merges the folder", "Deletes the folder", "Renames the folder"],
  ),
  Quiz(
    593,
    "Can you see 'Hidden' files like .git in the Android Studio project view?",
    ["Usually no, but you can change the view to 'Project Files' to see them", "No, never", "Yes, always", "Only if they are images"],
  ),
  Quiz(
    594,
    "What is 'Git > Checkout Revision'?",
    ["Moves your working directory to match a specific commit hash or tag", "Deletes the revision", "Pushes the revision", "Renames the project"],
  ),
  Quiz(
    595,
    "What does 'Git > Fetch' do periodically in the background?",
    ["Refreshes the log so you can see if teammates have pushed new code", "Downloads new code automatically", "Pushes your code", "Deletes old branches"],
  ),
  Quiz(
    596,
    "What is 'Git > Repository > Rebase'?",
    ["Allows you to rebase your current branch onto another branch visually", "Deletes history", "Renames the project", "Pushes code to GitHub"],
  ),
  Quiz(
    597,
    "What is 'Git > Repository > Merge'?",
    ["Opens a dialog to select a branch and merge it into your current one", "Deletes a branch", "Renames a branch", "Pushes a branch"],
  ),
  Quiz(
    598,
    "How do you see the Pull Request timeline (comments, reviews)?",
    ["Inside the Pull Request tool window, select a PR to see its details", "In the log tab", "In the README file", "On Facebook"],
  ),
  Quiz(
    599,
    "What is 'Git > Edit Remotes'?",
    ["A window to add, remove, or change the URLs of your GitHub remotes", "A list of developers", "A tool for icons", "A type of comment"],
  ),
  Quiz(
    600,
    "What is the ultimate goal of Android Studio Git integration?",
    ["To provide a seamless, visual, and efficient workflow for version control", "To make the IDE look pretty", "To avoid using GitHub", "To make the app run without code"],
  ),
];
final List<List<Quiz>> gitQuizzes = [
  gitQuizM1,
  gitQuizM2,
  gitQuizM3,
  gitQuizM4,
  gitQuizM5,
  gitQuizM6,
];
