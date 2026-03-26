import '../utils/utils.dart';

const Map<int, String> gitTopics = {
  1: "The Local Repository",
  2: "Branching & The Safety Net",
  3: "Remote Connectivity",
  4: "Distributed Collaboration",
  5: "Troubleshooting & Data Integrity",
  6: "Android Studio Integration"
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
};