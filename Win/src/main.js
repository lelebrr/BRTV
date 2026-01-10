/**
 * Mtech TV Launcher - Main Process
 * Electron app that launches the Mtech APK via WSA
 */

const { app, BrowserWindow, ipcMain, shell } = require('electron');
const path = require('path');
const { spawn, exec } = require('child_process');

let mainWindow;

// WSA package name for Mtech
const MTECH_PACKAGE = 'com.p2elite.brtv2';
const WSA_PATH = 'C:\\Program Files\\WindowsApps';

function createWindow() {
    mainWindow = new BrowserWindow({
        width: 1280,
        height: 720,
        minWidth: 960,
        minHeight: 540,
        frame: false,
        resizable: true,
        icon: path.join(__dirname, '../assets/icon.png'),
        webPreferences: {
            nodeIntegration: false,
            contextIsolation: true,
            preload: path.join(__dirname, 'preload.js')
        },
        backgroundColor: '#0a0a1a'
    });

    mainWindow.loadFile(path.join(__dirname, '../renderer/index.html'));
    
    // Uncomment for dev tools
    // mainWindow.webContents.openDevTools();
}

// Check if WSA is installed and running
async function checkWSA() {
    return new Promise((resolve) => {
        exec('adb devices', (error, stdout) => {
            if (error) {
                resolve({ installed: false, running: false });
                return;
            }
            const hasWSA = stdout.includes('127.0.0.1') || stdout.includes('emulator');
            resolve({ installed: true, running: hasWSA });
        });
    });
}

// Check if Mtech is installed in WSA
async function checkMtechInstalled() {
    return new Promise((resolve) => {
        exec(`adb shell pm list packages | findstr ${MTECH_PACKAGE}`, (error, stdout) => {
            resolve(stdout && stdout.includes(MTECH_PACKAGE));
        });
    });
}

// Launch Mtech in WSA
async function launchMtech() {
    return new Promise((resolve, reject) => {
        const cmd = `adb shell am start -n ${MTECH_PACKAGE}/org.bitspark.android.Spark`;
        exec(cmd, (error, stdout, stderr) => {
            if (error) {
                reject(new Error('Failed to launch Mtech: ' + stderr));
            } else {
                resolve(true);
            }
        });
    });
}

// Install APK to WSA
async function installAPK(apkPath) {
    return new Promise((resolve, reject) => {
        exec(`adb install "${apkPath}"`, (error, stdout, stderr) => {
            if (error) {
                reject(new Error('Failed to install APK: ' + stderr));
            } else {
                resolve(true);
            }
        });
    });
}

// IPC Handlers
ipcMain.handle('check-wsa', checkWSA);
ipcMain.handle('check-mtech', checkMtechInstalled);
ipcMain.handle('launch-mtech', launchMtech);
ipcMain.handle('install-apk', (event, apkPath) => installAPK(apkPath));

ipcMain.handle('window-minimize', () => mainWindow.minimize());
ipcMain.handle('window-maximize', () => {
    if (mainWindow.isMaximized()) {
        mainWindow.unmaximize();
    } else {
        mainWindow.maximize();
    }
});
ipcMain.handle('window-close', () => mainWindow.close());

ipcMain.handle('open-wsa-settings', () => {
    shell.openExternal('ms-settings:windowssubsystemforandroid');
});

// App lifecycle
app.whenReady().then(createWindow);

app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') {
        app.quit();
    }
});

app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) {
        createWindow();
    }
});

console.log('Mtech Launcher started');
