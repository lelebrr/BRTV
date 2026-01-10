.class public abstract Lcom/google/android/gms/internal/cast/e6;
.super Lcom/google/android/gms/internal/cast/z0;
.source "MyApplication"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# static fields
.field public static final g:Ljava/lang/Object;

.field public static final h:Lcom/google/android/gms/internal/cast/k1;

.field public static final i:Z

.field public static final j:Lcom/google/android/gms/internal/cast/z0;


# instance fields
.field public volatile d:Ljava/lang/Object;

.field public volatile e:Lcom/google/android/gms/internal/cast/y5;

.field public volatile f:Lcom/google/android/gms/internal/cast/d6;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/e6;->g:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/cast/k1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/k1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/cast/e6;->h:Lcom/google/android/gms/internal/cast/k1;

    .line 14
    .line 15
    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    .line 16
    .line 17
    const-string v1, "false"

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/cast/e6;->i:Z

    .line 30
    .line 31
    const-string v0, "java.runtime.name"

    .line 32
    .line 33
    const-string v1, ""

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v2, "Android"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/cast/a6;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/z0;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    :goto_1
    move-object v6, v1

    .line 59
    move-object v12, v6

    .line 60
    goto :goto_6

    .line 61
    :catch_1
    new-instance v0, Lcom/google/android/gms/internal/cast/b6;

    .line 62
    .line 63
    const/16 v2, 0x9

    .line 64
    .line 65
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/z0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_2
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/cast/c6;

    .line 70
    .line 71
    const/16 v2, 0x9

    .line 72
    .line 73
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/z0;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_2
    move-exception v0

    .line 78
    goto :goto_3

    .line 79
    :catch_3
    move-exception v0

    .line 80
    :goto_3
    :try_start_3
    new-instance v2, Lcom/google/android/gms/internal/cast/a6;

    .line 81
    .line 82
    const/16 v3, 0x9

    .line 83
    .line 84
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cast/z0;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    .line 85
    .line 86
    .line 87
    :goto_4
    move-object v12, v0

    .line 88
    move-object v6, v1

    .line 89
    move-object v0, v2

    .line 90
    goto :goto_6

    .line 91
    :catch_4
    move-exception v1

    .line 92
    goto :goto_5

    .line 93
    :catch_5
    move-exception v1

    .line 94
    :goto_5
    new-instance v2, Lcom/google/android/gms/internal/cast/b6;

    .line 95
    .line 96
    const/16 v3, 0x9

    .line 97
    .line 98
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cast/z0;-><init>(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :goto_6
    sput-object v0, Lcom/google/android/gms/internal/cast/e6;->j:Lcom/google/android/gms/internal/cast/z0;

    .line 103
    .line 104
    if-eqz v6, :cond_2

    .line 105
    .line 106
    sget-object v0, Lcom/google/android/gms/internal/cast/e6;->h:Lcom/google/android/gms/internal/cast/k1;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/k1;->b()Ljava/util/logging/Logger;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 113
    .line 114
    const-string v11, "UnsafeAtomicHelper is broken!"

    .line 115
    .line 116
    const-string v9, "com.google.common.util.concurrent.AbstractFutureState"

    .line 117
    .line 118
    const-string v10, "<clinit>"

    .line 119
    .line 120
    move-object v8, v2

    .line 121
    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/k1;->b()Ljava/util/logging/Logger;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v5, "AtomicReferenceFieldUpdaterAtomicHelper is broken!"

    .line 129
    .line 130
    const-string v3, "com.google.common.util.concurrent.AbstractFutureState"

    .line 131
    .line 132
    const-string v4, "<clinit>"

    .line 133
    .line 134
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    return-void
.end method


# virtual methods
.method public final s(Lcom/google/android/gms/internal/cast/d6;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/google/android/gms/internal/cast/d6;->a:Ljava/lang/Thread;

    .line 3
    .line 4
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/e6;->f:Lcom/google/android/gms/internal/cast/d6;

    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/cast/d6;->c:Lcom/google/android/gms/internal/cast/d6;

    .line 7
    .line 8
    if-eq p1, v1, :cond_3

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    :goto_1
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/d6;->b:Lcom/google/android/gms/internal/cast/d6;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/google/android/gms/internal/cast/d6;->a:Ljava/lang/Thread;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iput-object v2, v1, Lcom/google/android/gms/internal/cast/d6;->b:Lcom/google/android/gms/internal/cast/d6;

    .line 24
    .line 25
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/d6;->a:Ljava/lang/Thread;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/cast/e6;->j:Lcom/google/android/gms/internal/cast/z0;

    .line 31
    .line 32
    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/cast/z0;->r(Lcom/google/android/gms/internal/cast/e6;Lcom/google/android/gms/internal/cast/d6;Lcom/google/android/gms/internal/cast/d6;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_2
    move-object p1, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    return-void
.end method
