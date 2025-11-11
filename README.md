# GunnyClient

Client application for GunnyArena game project.

## 📁 Project Structure

```
Client/
├── FlashbaseSrc/     # ActionScript source code for Flash game client
├── launcher/         # Electron-based game launcher
└── Website/          # Laravel web application (client-facing)
```

## 🚀 Components

### FlashbaseSrc
ActionScript source code for the Flash game client, including:
- Game logic and UI components
- Build scripts and configuration
- Library dependencies

### Launcher
Electron-based desktop launcher application:
- User authentication
- Game server selection
- Payment integration
- Auto-update functionality

### Website
Laravel web application providing:
- Client-facing web interface
- User registration and authentication
- Payment processing
- Game server management
- Admin panel integration

## 🛠️ Setup

### Prerequisites
- Node.js (for launcher)
- PHP 7.4+ and Composer (for Website)
- Flash Builder or compatible IDE (for FlashbaseSrc)

### Installation

#### Website (Laravel)
```bash
cd Website
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate
```

#### Launcher
```bash
cd launcher
npm install
npm run build
```

## 📝 Development

### FlashbaseSrc
- Build scripts: `build.bat`, `build.xml`
- Main project file: `GunArena.as3proj`

### Launcher
- Main entry: `main.js`
- Preload scripts: `preloads/`
- UI components: `windows/`

### Website
- Laravel framework
- Admin panel: Laravel Admin
- Frontend: Blade templates

## 🔒 Security

- `.env` files are ignored (not committed)
- Sensitive credentials should be stored in environment variables
- Never commit API keys or database passwords

## 📦 Dependencies

### Website
- Laravel Framework
- Laravel Admin
- PHP dependencies (see `composer.json`)

### Launcher
- Electron
- Node.js packages (see `package.json`)

## 🗂️ Git Ignore

The following are excluded from version control:
- `.env`, `.env.*`, `.env.example` - Environment configuration files (not committed)
- `Flash/` - Flash output files
- `launcher/node_modules/`, `launcher/dist/`, `launcher/builds/` - Build outputs
- `Website/vendor/`, `Website/node_modules/` - Dependencies
- `Website/storage/logs/`, `Website/storage/framework/` - Cache and logs
- IDE files (`.vs/`, `.vscode/`, `.idea/`)
- Build outputs (`bin/`, `obj/`, `*.dll`, `*.exe`)

## 👥 Contributors

- **vanloc19** - Developer

## 📚 Resources

- **Game Resources**: Sourced from China
- **Code**: Self-developed

