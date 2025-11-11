# Game Launcher

Professional Electron-based desktop launcher application for GunnyArena game. Built with Electron, Node.js, and modern web technologies, featuring secure authentication, payment integration, auto-update functionality, and seamless game launching.

## 📐 Architecture Overview

```
┌─────────────────────────────────────────────────────────┐
│                  Electron Application                     │
└──────────────────────┬──────────────────────────────────┘
                       │
        ┌──────────────┼──────────────┐
        │              │              │
   ┌────▼────┐   ┌────▼────┐  ┌─────▼─────┐
   │  Main   │   │Preload  │  │  Renderer │
   │ Process │   │ Scripts │  │  Process   │
   └────┬────┘   └────┬─────┘  └─────┬─────┘
        │             │              │
        └─────────────┼──────────────┘
                      │
              ┌───────▼───────┐
              │  API Server   │
              │  (Laravel)    │
              └───────────────┘
```

## 🏗️ Project Structure

```
launcher/
├── main.js                    # Main Electron process
├── helper.js                  # Helper utilities
├── const.js                   # Constants and configuration
├── package.json               # Node.js dependencies
├── installer.json             # Installer configuration
│
├── preloads/                  # Preload scripts (security)
│   ├── preload.js            # Main preload
│   ├── login.js              # Login window preload
│   ├── play.js               # Play window preload
│   ├── charge.js             # Payment preload
│   ├── update.js             # Update preload
│   └── [20+ preload scripts] # Feature-specific preloads
│
├── windows/                   # HTML windows
│   ├── index.html            # Main window
│   ├── login.html            # Login window
│   ├── play.html             # Play window
│   ├── charge.html           # Payment window
│   ├── update.html            # Update window
│   └── [15+ HTML files]      # Feature windows
│
├── assets/                    # Static assets
│   ├── css/                  # Stylesheets
│   │   ├── login.css
│   │   ├── play.css
│   │   ├── charge.css
│   │   └── [10+ CSS files]
│   ├── images/               # Images and icons
│   │   ├── logos/
│   │   ├── buttons/
│   │   └── [30+ image files]
│   ├── fonts/                # Custom fonts
│   └── js/                   # Client-side scripts
│
├── flashver/                  # Flash Player plugins
│   ├── pepflashplayer.dll    # Windows Flash
│   └── PepperFlashPlayer.plugin/  # macOS Flash
│
├── builds/                    # Build outputs
│   ├── EasyGunLauncher-win32-ia32/
│   └── EasyGunLauncher-win32-x64/
│
└── dist/                      # Distribution files
    └── win-unpacked/         # Packaged application
```

## 🚀 Key Features

### Authentication & Security
- **Secure Login**: Encrypted authentication
- **Two-Factor Authentication (2FA)**: Enhanced security
- **Session Management**: Secure session handling
- **Password Recovery**: Forgot password functionality
- **Email Verification**: Account verification system

### Payment Integration
- **Multiple Payment Methods**:
  - ACB Bank integration
  - MBBank integration
  - Momo payment gateway
  - Mobile card recharge
  - VCoin integration
- **Payment History**: Transaction tracking
- **Secure Transactions**: Encrypted payment processing

### Game Management
- **Server Selection**: Choose game server
- **Auto-Update**: Automatic game client updates
- **Version Management**: Version checking and updates
- **Game Launching**: Seamless game startup
- **Flash Player Integration**: Embedded Flash support

### User Interface
- **Modern UI**: Clean and intuitive design
- **Responsive Design**: Adapts to different screen sizes
- **Custom Themes**: Branded appearance
- **Smooth Animations**: Polished user experience
- **Multi-language Support**: Localization ready

## 🛠️ Technology Stack

### Core Technologies
- **Electron**: Desktop application framework
- **Node.js**: Runtime environment
- **HTML/CSS/JavaScript**: Frontend technologies
- **Chromium**: Embedded browser engine

### Key Libraries
- **Electron Builder**: Application packaging
- **Axios**: HTTP client for API calls
- **Custom UI Framework**: Tailored UI components

### Build Tools
- **npm/yarn**: Package management
- **Electron Builder**: Build and package
- **Webpack** (if configured): Module bundling

## 📋 Prerequisites

### Development Environment
- **Node.js**: 14.x or higher
- **npm**: 6.x or higher (or yarn)
- **Git**: Version control

### Runtime Requirements
- **Windows**: Windows 7+ (for Windows builds)
- **macOS**: macOS 10.10+ (for macOS builds)
- **Linux**: Modern Linux distribution (for Linux builds)

## 🔧 Setup & Installation

### 1. Install Dependencies

```bash
# Navigate to launcher directory
cd launcher

# Install dependencies
npm install

# Or using yarn
yarn install
```

### 2. Development Setup

#### Configure API Endpoint
Edit `const.js` to set API server URL:
```javascript
const API_BASE_URL = 'https://your-api-server.com/api';
```

#### Run in Development Mode
```bash
# Start Electron in development mode
npm start

# Or
npm run dev
```

### 3. Build Application

#### Development Build
```bash
# Build for current platform
npm run build

# Or using Electron Builder
npm run build:win    # Windows
npm run build:mac    # macOS
npm run build:linux  # Linux
```

#### Production Build
```bash
# Build production version
npm run build:prod

# Create installer
npm run build:installer
```

### 4. Package Application

```bash
# Package for distribution
npm run package

# Create installer
npm run dist
```

## 🎯 Core Components

### Main Process (`main.js`)

**Electron Main Process** - Application lifecycle and window management

#### Responsibilities
- Application initialization
- Window creation and management
- Menu bar setup
- Auto-updater integration
- System integration
- IPC (Inter-Process Communication) handling

#### Key Features
- Window state management
- Auto-launch on system startup
- System tray integration
- Update checking
- Crash reporting

### Preload Scripts (`preloads/`)

**Security Layer** - Bridge between main and renderer processes

#### Purpose
- Expose safe APIs to renderer
- Prevent direct Node.js access
- Secure communication channel
- Context isolation

#### Key Preloads
- `preload.js` - Main preload script
- `login.js` - Login window APIs
- `play.js` - Play window APIs
- `charge.js` - Payment APIs
- `update.js` - Update APIs

### Renderer Process (`windows/`)

**User Interface** - HTML/CSS/JavaScript frontend

#### Windows
- **Login Window**: User authentication
- **Play Window**: Game server selection and launching
- **Charge Window**: Payment processing
- **Update Window**: Update management
- **Settings Window**: Application settings

### Helper Utilities (`helper.js`)

**Utility Functions** - Common helper functions

#### Features
- API request helpers
- Data validation
- Error handling
- Utility functions

## 🔒 Security Features

### 1. Context Isolation
```javascript
// Preload scripts provide secure API access
contextBridge.exposeInMainWorld('api', {
  login: (credentials) => ipcRenderer.invoke('login', credentials),
  // ... other secure APIs
});
```

### 2. Node Integration Disabled
- Renderer process cannot access Node.js directly
- All Node.js access through preload scripts
- Prevents security vulnerabilities

### 3. Secure Communication
- Encrypted API communication (HTTPS)
- Token-based authentication
- Secure session management

### 4. Code Signing
- Application code signing
- Installer signing
- Prevents tampering

## 📊 Application Windows

### Login Window
- User authentication
- Remember me functionality
- Password recovery
- Two-factor authentication

### Play Window
- Server list display
- Server selection
- Character selection
- Game launching
- Settings management

### Charge Window
- Payment method selection
- Transaction processing
- Payment history
- Balance display

### Update Window
- Update checking
- Download progress
- Installation management
- Version information

## 🔄 Auto-Update System

### Update Flow
1. **Check for Updates**: Periodic update checking
2. **Download Updates**: Background download
3. **Install Updates**: Automatic installation
4. **Restart Application**: Seamless restart

### Configuration
```javascript
// Update server configuration
const updateServer = 'https://update-server.com';
const updateChannel = 'stable'; // or 'beta'
```

## 💳 Payment Integration

### Supported Payment Methods

#### Bank Integration
- **ACB Bank**: Direct bank transfer
- **MBBank**: Mobile banking

#### E-Wallet
- **Momo**: Mobile payment
- **VCoin**: Virtual currency

#### Card Recharge
- **Mobile Cards**: Viettel, Vinaphone, Mobifone
- **Prepaid Cards**: Various card types

### Payment Flow
1. User selects payment method
2. Enter payment details
3. Process payment through API
4. Verify transaction
5. Update account balance
6. Display confirmation

## 🎨 UI/UX Features

### Design System
- **Color Scheme**: Branded colors
- **Typography**: Custom fonts (Myriad Pro, Lato)
- **Icons**: Font Awesome icons
- **Components**: Reusable UI components

### Responsive Design
- Adapts to different window sizes
- Scalable UI elements
- Touch-friendly (if needed)

### Animations
- Smooth transitions
- Loading animations
- Progress indicators
- Visual feedback

## 📦 Build & Distribution

### Build Configuration

#### Electron Builder Config
```json
{
  "appId": "com.gunnyarena.launcher",
  "productName": "GunnyArena Launcher",
  "directories": {
    "output": "dist"
  },
  "files": [
    "**/*",
    "!node_modules"
  ],
  "win": {
    "target": "nsis",
    "icon": "icon.ico"
  }
}
```

### Build Targets
- **Windows**: NSIS installer, portable exe
- **macOS**: DMG, PKG installer
- **Linux**: AppImage, deb, rpm

### Installer Configuration
```json
{
  "dest": "../installers/",
  "icon": "icon.ico",
  "options": {
    "exe": "EasyGunLauncher.exe",
    "noMsi": true
  }
}
```

## 🧪 Testing

### Development Testing
```bash
# Run in development mode
npm start

# Test specific features
npm test
```

### Build Testing
```bash
# Test build locally
npm run build:test

# Test installer
npm run test:installer
```

## 📝 Development Guidelines

### Code Style
- Follow JavaScript ES6+ conventions
- Use meaningful variable names
- Keep functions focused
- Add comments for complex logic

### Best Practices
1. **Security**: Always use preload scripts for Node.js access
2. **Error Handling**: Implement proper error handling
3. **Performance**: Optimize asset loading
4. **User Experience**: Provide clear feedback
5. **Maintainability**: Write clean, readable code

### Git Workflow
- Feature branches for new features
- Meaningful commit messages
- Code reviews before merging
- Regular commits

## 🔍 Code Statistics

- **Main Process**: 1 file (main.js)
- **Preload Scripts**: 20+ files
- **HTML Windows**: 15+ files
- **CSS Stylesheets**: 10+ files
- **JavaScript Modules**: 30+ files
- **Total Lines**: ~10,000+ lines

## 🚀 Deployment

### Pre-Deployment Checklist
- [ ] Update version in package.json
- [ ] Test all features
- [ ] Update API endpoints
- [ ] Test payment integration
- [ ] Verify auto-update
- [ ] Code signing (if required)
- [ ] Build and test installer

### Distribution
1. Build production version
2. Create installer
3. Code sign (if required)
4. Upload to distribution server
5. Update auto-update server
6. Test installation process

## 📚 Additional Resources

- Electron Documentation: https://www.electronjs.org/docs
- Electron Builder: https://www.electron.build/
- Node.js Documentation: https://nodejs.org/docs

## 👥 Contributors

- **vanloc19** - Lead Developer

## 📚 Resources

- **Game Resources**: Sourced from China
- **Code**: Self-developed

## 📄 License

**Proprietary - All Rights Reserved**

Copyright © 2024 vanloc19. All rights reserved.

---

**This launcher application represents a professional, enterprise-grade desktop application, demonstrating modern Electron development, secure authentication, payment integration, and seamless user experience for game distribution and management.**

