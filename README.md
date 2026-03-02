# Hydrocraft

A comprehensive crafting and survival overhaul mod for **Project Zomboid** (Build 41, Single & Multiplayer). Tested on build 41.78.16.

Forked from [robotex140/Hydrocraft](https://github.com/robotex140/Hydrocraft) with active development focused on bug fixes, code organization, feature completion, and comprehensive content overhauls.

## Overview

Hydrocraft dramatically expands the crafting system in Project Zomboid, introducing hundreds of new recipes across multiple crafting disciplines:

- **Metalworking** - Smelting, welding, and recycling metals with specialized equipment
- **Stoneworking** - Crafting stone tools, structures, and decorative items
- **Leatherworking** - Tanning and crafting leather goods
- **Carpentry** - Advanced woodworking and furniture crafting
- **Food Production** - Cooking, preserving, brewing, and food processing
- **Fishing & Hunting** - Enhanced hunting mechanics and specialized fishing recipes
- **Gardening & Farming** - Expanded crop and bee-keeping systems
- **And much more** - Chemistry, pottery, glassworking, textiles, and more

## Recent Updates

### March 2026

**Recycling & Stoneworking Overhaul** - Major refactoring of the recycling system and stoneworking mechanics:
- Consolidated 50+ individual steel recycling recipes into 9 streamlined grouped recipes
- Added dedicated metal powder recipes with multiple crafting methods (grindstone vs. macerator)
- Replaced generic XP rewards with proper skill progression functions
- Rebalanced recipe times and material yields for better progression pacing
- Improved code formatting and consistency across all recycling files
- Added new material handling and waste recycling options (lead, rubber, zinc, tin)

**File Organization & Refactoring** (February 2026):
- Reorganized and grouped related recipes in `HC_Food Flour.txt`, `HC_Fishing.txt`, `HC_Masonry.txt`, and `HC_Tailoring.txt`
- Enhanced recipe organization to improve file navigation and maintainability
- Added new gold recipes and expanded jewelry crafting
- Translation file updates

**New Features** (February 2026):
- Added function to gather dirt by hand
- New recipe to sift dirt by hand for material processing

## Installation

1. Subscribe via Steam Workshop (if published)
2. OR manually copy the `Hydrocraft` folder to your Project Zomboid mods directory:
   ```
   [USER]/Zomboid/mods/Hydrocraft
   ```

## Compatibility

- **Build:** Project Zomboid Build 41+
- **Mode:** Single-player & Multiplayer
- **Tested Version:** 41.78.16
- Compatible with other mods that don't conflict with crafting recipes

## Current Development Focus

This fork is actively maintained with emphasis on:
- ✅ Fixing incomplete or buggy recipes
- ✅ Organizing and consolidating duplicate/redundant content
- ✅ Overhauling existing systems for better balance and progression
- ✅ Improving code quality and maintainability
- ✅ adding missing documentation and skill progression

## File Structure

```
Hydrocraft/
├── media/
│   ├── lua/           # Lua scripts (client, server, shared)
│   ├── scripts/       # Recipe definitions
│   ├── textures/      # Item textures
│   ├── models/        # 3D models
│   └── clothing/      # Clothing definitions
├── mod.info           # Mod metadata
└── CHANGELOG.md       # Detailed change history
```

## Contributing

Have suggestions, found a bug, or want to help improve Hydrocraft? Feel free to open an issue or submit a pull request!

## Credits

- Original mod creator: robotex140
- Current maintainer & fork developer: Lucky667
- Community contributors and testers: 

## License

See the original repository for license information.
