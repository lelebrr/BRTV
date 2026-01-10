/**
 * Mtech Launcher - Renderer Script
 * Handles UI interactions and WSA/Mtech status
 */

// DOM Elements
const wsaStatus = document.getElementById('wsa-status');
const mtechStatus = document.getElementById('mtech-status');
const btnLaunch = document.getElementById('btn-launch');
const btnInstall = document.getElementById('btn-install');
const btnWSA = document.getElementById('btn-wsa');
const loadingOverlay = document.getElementById('loading-overlay');
const loadingText = document.getElementById('loading-text');

// Window controls
document.getElementById('btn-minimize').onclick = () => window.mtech.minimize();
document.getElementById('btn-maximize').onclick = () => window.mtech.maximize();
document.getElementById('btn-close').onclick = () => window.mtech.close();

// Status checking
async function checkStatus() {
    try {
        // Check WSA
        const wsa = await window.mtech.checkWSA();
        if (wsa.running) {
            wsaStatus.textContent = 'Ativo';
            wsaStatus.className = 'status-badge success';
        } else if (wsa.installed) {
            wsaStatus.textContent = 'Instalado (Parado)';
            wsaStatus.className = 'status-badge warning';
            btnWSA.style.display = 'flex';
        } else {
            wsaStatus.textContent = 'Não instalado';
            wsaStatus.className = 'status-badge error';
            btnWSA.style.display = 'flex';
            return;
        }

        // Check Mtech
        if (wsa.running) {
            const mtechInstalled = await window.mtech.checkMtech();
            if (mtechInstalled) {
                mtechStatus.textContent = 'Instalado';
                mtechStatus.className = 'status-badge success';
                btnLaunch.disabled = false;
            } else {
                mtechStatus.textContent = 'Não instalado';
                mtechStatus.className = 'status-badge error';
                btnInstall.style.display = 'flex';
            }
        } else {
            mtechStatus.textContent = 'WSA não ativo';
            mtechStatus.className = 'status-badge warning';
        }
    } catch (error) {
        console.error('Status check failed:', error);
        wsaStatus.textContent = 'Erro';
        wsaStatus.className = 'status-badge error';
    }
}

// Launch Mtech
btnLaunch.onclick = async () => {
    loadingText.textContent = 'Iniciando Mtech TV...';
    loadingOverlay.style.display = 'flex';

    try {
        await window.mtech.launchMtech();
        loadingText.textContent = 'Mtech TV iniciado!';
        setTimeout(() => {
            loadingOverlay.style.display = 'none';
            // Optionally minimize launcher
            window.mtech.minimize();
        }, 1500);
    } catch (error) {
        loadingText.textContent = 'Erro ao iniciar: ' + error.message;
        setTimeout(() => {
            loadingOverlay.style.display = 'none';
        }, 3000);
    }
};

// Install APK (file dialog would be needed)
btnInstall.onclick = async () => {
    loadingText.textContent = 'Instalando Mtech APK...';
    loadingOverlay.style.display = 'flex';

    try {
        // Default path - user should place APK here
        const apkPath = 'C:\\Projetos\\BRTV\\Mtech-10.3.3.apk';
        await window.mtech.installAPK(apkPath);
        loadingText.textContent = 'Instalação concluída!';
        setTimeout(() => {
            loadingOverlay.style.display = 'none';
            checkStatus(); // Refresh status
        }, 1500);
    } catch (error) {
        loadingText.textContent = 'Erro: ' + error.message;
        setTimeout(() => {
            loadingOverlay.style.display = 'none';
        }, 3000);
    }
};

// Open WSA Settings
btnWSA.onclick = () => window.mtech.openWSASettings();

// Initialize
checkStatus();

// Refresh status every 10 seconds
setInterval(checkStatus, 10000);
