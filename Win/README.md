# Mtech TV Launcher for Windows 11

Um launcher elegante para rodar o Mtech TV via Windows Subsystem for Android (WSA).

## Requisitos

1. **Windows 11** com WSA instalado
2. **Node.js 18+** 
3. **ADB** (Android Debug Bridge) no PATH

## Instalação Rápida

```powershell
cd C:\Projetos\BRTV\Win
npm install
npm start
```

## Como Funciona

1. O launcher verifica se o WSA está ativo
2. Verifica se o Mtech APK está instalado no WSA
3. Clicando "Iniciar", ele abre o app via `adb shell am start`
4. O Mtech roda nativamente dentro do WSA com streaming funcionando

## Estrutura

```
Win/
├── package.json          # Config npm + electron-forge
├── src/
│   ├── main.js          # Processo principal Electron
│   └── preload.js       # Bridge IPC seguro
├── renderer/
│   ├── index.html       # Interface principal
│   ├── styles.css       # Tema dark com gradiente roxo/rosa
│   └── renderer.js      # Lógica da UI
└── assets/
    └── icon.png         # Ícone Mtech
```

## Build do .EXE

```powershell
# Instalar dependências
npm install

# Gerar instalador Windows
npm run make
```

O instalador será gerado em `out/make/squirrel.windows/x64/`.

## Pré-requisitos WSA

1. Habilitar WSA: Configurações → Apps → Recursos Opcionais → Mais recursos → WSA
2. Ou via PowerShell: `winget install 9P3395VX91NR`
3. Habilitar Developer Mode no WSA
4. Conectar ADB: `adb connect 127.0.0.1:58526`

## Instalando o Mtech APK no WSA

```powershell
# Buildar o APK Mtech primeiro
cd C:\Projetos\BRTV
.\build-mtech.ps1

# Instalar no WSA
adb install Mtech-10.3.3.apk
```

---

*Desenvolvido para Windows 11 com Electron*
