/**
 * Mtech Launcher - Preload Script
 * Exposes safe IPC methods to renderer
 */

const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('mtech', {
    // Window controls
    minimize: () => ipcRenderer.invoke('window-minimize'),
    maximize: () => ipcRenderer.invoke('window-maximize'),
    close: () => ipcRenderer.invoke('window-close'),

    // WSA/Mtech controls
    checkWSA: () => ipcRenderer.invoke('check-wsa'),
    checkMtech: () => ipcRenderer.invoke('check-mtech'),
    launchMtech: () => ipcRenderer.invoke('launch-mtech'),
    installAPK: (path) => ipcRenderer.invoke('install-apk', path),
    openWSASettings: () => ipcRenderer.invoke('open-wsa-settings')
});
