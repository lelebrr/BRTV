.class public final Lz4/e;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final o:Lcom/google/android/gms/common/api/Status;

.field public static final p:Lcom/google/android/gms/common/api/Status;

.field public static final q:Ljava/lang/Object;

.field public static r:Lz4/e;


# instance fields
.field public a:J

.field public b:Z

.field public c:Lcom/google/android/gms/common/internal/TelemetryData;

.field public d:Ld5/b;

.field public final e:Landroid/content/Context;

.field public final f:Lx4/b;

.field public final g:La7/f;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public final k:Lp/f;

.field public final l:Lp/f;

.field public final m:Lcom/google/android/gms/internal/cast/x0;

.field public volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "Sign-out occurred while this API call was in progress."

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lz4/e;->o:Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 13
    .line 14
    const-string v2, "The user must be signed in to make this API call."

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lz4/e;->p:Lcom/google/android/gms/common/api/Status;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lz4/e;->q:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 1
    sget-object v0, Lx4/b;->d:Lx4/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x2710

    .line 7
    .line 8
    iput-wide v1, p0, Lz4/e;->a:J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lz4/e;->b:Z

    .line 12
    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lz4/e;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lz4/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    const/4 v4, 0x5

    .line 31
    const/high16 v5, 0x3f400000    # 0.75f

    .line 32
    .line 33
    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    new-instance v2, Lp/f;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Lp/f;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lz4/e;->k:Lp/f;

    .line 44
    .line 45
    new-instance v2, Lp/f;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lp/f;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lz4/e;->l:Lp/f;

    .line 51
    .line 52
    iput-boolean v3, p0, Lz4/e;->n:Z

    .line 53
    .line 54
    iput-object p1, p0, Lz4/e;->e:Landroid/content/Context;

    .line 55
    .line 56
    new-instance v2, Lcom/google/android/gms/internal/cast/x0;

    .line 57
    .line 58
    const/4 v4, 0x4

    .line 59
    invoke-direct {v2, p2, p0, v4}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 66
    .line 67
    iput-object v0, p0, Lz4/e;->f:Lx4/b;

    .line 68
    .line 69
    new-instance p2, La7/f;

    .line 70
    .line 71
    const/16 v0, 0xa

    .line 72
    .line 73
    invoke-direct {p2, v0}, La7/f;-><init>(I)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lz4/e;->g:La7/f;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object p2, Lo9/e;->d:Ljava/lang/Boolean;

    .line 83
    .line 84
    if-nez p2, :cond_1

    .line 85
    .line 86
    invoke-static {}, Lu7/d;->t()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_0

    .line 91
    .line 92
    const-string p2, "android.hardware.type.automotive"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const/4 v3, 0x0

    .line 102
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sput-object p1, Lo9/e;->d:Ljava/lang/Boolean;

    .line 107
    .line 108
    :cond_1
    sget-object p1, Lo9/e;->d:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    iput-boolean v1, p0, Lz4/e;->n:Z

    .line 117
    .line 118
    :cond_2
    const/4 p1, 0x6

    .line 119
    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public static c(Lz4/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    iget-object p0, p0, Lz4/b;->b:Ll6/h;

    .line 4
    .line 5
    iget-object p0, p0, Ll6/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "API: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, " is not available on this device. Connection failed with: "

    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-object v1, p1, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    .line 36
    .line 37
    const/16 v2, 0x11

    .line 38
    .line 39
    invoke-direct {v0, v2, p0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lz4/e;
    .locals 4

    .line 1
    sget-object v0, Lz4/e;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lz4/e;->r:Lz4/e;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lb5/v;->a()Landroid/os/HandlerThread;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lz4/e;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object v3, Lx4/b;->c:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v2, p0, v1}, Lz4/e;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lz4/e;->r:Lz4/e;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    sget-object p0, Lz4/e;->r:Lz4/e;

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-object p0

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lz4/e;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lb5/d;->b()Lb5/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lb5/d;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->b:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v1

    .line 23
    :cond_2
    :goto_0
    iget-object v0, p0, Lz4/e;->g:La7/f;

    .line 24
    .line 25
    iget-object v0, v0, La7/f;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Landroid/util/SparseIntArray;

    .line 28
    .line 29
    const v2, 0xc1fa340

    .line 30
    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eq v0, v3, :cond_4

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    return v1

    .line 43
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 44
    return v0
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lz4/e;->f:Lx4/b;

    .line 2
    .line 3
    iget-object v1, p0, Lz4/e;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v2, Ll5/a;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sget-object v4, Ll5/a;->a:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    sget-object v6, Ll5/a;->b:Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v6, :cond_1

    .line 23
    .line 24
    if-eq v4, v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v2

    .line 32
    goto :goto_2

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto/16 :goto_7

    .line 35
    .line 36
    :cond_1
    :goto_0
    :try_start_1
    sput-object v5, Ll5/a;->b:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-static {}, Lu7/d;->t()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/deserializer/c;->v(Landroid/content/pm/PackageManager;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    sput-object v4, Ll5/a;->b:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string v6, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    .line 64
    .line 65
    invoke-virtual {v4, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    sput-object v4, Ll5/a;->b:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    :try_start_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    sput-object v4, Ll5/a;->b:Ljava/lang/Boolean;

    .line 76
    .line 77
    :goto_1
    sput-object v3, Ll5/a;->a:Landroid/content/Context;

    .line 78
    .line 79
    sget-object v3, Ll5/a;->b:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    monitor-exit v2

    .line 86
    :goto_2
    const/4 v2, 0x0

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    goto :goto_6

    .line 90
    :cond_3
    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 91
    .line 92
    const/high16 v4, 0x8000000

    .line 93
    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    iget-object v6, p1, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    .line 97
    .line 98
    if-eqz v6, :cond_4

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_4
    invoke-virtual {v0, v1, v3, v5}, Lx4/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-nez v3, :cond_5

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .line 110
    const/16 v6, 0x17

    .line 111
    .line 112
    if-lt v5, v6, :cond_6

    .line 113
    .line 114
    const/high16 v5, 0xc000000

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    const/high16 v5, 0x8000000

    .line 118
    .line 119
    :goto_3
    invoke-static {v1, v2, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    :goto_4
    move-object v6, v5

    .line 124
    :goto_5
    if-eqz v6, :cond_7

    .line 125
    .line 126
    iget p1, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 127
    .line 128
    sget v3, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    .line 129
    .line 130
    new-instance v3, Landroid/content/Intent;

    .line 131
    .line 132
    const-class v5, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 133
    .line 134
    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .line 136
    .line 137
    const-string v5, "pending_intent"

    .line 138
    .line 139
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    const-string v5, "failing_client_id"

    .line 143
    .line 144
    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    const-string p2, "notify_manager"

    .line 148
    .line 149
    const/4 v5, 0x1

    .line 150
    invoke-virtual {v3, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    sget p2, Lq5/c;->a:I

    .line 154
    .line 155
    or-int/2addr p2, v4

    .line 156
    invoke-static {v1, v2, v3, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {v0, v1, p1, p2}, Lx4/b;->f(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 161
    .line 162
    .line 163
    const/4 v2, 0x1

    .line 164
    :cond_7
    :goto_6
    return v2

    .line 165
    :goto_7
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    throw p1
.end method

.method public final d(Ly4/g;)Lz4/n;
    .locals 3

    .line 1
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    iget-object v1, p1, Ly4/g;->e:Lz4/b;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lz4/n;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lz4/n;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1}, Lz4/n;-><init>(Lz4/e;Ly4/g;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, v2, Lz4/n;->d:Ly4/c;

    .line 22
    .line 23
    invoke-interface {p1}, Ly4/c;->k()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lz4/e;->l:Lp/f;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lp/f;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v2}, Lz4/n;->m()V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method public final e(Lw5/d;ILy4/g;)V
    .locals 8

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    iget-object v3, p3, Ly4/g;->e:Lz4/b;

    .line 4
    .line 5
    invoke-virtual {p0}, Lz4/e;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lb5/d;->b()Lb5/d;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget-object p3, p3, Lb5/d;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p3, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-eqz p3, :cond_3

    .line 22
    .line 23
    iget-boolean v1, p3, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->b:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lz4/n;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v2, v1, Lz4/n;->d:Ly4/c;

    .line 38
    .line 39
    instance-of v4, v2, Lcom/google/android/gms/common/internal/a;

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    check-cast v2, Lcom/google/android/gms/common/internal/a;

    .line 44
    .line 45
    iget-object v4, v2, Lcom/google/android/gms/common/internal/a;->v:Lcom/google/android/gms/common/internal/zzk;

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/a;->e()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    invoke-static {v1, v2, p2}, Lz4/r;->a(Lz4/n;Lcom/google/android/gms/common/internal/a;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    iget v2, v1, Lz4/n;->n:I

    .line 62
    .line 63
    add-int/2addr v2, v0

    .line 64
    iput v2, v1, Lz4/n;->n:I

    .line 65
    .line 66
    iget-boolean v0, p3, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->c:Z

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-boolean v0, p3, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->c:Z

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 73
    goto :goto_4

    .line 74
    :cond_3
    :goto_1
    new-instance p3, Lz4/r;

    .line 75
    .line 76
    const-wide/16 v1, 0x0

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move-wide v4, v1

    .line 86
    :goto_2
    if-eqz v0, :cond_5

    .line 87
    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    move-wide v6, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    move-wide v6, v1

    .line 95
    :goto_3
    move-object v0, p3

    .line 96
    move-object v1, p0

    .line 97
    move v2, p2

    .line 98
    invoke-direct/range {v0 .. v7}, Lz4/r;-><init>(Lz4/e;ILz4/b;JJ)V

    .line 99
    .line 100
    .line 101
    move-object p2, p3

    .line 102
    :goto_4
    if-eqz p2, :cond_6

    .line 103
    .line 104
    iget-object p1, p1, Lw5/d;->a:Lw5/g;

    .line 105
    .line 106
    iget-object p3, p0, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    new-instance v0, La4/r;

    .line 112
    .line 113
    const/4 v1, 0x3

    .line 114
    invoke-direct {v0, v1, p3}, La4/r;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    new-instance p3, Lw5/f;

    .line 121
    .line 122
    invoke-direct {p3, v0, p2}, Lw5/f;-><init>(Ljava/util/concurrent/Executor;Lw5/a;)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p1, Lw5/g;->b:Lk3/t;

    .line 126
    .line 127
    invoke-virtual {p2, p3}, Lk3/t;->h(Lw5/f;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lw5/g;->g()V

    .line 131
    .line 132
    .line 133
    :cond_6
    return-void
.end method

.method public final g(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lz4/e;->b(Lcom/google/android/gms/common/ConnectionResult;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 12

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const-wide/32 v3, 0x493e0

    .line 7
    .line 8
    .line 9
    const/16 v5, 0x11

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x1

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Unknown message id: "

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "GoogleApiManager"

    .line 32
    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return v6

    .line 37
    :pswitch_0
    iput-boolean v6, p0, Lz4/e;->b:Z

    .line 38
    .line 39
    goto/16 :goto_11

    .line 40
    .line 41
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lz4/s;

    .line 44
    .line 45
    iget-wide v3, p1, Lz4/s;->c:J

    .line 46
    .line 47
    const-wide/16 v9, 0x0

    .line 48
    .line 49
    cmp-long v1, v3, v9

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    new-instance v1, Lcom/google/android/gms/common/internal/TelemetryData;

    .line 54
    .line 55
    iget v3, p1, Lz4/s;->b:I

    .line 56
    .line 57
    iget-object p1, p1, Lz4/s;->a:Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 58
    .line 59
    new-array v4, v8, [Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 60
    .line 61
    aput-object p1, v4, v6

    .line 62
    .line 63
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v1, v3, p1}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lz4/e;->d:Ld5/b;

    .line 71
    .line 72
    if-nez p1, :cond_0

    .line 73
    .line 74
    sget-object p1, Lb5/e;->a:Lb5/e;

    .line 75
    .line 76
    new-instance v3, Ld5/b;

    .line 77
    .line 78
    sget-object v4, Ly4/f;->c:Ly4/f;

    .line 79
    .line 80
    iget-object v5, p0, Lz4/e;->e:Landroid/content/Context;

    .line 81
    .line 82
    sget-object v7, Ld5/b;->j:Ll6/h;

    .line 83
    .line 84
    invoke-direct {v3, v5, v7, p1, v4}, Ly4/g;-><init>(Landroid/content/Context;Ll6/h;Ly4/b;Ly4/f;)V

    .line 85
    .line 86
    .line 87
    iput-object v3, p0, Lz4/e;->d:Ld5/b;

    .line 88
    .line 89
    :cond_0
    iget-object p1, p0, Lz4/e;->d:Ld5/b;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    new-array v4, v8, [Lcom/google/android/gms/common/Feature;

    .line 99
    .line 100
    sget-object v5, Lq5/b;->a:Lcom/google/android/gms/common/Feature;

    .line 101
    .line 102
    aput-object v5, v4, v6

    .line 103
    .line 104
    iput-object v4, v3, Lc6/c;->d:Ljava/lang/Object;

    .line 105
    .line 106
    iput-boolean v6, v3, Lc6/c;->b:Z

    .line 107
    .line 108
    new-instance v4, La0/b;

    .line 109
    .line 110
    invoke-direct {v4, v0, v1}, La0/b;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iput-object v4, v3, Lc6/c;->c:Ljava/lang/Object;

    .line 114
    .line 115
    invoke-virtual {v3}, Lc6/c;->b()Lc6/c;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v2, v0}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 120
    .line 121
    .line 122
    goto/16 :goto_11

    .line 123
    .line 124
    :cond_1
    iget-object v1, p0, Lz4/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 125
    .line 126
    if-eqz v1, :cond_8

    .line 127
    .line 128
    iget-object v3, v1, Lcom/google/android/gms/common/internal/TelemetryData;->b:Ljava/util/List;

    .line 129
    .line 130
    iget v1, v1, Lcom/google/android/gms/common/internal/TelemetryData;->a:I

    .line 131
    .line 132
    iget v4, p1, Lz4/s;->b:I

    .line 133
    .line 134
    if-ne v1, v4, :cond_4

    .line 135
    .line 136
    if-eqz v3, :cond_2

    .line 137
    .line 138
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    iget v3, p1, Lz4/s;->d:I

    .line 143
    .line 144
    if-lt v1, v3, :cond_2

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lz4/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 148
    .line 149
    iget-object v1, p1, Lz4/s;->a:Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 150
    .line 151
    iget-object v2, v0, Lcom/google/android/gms/common/internal/TelemetryData;->b:Ljava/util/List;

    .line 152
    .line 153
    if-nez v2, :cond_3

    .line 154
    .line 155
    new-instance v2, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v2, v0, Lcom/google/android/gms/common/internal/TelemetryData;->b:Ljava/util/List;

    .line 161
    .line 162
    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/common/internal/TelemetryData;->b:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    :goto_0
    iget-object v1, p0, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 169
    .line 170
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    .line 172
    .line 173
    iget-object v1, p0, Lz4/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 174
    .line 175
    if-eqz v1, :cond_8

    .line 176
    .line 177
    iget v3, v1, Lcom/google/android/gms/common/internal/TelemetryData;->a:I

    .line 178
    .line 179
    if-gtz v3, :cond_5

    .line 180
    .line 181
    invoke-virtual {p0}, Lz4/e;->a()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_7

    .line 186
    .line 187
    :cond_5
    iget-object v3, p0, Lz4/e;->d:Ld5/b;

    .line 188
    .line 189
    if-nez v3, :cond_6

    .line 190
    .line 191
    sget-object v3, Lb5/e;->a:Lb5/e;

    .line 192
    .line 193
    new-instance v4, Ld5/b;

    .line 194
    .line 195
    sget-object v9, Ly4/f;->c:Ly4/f;

    .line 196
    .line 197
    iget-object v10, p0, Lz4/e;->e:Landroid/content/Context;

    .line 198
    .line 199
    sget-object v11, Ld5/b;->j:Ll6/h;

    .line 200
    .line 201
    invoke-direct {v4, v10, v11, v3, v9}, Ly4/g;-><init>(Landroid/content/Context;Ll6/h;Ly4/b;Ly4/f;)V

    .line 202
    .line 203
    .line 204
    iput-object v4, p0, Lz4/e;->d:Ld5/b;

    .line 205
    .line 206
    :cond_6
    iget-object v3, p0, Lz4/e;->d:Ld5/b;

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    new-array v9, v8, [Lcom/google/android/gms/common/Feature;

    .line 216
    .line 217
    sget-object v10, Lq5/b;->a:Lcom/google/android/gms/common/Feature;

    .line 218
    .line 219
    aput-object v10, v9, v6

    .line 220
    .line 221
    iput-object v9, v4, Lc6/c;->d:Ljava/lang/Object;

    .line 222
    .line 223
    iput-boolean v6, v4, Lc6/c;->b:Z

    .line 224
    .line 225
    new-instance v6, La0/b;

    .line 226
    .line 227
    invoke-direct {v6, v0, v1}, La0/b;-><init>(ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    iput-object v6, v4, Lc6/c;->c:Ljava/lang/Object;

    .line 231
    .line 232
    invoke-virtual {v4}, Lc6/c;->b()Lc6/c;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v3, v2, v0}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 237
    .line 238
    .line 239
    :cond_7
    iput-object v7, p0, Lz4/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 240
    .line 241
    :cond_8
    :goto_1
    iget-object v0, p0, Lz4/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 242
    .line 243
    if-nez v0, :cond_24

    .line 244
    .line 245
    new-instance v0, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    iget-object v1, p1, Lz4/s;->a:Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    new-instance v1, Lcom/google/android/gms/common/internal/TelemetryData;

    .line 256
    .line 257
    iget v2, p1, Lz4/s;->b:I

    .line 258
    .line 259
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 260
    .line 261
    .line 262
    iput-object v1, p0, Lz4/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 263
    .line 264
    iget-object v0, p0, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 265
    .line 266
    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    iget-wide v2, p1, Lz4/s;->c:J

    .line 271
    .line 272
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 273
    .line 274
    .line 275
    goto/16 :goto_11

    .line 276
    .line 277
    :pswitch_2
    iget-object p1, p0, Lz4/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 278
    .line 279
    if-eqz p1, :cond_24

    .line 280
    .line 281
    iget v1, p1, Lcom/google/android/gms/common/internal/TelemetryData;->a:I

    .line 282
    .line 283
    if-gtz v1, :cond_9

    .line 284
    .line 285
    invoke-virtual {p0}, Lz4/e;->a()Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_b

    .line 290
    .line 291
    :cond_9
    iget-object v1, p0, Lz4/e;->d:Ld5/b;

    .line 292
    .line 293
    if-nez v1, :cond_a

    .line 294
    .line 295
    sget-object v1, Lb5/e;->a:Lb5/e;

    .line 296
    .line 297
    new-instance v3, Ld5/b;

    .line 298
    .line 299
    sget-object v4, Ly4/f;->c:Ly4/f;

    .line 300
    .line 301
    iget-object v5, p0, Lz4/e;->e:Landroid/content/Context;

    .line 302
    .line 303
    sget-object v9, Ld5/b;->j:Ll6/h;

    .line 304
    .line 305
    invoke-direct {v3, v5, v9, v1, v4}, Ly4/g;-><init>(Landroid/content/Context;Ll6/h;Ly4/b;Ly4/f;)V

    .line 306
    .line 307
    .line 308
    iput-object v3, p0, Lz4/e;->d:Ld5/b;

    .line 309
    .line 310
    :cond_a
    iget-object v1, p0, Lz4/e;->d:Ld5/b;

    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    new-array v4, v8, [Lcom/google/android/gms/common/Feature;

    .line 320
    .line 321
    sget-object v5, Lq5/b;->a:Lcom/google/android/gms/common/Feature;

    .line 322
    .line 323
    aput-object v5, v4, v6

    .line 324
    .line 325
    iput-object v4, v3, Lc6/c;->d:Ljava/lang/Object;

    .line 326
    .line 327
    iput-boolean v6, v3, Lc6/c;->b:Z

    .line 328
    .line 329
    new-instance v4, La0/b;

    .line 330
    .line 331
    invoke-direct {v4, v0, p1}, La0/b;-><init>(ILjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    iput-object v4, v3, Lc6/c;->c:Ljava/lang/Object;

    .line 335
    .line 336
    invoke-virtual {v3}, Lc6/c;->b()Lc6/c;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-virtual {v1, v2, p1}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 341
    .line 342
    .line 343
    :cond_b
    iput-object v7, p0, Lz4/e;->c:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 344
    .line 345
    goto/16 :goto_11

    .line 346
    .line 347
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast p1, Lz4/o;

    .line 350
    .line 351
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 352
    .line 353
    iget-object v1, p1, Lz4/o;->a:Lz4/b;

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-eqz v0, :cond_24

    .line 360
    .line 361
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 362
    .line 363
    iget-object v1, p1, Lz4/o;->a:Lz4/b;

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Lz4/n;

    .line 370
    .line 371
    iget-object v1, v0, Lz4/n;->l:Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_24

    .line 378
    .line 379
    iget-object v1, v0, Lz4/n;->o:Lz4/e;

    .line 380
    .line 381
    iget-object v2, v1, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 382
    .line 383
    const/16 v3, 0xf

    .line 384
    .line 385
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    iget-object v1, v1, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 389
    .line 390
    const/16 v2, 0x10

    .line 391
    .line 392
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    iget-object p1, p1, Lz4/o;->b:Lcom/google/android/gms/common/Feature;

    .line 396
    .line 397
    iget-object v1, v0, Lz4/n;->c:Ljava/util/LinkedList;

    .line 398
    .line 399
    new-instance v2, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .line 407
    .line 408
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    if-eqz v4, :cond_e

    .line 417
    .line 418
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    check-cast v4, Lz4/q;

    .line 423
    .line 424
    instance-of v5, v4, Lz4/q;

    .line 425
    .line 426
    if-eqz v5, :cond_c

    .line 427
    .line 428
    invoke-virtual {v4, v0}, Lz4/q;->b(Lz4/n;)[Lcom/google/android/gms/common/Feature;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    if-eqz v5, :cond_c

    .line 433
    .line 434
    array-length v7, v5

    .line 435
    const/4 v9, 0x0

    .line 436
    :goto_3
    if-ge v9, v7, :cond_c

    .line 437
    .line 438
    aget-object v10, v5, v9

    .line 439
    .line 440
    invoke-static {v10, p1}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v10

    .line 444
    if-eqz v10, :cond_d

    .line 445
    .line 446
    if-ltz v9, :cond_c

    .line 447
    .line 448
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    goto :goto_2

    .line 452
    :cond_d
    add-int/2addr v9, v8

    .line 453
    goto :goto_3

    .line 454
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    :goto_4
    if-ge v6, v0, :cond_24

    .line 459
    .line 460
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    check-cast v3, Lz4/q;

    .line 465
    .line 466
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    new-instance v4, Ly4/m;

    .line 470
    .line 471
    invoke-direct {v4, p1}, Ly4/m;-><init>(Lcom/google/android/gms/common/Feature;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3, v4}, Lz4/q;->d(Ljava/lang/RuntimeException;)V

    .line 475
    .line 476
    .line 477
    add-int/2addr v6, v8

    .line 478
    goto :goto_4

    .line 479
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast p1, Lz4/o;

    .line 482
    .line 483
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 484
    .line 485
    iget-object v1, p1, Lz4/o;->a:Lz4/b;

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_24

    .line 492
    .line 493
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 494
    .line 495
    iget-object v1, p1, Lz4/o;->a:Lz4/b;

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    check-cast v0, Lz4/n;

    .line 502
    .line 503
    iget-object v1, v0, Lz4/n;->l:Ljava/util/ArrayList;

    .line 504
    .line 505
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result p1

    .line 509
    if-nez p1, :cond_f

    .line 510
    .line 511
    goto/16 :goto_11

    .line 512
    .line 513
    :cond_f
    iget-boolean p1, v0, Lz4/n;->k:Z

    .line 514
    .line 515
    if-nez p1, :cond_24

    .line 516
    .line 517
    iget-object p1, v0, Lz4/n;->d:Ly4/c;

    .line 518
    .line 519
    invoke-interface {p1}, Ly4/c;->isConnected()Z

    .line 520
    .line 521
    .line 522
    move-result p1

    .line 523
    if-nez p1, :cond_10

    .line 524
    .line 525
    invoke-virtual {v0}, Lz4/n;->m()V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_11

    .line 529
    .line 530
    :cond_10
    invoke-virtual {v0}, Lz4/n;->e()V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_11

    .line 534
    .line 535
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 536
    .line 537
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    new-instance p1, Ljava/lang/ClassCastException;

    .line 541
    .line 542
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 543
    .line 544
    .line 545
    throw p1

    .line 546
    :pswitch_6
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 547
    .line 548
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 549
    .line 550
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_24

    .line 555
    .line 556
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 557
    .line 558
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 559
    .line 560
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    check-cast p1, Lz4/n;

    .line 565
    .line 566
    iget-object v0, p1, Lz4/n;->o:Lz4/e;

    .line 567
    .line 568
    iget-object v0, v0, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 569
    .line 570
    invoke-static {v0}, Lb5/l;->a(Landroid/os/Handler;)V

    .line 571
    .line 572
    .line 573
    iget-object v0, p1, Lz4/n;->d:Ly4/c;

    .line 574
    .line 575
    invoke-interface {v0}, Ly4/c;->isConnected()Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    if-eqz v1, :cond_24

    .line 580
    .line 581
    iget-object v1, p1, Lz4/n;->h:Ljava/util/HashMap;

    .line 582
    .line 583
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    if-eqz v1, :cond_24

    .line 588
    .line 589
    iget-object v1, p1, Lz4/n;->f:Ll6/h;

    .line 590
    .line 591
    iget-object v2, v1, Ll6/h;->b:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast v2, Ljava/util/Map;

    .line 594
    .line 595
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-eqz v2, :cond_12

    .line 600
    .line 601
    iget-object v1, v1, Ll6/h;->c:Ljava/lang/Object;

    .line 602
    .line 603
    check-cast v1, Ljava/util/Map;

    .line 604
    .line 605
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    if-nez v1, :cond_11

    .line 610
    .line 611
    goto :goto_5

    .line 612
    :cond_11
    const-string p1, "Timing out service connection."

    .line 613
    .line 614
    invoke-interface {v0, p1}, Ly4/c;->c(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_11

    .line 618
    .line 619
    :cond_12
    :goto_5
    invoke-virtual {p1}, Lz4/n;->i()V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_11

    .line 623
    .line 624
    :pswitch_7
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 625
    .line 626
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 627
    .line 628
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    move-result v0

    .line 632
    if-eqz v0, :cond_24

    .line 633
    .line 634
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 635
    .line 636
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 637
    .line 638
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object p1

    .line 642
    check-cast p1, Lz4/n;

    .line 643
    .line 644
    iget-object v0, p1, Lz4/n;->o:Lz4/e;

    .line 645
    .line 646
    iget-object v1, v0, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 647
    .line 648
    invoke-static {v1}, Lb5/l;->a(Landroid/os/Handler;)V

    .line 649
    .line 650
    .line 651
    iget-boolean v1, p1, Lz4/n;->k:Z

    .line 652
    .line 653
    if-eqz v1, :cond_24

    .line 654
    .line 655
    if-eqz v1, :cond_13

    .line 656
    .line 657
    iget-object v1, p1, Lz4/n;->o:Lz4/e;

    .line 658
    .line 659
    iget-object v2, v1, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 660
    .line 661
    iget-object v3, p1, Lz4/n;->e:Lz4/b;

    .line 662
    .line 663
    const/16 v4, 0xb

    .line 664
    .line 665
    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 666
    .line 667
    .line 668
    iget-object v1, v1, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 669
    .line 670
    const/16 v2, 0x9

    .line 671
    .line 672
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 673
    .line 674
    .line 675
    iput-boolean v6, p1, Lz4/n;->k:Z

    .line 676
    .line 677
    :cond_13
    iget-object v1, v0, Lz4/e;->f:Lx4/b;

    .line 678
    .line 679
    sget v2, Lx4/c;->a:I

    .line 680
    .line 681
    iget-object v0, v0, Lz4/e;->e:Landroid/content/Context;

    .line 682
    .line 683
    invoke-virtual {v1, v0, v2}, Lx4/c;->b(Landroid/content/Context;I)I

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    const/16 v1, 0x12

    .line 688
    .line 689
    if-ne v0, v1, :cond_14

    .line 690
    .line 691
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 692
    .line 693
    const/16 v1, 0x15

    .line 694
    .line 695
    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    .line 696
    .line 697
    invoke-direct {v0, v1, v2, v7, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 698
    .line 699
    .line 700
    goto :goto_6

    .line 701
    :cond_14
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 702
    .line 703
    const/16 v1, 0x16

    .line 704
    .line 705
    const-string v2, "API failed to connect while resuming due to an unknown error."

    .line 706
    .line 707
    invoke-direct {v0, v1, v2, v7, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 708
    .line 709
    .line 710
    :goto_6
    invoke-virtual {p1, v0}, Lz4/n;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 711
    .line 712
    .line 713
    iget-object p1, p1, Lz4/n;->d:Ly4/c;

    .line 714
    .line 715
    const-string v0, "Timing out connection while resuming."

    .line 716
    .line 717
    invoke-interface {p1, v0}, Ly4/c;->c(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_11

    .line 721
    .line 722
    :pswitch_8
    iget-object p1, p0, Lz4/e;->l:Lp/f;

    .line 723
    .line 724
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    new-instance v0, Lp/a;

    .line 728
    .line 729
    invoke-direct {v0, p1}, Lp/a;-><init>(Lp/f;)V

    .line 730
    .line 731
    .line 732
    :cond_15
    :goto_7
    invoke-virtual {v0}, Lp/a;->hasNext()Z

    .line 733
    .line 734
    .line 735
    move-result p1

    .line 736
    if-eqz p1, :cond_16

    .line 737
    .line 738
    invoke-virtual {v0}, Lp/a;->next()Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    check-cast p1, Lz4/b;

    .line 743
    .line 744
    iget-object v1, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 745
    .line 746
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object p1

    .line 750
    check-cast p1, Lz4/n;

    .line 751
    .line 752
    if-eqz p1, :cond_15

    .line 753
    .line 754
    invoke-virtual {p1}, Lz4/n;->q()V

    .line 755
    .line 756
    .line 757
    goto :goto_7

    .line 758
    :cond_16
    iget-object p1, p0, Lz4/e;->l:Lp/f;

    .line 759
    .line 760
    invoke-virtual {p1}, Lp/f;->clear()V

    .line 761
    .line 762
    .line 763
    goto/16 :goto_11

    .line 764
    .line 765
    :pswitch_9
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 766
    .line 767
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 768
    .line 769
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    if-eqz v0, :cond_24

    .line 774
    .line 775
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 776
    .line 777
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 778
    .line 779
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object p1

    .line 783
    check-cast p1, Lz4/n;

    .line 784
    .line 785
    iget-object v0, p1, Lz4/n;->o:Lz4/e;

    .line 786
    .line 787
    iget-object v0, v0, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 788
    .line 789
    invoke-static {v0}, Lb5/l;->a(Landroid/os/Handler;)V

    .line 790
    .line 791
    .line 792
    iget-boolean v0, p1, Lz4/n;->k:Z

    .line 793
    .line 794
    if-eqz v0, :cond_24

    .line 795
    .line 796
    invoke-virtual {p1}, Lz4/n;->m()V

    .line 797
    .line 798
    .line 799
    goto/16 :goto_11

    .line 800
    .line 801
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 802
    .line 803
    check-cast p1, Ly4/g;

    .line 804
    .line 805
    invoke-virtual {p0, p1}, Lz4/e;->d(Ly4/g;)Lz4/n;

    .line 806
    .line 807
    .line 808
    goto/16 :goto_11

    .line 809
    .line 810
    :pswitch_b
    iget-object p1, p0, Lz4/e;->e:Landroid/content/Context;

    .line 811
    .line 812
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 813
    .line 814
    .line 815
    move-result-object p1

    .line 816
    instance-of p1, p1, Landroid/app/Application;

    .line 817
    .line 818
    if-eqz p1, :cond_24

    .line 819
    .line 820
    iget-object p1, p0, Lz4/e;->e:Landroid/content/Context;

    .line 821
    .line 822
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 823
    .line 824
    .line 825
    move-result-object p1

    .line 826
    check-cast p1, Landroid/app/Application;

    .line 827
    .line 828
    sget-object v0, Lz4/c;->e:Lz4/c;

    .line 829
    .line 830
    monitor-enter v0

    .line 831
    :try_start_0
    iget-boolean v1, v0, Lz4/c;->d:Z

    .line 832
    .line 833
    if-nez v1, :cond_17

    .line 834
    .line 835
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 839
    .line 840
    .line 841
    iput-boolean v8, v0, Lz4/c;->d:Z

    .line 842
    .line 843
    goto :goto_8

    .line 844
    :catchall_0
    move-exception p1

    .line 845
    goto/16 :goto_c

    .line 846
    .line 847
    :cond_17
    :goto_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    new-instance p1, Lz4/m;

    .line 849
    .line 850
    invoke-direct {p1, p0}, Lz4/m;-><init>(Lz4/e;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v0, p1}, Lz4/c;->a(Lz4/m;)V

    .line 854
    .line 855
    .line 856
    iget-object p1, v0, Lz4/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 857
    .line 858
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 859
    .line 860
    .line 861
    move-result v1

    .line 862
    iget-object v0, v0, Lz4/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 863
    .line 864
    if-nez v1, :cond_1c

    .line 865
    .line 866
    sget-object v1, La2/a;->a:Ljava/lang/Boolean;

    .line 867
    .line 868
    if-nez v1, :cond_1a

    .line 869
    .line 870
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 871
    .line 872
    const/16 v2, 0x1c

    .line 873
    .line 874
    if-lt v1, v2, :cond_18

    .line 875
    .line 876
    invoke-static {}, Landroid/support/v4/media/session/b;->x()Z

    .line 877
    .line 878
    .line 879
    move-result v1

    .line 880
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    goto :goto_9

    .line 885
    :cond_18
    :try_start_1
    const-class v1, Landroid/os/Process;

    .line 886
    .line 887
    const-string v2, "isIsolated"

    .line 888
    .line 889
    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    invoke-virtual {v1, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    new-array v2, v6, [Ljava/lang/Object;

    .line 898
    .line 899
    if-eqz v1, :cond_19

    .line 900
    .line 901
    check-cast v1, Ljava/lang/Boolean;

    .line 902
    .line 903
    goto :goto_9

    .line 904
    :cond_19
    new-instance v1, Landroidx/fragment/app/q;

    .line 905
    .line 906
    invoke-static {v2}, La2/a;->N([Ljava/lang/Object;)Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v2

    .line 910
    const/4 v5, 0x7

    .line 911
    invoke-direct {v1, v2, v5}, Landroidx/fragment/app/q;-><init>(Ljava/lang/String;I)V

    .line 912
    .line 913
    .line 914
    throw v1
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 915
    :catch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 916
    .line 917
    :goto_9
    sput-object v1, La2/a;->a:Ljava/lang/Boolean;

    .line 918
    .line 919
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 920
    .line 921
    .line 922
    move-result v1

    .line 923
    if-nez v1, :cond_1b

    .line 924
    .line 925
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 926
    .line 927
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 928
    .line 929
    .line 930
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 931
    .line 932
    .line 933
    invoke-virtual {p1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 934
    .line 935
    .line 936
    move-result p1

    .line 937
    if-nez p1, :cond_1c

    .line 938
    .line 939
    iget p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 940
    .line 941
    const/16 v1, 0x64

    .line 942
    .line 943
    if-le p1, v1, :cond_1c

    .line 944
    .line 945
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 946
    .line 947
    .line 948
    goto :goto_a

    .line 949
    :cond_1b
    const/4 p1, 0x1

    .line 950
    goto :goto_b

    .line 951
    :cond_1c
    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 952
    .line 953
    .line 954
    move-result p1

    .line 955
    :goto_b
    if-nez p1, :cond_24

    .line 956
    .line 957
    iput-wide v3, p0, Lz4/e;->a:J

    .line 958
    .line 959
    goto/16 :goto_11

    .line 960
    .line 961
    :goto_c
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 962
    throw p1

    .line 963
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 964
    .line 965
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 966
    .line 967
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 968
    .line 969
    iget-object v1, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 970
    .line 971
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 980
    .line 981
    .line 982
    move-result v2

    .line 983
    if-eqz v2, :cond_1e

    .line 984
    .line 985
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v2

    .line 989
    check-cast v2, Lz4/n;

    .line 990
    .line 991
    iget v3, v2, Lz4/n;->i:I

    .line 992
    .line 993
    if-ne v3, v0, :cond_1d

    .line 994
    .line 995
    goto :goto_d

    .line 996
    :cond_1e
    move-object v2, v7

    .line 997
    :goto_d
    if-eqz v2, :cond_20

    .line 998
    .line 999
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 1000
    .line 1001
    const/16 v1, 0xd

    .line 1002
    .line 1003
    if-ne v0, v1, :cond_1f

    .line 1004
    .line 1005
    iget-object v1, p0, Lz4/e;->f:Lx4/b;

    .line 1006
    .line 1007
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    .line 1008
    .line 1009
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1010
    .line 1011
    .line 1012
    sget-object v1, Lx4/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1013
    .line 1014
    invoke-static {v0}, Lcom/google/android/gms/common/ConnectionResult;->j(I)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->d:Ljava/lang/String;

    .line 1019
    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    const-string v4, "Error resolution was canceled by the user, original error message: "

    .line 1023
    .line 1024
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    const-string v0, ": "

    .line 1031
    .line 1032
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object p1

    .line 1042
    invoke-direct {v3, v5, p1, v7, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v2, v3}, Lz4/n;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 1046
    .line 1047
    .line 1048
    goto/16 :goto_11

    .line 1049
    .line 1050
    :cond_1f
    iget-object v0, v2, Lz4/n;->e:Lz4/b;

    .line 1051
    .line 1052
    invoke-static {v0, p1}, Lz4/e;->c(Lz4/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    .line 1053
    .line 1054
    .line 1055
    move-result-object p1

    .line 1056
    invoke-virtual {v2, p1}, Lz4/n;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 1057
    .line 1058
    .line 1059
    goto/16 :goto_11

    .line 1060
    .line 1061
    :cond_20
    const-string p1, "Could not find API instance "

    .line 1062
    .line 1063
    const-string v1, " while trying to fail enqueued calls."

    .line 1064
    .line 1065
    invoke-static {v0, p1, v1}, Lea/q;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object p1

    .line 1069
    new-instance v0, Ljava/lang/Exception;

    .line 1070
    .line 1071
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1072
    .line 1073
    .line 1074
    const-string v1, "GoogleApiManager"

    .line 1075
    .line 1076
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1077
    .line 1078
    .line 1079
    goto/16 :goto_11

    .line 1080
    .line 1081
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1082
    .line 1083
    check-cast p1, Lz4/t;

    .line 1084
    .line 1085
    iget-object v0, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1086
    .line 1087
    iget-object v1, p1, Lz4/t;->c:Ly4/g;

    .line 1088
    .line 1089
    iget-object v1, v1, Ly4/g;->e:Lz4/b;

    .line 1090
    .line 1091
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    check-cast v0, Lz4/n;

    .line 1096
    .line 1097
    if-nez v0, :cond_21

    .line 1098
    .line 1099
    iget-object v0, p1, Lz4/t;->c:Ly4/g;

    .line 1100
    .line 1101
    invoke-virtual {p0, v0}, Lz4/e;->d(Ly4/g;)Lz4/n;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    :cond_21
    iget-object v1, v0, Lz4/n;->d:Ly4/c;

    .line 1106
    .line 1107
    invoke-interface {v1}, Ly4/c;->k()Z

    .line 1108
    .line 1109
    .line 1110
    move-result v1

    .line 1111
    if-eqz v1, :cond_22

    .line 1112
    .line 1113
    iget-object v1, p0, Lz4/e;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1114
    .line 1115
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1116
    .line 1117
    .line 1118
    move-result v1

    .line 1119
    iget v2, p1, Lz4/t;->b:I

    .line 1120
    .line 1121
    if-eq v1, v2, :cond_22

    .line 1122
    .line 1123
    iget-object p1, p1, Lz4/t;->a:Lz4/q;

    .line 1124
    .line 1125
    sget-object v1, Lz4/e;->o:Lcom/google/android/gms/common/api/Status;

    .line 1126
    .line 1127
    invoke-virtual {p1, v1}, Lz4/q;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v0}, Lz4/n;->q()V

    .line 1131
    .line 1132
    .line 1133
    goto :goto_11

    .line 1134
    :cond_22
    iget-object p1, p1, Lz4/t;->a:Lz4/q;

    .line 1135
    .line 1136
    invoke-virtual {v0, p1}, Lz4/n;->n(Lz4/q;)V

    .line 1137
    .line 1138
    .line 1139
    goto :goto_11

    .line 1140
    :pswitch_e
    iget-object p1, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1141
    .line 1142
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 1143
    .line 1144
    .line 1145
    move-result-object p1

    .line 1146
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1147
    .line 1148
    .line 1149
    move-result-object p1

    .line 1150
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v0

    .line 1154
    if-eqz v0, :cond_24

    .line 1155
    .line 1156
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v0

    .line 1160
    check-cast v0, Lz4/n;

    .line 1161
    .line 1162
    iget-object v1, v0, Lz4/n;->o:Lz4/e;

    .line 1163
    .line 1164
    iget-object v1, v1, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 1165
    .line 1166
    invoke-static {v1}, Lb5/l;->a(Landroid/os/Handler;)V

    .line 1167
    .line 1168
    .line 1169
    iput-object v7, v0, Lz4/n;->m:Lcom/google/android/gms/common/ConnectionResult;

    .line 1170
    .line 1171
    invoke-virtual {v0}, Lz4/n;->m()V

    .line 1172
    .line 1173
    .line 1174
    goto :goto_e

    .line 1175
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1176
    .line 1177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1178
    .line 1179
    .line 1180
    new-instance p1, Ljava/lang/ClassCastException;

    .line 1181
    .line 1182
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 1183
    .line 1184
    .line 1185
    throw p1

    .line 1186
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1187
    .line 1188
    check-cast p1, Ljava/lang/Boolean;

    .line 1189
    .line 1190
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1191
    .line 1192
    .line 1193
    move-result p1

    .line 1194
    if-eq v8, p1, :cond_23

    .line 1195
    .line 1196
    goto :goto_f

    .line 1197
    :cond_23
    const-wide/16 v3, 0x2710

    .line 1198
    .line 1199
    :goto_f
    iput-wide v3, p0, Lz4/e;->a:J

    .line 1200
    .line 1201
    iget-object p1, p0, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 1202
    .line 1203
    const/16 v0, 0xc

    .line 1204
    .line 1205
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1206
    .line 1207
    .line 1208
    iget-object p1, p0, Lz4/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1209
    .line 1210
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 1211
    .line 1212
    .line 1213
    move-result-object p1

    .line 1214
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1215
    .line 1216
    .line 1217
    move-result-object p1

    .line 1218
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1219
    .line 1220
    .line 1221
    move-result v1

    .line 1222
    if-eqz v1, :cond_24

    .line 1223
    .line 1224
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v1

    .line 1228
    check-cast v1, Lz4/b;

    .line 1229
    .line 1230
    iget-object v2, p0, Lz4/e;->m:Lcom/google/android/gms/internal/cast/x0;

    .line 1231
    .line 1232
    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v1

    .line 1236
    iget-wide v3, p0, Lz4/e;->a:J

    .line 1237
    .line 1238
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1239
    .line 1240
    .line 1241
    goto :goto_10

    .line 1242
    :cond_24
    :goto_11
    return v8

    .line 1243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
