.class public abstract Lj0/n;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:J

.field public static final b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-class v4, Ljava/lang/String;

    .line 6
    .line 7
    const-class v5, Landroid/os/Trace;

    .line 8
    .line 9
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v7, 0x1d

    .line 12
    .line 13
    if-ge v6, v7, :cond_0

    .line 14
    .line 15
    :try_start_0
    const-string v6, "TRACE_TAG_APP"

    .line 16
    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    const/4 v7, 0x0

    .line 22
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    sput-wide v6, Lj0/n;->a:J

    .line 27
    .line 28
    const-string v6, "isTagEnabled"

    .line 29
    .line 30
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    new-array v8, v3, [Ljava/lang/Class;

    .line 33
    .line 34
    aput-object v7, v8, v2

    .line 35
    .line 36
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    sput-object v6, Lj0/n;->b:Ljava/lang/reflect/Method;

    .line 41
    .line 42
    const-string v6, "asyncTraceBegin"

    .line 43
    .line 44
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    new-array v9, v1, [Ljava/lang/Class;

    .line 47
    .line 48
    aput-object v7, v9, v2

    .line 49
    .line 50
    aput-object v4, v9, v3

    .line 51
    .line 52
    aput-object v8, v9, v0

    .line 53
    .line 54
    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    const-string v6, "asyncTraceEnd"

    .line 58
    .line 59
    new-array v9, v1, [Ljava/lang/Class;

    .line 60
    .line 61
    aput-object v7, v9, v2

    .line 62
    .line 63
    aput-object v4, v9, v3

    .line 64
    .line 65
    aput-object v8, v9, v0

    .line 66
    .line 67
    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    const-string v6, "traceCounter"

    .line 71
    .line 72
    new-array v1, v1, [Ljava/lang/Class;

    .line 73
    .line 74
    aput-object v7, v1, v2

    .line 75
    .line 76
    aput-object v4, v1, v3

    .line 77
    .line 78
    aput-object v8, v1, v0

    .line 79
    .line 80
    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "TraceCompat"

    .line 86
    .line 87
    const-string v2, "Unable to initialize via reflection."

    .line 88
    .line 89
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :cond_0
    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x1d

    .line 5
    .line 6
    if-lt v1, v2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lj0/m;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :cond_0
    :try_start_0
    sget-object v1, Lj0/n;->b:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    sget-wide v2, Lj0/n;->a:J

    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object v2, v3, v0

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return v0

    .line 38
    :catch_0
    const-string v1, "TraceCompat"

    .line 39
    .line 40
    const-string v2, "Unable to invoke isTagEnabled() via reflection."

    .line 41
    .line 42
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v0
.end method
