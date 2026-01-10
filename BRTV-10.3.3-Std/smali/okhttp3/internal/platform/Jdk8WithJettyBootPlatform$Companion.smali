.class public final Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj9/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-class v2, Ljavax/net/ssl/SSLSocket;

    .line 4
    .line 5
    const-string v3, "java.specification.version"

    .line 6
    .line 7
    const-string v4, "unknown"

    .line 8
    .line 9
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    :try_start_0
    const-string v5, "jvmVersion"

    .line 15
    .line 16
    invoke-static {v3, v5}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const/16 v5, 0x9

    .line 24
    .line 25
    if-lt v3, v5, :cond_0

    .line 26
    .line 27
    return-object v4

    .line 28
    :catch_0
    :cond_0
    const-string v3, "org.eclipse.jetty.alpn.ALPN"

    .line 29
    .line 30
    :try_start_1
    invoke-static {v3, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v5, "org.eclipse.jetty.alpn.ALPN$Provider"

    .line 35
    .line 36
    invoke-static {v5, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const-string v6, "org.eclipse.jetty.alpn.ALPN$ClientProvider"

    .line 41
    .line 42
    invoke-static {v6, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    const-string v6, "org.eclipse.jetty.alpn.ALPN$ServerProvider"

    .line 47
    .line 48
    invoke-static {v6, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    const-string v6, "put"

    .line 53
    .line 54
    const/4 v7, 0x2

    .line 55
    new-array v7, v7, [Ljava/lang/Class;

    .line 56
    .line 57
    aput-object v2, v7, v0

    .line 58
    .line 59
    aput-object v5, v7, v1

    .line 60
    .line 61
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const-string v5, "get"

    .line 66
    .line 67
    new-array v6, v1, [Ljava/lang/Class;

    .line 68
    .line 69
    aput-object v2, v6, v0

    .line 70
    .line 71
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    const-string v5, "remove"

    .line 76
    .line 77
    new-array v1, v1, [Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v2, v1, v0

    .line 80
    .line 81
    invoke-virtual {v3, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    new-instance v0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;

    .line 86
    .line 87
    const-string v1, "putMethod"

    .line 88
    .line 89
    invoke-static {v8, v1}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v1, "getMethod"

    .line 93
    .line 94
    invoke-static {v9, v1}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v1, "removeMethod"

    .line 98
    .line 99
    invoke-static {v10, v1}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "clientProviderClass"

    .line 103
    .line 104
    invoke-static {v11, v1}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v1, "serverProviderClass"

    .line 108
    .line 109
    invoke-static {v12, v1}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    move-object v7, v0

    .line 113
    invoke-direct/range {v7 .. v12}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    .line 115
    .line 116
    return-object v0

    .line 117
    :catch_1
    return-object v4
.end method
