# Flash Game Client Source Code

Professional ActionScript 3.0 game client implementation for GunnyArena - a real-time multiplayer tank battle game. Built with Flash Builder and ActionScript 3.0, featuring modular architecture, comprehensive game systems, and optimized performance.

## 📐 Architecture Overview

```
┌─────────────────────────────────────────────────────────┐
│                  Flash Game Client                       │
└──────────────────────┬──────────────────────────────────┘
                       │
        ┌──────────────┼──────────────┐
        │              │              │
   ┌────▼────┐   ┌────▼────┐  ┌─────▼─────┐
   │   UI    │   │  Game   │  │  Network  │
   │  Layer  │   │  Logic  │  │  Layer    │
   └────┬────┘   └────┬─────┘  └─────┬─────┘
        │             │              │
        └─────────────┼──────────────┘
                      │
              ┌───────▼───────┐
              │  Core Engine   │
              │  (DDT Core)    │
              └────────────────┘
```

## 🏗️ Project Structure

```
FlashbaseSrc/
├── src/                        # Source code
│   ├── game/                   # Core game logic (238 files)
│   ├── character/              # Character system
│   ├── bagAndInfo/             # Inventory and player info
│   ├── consortion/             # Guild/Consortia system (86 files)
│   ├── room/                   # Room management (41 files)
│   ├── store/                  # Shop system (125 files)
│   ├── ddt/                    # DDT framework (608 files)
│   ├── com/                    # Third-party libraries
│   │   ├── greensock/          # TweenMax animation library
│   │   ├── pickgliss/          # UI components (151 files)
│   │   └── hurlant/            # Crypto library
│   └── [80+ modules]           # Game feature modules
│
├── lib/                        # External libraries
│   ├── EasyGunny.swc          # Game library
│   └── 2.png                  # Assets
│
├── GunArena.as3proj           # Flash Builder project file
├── build.xml                  # Ant build script
├── build.bat                  # Build script
├── build2.bat                 # Alternative build script
└── build_bagAndInfo.bat       # Specific build script
```

## 🚀 Core Modules

### Game Systems

#### `game/` (238 files)
**Core Game Logic** - Main game engine and mechanics
- Battle system
- Game state management
- Player actions
- Game rules and mechanics
- Real-time synchronization

#### `character/`
**Character System** - Player character rendering and animation
- Character models (SimpleBitmap, ComplexBitmap, MovieClip)
- Character actions and animations
- Character utilities
- Character factory pattern

#### `bagAndInfo/`
**Inventory & Player Info** - Item management and player data
- Bag system (30 files)
- Player information display
- Item cells and rendering
- Gift system
- Name change functionality

#### `room/` (41 files)
**Room Management** - Battle room system
- Room creation and joining
- Room list management
- Room state synchronization
- Player matching

#### `store/` (125 files)
**Shop System** - In-game store and commerce
- Shop interface
- Item purchasing
- Payment integration
- Shopping cart

### Social Systems

#### `consortion/` (86 files)
**Guild/Consortia System** - Social organization features
- Guild creation and management
- Member management
- Guild events
- Guild rankings
- Guild wars

#### `im/` (28 files)
**Instant Messaging** - Communication system
- Chat system
- Friend management
- Message handling
- Social features

### Game Features

#### `quest/` (20 files)
**Quest System** - Mission and quest management
- Quest tracking
- Quest completion
- Quest rewards
- Quest UI

#### `pet/` & `petsBag/` (75 files)
**Pet System** - Pet collection and management
- Pet collection
- Pet training
- Pet battles
- Pet inventory

#### `auctionHouse/` (38 files)
**Auction House** - Player-to-player trading
- Item listing
- Bidding system
- Auction management
- Transaction handling

#### `farm/` (62 files)
**Farm System** - Farming and resource management
- Farm management
- Crop system
- Resource collection
- Farm UI

#### `worldboss/` (40 files)
**World Boss** - Boss battle system
- Boss encounters
- Boss mechanics
- Boss rewards
- Boss UI

### UI & Presentation

#### `ddt/` (608 files)
**DDT Framework** - Core UI framework
- UI components
- Layout system
- Event handling
- Resource management

#### `com/pickgliss/` (151 files)
**Pickgliss UI Library** - Advanced UI components
- Buttons and controls
- Panels and windows
- Effects and animations
- UI utilities

#### `com/greensock/` (39 files)
**TweenMax** - Animation library
- Tweening engine
- Timeline animations
- Easing functions
- Performance optimizations

### Additional Features

- **Academy System** (`academy/`)
- **Calendar System** (`calendar/`)
- **Card System** (`cardSystem/`)
- **Church System** (`church/`)
- **Email System** (`email/`)
- **Explorer Manual** (`explorerManual/`)
- **Gemstone System** (`gemstone/`)
- **Gift System** (`giftSystem/`)
- **Labyrinth** (`labyrinth/`)
- **Little Game** (`littleGame/`)
- **Lottery System** (`lottery/`)
- **Pyramid** (`pyramid/`)
- **Totem System** (`totem/`)
- **VIP System** (`vip/`)
- And 60+ more feature modules

## 🛠️ Technology Stack

### Core Technologies
- **ActionScript 3.0**: Primary programming language
- **Flash Builder**: IDE for development
- **Adobe Flash Player**: Runtime environment
- **Flex SDK**: Framework and compiler

### Libraries & Frameworks
- **DDT Framework**: Custom game framework (608 files)
- **TweenMax (GreenSock)**: Animation library
- **Pickgliss**: UI component library (151 files)
- **Hurlant Crypto**: Encryption library
- **EasyGunny**: Game-specific library

### Build Tools
- **Apache Ant**: Build automation
- **Flex Compiler**: ActionScript compiler
- **Batch Scripts**: Windows build scripts

## 📋 Prerequisites

### Development Environment
- **Flash Builder 4.7+** or **Adobe Animate CC**
- **Flex SDK 4.6+**
- **Java JDK** (for Ant builds)
- **Apache Ant** (for build scripts)

### Runtime Requirements
- **Adobe Flash Player 11.8+**
- **Windows/Mac/Linux** (depending on target platform)

## 🔧 Setup & Installation

### 1. Development Environment Setup

#### Install Flash Builder
1. Download and install Flash Builder 4.7+
2. Configure Flex SDK path
3. Import project: `File > Import > Flash Builder Project`

#### Install Apache Ant (for build scripts)
```bash
# Download Apache Ant
# Add to PATH environment variable
ant -version  # Verify installation
```

### 2. Project Configuration

#### Open Project
```bash
# Open in Flash Builder
File > Import > Flash Builder Project
# Select FlashbaseSrc directory
```

#### Configure Build Path
- Verify library paths in project properties
- Check `lib/EasyGunny.swc` is included
- Verify source paths

### 3. Build Configuration

#### Using Flash Builder
1. Right-click project
2. Select `Properties > Flex Build Path`
3. Configure libraries and source paths
4. Build: `Project > Build Project`

#### Using Ant Build Script
```bash
# Build using Ant
cd FlashbaseSrc
ant -f build.xml

# Or use batch script
build.bat
```

#### Build Scripts
- `build.bat` - Standard build
- `build2.bat` - Alternative build configuration
- `build_bagAndInfo.bat` - Build specific module

### 4. Build Output

Build output typically goes to:
- `bin-debug/` - Debug build
- `bin-release/` - Release build
- `Flash/` - Production output (excluded from repo)

## 🎮 Key Design Patterns

### 1. **MVC Pattern**
- **Model**: Data structures and business logic
- **View**: UI components and presentation
- **Controller**: Event handling and coordination

### 2. **Manager Pattern**
- Centralized managers for game systems
- Singleton pattern for global managers
- Event-driven communication

### 3. **Factory Pattern**
- Character factory for character creation
- Item factory for item rendering
- UI component factories

### 4. **Observer Pattern**
- Event system for decoupled communication
- Model-view synchronization
- Game state notifications

### 5. **Command Pattern**
- Game actions as commands
- Undo/redo capability
- Command queue system

## 🎯 Core Systems

### Rendering System
- **Bitmap Rendering**: Optimized bitmap rendering
- **MovieClip Rendering**: Animated sprites
- **Complex Rendering**: Multi-layer character rendering
- **Frame-by-Frame**: Animation system

### Network Communication
- **Socket Communication**: Real-time server communication
- **HTTP Requests**: API calls for game data
- **Protocol Buffers**: Efficient data serialization
- **Message Queue**: Reliable message delivery

### Resource Management
- **Asset Loading**: Dynamic asset loading
- **Resource Caching**: Memory-efficient caching
- **Texture Management**: Texture atlas optimization
- **Sound Management**: Audio resource handling

### Game State Management
- **State Machine**: Game state transitions
- **Scene Management**: Scene loading and switching
- **Data Persistence**: Local data storage
- **Synchronization**: Server state sync

## 📊 Performance Optimizations

### 1. **Object Pooling**
```actionscript
// Reuse objects to reduce GC pressure
var pool:ObjectPool = new ObjectPool();
var obj:GameObject = pool.acquire();
// ... use object
pool.release(obj);
```

### 2. **Bitmap Caching**
```actionscript
// Cache bitmaps for performance
bitmap.cacheAsBitmap = true;
bitmap.cacheAsBitmapMatrix = new Matrix();
```

### 3. **Event Optimization**
- Remove unused event listeners
- Use weak references where appropriate
- Batch event dispatching

### 4. **Memory Management**
- Dispose unused objects
- Clear references
- Use object pooling
- Monitor memory usage

### 5. **Rendering Optimization**
- Use display object caching
- Optimize draw calls
- Reduce overdraw
- Use texture atlases

## 🔒 Security Features

### Code Obfuscation
- Protect intellectual property
- Minimize reverse engineering
- Secure sensitive logic

### Data Validation
- Client-side validation
- Server-side verification
- Input sanitization

### Communication Security
- Encrypted network communication
- Secure authentication
- Token-based sessions

## 📝 Code Organization

### Module Structure
Each game feature follows consistent structure:
```
featureName/
├── [Feature]Controller.as    # Controller
├── [Feature]Manager.as       # Manager
├── [Feature]Model.as          # Model
├── [Feature]Event.as          # Events
├── data/                      # Data classes
├── view/                      # UI components
└── analyze/                   # Analytics
```

### Naming Conventions
- **Classes**: PascalCase (e.g., `GameController`)
- **Variables**: camelCase (e.g., `playerName`)
- **Constants**: UPPER_SNAKE_CASE (e.g., `MAX_PLAYERS`)
- **Packages**: lowercase (e.g., `game.battle`)

## 🧪 Testing

### Unit Testing
- Test individual components
- Mock dependencies
- Test game logic

### Integration Testing
- Test module interactions
- Test network communication
- Test UI flows

### Performance Testing
- Frame rate monitoring
- Memory profiling
- Load testing

## 📚 Dependencies

### External Libraries
- **EasyGunny.swc**: Game-specific library
- **TweenMax**: Animation library
- **Pickgliss**: UI components
- **Hurlant Crypto**: Encryption

### Framework Components
- **DDT Core**: Core game framework
- **DDT UI**: UI framework
- **DDT Network**: Network layer

## 🔍 Code Statistics

- **Total Files**: 2,000+ ActionScript files
- **Lines of Code**: ~300,000+ lines
- **Modules**: 80+ feature modules
- **UI Components**: 500+ UI components
- **Game Systems**: 50+ game systems

## 🚀 Build Process

### Development Build
```bash
# Build for development
ant -f build.xml debug

# Or use Flash Builder
Project > Build Project
```

### Release Build
```bash
# Build for production
ant -f build.xml release

# Optimize and obfuscate
# Output to Flash/ directory
```

### Build Output
- **SWF File**: Compiled Flash file
- **Assets**: Embedded resources
- **Debug Symbols**: For debugging (debug builds only)

## 📖 Development Guidelines

### Code Style
- Follow ActionScript coding conventions
- Use meaningful variable names
- Keep methods focused
- Add comments for complex logic

### Best Practices
1. **Memory Management**: Always dispose unused objects
2. **Event Handling**: Remove listeners when done
3. **Error Handling**: Use try-catch blocks
4. **Performance**: Profile and optimize hot paths
5. **Maintainability**: Write clean, readable code

### Git Workflow
- Feature branches for new features
- Meaningful commit messages
- Code reviews before merging
- Regular commits

## 🔄 Module Development

### Creating New Module

1. **Create Module Structure**
   ```
   newFeature/
   ├── NewFeatureController.as
   ├── NewFeatureManager.as
   ├── NewFeatureModel.as
   ├── data/
   └── view/
   ```

2. **Implement MVC Pattern**
   - Model: Data and business logic
   - View: UI components
   - Controller: Coordination

3. **Register with Managers**
   - Add to appropriate manager
   - Register events
   - Initialize on game start

## 📚 Additional Resources

- ActionScript 3.0 Documentation
- Flash Builder Documentation
- DDT Framework Documentation
- Game design documents

## 👥 Contributors

- **vanloc19** - Lead Developer

## 📚 Resources

- **Game Resources**: Sourced from China
- **Code**: Self-developed

## 📄 License

**Proprietary - All Rights Reserved**

Copyright © 2024 vanloc19. All rights reserved.

---

**This Flash game client represents a comprehensive, enterprise-level game client implementation, demonstrating advanced ActionScript development, modular architecture, and professional game development practices for real-time multiplayer gaming.**

