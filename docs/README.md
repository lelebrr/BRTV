# BRTV - Análise Completa e Documentação

## 📋 Visão Geral

**BRTV** (BrTV) é um aplicativo Android de streaming IPTV desenvolvido pela P2Elite, baseado no framework Bitspark. O app oferece funcionalidades completas de TV ao vivo, VOD (Video on Demand), e suporte para Android TV.

### Informações do APK

| Propriedade | Valor |
|-------------|-------|
| **Nome do App** | BRTV |
| **Package Name** | `com.p2elite.brtv2` |
| **Versão** | 10.3.3 (versionCode: 1033) |
| **Min SDK** | 21 (Android 5.0 Lollipop) |
| **Target SDK** | 35 (Android 15) |
| **Tamanho APK** | ~20 MB |
| **Orientação** | Landscape (horizontal) |

---

## 📁 Estrutura de Pastas

```
C:\Projetos\BRTV
├── BRTV-10.3.3-Std.apk        # APK original (20MB)
├── logo.jpeg                   # Logo Mtech TV (play icon roxo/rosa)
├── .git/                       # Repositório Git
├── BRTV-10.3.3-Std/           # Descompilado via Apktool
│   ├── AndroidManifest.xml    # Manifest principal
│   ├── apktool.yml            # Metadados Apktool
│   ├── assets/                # Assets (fonts, dexopt)
│   ├── lib/                   # Bibliotecas nativas (.so)
│   │   ├── arm64-v8a/         # 64-bit ARM
│   │   └── armeabi-v7a/       # 32-bit ARM
│   ├── res/                   # Recursos (layouts, drawables, strings)
│   ├── smali/                 # Código bytecode DEX
│   └── smali_classes2/        # Classes secundárias
├── jadx/                      # Descompilado via Jadx (Java)
│   ├── sources/               # Código Java descompilado
│   ├── desofuscado/          # Versão com nomes mapeados
│   └── resources/            # Recursos decompilados
└── docs/                      # Documentação (este arquivo)
```

---

## 🔧 Análise Técnica

### Arquitetura do App

| Componente | Descrição |
|------------|-----------|
| **Main Activity** | `org.bitspark.android.Spark` |
| **Application Class** | `org.bitspark.android.SpkApplication` |
| **TV Service** | `com.tvbus.engine.TVService` (P2P streaming) |
| **ActionReceiver** | `org.bitspark.android.broadcast.ActionReceiver` (boot, conectividade) |

### Bibliotecas Nativas (.so)

O app possui **9 bibliotecas nativas** que contêm a lógica principal:

| Biblioteca | Tamanho | Propósito |
|------------|---------|-----------|
| `libgojni.so` | 7.8 MB | Core logic em Go (principal) |
| `libffmpegJNI.so` | 1.4 MB | Codecs de vídeo FFmpeg |
| `libtvcore.so` | 1.2 MB | TVBus P2P streaming engine |
| `libc++_shared.so` | 936 KB | Runtime C++ |
| `libmarsxlog.so` | 662 KB | Logging (Tencent Mars) |
| `libijkplayer.so` | 320 KB | Player IJK (Bilibili) |
| `libijkcodec.so` | 269 KB | Codecs adicionais IJK |
| `libBugly_Native.so` | 195 KB | Crash reporting nativo |
| `libBugly.so` | 191 KB | Crash reporting |

### Dependências Java/Kotlin

- **ExoPlayer/Media3**: Reprodução de vídeo moderna
- **IJKPlayer**: Player alternativo (baseado em FFmpeg)
- **Retrofit + OkHttp**: Networking e chamadas API
- **Glide + Coil**: Carregamento de imagens
- **EventBus (GreenRobot)**: Comunicação entre componentes
- **AndroidX Leanback**: Suporte Android TV
- **Google Cast**: Chromecast support
- **AutoSize**: Adaptação de layouts
- **Tencent Bugly**: Crash reporting
- **Tencent Mars Xlog**: Logging avançado

### Proteção e Ofuscação

> ⚠️ **IMPORTANTE**: O código está **fortemente protegido**

1. **Strings Encriptadas**: Todas as strings sensíveis usam `a2.a.s()` para descriptografar em runtime
2. **Código Nativo**: A lógica principal está em `libgojni.so` (escrito em Go, compilado para Android)
3. **Métodos Nativos**: A classe `Spark` delega quase todos os métodos para código nativo
4. **NativeUtil**: Proteção adicional via `com.nmmedit.protect.NativeUtil.classesInit0()`

---

## 🔗 URLs e Endpoints Encontrados

### Serviços de Terceiros

| URL | Serviço | Propósito |
|-----|---------|-----------|
| `https://android.bugly.qq.com/rqd/async` | Tencent Bugly | Crash reporting |
| `https://astat.bugly.qcloud.com/rqd/async` | Tencent Bugly | Analytics |
| `https://h.trace.qq.com/kv` | Tencent Trace | Telemetria |

### Observações sobre APIs do App

As URLs dos servidores de streaming estão **encriptadas** no código e são descriptografadas em runtime usando `a2.a.s()`. Exemplos de strings encriptadas encontradas:

```java
f8673n2 = a2.a.s("fLXoidahtxd0qvbKx++7E3iizbfz\n", "HcWY5b/C1mM=\n");
f8674o2 = a2.a.s("Ll9EPcqiXKomQFp+x6BOtmRXWT0=\n", "Ty80UaPBPd4=\n");
// ... (dezenas de strings cifradas)
```

---

## 🎮 Funcionalidades

### Identificadas via Análise

1. **TV ao Vivo (Live)**
   - Streaming de canais em tempo real
   - EPG (guia de programação)
   - Múltiplas fontes por canal
   - Favoritos

2. **VOD (Video on Demand)**
   - Filmes e séries
   - Histórico de visualização
   - Busca/pesquisa
   - Ordenação (A-Z, data de atualização)

3. **Player**
   - ExoPlayer (principal) e SystemPlayer
   - Controle de volume/brilho por gestos
   - Legendas
   - Chromecast support
   - Seleção de áudio/qualidade

4. **Multi-idioma**
   - Suporte a 70+ idiomas
   - Português (BR/PT) incluído

5. **Configurações**
   - Tipo de dispositivo (Phone/TV)
   - Preferência de player
   - Buffer settings
   - Auto-start no boot
   - Conexão UDP/TCP

---

## 📊 Diagrama de Fluxo

```
┌─────────────┐     ┌──────────────┐     ┌────────────────┐
│   Splash    │────▶│    Login     │────▶│   Main Menu    │
│  (Spark)    │     │ (Device ID/  │     │ Live/VOD/Fav/  │
│             │     │  Username)   │     │   Settings     │
└─────────────┘     └──────────────┘     └───────┬────────┘
                                                 │
        ┌────────────────────────────────────────┼────────────┐
        ▼                    ▼                   ▼            ▼
┌──────────────┐    ┌──────────────┐    ┌──────────────┐  ┌────────┐
│  Live TV     │    │     VOD      │    │  Favorites   │  │Settings│
│  Channels    │    │ Movies/Shows │    │    List      │  │  Page  │
└──────┬───────┘    └──────┬───────┘    └──────────────┘  └────────┘
       │                   │
       ▼                   ▼
┌─────────────────────────────────────┐
│           ExoPlayer/IJK             │
│  (Streaming via TVCore P2P/HTTP)    │
└─────────────────────────────────────┘
```

---

## ⚡ Otimizações Potenciais

### Identificadas

1. **Imagens**: Converter drawables para WebP (economia de ~15-20%)
2. **Recursos não utilizados**: Remover traduções não necessárias
3. **Minificação**: Aplicar R8/ProGuard mais agressivo
4. **Lazy loading**: Carregar categorias sob demanda
5. **Cache**: Otimizar cache de imagens (Glide já implementado)

### Limitações

- A maior parte da lógica está em código nativo (não otimizável sem recompilação)
- Strings encriptadas impedem análise estática completa
- Sem acesso ao código-fonte Go, otimizações profundas são impossíveis

---

## 🖼️ Logo

O arquivo `logo.jpeg` contém o ícone "Mtech TV":
- **Formato**: JPEG
- **Tamanho**: 27.7 KB
- **Design**: Ícone de play triangular com gradiente roxo/rosa

---

## 📝 Notas Finais

Este app é um cliente IPTV comercial com proteções anti-reversão significativas. A conversão para outras plataformas (Windows, Apple TV) requer:

1. **Acesso ao código-fonte original** (especialmente o código Go em `libgojni.so`)
2. **Chaves de descriptografia** das strings
3. **Documentação da API do servidor** (endpoints, autenticação)

Sem esses elementos, uma conversão funcional completa não é tecnicamente viável apenas com engenharia reversa do APK.

---

*Documentação gerada em: 2026-01-10*
*Versão analisada: BRTV 10.3.3*
