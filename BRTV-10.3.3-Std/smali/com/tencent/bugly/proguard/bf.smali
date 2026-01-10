.class public final Lcom/tencent/bugly/proguard/bf;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/os/Handler;

.field b:J

.field c:Z

.field d:J

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/ba;",
            ">;"
        }
    .end annotation
.end field

.field private final g:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/bugly/proguard/bf;->f:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/tencent/bugly/proguard/bf;->a:Landroid/os/Handler;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/tencent/bugly/proguard/bf;->e:Ljava/lang/String;

    .line 14
    .line 15
    const-wide/16 p1, 0x1388

    .line 16
    .line 17
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/bf;->b:J

    .line 18
    .line 19
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/bf;->g:J

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/bf;->c:Z

    .line 23
    .line 24
    return-void
.end method

.method private e()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bf;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/bf;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/bf;->d:J

    .line 10
    .line 11
    iget-wide v4, p0, Lcom/tencent/bugly/proguard/bf;->b:J

    .line 12
    .line 13
    add-long/2addr v2, v4

    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-ltz v4, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public final b()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/bf;->d:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final c()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/ba;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/tencent/bugly/proguard/bf;->f:Ljava/util/List;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/tencent/bugly/proguard/bf;->f:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    iget-object v5, p0, Lcom/tencent/bugly/proguard/bf;->f:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-ge v4, v5, :cond_1

    .line 27
    .line 28
    iget-object v5, p0, Lcom/tencent/bugly/proguard/bf;->f:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/tencent/bugly/proguard/ba;

    .line 35
    .line 36
    iget-boolean v6, v5, Lcom/tencent/bugly/proguard/ba;->e:Z

    .line 37
    .line 38
    if-nez v6, :cond_0

    .line 39
    .line 40
    iget-wide v6, v5, Lcom/tencent/bugly/proguard/ba;->b:J

    .line 41
    .line 42
    sub-long v6, v0, v6

    .line 43
    .line 44
    const-wide/32 v8, 0x30d40

    .line 45
    .line 46
    .line 47
    cmp-long v10, v6, v8

    .line 48
    .line 49
    if-gez v10, :cond_0

    .line 50
    .line 51
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    iput-boolean v6, v5, Lcom/tencent/bugly/proguard/ba;->e:Z

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    monitor-exit v2

    .line 64
    return-object v3

    .line 65
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v0
.end method

.method public final d()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x400

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/bf;->e()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    array-length v5, v4

    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    const-string v4, "Thread does not have stack trace.\n"

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception v4

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    array-length v5, v4

    .line 33
    const/4 v6, 0x0

    .line 34
    :goto_0
    if-ge v6, v5, :cond_1

    .line 35
    .line 36
    aget-object v7, v4, v6

    .line 37
    .line 38
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v7, "\n"

    .line 42
    .line 43
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    add-int/lit8 v6, v6, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    const-string v5, "getStackTrace() encountered:\n"

    .line 50
    .line 51
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, "\n"

    .line 62
    .line 63
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    new-instance v6, Lcom/tencent/bugly/proguard/ba;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    invoke-direct {v6, v0, v7, v8}, Lcom/tencent/bugly/proguard/ba;-><init>(Ljava/lang/String;J)V

    .line 84
    .line 85
    .line 86
    sub-long/2addr v4, v1

    .line 87
    iput-wide v4, v6, Lcom/tencent/bugly/proguard/ba;->d:J

    .line 88
    .line 89
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/bf;->e()Ljava/lang/Thread;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_2
    const-string v0, ""

    .line 101
    .line 102
    :goto_3
    iput-object v0, v6, Lcom/tencent/bugly/proguard/ba;->a:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v0, p0, Lcom/tencent/bugly/proguard/bf;->f:Ljava/util/List;

    .line 105
    .line 106
    monitor-enter v0

    .line 107
    :goto_4
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/bf;->f:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    const/16 v2, 0x20

    .line 114
    .line 115
    if-lt v1, v2, :cond_3

    .line 116
    .line 117
    iget-object v1, p0, Lcom/tencent/bugly/proguard/bf;->f:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :catchall_0
    move-exception v1

    .line 124
    goto :goto_5

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/bf;->f:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 132
    :goto_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw v1
.end method

.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/bf;->c:Z

    .line 3
    .line 4
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/bf;->g:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/bf;->b:J

    .line 7
    .line 8
    return-void
.end method
