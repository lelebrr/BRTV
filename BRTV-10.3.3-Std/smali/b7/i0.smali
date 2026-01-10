.class public abstract Lb7/i0;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    const-string v3, "sun.misc.SharedSecrets"

    .line 5
    .line 6
    invoke-static {v3, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "getJavaLangAccess"

    .line 11
    .line 12
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    nop

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_7

    .line 25
    :goto_0
    move-object v3, v2

    .line 26
    :goto_1
    sput-object v3, Lb7/i0;->a:Ljava/lang/Object;

    .line 27
    .line 28
    const-string v4, "sun.misc.JavaLangAccess"

    .line 29
    .line 30
    const-class v5, Ljava/lang/Throwable;

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    const/4 v6, 0x2

    .line 36
    new-array v6, v6, [Ljava/lang/Class;

    .line 37
    .line 38
    aput-object v5, v6, v1

    .line 39
    .line 40
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    aput-object v7, v6, v0

    .line 43
    .line 44
    const-string v7, "getStackTraceElement"

    .line 45
    .line 46
    :try_start_1
    invoke-static {v4, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {v8, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_1
    nop

    .line 55
    goto :goto_2

    .line 56
    :catch_1
    move-exception v0

    .line 57
    goto :goto_6

    .line 58
    :goto_2
    if-nez v3, :cond_1

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :cond_1
    :try_start_2
    const-string v6, "getStackTraceDepth"

    .line 62
    .line 63
    new-array v7, v0, [Ljava/lang/Class;

    .line 64
    .line 65
    aput-object v5, v7, v1
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    .line 66
    .line 67
    :try_start_3
    invoke-static {v4, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 75
    goto :goto_3

    .line 76
    :catchall_2
    nop

    .line 77
    goto :goto_3

    .line 78
    :catch_2
    move-exception v0

    .line 79
    goto :goto_4

    .line 80
    :goto_3
    if-nez v2, :cond_2

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_2
    :try_start_4
    new-instance v4, Ljava/lang/Throwable;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 86
    .line 87
    .line 88
    new-array v0, v0, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object v4, v0, v1

    .line 91
    .line 92
    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_5

    .line 96
    :goto_4
    throw v0
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3

    .line 97
    :catch_3
    :goto_5
    return-void

    .line 98
    :goto_6
    throw v0

    .line 99
    :goto_7
    throw v0
.end method
