import '../utils/utils.dart';

const Map<int, String> pygameTopics = {
  1: "Foundations & Arcade Physics — Pong",
  2: "Object-Oriented Sprites — Space Invaders",
  3: "Impulse Physics & Pixel Masks — Flappy Bird",
  4: "Grid Systems & Data Structures — Snake",
  5: "Visual Effects & Spritesheets — Breakout",
  6: "Tilemaps & Viewport Engines — 2D Platformer",
  7: "Pathfinding & Tactical AI — Tower Defense",
  8: "Procedural Worlds & Raycast FOV — Dungeon Crawler",
  9: "Open World Sandbox — 2D Survival Craft",
  10: "Multiplayer Sockets — Networked Arena Brawler",
  11: "Module 11: Pseudo-3D & Raycasting — Retro 3D Shooter",
};

const Map<int, Map<int, String>> pygameModules = {
  // Pong
  1: {
    1: "Environment Setup & Window Canvas",
    2: "The Mindset Shift & Game Loop",
    3: "Frame Rates & Delta Time",
    4: "RGB Colors & Drawing Primitives",
    5: "Keyboard Polling",
    6: "Bouncing Ball Physics",
    7: "Rect Collisions & Scoring",
    8: "Game Loop Polish",
    9: "Capstone Game: Pong"
  },
  // Space Invaders
  2: {
    10: "Image Assets",
    11: "Subclassing pygame.sprite.Sprite",
    12: "Sprite Groups",
    13: "Firing & Cooldowns",
    14: "Formation Movement",
    15: "Group Collisions",
    16: "Custom Timers & Waves",
    17: "Capstone Game: Space Invaders"
  },
  3: {
    18: "Impulse Gravity Mechanics",
    19: "Dynamic Obstacles",
    20: "Parallax Scrolling",
    21: "Pixel-Perfect Bitmasks",
    22: "State Machine Design",
    23: "Score Persistence",
    24: "Screen Shake & Effects",
    25: "Capstone Game: Flappy Bird"
  },
  4: {
    26: "Grid Coordinate Math",
    27: "Snake Body Dynamics",
    28: "Input Buffer Queues",
    29: "Algorithmic Food Spawning",
    30: "Sound Effects & Music",
    31: "Speed Scaling",
    32: "Capstone Game: Snake"
  },
  5: {
    33: "Brick Grid Arrays",
    34: "Dynamic Bounce Physics",
    35: "Spritesheet Slicing",
    36: "Particle Emitter Systems",
    37: "Power-Up Drop Engine",
    38: "Audio Pitch & Channels",
    39: "Multi-Stage Levels",
    40: "Capstone Game: Breakout"
  },
  6: {
    41: "Tilemap Parsers",
    42: "Viewport Culling",
    43: "Multi-Axis Physics",
    44: "Platformer Polish",
    45: "Smooth Camera Tracking",
    46: "Enemy Patrol AI",
    47: "Player Animation FSM",
    48: "Hazards & Checkpoints",
    49: "Capstone Game: 2D Platformer"
  },
  7: {
    50: "Pathfinding Mechanics",
    51: "Wave Manager Systems",
    52: "Turret Placement Engine",
    53: "Target Acquisition Logic",
    54: "Trigonometric Rotations",
    55: "Economy Systems",
    56: "Unit HUD Overlays",
    57: "Win/Loss Game Loops",
    58: "Capstone Game: Tower Defense"
  },
  8: {
    59: "Binary Space Partitioning",
    60: "Corridor Tunneling",
    61: "Dynamic Field of View",
    62: "Melee & Ranged Combat",
    63: "Equipment & Inventory",
    64: "Enemy Chase Behaviors",
    65: "Atmosphere & Screen Polish",
    66: "Executable Bundling",
    67: "Capstone Game: Dungeon Crawler"
  },
  9: {
    68: "Infinite Chunk Engine",
    69: "Perlin / Simplex Noise",
    70: "Spatial Quadtrees",
    71: "Resource Gathering Systems",
    72: "Dynamic Day/Night Lighting",
    73: "Crafting Matrix UI",
    74: "World State Saving",
    75: "Capstone Game: Survival Craft"
  },
  10: {
    76: "Socket Communication",
    77: "Client-Server Architecture",
    78: "Data Serialization",
    79: "Multi-Client Threading",
    80: "Latency & Interpolation",
    81: "Server-Authoritative Hitboxes",
    82: "Lobby Management",
    83: "Live Chat & HUD",
    84: "Capstone Game: Online Brawler"
  },
  11: {
    85: "Trigonometry of Raycasting",
    86: "Rendering Wall Columns",
    87: "Texture Mapping",
    88: "Pseudo-3D Movement",
    89: "Billboard Sprites",
    90: "First-Person Weaponry",
    91: "Ambient Lighting & Fog",
    92: "Minimap Overlay",
    93: "Capstone Game: Retro 3D FPS"
  }
};

final Map<int, Lesson> pygameLessons = {
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
  17: Lesson(2, 17)
};