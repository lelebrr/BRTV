.class public Lcom/tvbus/engine/TVCore;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field static final RM_CLIENT:I = 0x2

.field static final RM_MASTER:I = 0x1

.field static final RM_STANDALONE:I

.field private static inst:Lcom/tvbus/engine/TVCore;

.field private static nativeHandle:J


# instance fields
.field private mkBroker:Ljava/lang/String;

.field private tvListener:Lcom/tvbus/engine/TVListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "tvcore"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tvbus/engine/TVCore;->tvListener:Lcom/tvbus/engine/TVListener;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/tvbus/engine/TVCore;->mkBroker:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method private native description(J)Ljava/lang/String;
.end method

.method private native diagnose(J)V
.end method

.method private native err2String(JI)Ljava/lang/String;
.end method

.method public static declared-synchronized getInstance()Lcom/tvbus/engine/TVCore;
    .locals 7

    .line 1
    const-class v0, Lcom/tvbus/engine/TVCore;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tvbus/engine/TVCore;->inst:Lcom/tvbus/engine/TVCore;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/tvbus/engine/TVCore;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/tvbus/engine/TVCore;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/tvbus/engine/TVCore;->inst:Lcom/tvbus/engine/TVCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_1
    invoke-direct {v1}, Lcom/tvbus/engine/TVCore;->initialise()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    sput-wide v3, Lcom/tvbus/engine/TVCore;->nativeHandle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object v2

    .line 30
    :catchall_0
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :catchall_1
    move-exception v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :try_start_2
    sget-object v1, Lcom/tvbus/engine/TVCore;->inst:Lcom/tvbus/engine/TVCore;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-object v1

    .line 38
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    throw v1
.end method

.method private native getVersion(J)Ljava/lang/String;
.end method

.method private native init(JLandroid/content/Context;)I
.end method

.method private native initialise()J
.end method

.method private native quit(J)V
.end method

.method private native run(J)I
.end method

.method private native setAuthItems(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setAuthUrl(JLjava/lang/String;)V
.end method

.method private native setDomainSuffix(JLjava/lang/String;)V
.end method

.method private native setListener(JLcom/tvbus/engine/TVListener;)V
.end method

.method private native setMKBroker(JLjava/lang/String;)V
.end method

.method private native setOption(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setPassword(JLjava/lang/String;)V
.end method

.method private native setPlayPort(JI)V
.end method

.method private native setRunningMode(JI)V
.end method

.method private native setServPort(JI)V
.end method

.method private native setUsername(JLjava/lang/String;)V
.end method

.method private native start(JLjava/lang/String;)V
.end method

.method private native start2(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native stop(J)V
.end method

.method private native stop2(JI)V
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->description(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 2
    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method public diagnose()V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->diagnose(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public err2String(I)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->err2String(JI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 2
    :catchall_0
    const-string p1, ""

    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->getVersion(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 2
    :catchall_0
    const-string v0, ""

    return-object v0
.end method

.method public init(Landroid/content/Context;)I
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->init(JLandroid/content/Context;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, -0x1

    return p1
.end method

.method public quit()V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->quit(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public run()I
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->run(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, -0x1

    return v0
.end method

.method public setAuthItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    sget-wide v1, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tvbus/engine/TVCore;->setAuthItems(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setAuthUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setAuthUrl(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setDomainSuffix(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setDomainSuffix(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setMKBroker(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setMKBroker(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tvbus/engine/TVCore;->setOption(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setPassword(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setPlayPort(I)V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setPlayPort(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setRunningMode(I)V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setRunningMode(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setServPort(I)V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setServPort(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setTVListener(Lcom/tvbus/engine/TVListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tvbus/engine/TVCore;->tvListener:Lcom/tvbus/engine/TVListener;

    .line 2
    .line 3
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setListener(JLcom/tvbus/engine/TVListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->setUsername(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->start(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/tvbus/engine/TVCore;->start2(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/tvbus/engine/TVCore;->stop(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public stop(I)V
    .locals 2

    .line 2
    :try_start_0
    sget-wide v0, Lcom/tvbus/engine/TVCore;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tvbus/engine/TVCore;->stop2(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
