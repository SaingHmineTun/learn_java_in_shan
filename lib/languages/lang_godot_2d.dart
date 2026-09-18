const Map<int, String> godot2dTopics = {
  1: "Slime Bounce Arena",
  2: "Fruit Catcher Express",
  3: "Bubble Pop Sea Rescue",
  4: "Dino Cookie Run",
  5: "Ninja Cat Adventure",
  6: "Treasure Dungeon Quest",
  7: "Monster Card Duels",
  8: "Little Pixel Pet Farm",
  9: "Multiplatform Game Export & Publishing"
};

const Map<int, Map<int, String>> godot2dModules = {
  1: {
    // The Local Repository
    1: "Introduction & Setting Up Workspace",
    2: "Understanding Nodes & Scene Tree",
    3: "Project Settings & Screen Resolution",
    4: "Creating Slime Player (Node2D & Sprite2D)",
    5: "Adding Bounciness (Physics Material)",
    6: "StaticBody2D & Collision Boundaries",
    7: "Coding Player Control (GDScript Physics)",
    8: "UI Setup & Game Export",
  },
  2: {
    // The Local Repository
    9: "GDScript Syntax, Variables & Data Types",
    10: "Control Flow & Built-in Lifecycle Methods",
    11: "Player Basket Movement & Input Handling",
    12: "Spawning Fruits (Instancing Scenes via Script)",
    13: "Signals Concept & Connecting Node Events",
    14: "Area2D Collision Detection & Collection Mechanics",
    15: "Timer Spawner & Score System UI",
    16: "Bomb Hazards, Lives System & Game Over Logic",
  },
  3: {
    // Module 3: Bubble Pop Sea Rescue
    17: "CharacterBody2D Setup & Vector2 Movement Logic",
    18: "Custom Input Map & Directional Velocity",
    19: "Shooting Bubbles (Scene Instancing & Impulse)",
    20: "Octopus Enemy Spawner & Patrol Mechanics",
    21: "Hitbox & Hurtbox Collision Architecture",
    22: "Node Destruction & Rescue Score System",
    23: "Underwater Parallax Background & Camera",
    24: "Health System & Ocean SFX Integration",
  },
  4: {
    // Module 4: Dino Cookie Run
    25: "AnimatedSprite2D & Sprite Sheet Animation Frames",
    26: "Gravity Logic & Jump Mechanics",
    27: "Dynamic Speed Acceleration & Endless Terrain Scrolling",
    28: "Obstacle Generation & Random Spawning Interval",
    29: "Autoload / Singletons for High Score Management",
    30: "CanvasLayer, Main Menu Setup & UI Buttons",
    31: "Audio Stream Players (Background Music & SFX)",
    32: "Complete Polish & Mobile Touch Control Logic",
  },
  5: {
    // Module 5: Ninja Cat Adventure
    33: "CharacterBody2D Movement & Smooth Acceleration",
    34: "TileMap2D Layering, Auto-tiling & Collision Painting",
    35: "AnimationPlayer & AnimationTree Setup (Blend Spaces)",
    36: "Enemy Patrol AI (RayCast2D Ledge/Wall Detection)",
    37: "Health Bar UI, Damage Knockback Logic & Respawn Point",
    38: "Collectibles (Fish Keys) & Door Level Trigger",
    39: "FileAccess Logic: Saving & Loading Highscores",
    40: "Complete Level Transition System",
  },
  6: {
    // Module 6: Treasure Dungeon Quest
    41: "8-Directional Top-Down Player Controller",
    42: "TileMap Navigation Layers & Pathfinding Setup",
    43: "NavigationAgent2D & Enemy Pathfinding AI",
    44: "Squeaky Toy Sword Attack System",
    45: "Enemy Hit Reactions & Flash Shaders",
    46: "Dungeon Inventory UI & Treasure Collectibles",
    47: "Boss AI State Machine System",
    48: "Boss Health Bar & Victory Screen",
  },
  7: {
    // Module 7: Monster Card Duels
    49: "Control Nodes, Containers & Drag-and-Drop UI",
    50: "Custom Resource Files for Card Data",
    51: "Hand Management Logic (Drawing, Playing & Discarding)",
    52: "Turn System Architecture (Player Turn vs Enemy Turn)",
    53: "Elemental Weakness & Status Effects System",
    54: "Tween Animations for Smooth Card Motion",
    55: "Dynamic Enemy AI Card Selection Strategy",
    56: "Deck Builder Base & Battle Victory Rewards",
  },
  8: {
    // Module 8: Little Pixel Pet Farm
    57: "Grid Mapping & Tile Conversion Fundamentals",
    58: "Player Tool Switching System",
    59: "Tile Custom Data Layers for Soil States",
    60: "Crop Growth Timers & Stage Transitions",
    61: "Day & Night Cycle System",
    62: "Harvesting & Selling Mechanics",
    63: "Building System (Placing Structures on Tile Grid)",
    64: "Final Project Polish, Credits Screen & Multiplatform Export",
  },
  9: {
    // Module 9: Multiplatform Game Export & Publishing
    65: "Installing Godot Export Templates & Preset Manager",
    66: "Exporting for Desktop (Windows, macOS & Linux)",
    67: "Setting Up Android SDK, NDK & Keytool Certificates",
    68: "Building Android Packages (.apk & .aab)",
    69: "Exporting to iOS & Xcode Project Setup",
    70: "WebGL / HTML5 Web Export & Browser Hosting",
    71: "Cross-Platform Input Adaptation & Responsive UI Scaling",
    72: "Publishing Games to Itch.io & App Stores",
  },
};