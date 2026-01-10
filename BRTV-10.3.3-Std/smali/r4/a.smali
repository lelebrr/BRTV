.class public final Lr4/a;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Lv4/b;

.field public b:J

.field public final c:Lr4/f;

.field public d:Ljava/util/ArrayList;

.field public final e:Landroid/util/SparseIntArray;

.field public final f:Lr4/v;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayDeque;

.field public final i:Lcom/google/android/gms/internal/cast/x0;

.field public final j:Lr4/o;

.field public k:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public l:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final m:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lr4/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lr4/a;->m:Ljava/util/Set;

    .line 14
    .line 15
    new-instance v0, Lv4/b;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "MediaQueue"

    .line 19
    .line 20
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lr4/a;->a:Lv4/b;

    .line 24
    .line 25
    iput-object p1, p0, Lr4/a;->c:Lr4/f;

    .line 26
    .line 27
    const/16 v0, 0x14

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lr4/a;->d:Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance v1, Landroid/util/SparseIntArray;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lr4/a;->e:Landroid/util/SparseIntArray;

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lr4/a;->g:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v1, Ljava/util/ArrayDeque;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lr4/a;->h:Ljava/util/ArrayDeque;

    .line 60
    .line 61
    new-instance v0, Lcom/google/android/gms/internal/cast/x0;

    .line 62
    .line 63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;I)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lr4/a;->i:Lcom/google/android/gms/internal/cast/x0;

    .line 72
    .line 73
    new-instance v0, Lr4/o;

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    invoke-direct {v0, v1, p0}, Lr4/o;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lr4/a;->j:Lr4/o;

    .line 80
    .line 81
    new-instance v0, Lq4/z;

    .line 82
    .line 83
    invoke-direct {v0, v1, p0}, Lq4/z;-><init>(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const-string v1, "Must be called from the main thread."

    .line 90
    .line 91
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p1, Lr4/f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    new-instance p1, Lr4/v;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Lr4/v;-><init>(Lr4/a;)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lr4/a;->f:Lr4/v;

    .line 105
    .line 106
    invoke-virtual {p0}, Lr4/a;->e()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    iput-wide v0, p0, Lr4/a;->b:J

    .line 111
    .line 112
    invoke-virtual {p0}, Lr4/a;->d()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public static a(Lr4/a;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lr4/a;->m:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    throw v0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v0
.end method

.method public static bridge synthetic b(Lr4/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/a;->e:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lr4/a;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lr4/a;->d:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lr4/a;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lr4/a;->d:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lr4/a;->e:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lr4/a;->f:Lr4/v;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lr4/a;->g:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lr4/a;->i:Lcom/google/android/gms/internal/cast/x0;

    .line 25
    .line 26
    iget-object v1, p0, Lr4/a;->j:Lr4/o;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lr4/a;->h:Ljava/util/ArrayDeque;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lr4/a;->l:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b0()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lr4/a;->l:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lr4/a;->k:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b0()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lr4/a;->k:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Lr4/a;->g()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lr4/a;->f()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lr4/a;->b:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, p0, Lr4/a;->l:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 16
    .line 17
    if-nez v1, :cond_4

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b0()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lr4/a;->l:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lr4/a;->k:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b0()V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lr4/a;->k:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 35
    .line 36
    :cond_2
    iget-object v1, p0, Lr4/a;->c:Lr4/f;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lr4/f;->F()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    invoke-static {}, Lr4/f;->x()Lr4/l;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    new-instance v0, Lr4/h;

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lr4/h;-><init>(Lr4/f;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lr4/f;->G(Lr4/m;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iput-object v0, p0, Lr4/a;->l:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 64
    .line 65
    new-instance v1, Lr4/u;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-direct {v1, p0, v2}, Lr4/u;-><init>(Lr4/a;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h0(Lr4/u;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_1
    return-void
.end method

.method public final e()J
    .locals 6

    .line 1
    iget-object v0, p0, Lr4/a;->c:Lr4/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr4/f;->f()Lcom/google/android/gms/cast/MediaStatus;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/cast/MediaStatus;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v1, v1, Lcom/google/android/gms/cast/MediaInfo;->b:I

    .line 16
    .line 17
    :goto_0
    iget v2, v0, Lcom/google/android/gms/cast/MediaStatus;->e:I

    .line 18
    .line 19
    iget v3, v0, Lcom/google/android/gms/cast/MediaStatus;->f:I

    .line 20
    .line 21
    iget v4, v0, Lcom/google/android/gms/cast/MediaStatus;->l:I

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-eq v2, v5, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    if-eq v3, v5, :cond_3

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    if-eq v3, v2, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    if-eq v3, v1, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    if-eq v1, v2, :cond_4

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    if-nez v4, :cond_4

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    :goto_1
    iget-wide v0, v0, Lcom/google/android/gms/cast/MediaStatus;->b:J

    .line 43
    .line 44
    return-wide v0

    .line 45
    :cond_5
    :goto_2
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    return-wide v0
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/a;->m:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    throw v1

    .line 26
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/a;->m:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    throw v1

    .line 26
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/a;->m:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    throw v1

    .line 26
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method
