.class public final Lr4/f;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lp4/b;


# static fields
.field public static final k:Lv4/b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/google/android/gms/internal/cast/x0;

.field public final c:Lv4/l;

.field public final d:La1/b;

.field public final e:Lr4/a;

.field public f:Lp4/o;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final h:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final i:Ljava/util/concurrent/ConcurrentHashMap;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "RemoteMediaClient"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lr4/f;->k:Lv4/b;

    .line 10
    .line 11
    sget-object v0, Lv4/l;->w:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lv4/l;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lr4/f;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lr4/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lr4/f;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lr4/f;->a:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v0, Lcom/google/android/gms/internal/cast/x0;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lr4/f;->b:Lcom/google/android/gms/internal/cast/x0;

    .line 50
    .line 51
    new-instance v0, La1/b;

    .line 52
    .line 53
    invoke-direct {v0, p0}, La1/b;-><init>(Lr4/f;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lr4/f;->d:La1/b;

    .line 57
    .line 58
    iput-object p1, p0, Lr4/f;->c:Lv4/l;

    .line 59
    .line 60
    new-instance v1, Lr4/n;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p0, v1, Lr4/n;->a:Lr4/f;

    .line 66
    .line 67
    iput-object v1, p1, Lv4/l;->h:Lr4/n;

    .line 68
    .line 69
    iput-object v0, p1, Lv4/o;->c:La1/b;

    .line 70
    .line 71
    new-instance p1, Lr4/a;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Lr4/a;-><init>(Lr4/f;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lr4/f;->e:Lr4/a;

    .line 77
    .line 78
    return-void
.end method

.method public static final G(Lr4/m;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lr4/m;->m0()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x834

    .line 9
    .line 10
    invoke-direct {v0, v2, v1, v1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lr4/k;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, v0, v2}, Lr4/k;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g0(Ly4/l;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    throw p0
.end method

.method public static x()Lr4/l;
    .locals 4

    .line 1
    new-instance v0, Lr4/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 7
    .line 8
    const/16 v2, 0x11

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v1, v2, v3, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lr4/k;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v1, v3}, Lr4/k;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g0(Ly4/l;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lr4/f;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->h:J

    .line 17
    .line 18
    const-wide/16 v4, 0x40

    .line 19
    .line 20
    and-long/2addr v2, v4

    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    cmp-long v7, v2, v4

    .line 25
    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-eqz v2, :cond_2

    .line 32
    .line 33
    return v6

    .line 34
    :cond_2
    iget v2, v0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 35
    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    iget v2, v0, Lcom/google/android/gms/cast/MediaStatus;->c:I

    .line 39
    .line 40
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->x:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/Integer;

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaStatus;->q:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/lit8 v0, v0, -0x1

    .line 61
    .line 62
    if-ge v2, v0, :cond_4

    .line 63
    .line 64
    :cond_3
    const/4 v1, 0x1

    .line 65
    :cond_4
    return v1
.end method

.method public final B()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lr4/f;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-wide v2, v0, Lcom/google/android/gms/cast/MediaStatus;->h:J

    .line 17
    .line 18
    const-wide/16 v4, 0x80

    .line 19
    .line 20
    and-long/2addr v2, v4

    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    cmp-long v7, v2, v4

    .line 25
    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-eqz v2, :cond_2

    .line 32
    .line 33
    return v6

    .line 34
    :cond_2
    iget v2, v0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 35
    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    iget v2, v0, Lcom/google/android/gms/cast/MediaStatus;->c:I

    .line 39
    .line 40
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaStatus;->x:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lez v0, :cond_4

    .line 55
    .line 56
    :cond_3
    const/4 v1, 0x1

    .line 57
    :cond_4
    return v1
.end method

.method public final C()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final D()Z
    .locals 8

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->k()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    iget-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->h:J

    .line 23
    .line 24
    const-wide/16 v5, 0x2

    .line 25
    .line 26
    and-long/2addr v3, v5

    .line 27
    const-wide/16 v5, 0x0

    .line 28
    .line 29
    cmp-long v7, v3, v5

    .line 30
    .line 31
    if-eqz v7, :cond_2

    .line 32
    .line 33
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaStatus;->u:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    return v2
.end method

.method public final E(Ljava/util/HashSet;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->n()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Lr4/f;->m()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lr4/f;->j()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lr4/f;->C()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    invoke-virtual {p0}, Lr4/f;->l()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lr4/f;->d()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-object p1, p1, Lcom/google/android/gms/cast/MediaQueueItem;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lr4/e;

    .line 62
    .line 63
    invoke-interface {v0}, Lr4/e;->a()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lr4/e;

    .line 82
    .line 83
    invoke-interface {v0}, Lr4/e;->a()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lr4/e;

    .line 102
    .line 103
    invoke-virtual {p0}, Lr4/f;->c()J

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lr4/f;->h()J

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Lr4/e;->a()V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_3
    return-void
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr4/f;->f:Lp4/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final a(Lr4/e;)V
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr4/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lr4/f;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lr4/p;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    new-instance v3, Lr4/p;

    .line 32
    .line 33
    invoke-direct {v3, p0}, Lr4/p;-><init>(Lr4/f;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v1, v3, Lr4/p;->a:Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lr4/f;->i()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, v3, Lr4/p;->e:Lr4/f;

    .line 54
    .line 55
    iget-object v0, p1, Lr4/f;->b:Lcom/google/android/gms/internal/cast/x0;

    .line 56
    .line 57
    iget-object v1, v3, Lr4/p;->c:Lr4/o;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, v3, Lr4/p;->d:Z

    .line 64
    .line 65
    iget-object p1, p1, Lr4/f;->b:Lcom/google/android/gms/internal/cast/x0;

    .line 66
    .line 67
    iget-wide v2, v3, Lr4/p;->b:J

    .line 68
    .line 69
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method public final b()J
    .locals 9

    .line 1
    iget-object v0, p0, Lr4/f;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lr4/f;->c:Lv4/l;

    .line 10
    .line 11
    iget-wide v3, v2, Lv4/l;->e:J

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    cmp-long v1, v3, v5

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    iget-object v1, v2, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->s:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 25
    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    iget-wide v4, v1, Lcom/google/android/gms/cast/MediaStatus;->d:D

    .line 29
    .line 30
    const-wide/16 v6, 0x0

    .line 31
    .line 32
    cmpl-double v8, v4, v6

    .line 33
    .line 34
    if-nez v8, :cond_1

    .line 35
    .line 36
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 37
    .line 38
    :cond_1
    iget v1, v1, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 39
    .line 40
    const/4 v8, 0x2

    .line 41
    if-eq v1, v8, :cond_2

    .line 42
    .line 43
    move-wide v5, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-wide v5, v4

    .line 46
    :goto_0
    iget-wide v3, v3, Lcom/google/android/gms/cast/AdBreakStatus;->b:J

    .line 47
    .line 48
    const-wide/16 v7, 0x0

    .line 49
    .line 50
    invoke-virtual/range {v2 .. v8}, Lv4/l;->e(JDJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    :cond_3
    :goto_1
    monitor-exit v0

    .line 55
    return-wide v5

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw v1
.end method

.method public final c()J
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/f;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lr4/f;->c:Lv4/l;

    .line 10
    .line 11
    invoke-virtual {v1}, Lv4/l;->o()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    monitor-exit v0

    .line 16
    return-wide v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public final d()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    iget v2, v0, Lcom/google/android/gms/cast/MediaStatus;->l:I

    .line 15
    .line 16
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->x:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaStatus;->q:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v1, v0

    .line 38
    check-cast v1, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 39
    .line 40
    :goto_0
    return-object v1
.end method

.method public final e()Lcom/google/android/gms/cast/MediaInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lr4/f;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lr4/f;->c:Lv4/l;

    .line 10
    .line 11
    iget-object v1, v1, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public final f()Lcom/google/android/gms/cast/MediaStatus;
    .locals 2

    .line 1
    iget-object v0, p0, Lr4/f;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lr4/f;->c:Lv4/l;

    .line 10
    .line 11
    iget-object v1, v1, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public final g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lr4/f;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget v1, v1, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public final h()J
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/f;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lr4/f;->c:Lv4/l;

    .line 10
    .line 11
    iget-object v1, v1, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 18
    .line 19
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-wide v1, v1, Lcom/google/android/gms/cast/MediaInfo;->e:J

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    return-wide v1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public final i()Z
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->j()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lr4/f;->C()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lr4/f;->n()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lr4/f;->m()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lr4/f;->l()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    return v0

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 40
    return v0
.end method

.method public final j()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final k()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->e()Lcom/google/android/gms/cast/MediaInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    iget v0, v0, Lcom/google/android/gms/cast/MediaInfo;->b:I

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->l:I

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final m()Z
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v0, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lr4/f;->k()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lr4/f;->a:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    const-string v2, "Must be called from the main thread."

    .line 29
    .line 30
    invoke-static {v2}, Lb5/l;->b(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget v2, v2, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    monitor-exit v0

    .line 44
    const/4 v0, 0x2

    .line 45
    if-eq v2, v0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    return v3

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw v1

    .line 52
    :cond_2
    const/4 v1, 0x1

    .line 53
    :cond_3
    :goto_1
    return v1
.end method

.method public final n()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/google/android/gms/cast/MediaStatus;->r:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 43

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x1

    .line 5
    const-string v6, "insertBefore"

    .line 6
    .line 7
    new-array v7, v5, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object v1, v7, v4

    .line 10
    .line 11
    move-object/from16 v8, p0

    .line 12
    .line 13
    iget-object v9, v8, Lr4/f;->c:Lv4/l;

    .line 14
    .line 15
    iget-object v10, v9, Lv4/o;->a:Lv4/b;

    .line 16
    .line 17
    const-string v11, "message received: %s"

    .line 18
    .line 19
    invoke-virtual {v10, v11, v7}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v7, v10, Lv4/b;->a:Ljava/lang/String;

    .line 23
    .line 24
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v11, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v12, "type"

    .line 30
    .line 31
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v12

    .line 35
    const-string v13, "requestId"

    .line 36
    .line 37
    const-wide/16 v14, -0x1

    .line 38
    .line 39
    invoke-virtual {v11, v13, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v13

    .line 43
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const-string v0, "QUEUE_ITEMS"

    .line 48
    .line 49
    const-string v2, "QUEUE_CHANGE"

    .line 50
    .line 51
    const-string v3, "QUEUE_ITEM_IDS"

    .line 52
    .line 53
    sparse-switch v15, :sswitch_data_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :sswitch_0
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    if-eqz v12, :cond_0

    .line 62
    .line 63
    const/4 v12, 0x6

    .line 64
    goto :goto_1

    .line 65
    :sswitch_1
    const-string v15, "MEDIA_STATUS"

    .line 66
    .line 67
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    if-eqz v12, :cond_0

    .line 72
    .line 73
    const/4 v12, 0x0

    .line 74
    goto :goto_1

    .line 75
    :sswitch_2
    const-string v15, "INVALID_PLAYER_STATE"

    .line 76
    .line 77
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    if-eqz v12, :cond_0

    .line 82
    .line 83
    const/4 v12, 0x1

    .line 84
    goto :goto_1

    .line 85
    :sswitch_3
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    const/4 v12, 0x7

    .line 92
    goto :goto_1

    .line 93
    :sswitch_4
    const-string v15, "ERROR"

    .line 94
    .line 95
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    if-eqz v12, :cond_0

    .line 100
    .line 101
    const/4 v12, 0x5

    .line 102
    goto :goto_1

    .line 103
    :sswitch_5
    const-string v15, "LOAD_FAILED"

    .line 104
    .line 105
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-eqz v12, :cond_0

    .line 110
    .line 111
    const/4 v12, 0x2

    .line 112
    goto :goto_1

    .line 113
    :sswitch_6
    const-string v15, "INVALID_REQUEST"

    .line 114
    .line 115
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-eqz v12, :cond_0

    .line 120
    .line 121
    const/4 v12, 0x4

    .line 122
    goto :goto_1

    .line 123
    :sswitch_7
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    if-eqz v12, :cond_0

    .line 128
    .line 129
    const/16 v12, 0x8

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :sswitch_8
    const-string v15, "LOAD_CANCELLED"

    .line 133
    .line 134
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    if-eqz v12, :cond_0

    .line 139
    .line 140
    const/4 v12, 0x3

    .line 141
    goto :goto_1

    .line 142
    :cond_0
    :goto_0
    const/4 v12, -0x1

    .line 143
    :goto_1
    iget-object v15, v9, Lv4/l;->j:Lv4/n;

    .line 144
    .line 145
    const-string v5, "itemIds"

    .line 146
    .line 147
    iget-object v4, v9, Lv4/o;->d:Ljava/util/List;

    .line 148
    .line 149
    const/4 v8, 0x0

    .line 150
    packed-switch v12, :pswitch_data_0

    .line 151
    .line 152
    .line 153
    goto/16 :goto_1e

    .line 154
    .line 155
    :pswitch_0
    :try_start_1
    iget-object v2, v9, Lv4/l;->t:Lv4/n;

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    invoke-virtual {v2, v13, v14, v3, v8}, Lv4/n;->b(JILv4/k;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v11, v0}, Lv4/l;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, v9, Lv4/l;->h:Lr4/n;

    .line 165
    .line 166
    if-nez v0, :cond_1

    .line 167
    .line 168
    goto/16 :goto_1e

    .line 169
    .line 170
    :cond_1
    const-string v0, "items"

    .line 171
    .line 172
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    new-array v2, v2, [Lcom/google/android/gms/cast/MediaQueueItem;

    .line 181
    .line 182
    const/4 v3, 0x0

    .line 183
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-ge v3, v4, :cond_2

    .line 188
    .line 189
    new-instance v4, Lj7/c;

    .line 190
    .line 191
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-direct {v4, v5}, Lj7/c;-><init>(Lorg/json/JSONObject;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Lj7/c;->t()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    aput-object v4, v2, v3

    .line 203
    .line 204
    const/4 v4, 0x1

    .line 205
    add-int/2addr v3, v4

    .line 206
    goto :goto_2

    .line 207
    :catch_0
    move-exception v0

    .line 208
    goto/16 :goto_1d

    .line 209
    .line 210
    :cond_2
    iget-object v0, v9, Lv4/l;->h:Lr4/n;

    .line 211
    .line 212
    iget-object v0, v0, Lr4/n;->a:Lr4/f;

    .line 213
    .line 214
    iget-object v0, v0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_1a

    .line 225
    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    check-cast v3, Lq4/z;

    .line 231
    .line 232
    invoke-virtual {v3, v2}, Lq4/z;->k([Lcom/google/android/gms/cast/MediaQueueItem;)V

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :pswitch_1
    iget-object v0, v9, Lv4/l;->u:Lv4/n;

    .line 237
    .line 238
    const/4 v3, 0x0

    .line 239
    invoke-virtual {v0, v13, v14, v3, v8}, Lv4/n;->b(JILv4/k;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9, v11, v2}, Lv4/l;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v9, Lv4/l;->h:Lr4/n;

    .line 246
    .line 247
    if-eqz v0, :cond_1a

    .line 248
    .line 249
    const-string v0, "changeType"

    .line 250
    .line 251
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-static {v2}, Lv4/l;->m(Lorg/json/JSONArray;)[I

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    const/4 v3, 0x0

    .line 264
    invoke-virtual {v11, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v2, :cond_1a

    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 271
    .line 272
    .line 273
    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    sparse-switch v3, :sswitch_data_1

    .line 275
    .line 276
    .line 277
    goto :goto_4

    .line 278
    :sswitch_9
    const-string v3, "ITEMS_CHANGE"

    .line 279
    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_3

    .line 285
    .line 286
    const/4 v0, 0x1

    .line 287
    goto :goto_5

    .line 288
    :sswitch_a
    const-string v3, "UPDATE"

    .line 289
    .line 290
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_3

    .line 295
    .line 296
    const/4 v0, 0x3

    .line 297
    goto :goto_5

    .line 298
    :sswitch_b
    const-string v3, "REMOVE"

    .line 299
    .line 300
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_3

    .line 305
    .line 306
    const/4 v0, 0x2

    .line 307
    goto :goto_5

    .line 308
    :sswitch_c
    const-string v3, "INSERT"

    .line 309
    .line 310
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_3

    .line 315
    .line 316
    const/4 v0, 0x0

    .line 317
    goto :goto_5

    .line 318
    :cond_3
    :goto_4
    const/4 v0, -0x1

    .line 319
    :goto_5
    if-eqz v0, :cond_8

    .line 320
    .line 321
    const/4 v3, 0x1

    .line 322
    if-eq v0, v3, :cond_7

    .line 323
    .line 324
    const/4 v3, 0x2

    .line 325
    if-eq v0, v3, :cond_6

    .line 326
    .line 327
    const/4 v3, 0x3

    .line 328
    if-eq v0, v3, :cond_4

    .line 329
    .line 330
    goto/16 :goto_1e

    .line 331
    .line 332
    :cond_4
    :try_start_2
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0}, Lv4/l;->m(Lorg/json/JSONArray;)[I

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    const-string v2, "A list of item IDs is expected in a QUEUE UPDATE message."

    .line 341
    .line 342
    invoke-static {v0, v2}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const-string v2, "reorderItemIds"

    .line 346
    .line 347
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    if-eqz v2, :cond_5

    .line 352
    .line 353
    invoke-static {v0}, Lv4/a;->d([I)Ljava/util/ArrayList;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    const/4 v3, 0x0

    .line 358
    invoke-virtual {v11, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    invoke-static {v2}, Lv4/l;->m(Lorg/json/JSONArray;)[I

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-static {v2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v2}, Lv4/a;->d([I)Ljava/util/ArrayList;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    iget-object v3, v9, Lv4/l;->h:Lr4/n;

    .line 374
    .line 375
    iget-object v3, v3, Lr4/n;->a:Lr4/f;

    .line 376
    .line 377
    iget-object v3, v3, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    if-eqz v5, :cond_1a

    .line 388
    .line 389
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    check-cast v5, Lq4/z;

    .line 394
    .line 395
    invoke-virtual {v5, v0, v2, v4}, Lq4/z;->o(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 396
    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_5
    iget-object v2, v9, Lv4/l;->h:Lr4/n;

    .line 400
    .line 401
    iget-object v2, v2, Lr4/n;->a:Lr4/f;

    .line 402
    .line 403
    iget-object v2, v2, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-eqz v3, :cond_1a

    .line 414
    .line 415
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    check-cast v3, Lq4/z;

    .line 420
    .line 421
    invoke-virtual {v3, v0}, Lq4/z;->g([I)V

    .line 422
    .line 423
    .line 424
    goto :goto_7

    .line 425
    :cond_6
    iget-object v0, v9, Lv4/l;->h:Lr4/n;

    .line 426
    .line 427
    iget-object v0, v0, Lr4/n;->a:Lr4/f;

    .line 428
    .line 429
    iget-object v0, v0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    if-eqz v3, :cond_1a

    .line 440
    .line 441
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    check-cast v3, Lq4/z;

    .line 446
    .line 447
    invoke-virtual {v3, v2}, Lq4/z;->m([I)V

    .line 448
    .line 449
    .line 450
    goto :goto_8

    .line 451
    :cond_7
    iget-object v0, v9, Lv4/l;->h:Lr4/n;

    .line 452
    .line 453
    iget-object v0, v0, Lr4/n;->a:Lr4/f;

    .line 454
    .line 455
    iget-object v0, v0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    if-eqz v3, :cond_1a

    .line 466
    .line 467
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    check-cast v3, Lq4/z;

    .line 472
    .line 473
    invoke-virtual {v3, v2}, Lq4/z;->q([I)V

    .line 474
    .line 475
    .line 476
    goto :goto_9

    .line 477
    :cond_8
    iget-object v0, v9, Lv4/l;->h:Lr4/n;

    .line 478
    .line 479
    iget-object v0, v0, Lr4/n;->a:Lr4/f;

    .line 480
    .line 481
    iget-object v0, v0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 482
    .line 483
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    if-eqz v3, :cond_1a

    .line 492
    .line 493
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    check-cast v3, Lq4/z;

    .line 498
    .line 499
    invoke-virtual {v3, v2, v4}, Lq4/z;->i([II)V

    .line 500
    .line 501
    .line 502
    goto :goto_a

    .line 503
    :pswitch_2
    iget-object v0, v9, Lv4/l;->s:Lv4/n;

    .line 504
    .line 505
    const/4 v2, 0x0

    .line 506
    invoke-virtual {v0, v13, v14, v2, v8}, Lv4/n;->b(JILv4/k;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v9, v11, v3}, Lv4/l;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iget-object v0, v9, Lv4/l;->h:Lr4/n;

    .line 513
    .line 514
    if-eqz v0, :cond_1a

    .line 515
    .line 516
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-static {v0}, Lv4/l;->m(Lorg/json/JSONArray;)[I

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    if-eqz v0, :cond_1a

    .line 525
    .line 526
    iget-object v2, v9, Lv4/l;->h:Lr4/n;

    .line 527
    .line 528
    iget-object v2, v2, Lr4/n;->a:Lr4/f;

    .line 529
    .line 530
    iget-object v2, v2, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 531
    .line 532
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    if-eqz v3, :cond_1a

    .line 541
    .line 542
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    check-cast v3, Lq4/z;

    .line 547
    .line 548
    invoke-virtual {v3, v0}, Lq4/z;->g([I)V

    .line 549
    .line 550
    .line 551
    goto :goto_b

    .line 552
    :pswitch_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    if-eqz v2, :cond_9

    .line 561
    .line 562
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    check-cast v2, Lv4/n;

    .line 567
    .line 568
    invoke-static {v11}, Lv4/l;->f(Lorg/json/JSONObject;)Lv4/k;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    const/16 v4, 0x834

    .line 573
    .line 574
    invoke-virtual {v2, v13, v14, v4, v3}, Lv4/n;->b(JILv4/k;)V

    .line 575
    .line 576
    .line 577
    goto :goto_c

    .line 578
    :cond_9
    iget-object v0, v9, Lv4/l;->h:Lr4/n;

    .line 579
    .line 580
    if-eqz v0, :cond_1a

    .line 581
    .line 582
    invoke-static {v11}, Lcom/google/android/gms/cast/MediaError;->j(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    .line 583
    .line 584
    .line 585
    iget-object v0, v9, Lv4/l;->h:Lr4/n;

    .line 586
    .line 587
    iget-object v0, v0, Lr4/n;->a:Lr4/f;

    .line 588
    .line 589
    iget-object v0, v0, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 590
    .line 591
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-eqz v2, :cond_1a

    .line 600
    .line 601
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    check-cast v2, Lq4/z;

    .line 606
    .line 607
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    goto :goto_d

    .line 611
    :pswitch_4
    const-string v0, "received unexpected error: Invalid Request."

    .line 612
    .line 613
    const/4 v2, 0x0

    .line 614
    new-array v3, v2, [Ljava/lang/Object;

    .line 615
    .line 616
    invoke-virtual {v10, v0, v3}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 628
    .line 629
    .line 630
    move-result v2

    .line 631
    if-eqz v2, :cond_1a

    .line 632
    .line 633
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    check-cast v2, Lv4/n;

    .line 638
    .line 639
    invoke-static {v11}, Lv4/l;->f(Lorg/json/JSONObject;)Lv4/k;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    const/16 v4, 0x7d1

    .line 644
    .line 645
    invoke-virtual {v2, v13, v14, v4, v3}, Lv4/n;->b(JILv4/k;)V

    .line 646
    .line 647
    .line 648
    goto :goto_e

    .line 649
    :pswitch_5
    invoke-static {v11}, Lv4/l;->f(Lorg/json/JSONObject;)Lv4/k;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    const/16 v2, 0x835

    .line 654
    .line 655
    invoke-virtual {v15, v13, v14, v2, v0}, Lv4/n;->b(JILv4/k;)V

    .line 656
    .line 657
    .line 658
    goto/16 :goto_1e

    .line 659
    .line 660
    :pswitch_6
    invoke-static {v11}, Lv4/l;->f(Lorg/json/JSONObject;)Lv4/k;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    const/16 v2, 0x834

    .line 665
    .line 666
    invoke-virtual {v15, v13, v14, v2, v0}, Lv4/n;->b(JILv4/k;)V

    .line 667
    .line 668
    .line 669
    goto/16 :goto_1e

    .line 670
    .line 671
    :pswitch_7
    const-string v0, "received unexpected error: Invalid Player State."

    .line 672
    .line 673
    const/4 v2, 0x0

    .line 674
    new-array v3, v2, [Ljava/lang/Object;

    .line 675
    .line 676
    invoke-virtual {v10, v0, v3}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .line 682
    .line 683
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 688
    .line 689
    .line 690
    move-result v2

    .line 691
    if-eqz v2, :cond_1a

    .line 692
    .line 693
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    check-cast v2, Lv4/n;

    .line 698
    .line 699
    invoke-static {v11}, Lv4/l;->f(Lorg/json/JSONObject;)Lv4/k;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    const/16 v4, 0x834

    .line 704
    .line 705
    invoke-virtual {v2, v13, v14, v4, v3}, Lv4/n;->b(JILv4/k;)V

    .line 706
    .line 707
    .line 708
    goto :goto_f

    .line 709
    :pswitch_8
    const-string v0, "status"

    .line 710
    .line 711
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    if-lez v2, :cond_18

    .line 720
    .line 721
    const/4 v2, 0x0

    .line 722
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-virtual {v15, v13, v14}, Lv4/n;->c(J)Z

    .line 727
    .line 728
    .line 729
    move-result v2

    .line 730
    iget-object v3, v9, Lv4/l;->n:Lv4/n;

    .line 731
    .line 732
    invoke-virtual {v3}, Lv4/n;->d()Z

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    if-eqz v5, :cond_b

    .line 737
    .line 738
    invoke-virtual {v3, v13, v14}, Lv4/n;->c(J)Z

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    if-eqz v3, :cond_a

    .line 743
    .line 744
    goto :goto_11

    .line 745
    :cond_a
    :goto_10
    const/4 v3, 0x1

    .line 746
    goto :goto_12

    .line 747
    :cond_b
    :goto_11
    iget-object v3, v9, Lv4/l;->o:Lv4/n;

    .line 748
    .line 749
    invoke-virtual {v3}, Lv4/n;->d()Z

    .line 750
    .line 751
    .line 752
    move-result v5

    .line 753
    if-eqz v5, :cond_c

    .line 754
    .line 755
    invoke-virtual {v3, v13, v14}, Lv4/n;->c(J)Z

    .line 756
    .line 757
    .line 758
    move-result v3

    .line 759
    if-nez v3, :cond_c

    .line 760
    .line 761
    goto :goto_10

    .line 762
    :cond_c
    const/4 v3, 0x0

    .line 763
    :goto_12
    if-nez v2, :cond_e

    .line 764
    .line 765
    iget-object v2, v9, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 766
    .line 767
    if-nez v2, :cond_d

    .line 768
    .line 769
    goto :goto_14

    .line 770
    :cond_d
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/cast/MediaStatus;->l(Lorg/json/JSONObject;I)I

    .line 771
    .line 772
    .line 773
    move-result v0

    .line 774
    :goto_13
    const/4 v2, 0x1

    .line 775
    goto :goto_15

    .line 776
    :cond_e
    :goto_14
    new-instance v2, Lcom/google/android/gms/cast/MediaStatus;

    .line 777
    .line 778
    const/16 v37, 0x0

    .line 779
    .line 780
    const/16 v38, 0x0

    .line 781
    .line 782
    const/16 v39, 0x0

    .line 783
    .line 784
    const/16 v40, 0x0

    .line 785
    .line 786
    const/16 v41, 0x0

    .line 787
    .line 788
    const/16 v42, 0x0

    .line 789
    .line 790
    const/16 v17, 0x0

    .line 791
    .line 792
    const-wide/16 v18, 0x0

    .line 793
    .line 794
    const/16 v20, 0x0

    .line 795
    .line 796
    const-wide/16 v21, 0x0

    .line 797
    .line 798
    const/16 v23, 0x0

    .line 799
    .line 800
    const/16 v24, 0x0

    .line 801
    .line 802
    const-wide/16 v25, 0x0

    .line 803
    .line 804
    const-wide/16 v27, 0x0

    .line 805
    .line 806
    const-wide/16 v29, 0x0

    .line 807
    .line 808
    const/16 v31, 0x0

    .line 809
    .line 810
    const/16 v32, 0x0

    .line 811
    .line 812
    const/16 v33, 0x0

    .line 813
    .line 814
    const/16 v34, 0x0

    .line 815
    .line 816
    const/16 v35, 0x0

    .line 817
    .line 818
    const/16 v36, 0x0

    .line 819
    .line 820
    move-object/from16 v16, v2

    .line 821
    .line 822
    invoke-direct/range {v16 .. v42}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/ArrayList;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V

    .line 823
    .line 824
    .line 825
    const/4 v3, 0x0

    .line 826
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/cast/MediaStatus;->l(Lorg/json/JSONObject;I)I

    .line 827
    .line 828
    .line 829
    iput-object v2, v9, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 830
    .line 831
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 832
    .line 833
    .line 834
    move-result-wide v2

    .line 835
    iput-wide v2, v9, Lv4/l;->e:J

    .line 836
    .line 837
    const/16 v0, 0x7f

    .line 838
    .line 839
    goto :goto_13

    .line 840
    :goto_15
    and-int/lit8 v3, v0, 0x1

    .line 841
    .line 842
    if-eqz v3, :cond_f

    .line 843
    .line 844
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 845
    .line 846
    .line 847
    move-result-wide v2

    .line 848
    iput-wide v2, v9, Lv4/l;->e:J

    .line 849
    .line 850
    const/4 v2, -0x1

    .line 851
    iput v2, v9, Lv4/l;->i:I

    .line 852
    .line 853
    const/4 v2, 0x1

    .line 854
    :goto_16
    const/4 v3, 0x2

    .line 855
    goto :goto_17

    .line 856
    :cond_f
    const/4 v2, 0x0

    .line 857
    goto :goto_16

    .line 858
    :goto_17
    and-int/lit8 v5, v0, 0x2

    .line 859
    .line 860
    if-eqz v5, :cond_10

    .line 861
    .line 862
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 863
    .line 864
    .line 865
    move-result-wide v2

    .line 866
    iput-wide v2, v9, Lv4/l;->e:J

    .line 867
    .line 868
    const/4 v2, 0x1

    .line 869
    :cond_10
    and-int/lit16 v3, v0, 0x80

    .line 870
    .line 871
    if-eqz v3, :cond_11

    .line 872
    .line 873
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 874
    .line 875
    .line 876
    move-result-wide v5

    .line 877
    iput-wide v5, v9, Lv4/l;->e:J

    .line 878
    .line 879
    :cond_11
    const/4 v3, 0x4

    .line 880
    and-int/2addr v3, v0

    .line 881
    if-eqz v3, :cond_12

    .line 882
    .line 883
    invoke-virtual {v9}, Lv4/l;->i()V

    .line 884
    .line 885
    .line 886
    :cond_12
    const/16 v3, 0x8

    .line 887
    .line 888
    and-int/2addr v3, v0

    .line 889
    if-eqz v3, :cond_13

    .line 890
    .line 891
    invoke-virtual {v9}, Lv4/l;->k()V

    .line 892
    .line 893
    .line 894
    :cond_13
    and-int/lit8 v3, v0, 0x10

    .line 895
    .line 896
    if-eqz v3, :cond_14

    .line 897
    .line 898
    invoke-virtual {v9}, Lv4/l;->j()V

    .line 899
    .line 900
    .line 901
    :cond_14
    and-int/lit8 v3, v0, 0x20

    .line 902
    .line 903
    if-eqz v3, :cond_16

    .line 904
    .line 905
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 906
    .line 907
    .line 908
    move-result-wide v5

    .line 909
    iput-wide v5, v9, Lv4/l;->e:J

    .line 910
    .line 911
    iget-object v3, v9, Lv4/l;->h:Lr4/n;

    .line 912
    .line 913
    if-eqz v3, :cond_16

    .line 914
    .line 915
    iget-object v3, v3, Lr4/n;->a:Lr4/f;

    .line 916
    .line 917
    iget-object v5, v3, Lr4/f;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 918
    .line 919
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 920
    .line 921
    .line 922
    move-result-object v5

    .line 923
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 924
    .line 925
    .line 926
    move-result v6

    .line 927
    if-eqz v6, :cond_15

    .line 928
    .line 929
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v6

    .line 933
    check-cast v6, Lr4/d;

    .line 934
    .line 935
    invoke-interface {v6}, Lr4/d;->j()V

    .line 936
    .line 937
    .line 938
    goto :goto_18

    .line 939
    :cond_15
    iget-object v3, v3, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 940
    .line 941
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 942
    .line 943
    .line 944
    move-result-object v3

    .line 945
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 946
    .line 947
    .line 948
    move-result v5

    .line 949
    if-eqz v5, :cond_16

    .line 950
    .line 951
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v5

    .line 955
    check-cast v5, Lq4/z;

    .line 956
    .line 957
    iget v6, v5, Lq4/z;->a:I

    .line 958
    .line 959
    packed-switch v6, :pswitch_data_1

    .line 960
    .line 961
    .line 962
    goto :goto_19

    .line 963
    :pswitch_9
    iget-object v5, v5, Lq4/z;->b:Ljava/lang/Object;

    .line 964
    .line 965
    check-cast v5, Ls4/k;

    .line 966
    .line 967
    invoke-virtual {v5}, Ls4/k;->c()V

    .line 968
    .line 969
    .line 970
    goto :goto_19

    .line 971
    :cond_16
    and-int/lit8 v0, v0, 0x40

    .line 972
    .line 973
    if-eqz v0, :cond_17

    .line 974
    .line 975
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 976
    .line 977
    .line 978
    move-result-wide v2

    .line 979
    iput-wide v2, v9, Lv4/l;->e:J

    .line 980
    .line 981
    goto :goto_1a

    .line 982
    :cond_17
    if-eqz v2, :cond_19

    .line 983
    .line 984
    :goto_1a
    invoke-virtual {v9}, Lv4/l;->l()V

    .line 985
    .line 986
    .line 987
    goto :goto_1b

    .line 988
    :cond_18
    iput-object v8, v9, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 989
    .line 990
    invoke-virtual {v9}, Lv4/l;->l()V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v9}, Lv4/l;->i()V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v9}, Lv4/l;->k()V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v9}, Lv4/l;->j()V

    .line 1000
    .line 1001
    .line 1002
    :cond_19
    :goto_1b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1007
    .line 1008
    .line 1009
    move-result v2

    .line 1010
    if-eqz v2, :cond_1a

    .line 1011
    .line 1012
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v2

    .line 1016
    check-cast v2, Lv4/n;

    .line 1017
    .line 1018
    const/4 v3, 0x0

    .line 1019
    invoke-virtual {v2, v13, v14, v3, v8}, Lv4/n;->b(JILv4/k;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1020
    .line 1021
    .line 1022
    goto :goto_1c

    .line 1023
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v0

    .line 1027
    const/4 v2, 0x2

    .line 1028
    new-array v2, v2, [Ljava/lang/Object;

    .line 1029
    .line 1030
    const/4 v3, 0x0

    .line 1031
    aput-object v0, v2, v3

    .line 1032
    .line 1033
    const/4 v3, 0x1

    .line 1034
    aput-object v1, v2, v3

    .line 1035
    .line 1036
    const-string v0, "Message is malformed (%s); ignoring: %s"

    .line 1037
    .line 1038
    invoke-virtual {v10, v0, v2}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    .line 1044
    .line 1045
    :cond_1a
    :goto_1e
    return-void

    .line 1046
    nop

    .line 1047
    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_8
        -0x6ab4c52e -> :sswitch_7
        -0x430e23f9 -> :sswitch_6
        -0xfa7664a -> :sswitch_5
        0x3f2d9e8 -> :sswitch_4
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_c
        -0x7022137c -> :sswitch_b
        -0x6a6cd337 -> :sswitch_a
        0x42ef412f -> :sswitch_9
    .end sparse-switch

    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method

.method public final q()V
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->F()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lr4/f;->x()Lr4/l;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lr4/h;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, p0, v1}, Lr4/h;-><init>(Lr4/f;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lr4/f;->G(Lr4/m;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->F()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lr4/f;->x()Lr4/l;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lr4/h;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1}, Lr4/h;-><init>(Lr4/f;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lr4/f;->G(Lr4/m;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final s(Lr4/e;)V
    .locals 3

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr4/f;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lr4/p;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lr4/p;->a:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lr4/f;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    iget-wide v1, v0, Lr4/p;->b:J

    .line 30
    .line 31
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object p1, v0, Lr4/p;->e:Lr4/f;

    .line 39
    .line 40
    iget-object p1, p1, Lr4/f;->b:Lcom/google/android/gms/internal/cast/x0;

    .line 41
    .line 42
    iget-object v1, v0, Lr4/p;->c:Lr4/o;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-boolean p1, v0, Lr4/p;->d:Z

    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final t(Lp4/g;)Lcom/google/android/gms/common/api/internal/BasePendingResult;
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->F()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lr4/f;->x()Lr4/l;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance v0, Lr4/i;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, p1, v1}, Lr4/i;-><init>(Lr4/f;Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lr4/f;->G(Lr4/m;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final u(J)V
    .locals 2

    .line 1
    new-instance v0, Lp4/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lp4/g;-><init>(JZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lr4/f;->t(Lp4/g;)Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final v()V
    .locals 3

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr4/f;->g()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x4

    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lr4/f;->F()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lr4/f;->x()Lr4/l;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lr4/h;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-direct {v0, p0, v1}, Lr4/h;-><init>(Lr4/f;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lr4/f;->G(Lr4/m;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_2
    :goto_1
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lr4/f;->F()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    invoke-static {}, Lr4/f;->x()Lr4/l;

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    new-instance v0, Lr4/h;

    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    invoke-direct {v0, p0, v1}, Lr4/h;-><init>(Lr4/f;I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lr4/f;->G(Lr4/m;)V

    .line 60
    .line 61
    .line 62
    :goto_2
    return-void
.end method

.method public final w()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lr4/f;->e()Lcom/google/android/gms/cast/MediaInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0}, Lr4/f;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lr4/f;->j()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x6

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    invoke-virtual {p0}, Lr4/f;->n()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    return v0

    .line 31
    :cond_2
    invoke-virtual {p0}, Lr4/f;->m()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    return v0

    .line 39
    :cond_3
    invoke-virtual {p0}, Lr4/f;->l()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Lr4/f;->d()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaQueueItem;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    return v2

    .line 56
    :cond_4
    :goto_0
    return v1
.end method

.method public final y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr4/f;->f:Lp4/o;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "Must be called from the main thread."

    .line 7
    .line 8
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lr4/f;->c:Lv4/l;

    .line 12
    .line 13
    iget-object v1, v1, Lv4/o;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Lv4/a;->c(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lp4/o;->B:Ljava/util/HashMap;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Lp4/l;

    .line 30
    .line 31
    invoke-direct {v3, v0, v1, p0}, Lp4/l;-><init>(Lp4/o;Ljava/lang/String;Lr4/f;)V

    .line 32
    .line 33
    .line 34
    iput-object v3, v2, Lc6/c;->c:Ljava/lang/Object;

    .line 35
    .line 36
    const/16 v1, 0x20dd

    .line 37
    .line 38
    iput v1, v2, Lc6/c;->a:I

    .line 39
    .line 40
    invoke-virtual {v2}, Lc6/c;->b()Lc6/c;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v2, v1}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 46
    .line 47
    .line 48
    const-string v0, "Must be called from the main thread."

    .line 49
    .line 50
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lr4/f;->F()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    invoke-static {}, Lr4/f;->x()Lr4/l;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Lr4/h;

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    invoke-direct {v0, p0, v1}, Lr4/h;-><init>(Lr4/f;I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lr4/f;->G(Lr4/m;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw v0
.end method

.method public final z(Lp4/o;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lr4/f;->f:Lp4/o;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Lr4/f;->c:Lv4/l;

    .line 9
    .line 10
    invoke-virtual {v1}, Lv4/l;->n()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lr4/f;->e:Lr4/a;

    .line 14
    .line 15
    invoke-virtual {v1}, Lr4/a;->c()V

    .line 16
    .line 17
    .line 18
    const-string v1, "Must be called from the main thread."

    .line 19
    .line 20
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lr4/f;->c:Lv4/l;

    .line 24
    .line 25
    iget-object v1, v1, Lv4/o;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    iget-object v2, v0, Lp4/o;->B:Ljava/util/HashMap;

    .line 34
    .line 35
    monitor-enter v2

    .line 36
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lp4/b;

    .line 41
    .line 42
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v4, La1/b;

    .line 48
    .line 49
    const/16 v5, 0x1b

    .line 50
    .line 51
    invoke-direct {v4, v0, v3, v1, v5}, La1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    iput-object v4, v2, Lc6/c;->c:Ljava/lang/Object;

    .line 55
    .line 56
    const/16 v1, 0x20de

    .line 57
    .line 58
    iput v1, v2, Lc6/c;->a:I

    .line 59
    .line 60
    invoke-virtual {v2}, Lc6/c;->b()Lc6/c;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, v2, v1}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lr4/f;->d:La1/b;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    iput-object v1, v0, La1/b;->b:Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v0, p0, Lr4/f;->b:Lcom/google/android/gms/internal/cast/x0;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p1

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string v0, "Channel namespace cannot be null or empty"

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_2
    :goto_0
    iput-object p1, p0, Lr4/f;->f:Lp4/o;

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lr4/f;->d:La1/b;

    .line 95
    .line 96
    iput-object p1, v0, La1/b;->b:Ljava/lang/Object;

    .line 97
    .line 98
    :cond_3
    :goto_1
    return-void
.end method
