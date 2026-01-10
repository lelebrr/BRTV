.class public final Lq1/u;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Lp/e;

.field public final b:Lq1/b0;

.field public final c:J

.field public final d:I

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z

.field public g:Z

.field public h:Landroid/media/RoutingSessionInfo;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final synthetic k:Lq1/v;


# direct methods
.method public constructor <init>(Lq1/v;Lq1/b0;JILq1/g0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq1/u;->k:Lq1/v;

    .line 5
    .line 6
    new-instance p1, Lp/e;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Lp/l;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lq1/u;->a:Lp/e;

    .line 13
    .line 14
    iput-boolean v0, p0, Lq1/u;->f:Z

    .line 15
    .line 16
    iput-object p2, p0, Lq1/u;->b:Lq1/b0;

    .line 17
    .line 18
    iput-wide p3, p0, Lq1/u;->c:J

    .line 19
    .line 20
    iput p5, p0, Lq1/u;->d:I

    .line 21
    .line 22
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lq1/u;->e:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lq1/u;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget v0, p0, Lq1/u;->d:I

    .line 6
    .line 7
    and-int/lit8 v1, v0, 0x3

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lq1/u;->h:Landroid/media/RoutingSessionInfo;

    .line 13
    .line 14
    sget-object v2, Lq1/d0;->b:Lq1/d0;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v3, v1, v3, v2}, Lq1/u;->c(Ljava/lang/String;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;Lq1/d0;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    if-eqz p1, :cond_5

    .line 22
    .line 23
    iget-object p1, p0, Lq1/u;->b:Lq1/b0;

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-virtual {p1, v2}, Lq1/c0;->i(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lq1/c0;->e()V

    .line 30
    .line 31
    .line 32
    and-int/2addr v0, v1

    .line 33
    if-nez v0, :cond_5

    .line 34
    .line 35
    iget-object v0, p0, Lq1/u;->e:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lq1/g0;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    instance-of v2, p1, Lq1/r;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    check-cast p1, Lq1/r;

    .line 50
    .line 51
    iget-object p1, p1, Lq1/r;->g:Lq1/c0;

    .line 52
    .line 53
    :cond_1
    iget-object v2, p0, Lq1/u;->j:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, v0, Lq1/j0;->f:Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-gez p1, :cond_2

    .line 62
    .line 63
    const/4 p1, -0x1

    .line 64
    const/4 v6, -0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    move v6, p1

    .line 71
    :goto_0
    invoke-virtual {v0, v6}, Lq1/g0;->f(I)Z

    .line 72
    .line 73
    .line 74
    iget p1, v0, Lq1/j0;->b:I

    .line 75
    .line 76
    const/4 v3, 0x4

    .line 77
    if-lt p1, v3, :cond_4

    .line 78
    .line 79
    if-gez v6, :cond_3

    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v0, "releaseControllerByProvider: Can\'t find the controller. route ID="

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v0, "MediaRouteProviderSrv"

    .line 96
    .line 97
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    iget-object v3, v0, Lq1/j0;->a:Landroid/os/Messenger;

    .line 104
    .line 105
    const/16 v4, 0x8

    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    invoke-static/range {v3 .. v8}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object v3, v0, Lq1/g0;->k:Ljava/util/Map;

    .line 117
    .line 118
    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iget-object p1, v0, Lq1/g0;->j:Landroid/os/Handler;

    .line 122
    .line 123
    new-instance v3, Landroidx/appcompat/app/m0;

    .line 124
    .line 125
    const/16 v4, 0xe

    .line 126
    .line 127
    invoke-direct {v3, v0, v4, v2}, Landroidx/appcompat/app/m0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const-wide/16 v4, 0x1388

    .line 131
    .line 132
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    .line 134
    .line 135
    iget-object p1, v0, Lq1/g0;->l:Lq1/h0;

    .line 136
    .line 137
    iget-object p1, p1, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 138
    .line 139
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 140
    .line 141
    iget-object p1, p1, Lq1/e0;->g:Landroidx/appcompat/app/r0;

    .line 142
    .line 143
    if-eqz p1, :cond_5

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Lq1/g0;->a(Landroidx/appcompat/app/r0;)Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    const/4 v3, 0x5

    .line 150
    const/4 v7, 0x0

    .line 151
    iget-object v2, v0, Lq1/j0;->a:Landroid/os/Messenger;

    .line 152
    .line 153
    const/4 v4, 0x0

    .line 154
    const/4 v5, 0x0

    .line 155
    invoke-static/range {v2 .. v7}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 156
    .line 157
    .line 158
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lq1/u;->g:Z

    .line 159
    .line 160
    iget-object p1, p0, Lq1/u;->k:Lq1/v;

    .line 161
    .line 162
    iget-object v0, p0, Lq1/u;->i:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {p1, v0}, Lq1/j;->v(Lq1/v;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_6
    return-void
.end method

.method public final b(Landroid/media/RoutingSessionInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lq1/u;->h:Landroid/media/RoutingSessionInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, "MR2ProviderService"

    .line 6
    .line 7
    const-string v0, "setSessionInfo: This shouldn\'t be called after sessionInfo is set"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Landroid/os/Messenger;

    .line 14
    .line 15
    new-instance v1, Lq1/s;

    .line 16
    .line 17
    iget-object v2, p0, Lq1/u;->k:Lq1/v;

    .line 18
    .line 19
    iget-object v3, p0, Lq1/u;->i:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Lq1/s;-><init>(Lq1/v;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lq1/j;->d(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "androidx.mediarouter.media.KEY_MESSENGER"

    .line 37
    .line 38
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lq1/j;->i(Landroid/media/RoutingSessionInfo;)Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-static {p1}, Lq1/j;->i(Landroid/media/RoutingSessionInfo;)Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p1, 0x0

    .line 57
    :goto_0
    const-string v0, "androidx.mediarouter.media.KEY_SESSION_NAME"

    .line 58
    .line 59
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Lq1/j;->b(Landroid/media/RoutingSessionInfo$Builder;Landroid/os/Bundle;)Landroid/media/RoutingSessionInfo$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lq1/j;->f(Landroid/media/RoutingSessionInfo$Builder;)Landroid/media/RoutingSessionInfo;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lq1/u;->h:Landroid/media/RoutingSessionInfo;

    .line 71
    .line 72
    return-void
.end method

.method public final c(Ljava/lang/String;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;Lq1/d0;)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Lq1/j;->j(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :goto_0
    if-nez p3, :cond_1

    .line 13
    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-static {p3}, Lq1/j;->j(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lq1/u;->a:Lp/e;

    .line 32
    .line 33
    if-eqz v1, :cond_9

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p0, Lq1/u;->e:Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lq1/g0;

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    iget-object v3, v3, Lq1/g0;->i:Lp/e;

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lq1/c0;

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    invoke-virtual {v2, v1}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lq1/c0;

    .line 65
    .line 66
    :goto_3
    if-nez v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lq1/c0;

    .line 73
    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    goto :goto_7

    .line 77
    :cond_4
    const/4 v3, 0x0

    .line 78
    iget-object v4, p0, Lq1/u;->k:Lq1/v;

    .line 79
    .line 80
    if-nez p1, :cond_6

    .line 81
    .line 82
    iget-object v4, v4, Lq1/v;->b:Lq1/h0;

    .line 83
    .line 84
    iget-object v4, v4, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 85
    .line 86
    if-nez v4, :cond_5

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_5
    iget-object v3, v4, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 90
    .line 91
    :goto_4
    invoke-virtual {v3, v1, p4}, Lq1/e0;->d(Ljava/lang/String;Lq1/d0;)Lq1/c0;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    goto :goto_6

    .line 96
    :cond_6
    iget-object v4, v4, Lq1/v;->b:Lq1/h0;

    .line 97
    .line 98
    iget-object v4, v4, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 99
    .line 100
    if-nez v4, :cond_7

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_7
    iget-object v3, v4, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 104
    .line 105
    :goto_5
    invoke-virtual {v3, v1, p1}, Lq1/e0;->c(Ljava/lang/String;Ljava/lang/String;)Lq1/c0;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :goto_6
    if-eqz v3, :cond_8

    .line 110
    .line 111
    invoke-virtual {v2, v1, v3}, Lp/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_8
    :goto_7
    if-eqz v3, :cond_2

    .line 115
    .line 116
    invoke-virtual {v3}, Lq1/c0;->f()V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :cond_a
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_b

    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    check-cast p2, Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p4

    .line 140
    if-nez p4, :cond_a

    .line 141
    .line 142
    invoke-virtual {v2, p2}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    check-cast p2, Lq1/c0;

    .line 147
    .line 148
    if-eqz p2, :cond_a

    .line 149
    .line 150
    const/4 p4, 0x0

    .line 151
    invoke-virtual {p2, p4}, Lq1/c0;->i(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Lq1/c0;->e()V

    .line 155
    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_b
    return-void
.end method

.method public final d(Lq1/w;Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lq1/u;->h:Landroid/media/RoutingSessionInfo;

    .line 2
    .line 3
    const-string v1, "MR2ProviderService"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "updateSessionInfo: mSessionInfo is null. This shouldn\'t happen."

    .line 8
    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x1

    .line 14
    iget-object v3, p0, Lq1/u;->k:Lq1/v;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string v4, "enabled"

    .line 19
    .line 20
    iget-object v5, p1, Lq1/w;->a:Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    const-wide/16 p1, 0x0

    .line 29
    .line 30
    iget-object v0, p0, Lq1/u;->i:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3, p1, p2, v0}, Lq1/v;->onReleaseSession(JLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {v0}, Lq1/j;->d(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    invoke-virtual {p1}, Lq1/w;->f()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iput-object v5, p0, Lq1/u;->j:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1}, Lq1/w;->g()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v4, v5}, Lq1/j;->c(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {p1}, Lq1/w;->h()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    invoke-static {v5, v6}, Lq1/j;->y(Landroid/media/RoutingSessionInfo$Builder;I)Landroid/media/RoutingSessionInfo$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p1}, Lq1/w;->j()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    invoke-static {v5, v6}, Lq1/j;->C(Landroid/media/RoutingSessionInfo$Builder;I)Landroid/media/RoutingSessionInfo$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {p1}, Lq1/w;->i()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    invoke-static {v5, v6}, Lq1/j;->p(Landroid/media/RoutingSessionInfo$Builder;I)V

    .line 77
    .line 78
    .line 79
    invoke-static {v4}, Lq1/j;->o(Landroid/media/RoutingSessionInfo$Builder;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_2

    .line 91
    .line 92
    iget-object v5, p0, Lq1/u;->j:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v4, v5}, Lq1/j;->r(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {p1}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_3

    .line 111
    .line 112
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v4, v6}, Lq1/j;->r(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    :goto_1
    invoke-static {v0}, Lq1/j;->h(Landroid/media/RoutingSessionInfo;)Landroid/os/Bundle;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    if-nez v5, :cond_4

    .line 127
    .line 128
    const-string v5, "updateSessionInfo: controlHints is null. This shouldn\'t happen."

    .line 129
    .line 130
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    new-instance v5, Landroid/os/Bundle;

    .line 134
    .line 135
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 136
    .line 137
    .line 138
    :cond_4
    const-string v6, "androidx.mediarouter.media.KEY_SESSION_NAME"

    .line 139
    .line 140
    invoke-virtual {p1}, Lq1/w;->g()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v6, "androidx.mediarouter.media.KEY_GROUP_ROUTE"

    .line 148
    .line 149
    iget-object v7, p1, Lq1/w;->a:Landroid/os/Bundle;

    .line 150
    .line 151
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v4, v5}, Lq1/j;->q(Landroid/media/RoutingSessionInfo$Builder;Landroid/os/Bundle;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    invoke-static {v4}, Lq1/j;->f(Landroid/media/RoutingSessionInfo$Builder;)Landroid/media/RoutingSessionInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    iput-object v5, p0, Lq1/u;->h:Landroid/media/RoutingSessionInfo;

    .line 162
    .line 163
    if-eqz p2, :cond_c

    .line 164
    .line 165
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-nez v5, :cond_c

    .line 170
    .line 171
    invoke-static {v4}, Lq1/j;->o(Landroid/media/RoutingSessionInfo$Builder;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v4}, Lq1/j;->A(Landroid/media/RoutingSessionInfo$Builder;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v4}, Lq1/t;->o(Landroid/media/RoutingSessionInfo$Builder;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v4}, Lq1/t;->v(Landroid/media/RoutingSessionInfo$Builder;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    const/4 v5, 0x0

    .line 188
    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-eqz v6, :cond_b

    .line 193
    .line 194
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    check-cast v6, Lq1/z;

    .line 199
    .line 200
    iget-object v7, v6, Lq1/z;->a:Lq1/w;

    .line 201
    .line 202
    invoke-virtual {v7}, Lq1/w;->f()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    const/4 v8, 0x2

    .line 207
    iget v9, v6, Lq1/z;->b:I

    .line 208
    .line 209
    if-eq v9, v8, :cond_7

    .line 210
    .line 211
    const/4 v8, 0x3

    .line 212
    if-ne v9, v8, :cond_8

    .line 213
    .line 214
    :cond_7
    invoke-static {v4, v7}, Lq1/j;->r(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const/4 v5, 0x1

    .line 218
    :cond_8
    iget-boolean v8, v6, Lq1/z;->d:Z

    .line 219
    .line 220
    if-eqz v8, :cond_9

    .line 221
    .line 222
    invoke-static {v4, v7}, Lq1/t;->p(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_9
    iget-boolean v8, v6, Lq1/z;->c:Z

    .line 226
    .line 227
    if-eqz v8, :cond_a

    .line 228
    .line 229
    invoke-static {v4, v7}, Lq1/t;->w(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_a
    iget-boolean v6, v6, Lq1/z;->e:Z

    .line 233
    .line 234
    if-eqz v6, :cond_6

    .line 235
    .line 236
    invoke-static {v4, v7}, Lq1/t;->A(Landroid/media/RoutingSessionInfo$Builder;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_b
    if-eqz v5, :cond_c

    .line 241
    .line 242
    invoke-static {v4}, Lq1/j;->f(Landroid/media/RoutingSessionInfo$Builder;)Landroid/media/RoutingSessionInfo;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    iput-object p2, p0, Lq1/u;->h:Landroid/media/RoutingSessionInfo;

    .line 247
    .line 248
    :cond_c
    sget p2, Lq1/v;->f:I

    .line 249
    .line 250
    iget p2, p0, Lq1/u;->d:I

    .line 251
    .line 252
    const/4 v4, 0x5

    .line 253
    and-int/2addr p2, v4

    .line 254
    if-ne p2, v4, :cond_d

    .line 255
    .line 256
    if-eqz p1, :cond_d

    .line 257
    .line 258
    invoke-virtual {p1}, Lq1/w;->f()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iget-object p2, p0, Lq1/u;->h:Landroid/media/RoutingSessionInfo;

    .line 263
    .line 264
    sget-object v4, Lq1/d0;->b:Lq1/d0;

    .line 265
    .line 266
    invoke-virtual {p0, p1, v0, p2, v4}, Lq1/u;->c(Ljava/lang/String;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;Lq1/d0;)V

    .line 267
    .line 268
    .line 269
    :cond_d
    iget-boolean p1, p0, Lq1/u;->f:Z

    .line 270
    .line 271
    if-nez p1, :cond_f

    .line 272
    .line 273
    if-eqz p1, :cond_e

    .line 274
    .line 275
    const-string p1, "notifySessionCreated: Routing session is already created."

    .line 276
    .line 277
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_e
    iput-boolean v2, p0, Lq1/u;->f:Z

    .line 282
    .line 283
    iget-wide p1, p0, Lq1/u;->c:J

    .line 284
    .line 285
    iget-object v0, p0, Lq1/u;->h:Landroid/media/RoutingSessionInfo;

    .line 286
    .line 287
    invoke-static {v3, p1, p2, v0}, Lq1/j;->t(Lq1/v;JLandroid/media/RoutingSessionInfo;)V

    .line 288
    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_f
    iget-object p1, p0, Lq1/u;->h:Landroid/media/RoutingSessionInfo;

    .line 292
    .line 293
    invoke-static {v3, p1}, Lq1/j;->u(Lq1/v;Landroid/media/RoutingSessionInfo;)V

    .line 294
    .line 295
    .line 296
    :goto_3
    return-void
.end method
