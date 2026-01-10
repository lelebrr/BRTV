.class public final Lq1/v;
.super Landroid/media/MediaRoute2ProviderService;
.source "MyApplication"


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lq1/h0;

.field public final c:Lp/e;

.field public final d:Landroid/util/SparseArray;

.field public volatile e:Landroidx/appcompat/app/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MR2ProviderService"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lq1/h0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq1/v;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lp/e;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lp/l;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lq1/v;->c:Lp/e;

    .line 18
    .line 19
    new-instance v0, Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lq1/v;->d:Landroid/util/SparseArray;

    .line 25
    .line 26
    iput-object p1, p0, Lq1/v;->b:Lq1/h0;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lq1/u;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lq1/v;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lq1/v;->c:Lp/e;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lp/l;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iput-object v1, p1, Lq1/u;->i:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Lq1/v;->c:Lp/e;

    .line 23
    .line 24
    invoke-virtual {v2, v1, p1}, Lp/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/media/MediaRoute2ProviderService;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(Ljava/lang/String;)Lq1/c0;
    .locals 3

    .line 1
    iget-object v0, p0, Lq1/v;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v2, p0, Lq1/v;->c:Lp/e;

    .line 7
    .line 8
    invoke-virtual {v2}, Lp/e;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lq1/u;

    .line 31
    .line 32
    iget-object v2, v1, Lq1/u;->e:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lq1/g0;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object v1, v2, Lq1/g0;->i:Lp/e;

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lq1/c0;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, v1, Lq1/u;->a:Lp/e;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lq1/c0;

    .line 58
    .line 59
    :goto_0
    if-eqz v1, :cond_0

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    const/4 p1, 0x0

    .line 63
    return-object p1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p1
.end method

.method public final c(Ljava/lang/String;)Lq1/b0;
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/v;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lq1/v;->c:Lp/e;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lq1/u;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p1, Lq1/u;->b:Lq1/b0;

    .line 17
    .line 18
    :goto_0
    monitor-exit v0

    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lq1/w;
    .locals 5

    .line 1
    iget-object v0, p0, Lq1/v;->b:Lq1/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move-object v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 11
    .line 12
    :goto_0
    const-string v2, "MR2ProviderService"

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-object v0, p0, Lq1/v;->e:Landroidx/appcompat/app/r0;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, p0, Lq1/v;->e:Landroidx/appcompat/app/r0;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/appcompat/app/r0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lq1/w;

    .line 42
    .line 43
    invoke-virtual {v3}, Lq1/w;->f()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    return-object v3

    .line 54
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p2, ": Couldn\'t find a route : "

    .line 63
    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_4
    :goto_1
    const-string p1, ": no provider info"

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return-object v1
.end method

.method public final e(Lq1/g0;Lq1/c0;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "notifyRouteControllerAdded"

    .line 2
    .line 3
    invoke-virtual {p0, p5, v0}, Lq1/v;->d(Ljava/lang/String;Ljava/lang/String;)Lq1/w;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    instance-of v1, p2, Lq1/b0;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p2, Lq1/b0;

    .line 15
    .line 16
    const/4 v1, 0x6

    .line 17
    move-object v5, p2

    .line 18
    const/4 v8, 0x6

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v0}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v1, 0x0

    .line 33
    :goto_0
    new-instance v2, Lq1/r;

    .line 34
    .line 35
    invoke-direct {v2, p5, p2}, Lq1/r;-><init>(Ljava/lang/String;Lq1/c0;)V

    .line 36
    .line 37
    .line 38
    move v8, v1

    .line 39
    move-object v5, v2

    .line 40
    :goto_1
    new-instance p2, Lq1/u;

    .line 41
    .line 42
    const-wide/16 v6, 0x0

    .line 43
    .line 44
    move-object v3, p2

    .line 45
    move-object v4, p0

    .line 46
    move-object v9, p1

    .line 47
    invoke-direct/range {v3 .. v9}, Lq1/u;-><init>(Lq1/v;Lq1/b0;JILq1/g0;)V

    .line 48
    .line 49
    .line 50
    iput-object p5, p2, Lq1/u;->j:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lq1/v;->a(Lq1/u;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v1, p0, Lq1/v;->d:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v1, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p4}, Lq1/j;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0}, Lq1/w;->g()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-static {p1, p3}, Lq1/j;->c(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0}, Lq1/w;->i()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    invoke-static {p1, p3}, Lq1/j;->a(Landroid/media/RoutingSessionInfo$Builder;I)Landroid/media/RoutingSessionInfo$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0}, Lq1/w;->h()I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    invoke-static {p1, p3}, Lq1/j;->y(Landroid/media/RoutingSessionInfo$Builder;I)Landroid/media/RoutingSessionInfo$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0}, Lq1/w;->j()I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    invoke-static {p1, p3}, Lq1/j;->C(Landroid/media/RoutingSessionInfo$Builder;I)Landroid/media/RoutingSessionInfo$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v0}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    if-eqz p3, :cond_3

    .line 106
    .line 107
    invoke-static {p1, p5}, Lq1/j;->r(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    invoke-virtual {v0}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result p4

    .line 123
    if-eqz p4, :cond_4

    .line 124
    .line 125
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    check-cast p4, Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {p1, p4}, Lq1/j;->r(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    :goto_3
    invoke-static {p1}, Lq1/j;->f(Landroid/media/RoutingSessionInfo$Builder;)Landroid/media/RoutingSessionInfo;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p2, p1}, Lq1/u;->b(Landroid/media/RoutingSessionInfo;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/v;->d:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lq1/v;->d:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lq1/v;->a:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    iget-object v1, p0, Lq1/v;->c:Lp/e;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lq1/u;

    .line 27
    .line 28
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-virtual {v0, p1}, Lq1/u;->a(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0
.end method

.method public final g(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lq1/v;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lq1/v;->c:Lp/e;

    .line 5
    .line 6
    invoke-virtual {v1}, Lp/e;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ld7/g0;

    .line 11
    .line 12
    invoke-virtual {v1}, Ld7/g0;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    move-object v2, v1

    .line 17
    check-cast v2, Lp/c;

    .line 18
    .line 19
    invoke-virtual {v2}, Lp/c;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Lp/c;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lq1/u;

    .line 35
    .line 36
    iget-object v3, v2, Lq1/u;->b:Lq1/b0;

    .line 37
    .line 38
    if-ne v3, p1, :cond_0

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const/4 v2, 0x0

    .line 46
    :goto_0
    if-nez v2, :cond_2

    .line 47
    .line 48
    const-string p1, "MR2ProviderService"

    .line 49
    .line 50
    const-string p2, "setDynamicRouteDescriptor: Ignoring unknown controller"

    .line 51
    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-virtual {v2, p2, p3}, Lq1/u;->d(Lq1/w;Ljava/util/ArrayList;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p1
.end method

.method public final onCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    move-object/from16 v9, p4

    .line 6
    .line 7
    iget-object v0, v7, Lq1/v;->b:Lq1/h0;

    .line 8
    .line 9
    iget-object v0, v0, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move-object v0, v10

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 17
    .line 18
    :goto_0
    const-string v1, "onCreateSession"

    .line 19
    .line 20
    invoke-virtual {v7, v9, v1}, Lq1/v;->d(Ljava/lang/String;Ljava/lang/String;)Lq1/w;

    .line 21
    .line 22
    .line 23
    move-result-object v11

    .line 24
    if-nez v11, :cond_1

    .line 25
    .line 26
    invoke-static/range {p0 .. p2}, Lq1/j;->B(Lq1/v;J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "controlHints"

    .line 36
    .line 37
    move-object/from16 v3, p5

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "clientPackageName"

    .line 43
    .line 44
    invoke-virtual {v1, v2, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v12, Lq1/d0;

    .line 48
    .line 49
    invoke-direct {v12, v1}, Lq1/d0;-><init>(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v7, Lq1/v;->e:Landroidx/appcompat/app/r0;

    .line 53
    .line 54
    iget-boolean v1, v1, Landroidx/appcompat/app/r0;->b:Z

    .line 55
    .line 56
    const-string v2, "MR2ProviderService"

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0, v9, v12}, Lq1/e0;->a(Ljava/lang/String;Lq1/d0;)Lq1/b0;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    const-string v0, "onCreateSession: Couldn\'t create a dynamic controller"

    .line 67
    .line 68
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-static/range {p0 .. p2}, Lq1/j;->D(Lq1/v;J)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    const/4 v1, 0x7

    .line 76
    move-object v13, v0

    .line 77
    const/4 v14, 0x7

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {v0, v9, v12}, Lq1/e0;->d(Ljava/lang/String;Lq1/d0;)Lq1/c0;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    const-string v0, "onCreateSession: Couldn\'t create a controller"

    .line 86
    .line 87
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    invoke-static/range {p0 .. p2}, Lq1/j;->D(Lq1/v;J)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-virtual {v11}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_5

    .line 103
    .line 104
    const/4 v1, 0x3

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    const/4 v1, 0x1

    .line 107
    :goto_1
    new-instance v2, Lq1/r;

    .line 108
    .line 109
    invoke-direct {v2, v9, v0}, Lq1/r;-><init>(Ljava/lang/String;Lq1/c0;)V

    .line 110
    .line 111
    .line 112
    move v14, v1

    .line 113
    move-object v13, v2

    .line 114
    :goto_2
    invoke-virtual {v13}, Lq1/c0;->f()V

    .line 115
    .line 116
    .line 117
    new-instance v15, Lq1/u;

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    move-object v0, v15

    .line 121
    move-object/from16 v1, p0

    .line 122
    .line 123
    move-object v2, v13

    .line 124
    move-wide/from16 v3, p1

    .line 125
    .line 126
    move v5, v14

    .line 127
    invoke-direct/range {v0 .. v6}, Lq1/u;-><init>(Lq1/v;Lq1/b0;JILq1/g0;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v15}, Lq1/v;->a(Lq1/u;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0, v8}, Lq1/j;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v11}, Lq1/w;->g()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lq1/j;->c(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v11}, Lq1/w;->i()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-static {v0, v1}, Lq1/j;->a(Landroid/media/RoutingSessionInfo$Builder;I)Landroid/media/RoutingSessionInfo$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v11}, Lq1/w;->h()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-static {v0, v1}, Lq1/j;->y(Landroid/media/RoutingSessionInfo$Builder;I)Landroid/media/RoutingSessionInfo$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v11}, Lq1/w;->j()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-static {v0, v1}, Lq1/j;->C(Landroid/media/RoutingSessionInfo$Builder;I)Landroid/media/RoutingSessionInfo$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v11}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_6

    .line 179
    .line 180
    invoke-static {v0, v9}, Lq1/j;->r(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_6
    invoke-virtual {v11}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_7

    .line 197
    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v0, v2}, Lq1/j;->r(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_7
    :goto_4
    invoke-static {v0}, Lq1/j;->f(Landroid/media/RoutingSessionInfo$Builder;)Landroid/media/RoutingSessionInfo;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v15, v0}, Lq1/u;->b(Landroid/media/RoutingSessionInfo;)V

    .line 213
    .line 214
    .line 215
    and-int/lit8 v1, v14, 0x4

    .line 216
    .line 217
    if-nez v1, :cond_9

    .line 218
    .line 219
    and-int/lit8 v1, v14, 0x2

    .line 220
    .line 221
    if-eqz v1, :cond_8

    .line 222
    .line 223
    invoke-virtual {v15, v9, v10, v0, v12}, Lq1/u;->c(Ljava/lang/String;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;Lq1/d0;)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_8
    iget-object v0, v15, Lq1/u;->a:Lp/e;

    .line 228
    .line 229
    iget-object v1, v15, Lq1/u;->b:Lq1/b0;

    .line 230
    .line 231
    invoke-virtual {v0, v9, v1}, Lp/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    :cond_9
    :goto_5
    iget-object v0, v7, Lq1/v;->b:Lq1/h0;

    .line 235
    .line 236
    iget-object v1, v0, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 237
    .line 238
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v1}, Lu7/d;->m(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    iget-object v0, v0, Lq1/h0;->j:Landroidx/media3/common/x;

    .line 247
    .line 248
    invoke-virtual {v13, v1, v0}, Lq1/b0;->q(Ljava/util/concurrent/Executor;Lq1/a0;)V

    .line 249
    .line 250
    .line 251
    return-void
.end method

.method public final onDeselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0, p3}, Lq1/j;->g(Lq1/v;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MR2ProviderService"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p3, "onDeselectRoute: Couldn\'t find a session"

    .line 10
    .line 11
    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, p2}, Lq1/j;->s(Lq1/v;J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v0, "onDeselectRoute"

    .line 19
    .line 20
    invoke-virtual {p0, p4, v0}, Lq1/v;->d(Ljava/lang/String;Ljava/lang/String;)Lq1/w;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {p0, p1, p2}, Lq1/j;->B(Lq1/v;J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0, p3}, Lq1/v;->c(Ljava/lang/String;)Lq1/b0;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    if-nez p3, :cond_2

    .line 35
    .line 36
    const-string p3, "onDeselectRoute: Couldn\'t find a controller"

    .line 37
    .line 38
    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1, p2}, Lq1/j;->B(Lq1/v;J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {p3, p4}, Lq1/b0;->o(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onDiscoveryPreferenceChanged(Landroid/media/RouteDiscoveryPreference;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lq1/v;->b:Lq1/h0;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lq1/t0;->b(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_5

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 v4, -0x1

    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    sparse-switch v5, :sswitch_data_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :sswitch_0
    const-string v5, "android.media.route.feature.LIVE_VIDEO"

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 v4, 0x4

    .line 50
    goto :goto_1

    .line 51
    :sswitch_1
    const-string v5, "android.media.route.feature.LIVE_AUDIO"

    .line 52
    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v4, 0x3

    .line 61
    goto :goto_1

    .line 62
    :sswitch_2
    const-string v5, "android.media.route.feature.REMOTE_PLAYBACK"

    .line 63
    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v4, 0x2

    .line 72
    goto :goto_1

    .line 73
    :sswitch_3
    const-string v5, "android.media.route.feature.REMOTE_VIDEO_PLAYBACK"

    .line 74
    .line 75
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/4 v4, 0x1

    .line 83
    goto :goto_1

    .line 84
    :sswitch_4
    const-string v5, "android.media.route.feature.REMOTE_AUDIO_PLAYBACK"

    .line 85
    .line 86
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    const/4 v4, 0x0

    .line 94
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :pswitch_0
    const-string v3, "android.media.intent.category.LIVE_VIDEO"

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :pswitch_1
    const-string v3, "android.media.intent.category.LIVE_AUDIO"

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :pswitch_2
    const-string v3, "android.media.intent.category.REMOTE_PLAYBACK"

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :pswitch_3
    const-string v3, "android.media.intent.category.REMOTE_VIDEO_PLAYBACK"

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :pswitch_4
    const-string v3, "android.media.intent.category.REMOTE_AUDIO_PLAYBACK"

    .line 111
    .line 112
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    const/4 v3, 0x0

    .line 121
    if-nez v2, :cond_9

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_9

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Ljava/lang/String;

    .line 138
    .line 139
    if-eqz v2, :cond_8

    .line 140
    .line 141
    if-nez v3, :cond_7

    .line 142
    .line 143
    new-instance v3, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    :cond_7
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-nez v4, :cond_6

    .line 153
    .line 154
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string v0, "category must not be null"

    .line 161
    .line 162
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_9
    if-nez v3, :cond_a

    .line 167
    .line 168
    sget-object v1, Lq1/l0;->c:Lq1/l0;

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_a
    new-instance v1, Landroid/os/Bundle;

    .line 172
    .line 173
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v2, "controlCategories"

    .line 177
    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Lq1/l0;

    .line 182
    .line 183
    invoke-direct {v2, v1, v3}, Lq1/l0;-><init>(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 184
    .line 185
    .line 186
    move-object v1, v2

    .line 187
    :goto_4
    new-instance v2, Lq1/x;

    .line 188
    .line 189
    invoke-static {p1}, Lq1/t;->q(Landroid/media/RouteDiscoveryPreference;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-direct {v2, v1, p1}, Lq1/x;-><init>(Lq1/l0;Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    iget-object p1, v0, Lq1/k0;->d:Lq1/x;

    .line 204
    .line 205
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_b

    .line 210
    .line 211
    invoke-virtual {v2}, Lq1/x;->b()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_c

    .line 216
    .line 217
    :cond_b
    iput-object v2, v0, Lq1/k0;->d:Lq1/x;

    .line 218
    .line 219
    iput-wide v3, v0, Lq1/k0;->e:J

    .line 220
    .line 221
    invoke-virtual {v0}, Lq1/k0;->h()Z

    .line 222
    .line 223
    .line 224
    :cond_c
    return-void

    .line 225
    :sswitch_data_0
    .sparse-switch
        -0x4c6e9209 -> :sswitch_4
        -0x46f4210e -> :sswitch_3
        0x5a1e5ce -> :sswitch_2
        0x4f366289 -> :sswitch_1
        0x5058db2e -> :sswitch_0
    .end sparse-switch

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onReleaseSession(JLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0, p3}, Lq1/j;->g(Lq1/v;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lq1/v;->a:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lq1/v;->c:Lp/e;

    .line 12
    .line 13
    invoke-virtual {v1, p3}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    check-cast p3, Lq1/u;

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    const-string p3, "MR2ProviderService"

    .line 23
    .line 24
    const-string v0, "onReleaseSession: Couldn\'t find a session"

    .line 25
    .line 26
    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, p2}, Lq1/j;->s(Lq1/v;J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p3, p1}, Lq1/u;->a(Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method

.method public final onSelectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0, p3}, Lq1/j;->g(Lq1/v;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MR2ProviderService"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p3, "onSelectRoute: Couldn\'t find a session"

    .line 10
    .line 11
    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, p2}, Lq1/j;->s(Lq1/v;J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v0, "onSelectRoute"

    .line 19
    .line 20
    invoke-virtual {p0, p4, v0}, Lq1/v;->d(Ljava/lang/String;Ljava/lang/String;)Lq1/w;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {p0, p1, p2}, Lq1/j;->B(Lq1/v;J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0, p3}, Lq1/v;->c(Ljava/lang/String;)Lq1/b0;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    if-nez p3, :cond_2

    .line 35
    .line 36
    const-string p3, "onSelectRoute: Couldn\'t find a controller"

    .line 37
    .line 38
    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1, p2}, Lq1/j;->B(Lq1/v;J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {p3, p4}, Lq1/b0;->n(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onSetRouteVolume(JLjava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lq1/v;->b(Ljava/lang/String;)Lq1/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p4, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "onSetRouteVolume: Couldn\'t find a controller for routeId="

    .line 10
    .line 11
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const-string p4, "MR2ProviderService"

    .line 22
    .line 23
    invoke-static {p4, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, p2}, Lq1/j;->B(Lq1/v;J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {v0, p4}, Lq1/c0;->g(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onSetSessionVolume(JLjava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p0, p3}, Lq1/j;->g(Lq1/v;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MR2ProviderService"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p3, "onSetSessionVolume: Couldn\'t find a session"

    .line 10
    .line 11
    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, p2}, Lq1/j;->s(Lq1/v;J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, p3}, Lq1/v;->c(Ljava/lang/String;)Lq1/b0;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    if-nez p3, :cond_1

    .line 23
    .line 24
    const-string p3, "onSetSessionVolume: Couldn\'t find a controller"

    .line 25
    .line 26
    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, p2}, Lq1/j;->B(Lq1/v;J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p3, p4}, Lq1/c0;->g(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onTransferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0, p3}, Lq1/j;->g(Lq1/v;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MR2ProviderService"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p3, "onTransferToRoute: Couldn\'t find a session"

    .line 10
    .line 11
    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, p2}, Lq1/j;->s(Lq1/v;J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v0, "onTransferToRoute"

    .line 19
    .line 20
    invoke-virtual {p0, p4, v0}, Lq1/v;->d(Ljava/lang/String;Ljava/lang/String;)Lq1/w;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {p0, p1, p2}, Lq1/j;->B(Lq1/v;J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0, p3}, Lq1/v;->c(Ljava/lang/String;)Lq1/b0;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    if-nez p3, :cond_2

    .line 35
    .line 36
    const-string p3, "onTransferToRoute: Couldn\'t find a controller"

    .line 37
    .line 38
    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1, p2}, Lq1/j;->B(Lq1/v;J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p3, p1}, Lq1/b0;->p(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
