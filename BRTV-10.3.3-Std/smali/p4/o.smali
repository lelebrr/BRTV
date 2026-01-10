.class public final Lp4/o;
.super Ly4/g;
.source "MyApplication"


# static fields
.field public static final F:Lv4/b;

.field public static final G:Ll6/h;


# instance fields
.field public final A:Ljava/util/HashMap;

.field public final B:Ljava/util/HashMap;

.field public final C:Lcom/google/android/gms/internal/cast/j0;

.field public final D:Ljava/util/List;

.field public E:I

.field public final j:Lp4/n;

.field public k:Lcom/google/android/gms/internal/cast/x0;

.field public l:Z

.field public m:Z

.field public n:Lw5/d;

.field public o:Lw5/d;

.field public final p:Ljava/util/concurrent/atomic/AtomicLong;

.field public final q:Ljava/lang/Object;

.field public final r:Ljava/lang/Object;

.field public s:Lcom/google/android/gms/cast/ApplicationMetadata;

.field public t:Ljava/lang/String;

.field public u:D

.field public v:Z

.field public w:I

.field public x:I

.field public y:Lcom/google/android/gms/cast/zzat;

.field public final z:Lcom/google/android/gms/cast/CastDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CastClient"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lp4/o;->F:Lv4/b;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/cast/d1;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/d1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ll6/h;

    .line 18
    .line 19
    sget-object v2, Lv4/h;->a:Ly4/d;

    .line 20
    .line 21
    const-string v3, "Cast.API_CXLESS"

    .line 22
    .line 23
    invoke-direct {v1, v3, v0, v2}, Ll6/h;-><init>(Ljava/lang/String;Ll5/a;Ly4/d;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lp4/o;->G:Ll6/h;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lp4/a;)V
    .locals 2

    .line 1
    sget-object v0, Lp4/o;->G:Ll6/h;

    .line 2
    .line 3
    sget-object v1, Ly4/f;->c:Ly4/f;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, p2, v1}, Ly4/g;-><init>(Landroid/content/Context;Ll6/h;Ly4/b;Ly4/f;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lp4/n;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lp4/n;-><init>(Lp4/o;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lp4/o;->j:Lp4/n;

    .line 14
    .line 15
    new-instance p1, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lp4/o;->q:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance p1, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lp4/o;->r:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lp4/o;->D:Ljava/util/List;

    .line 39
    .line 40
    iget-object p1, p2, Lp4/a;->b:Lcom/google/android/gms/internal/cast/j0;

    .line 41
    .line 42
    iput-object p1, p0, Lp4/o;->C:Lcom/google/android/gms/internal/cast/j0;

    .line 43
    .line 44
    iget-object p1, p2, Lp4/a;->a:Lcom/google/android/gms/cast/CastDevice;

    .line 45
    .line 46
    iput-object p1, p0, Lp4/o;->z:Lcom/google/android/gms/cast/CastDevice;

    .line 47
    .line 48
    new-instance p1, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lp4/o;->A:Ljava/util/HashMap;

    .line 54
    .line 55
    new-instance p1, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lp4/o;->B:Ljava/util/HashMap;

    .line 61
    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 63
    .line 64
    const-wide/16 v0, 0x0

    .line 65
    .line 66
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lp4/o;->p:Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    iput p1, p0, Lp4/o;->E:I

    .line 73
    .line 74
    invoke-virtual {p0}, Lp4/o;->k()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static d(Lp4/o;JI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lp4/o;->A:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lw5/d;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    if-nez p3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, p0}, Lw5/d;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 28
    .line 29
    invoke-direct {p1, p3, p0, p0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Ly4/e;

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ly4/e;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p0}, Lw5/d;->a(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1
.end method

.method public static e(Lp4/o;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/o;->r:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp4/o;->o:Lw5/d;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {p1, v3, v2, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lw5/d;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    .line 26
    .line 27
    invoke-direct {v3, p1, v2, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Ly4/e;

    .line 31
    .line 32
    invoke-direct {p1, v3}, Ly4/e;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lw5/d;->a(Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iput-object v2, p0, Lp4/o;->o:Lw5/d;

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public static l(Lp4/o;)Landroid/os/Handler;
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/o;->k:Lcom/google/android/gms/internal/cast/x0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/x0;

    .line 6
    .line 7
    iget-object v1, p0, Ly4/g;->f:Landroid/os/Looper;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lp4/o;->k:Lcom/google/android/gms/internal/cast/x0;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lp4/o;->k:Lcom/google/android/gms/internal/cast/x0;

    .line 16
    .line 17
    return-object p0
.end method


# virtual methods
.method public final f(Lv4/f;)Lw5/g;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ly4/g;->b(Lv4/f;)Lz4/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lz4/h;->a:Lz4/g;

    .line 6
    .line 7
    const-string v0, "Key must not be null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ly4/g;->i:Lz4/e;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lw5/d;

    .line 18
    .line 19
    invoke-direct {v1}, Lw5/d;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x20df

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, p0}, Lz4/e;->e(Lw5/d;ILy4/g;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lz4/x;

    .line 28
    .line 29
    invoke-direct {v2, p1, v1}, Lz4/x;-><init>(Lz4/g;Lw5/d;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v0, Lz4/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    new-instance v3, Lz4/t;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-direct {v3, v2, p1, p0}, Lz4/t;-><init>(Lz4/q;ILy4/g;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, v0, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 44
    .line 45
    const/16 v0, 0xd

    .line 46
    .line 47
    invoke-virtual {p1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    .line 53
    .line 54
    iget-object p1, v1, Lw5/d;->a:Lw5/g;

    .line 55
    .line 56
    return-object p1
.end method

.method public final g()V
    .locals 3

    .line 1
    sget-object v0, Lp4/o;->F:Lv4/b;

    .line 2
    .line 3
    const-string v1, "removing all MessageReceivedCallbacks"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lp4/o;->B:Ljava/util/HashMap;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method public final h(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/o;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lp4/o;->n:Lw5/d;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    .line 10
    .line 11
    invoke-direct {v3, p1, v2, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ly4/e;

    .line 15
    .line 16
    invoke-direct {p1, v3}, Ly4/e;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lw5/d;->a(Ljava/lang/Exception;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iput-object v2, p0, Lp4/o;->n:Lw5/d;

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public final i()Lw5/g;
    .locals 3

    .line 1
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lu6/e;

    .line 6
    .line 7
    const/16 v2, 0x1d

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lu6/e;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lc6/c;->c:Ljava/lang/Object;

    .line 13
    .line 14
    const/16 v1, 0x20d3

    .line 15
    .line 16
    iput v1, v0, Lc6/c;->a:I

    .line 17
    .line 18
    invoke-virtual {v0}, Lc6/c;->b()Lc6/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v1, v0}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lp4/o;->g()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lp4/o;->j:Lp4/n;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lp4/o;->f(Lv4/f;)Lw5/g;

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget v0, p0, Lp4/o;->E:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/o;->z:Lcom/google/android/gms/cast/CastDevice;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/CastDevice;->i:Landroidx/leanback/widget/o;

    .line 4
    .line 5
    const/16 v2, 0x800

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/o;->a(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v1, 0x4

    .line 15
    iget-object v2, v0, Lcom/google/android/gms/cast/CastDevice;->i:Landroidx/leanback/widget/o;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroidx/leanback/widget/o;->a(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v2, v1}, Landroidx/leanback/widget/o;->a(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    const-string v1, "Chromecast Audio"

    .line 31
    .line 32
    iget-object v0, v0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
