.class public final Lv4/v;
.super Lcom/google/android/gms/common/internal/a;
.source "MyApplication"


# static fields
.field public static final S:Lv4/b;

.field public static final T:Ljava/lang/Object;

.field public static final U:Ljava/lang/Object;


# instance fields
.field public final A:Lcom/google/android/gms/cast/CastDevice;

.field public final B:Lcom/google/android/gms/internal/cast/j0;

.field public final C:Ljava/util/HashMap;

.field public final D:J

.field public final E:Landroid/os/Bundle;

.field public F:Lv4/u;

.field public G:Ljava/lang/String;

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:D

.field public L:Lcom/google/android/gms/cast/zzat;

.field public M:I

.field public N:I

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Landroid/os/Bundle;

.field public final R:Ljava/util/HashMap;

.field public z:Lcom/google/android/gms/cast/ApplicationMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CastClientImpl"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lv4/v;->S:Lv4/b;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lv4/v;->T:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lv4/v;->U:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;La4/h;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/internal/cast/j0;Landroid/os/Bundle;Lz4/n;Lz4/n;)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    const/16 v3, 0xa

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object/from16 v5, p9

    .line 9
    .line 10
    move-object/from16 v6, p10

    .line 11
    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ILa4/h;Ly4/h;Ly4/i;)V

    .line 13
    .line 14
    .line 15
    move-object v0, p4

    .line 16
    iput-object v0, v7, Lv4/v;->A:Lcom/google/android/gms/cast/CastDevice;

    .line 17
    .line 18
    move-object v0, p7

    .line 19
    iput-object v0, v7, Lv4/v;->B:Lcom/google/android/gms/internal/cast/j0;

    .line 20
    .line 21
    move-wide v0, p5

    .line 22
    iput-wide v0, v7, Lv4/v;->D:J

    .line 23
    .line 24
    move-object/from16 v0, p8

    .line 25
    .line 26
    iput-object v0, v7, Lv4/v;->E:Landroid/os/Bundle;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, v7, Lv4/v;->C:Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 36
    .line 37
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, v7, Lv4/v;->R:Ljava/util/HashMap;

    .line 48
    .line 49
    const/4 v0, -0x1

    .line 50
    iput v0, v7, Lv4/v;->M:I

    .line 51
    .line 52
    iput v0, v7, Lv4/v;->N:I

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, v7, Lv4/v;->z:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 56
    .line 57
    iput-object v0, v7, Lv4/v;->G:Ljava/lang/String;

    .line 58
    .line 59
    const-wide/16 v1, 0x0

    .line 60
    .line 61
    iput-wide v1, v7, Lv4/v;->K:D

    .line 62
    .line 63
    invoke-virtual {p0}, Lv4/v;->B()V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    iput-boolean v1, v7, Lv4/v;->H:Z

    .line 68
    .line 69
    iput-object v0, v7, Lv4/v;->L:Lcom/google/android/gms/cast/zzat;

    .line 70
    .line 71
    invoke-virtual {p0}, Lv4/v;->B()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static z(Lv4/v;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lv4/v;->R:Ljava/util/HashMap;

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
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    sget-object v0, Lv4/v;->S:Lv4/b;

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
    iget-object v0, p0, Lv4/v;->C:Ljava/util/HashMap;

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

.method public final B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv4/v;->A:Lcom/google/android/gms/cast/CastDevice;

    .line 2
    .line 3
    const-string v1, "device should not be null"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x800

    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/gms/cast/CastDevice;->i:Landroidx/leanback/widget/o;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroidx/leanback/widget/o;->a(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x4

    .line 20
    invoke-virtual {v2, v1}, Landroidx/leanback/widget/o;->a(I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v2, v1}, Landroidx/leanback/widget/o;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const-string v1, "Chromecast Audio"

    .line 34
    .line 35
    iget-object v0, v0, Lcom/google/android/gms/cast/CastDevice;->e:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    const v0, 0xc35000

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public final disconnect()V
    .locals 8

    .line 1
    iget-object v0, p0, Lv4/v;->F:Lv4/u;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v0, v2, v3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v1, v2, v0

    .line 19
    .line 20
    sget-object v1, Lv4/v;->S:Lv4/b;

    .line 21
    .line 22
    const-string v4, "disconnect(); ServiceListener=%s, isConnected=%b"

    .line 23
    .line 24
    invoke-virtual {v1, v4, v2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lv4/v;->F:Lv4/u;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    iput-object v4, p0, Lv4/v;->F:Lv4/u;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v2, v2, Lv4/u;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lv4/v;

    .line 41
    .line 42
    const/4 v5, -0x1

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iput v5, v2, Lv4/v;->M:I

    .line 47
    .line 48
    iput v5, v2, Lv4/v;->N:I

    .line 49
    .line 50
    iput-object v4, v2, Lv4/v;->z:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 51
    .line 52
    iput-object v4, v2, Lv4/v;->G:Ljava/lang/String;

    .line 53
    .line 54
    const-wide/16 v6, 0x0

    .line 55
    .line 56
    iput-wide v6, v2, Lv4/v;->K:D

    .line 57
    .line 58
    invoke-virtual {v2}, Lv4/v;->B()V

    .line 59
    .line 60
    .line 61
    iput-boolean v3, v2, Lv4/v;->H:Z

    .line 62
    .line 63
    iput-object v4, v2, Lv4/v;->L:Lcom/google/android/gms/cast/zzat;

    .line 64
    .line 65
    move-object v4, v2

    .line 66
    :goto_0
    if-nez v4, :cond_1

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_1
    invoke-virtual {p0}, Lv4/v;->A()V

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lv4/d;

    .line 77
    .line 78
    new-instance v4, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 79
    .line 80
    invoke-direct {v4, v5, v5, v3, v0}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 81
    .line 82
    .line 83
    new-instance v5, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 84
    .line 85
    invoke-direct {v5, v4}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/cast/d0;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/cast/a;->y(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto :goto_3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    goto :goto_1

    .line 103
    :catch_1
    move-exception v0

    .line 104
    :goto_1
    :try_start_1
    const-string v2, "Error while disconnecting the controller interface"

    .line 105
    .line 106
    new-array v3, v3, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {v1, v0, v2, v3}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-super {p0}, Lcom/google/android/gms/common/internal/a;->disconnect()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_3
    invoke-super {p0}, Lcom/google/android/gms/common/internal/a;->disconnect()V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_2
    :goto_4
    new-array v0, v3, [Ljava/lang/Object;

    .line 120
    .line 121
    const-string v2, "already disposed, so short-circuiting"

    .line 122
    .line 123
    invoke-virtual {v1, v2, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final synthetic l(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lv4/d;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object p1, v0

    .line 16
    check-cast p1, Lv4/d;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Lv4/d;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lv4/d;-><init>(Landroid/os/IBinder;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v0

    .line 25
    :goto_0
    return-object p1
.end method

.method public final n()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lv4/v;->Q:Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lv4/v;->Q:Landroid/os/Bundle;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    return-object v1
.end method

.method public final o()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv4/v;->O:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lv4/v;->P:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v1, v3, v4

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aput-object v2, v3, v1

    .line 18
    .line 19
    const-string v1, "getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s"

    .line 20
    .line 21
    sget-object v2, Lv4/v;->S:Lv4/b;

    .line 22
    .line 23
    invoke-virtual {v2, v1, v3}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lv4/v;->A:Lcom/google/android/gms/cast/CastDevice;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v2, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    .line 37
    .line 38
    iget-wide v2, p0, Lv4/v;->D:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lv4/v;->E:Landroid/os/Bundle;

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    new-instance v1, Lv4/u;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lv4/u;-><init>(Lv4/v;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lv4/v;->F:Lv4/u;

    .line 56
    .line 57
    new-instance v2, Lcom/google/android/gms/common/internal/BinderWrapper;

    .line 58
    .line 59
    invoke-direct {v2, v1}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Lv4/u;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "listener"

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lv4/v;->O:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    const-string v2, "last_application_id"

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lv4/v;->P:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    const-string v2, "last_session_id"

    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    .line 2
    .line 3
    return-object v0
.end method

.method public final t(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/a;->t(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lv4/v;->A()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final u(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v0, v2, v3

    .line 10
    .line 11
    const-string v0, "in onPostInitHandler; statusCode=%d"

    .line 12
    .line 13
    sget-object v4, Lv4/v;->S:Lv4/b;

    .line 14
    .line 15
    invoke-virtual {v4, v0, v2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x8fc

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    :cond_0
    iput-boolean v1, p0, Lv4/v;->I:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lv4/v;->J:Z

    .line 27
    .line 28
    :cond_1
    if-ne p1, v0, :cond_2

    .line 29
    .line 30
    new-instance p1, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lv4/v;->Q:Landroid/os/Bundle;

    .line 36
    .line 37
    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/a;->u(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
