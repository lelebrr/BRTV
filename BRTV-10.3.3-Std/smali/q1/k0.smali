.class public Lq1/k0;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroidx/mediarouter/media/MediaRouteProviderService;

.field public final b:Ljava/util/ArrayList;

.field public c:Lq1/x;

.field public d:Lq1/x;

.field public e:J

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/lang/Object;

.field public final h:Lq1/v0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq1/k0;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lq1/k0;->f:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lq1/k0;->g:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Lq1/v0;

    .line 26
    .line 27
    new-instance v1, La/f;

    .line 28
    .line 29
    const/16 v2, 0x1c

    .line 30
    .line 31
    invoke-direct {v1, v2, p0}, La/f;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lq1/v0;-><init>(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lq1/k0;->h:Lq1/v0;

    .line 38
    .line 39
    iput-object p1, p0, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Landroid/os/Messenger;ILjava/lang/String;)Lq1/j0;
    .locals 1

    .line 1
    new-instance v0, Lq1/j0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lq1/j0;-><init>(Lq1/k0;Landroid/os/Messenger;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final c(Landroid/os/Messenger;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lq1/k0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lq1/j0;

    .line 15
    .line 16
    iget-object v3, v3, Lq1/j0;->a:Landroid/os/Messenger;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, -0x1

    .line 33
    return p1
.end method

.method public final d(Landroid/os/Messenger;)Lq1/j0;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lq1/k0;->c(Landroid/os/Messenger;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lq1/k0;->b:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lq1/j0;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lq1/k0;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v2, p0, Lq1/k0;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lq1/j0;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v2, Lq1/f0;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v2, v3}, Lq1/f0;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lq1/k0;->g:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v2, p0, Lq1/k0;->f:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ljava/util/Map$Entry;

    .line 74
    .line 75
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Lm0/a;

    .line 80
    .line 81
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 86
    .line 87
    new-instance v5, Landroidx/appcompat/app/m0;

    .line 88
    .line 89
    const/16 v6, 0xf

    .line 90
    .line 91
    invoke-direct {v5, v4, v6, v0}, Landroidx/appcompat/app/m0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto :goto_2

    .line 100
    :cond_1
    monitor-exit v1

    .line 101
    goto :goto_3

    .line 102
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw v0

    .line 104
    :cond_2
    :goto_3
    return-void
.end method

.method public f(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.media.MediaRouteProviderService"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->b()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouteProviderService;->a:Landroid/os/Messenger;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method public g(Landroidx/appcompat/app/r0;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lq1/k0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lq1/j0;

    .line 15
    .line 16
    iget-object v4, v3, Lq1/j0;->a:Landroid/os/Messenger;

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Lq1/j0;->a(Landroidx/appcompat/app/r0;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v5, 0x5

    .line 25
    const/4 v9, 0x0

    .line 26
    invoke-static/range {v4 .. v9}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lq1/k0;->h:Lq1/v0;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    iput-wide v2, v1, Lq1/v0;->c:J

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-boolean v4, v1, Lq1/v0;->e:Z

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    iput-wide v5, v1, Lq1/v0;->d:J

    .line 17
    .line 18
    iget-object v5, v1, Lq1/v0;->a:Landroid/os/Handler;

    .line 19
    .line 20
    iget-object v6, v1, Lq1/v0;->b:Ljava/lang/Runnable;

    .line 21
    .line 22
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    iget-object v7, v0, Lq1/k0;->d:Lq1/x;

    .line 26
    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    invoke-virtual {v7}, Lq1/x;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    iget-wide v9, v0, Lq1/k0;->e:J

    .line 34
    .line 35
    invoke-virtual {v1, v9, v10, v7}, Lq1/v0;->a(JZ)V

    .line 36
    .line 37
    .line 38
    new-instance v7, Lj3/c;

    .line 39
    .line 40
    iget-object v9, v0, Lq1/k0;->d:Lq1/x;

    .line 41
    .line 42
    invoke-virtual {v9}, Lq1/x;->a()V

    .line 43
    .line 44
    .line 45
    iget-object v9, v9, Lq1/x;->b:Lq1/l0;

    .line 46
    .line 47
    invoke-direct {v7, v9}, Lj3/c;-><init>(Lq1/l0;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v7, 0x0

    .line 52
    :goto_0
    iget-object v9, v0, Lq1/k0;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_1
    if-ge v11, v10, :cond_5

    .line 60
    .line 61
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    check-cast v12, Lq1/j0;

    .line 66
    .line 67
    iget-object v13, v12, Lq1/j0;->d:Lq1/x;

    .line 68
    .line 69
    if-eqz v13, :cond_1

    .line 70
    .line 71
    invoke-virtual {v13}, Lq1/x;->a()V

    .line 72
    .line 73
    .line 74
    iget-object v14, v13, Lq1/x;->b:Lq1/l0;

    .line 75
    .line 76
    invoke-virtual {v14}, Lq1/l0;->d()Z

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    if-eqz v14, :cond_2

    .line 81
    .line 82
    invoke-virtual {v13}, Lq1/x;->b()Z

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    if-eqz v14, :cond_1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_1
    move-object v15, v9

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    :goto_2
    invoke-virtual {v13}, Lq1/x;->b()Z

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    move-object v15, v9

    .line 96
    iget-wide v8, v12, Lq1/j0;->e:J

    .line 97
    .line 98
    invoke-virtual {v1, v8, v9, v14}, Lq1/v0;->a(JZ)V

    .line 99
    .line 100
    .line 101
    if-nez v7, :cond_3

    .line 102
    .line 103
    new-instance v7, Lj3/c;

    .line 104
    .line 105
    invoke-virtual {v13}, Lq1/x;->a()V

    .line 106
    .line 107
    .line 108
    iget-object v8, v13, Lq1/x;->b:Lq1/l0;

    .line 109
    .line 110
    invoke-direct {v7, v8}, Lj3/c;-><init>(Lq1/l0;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    invoke-virtual {v13}, Lq1/x;->a()V

    .line 115
    .line 116
    .line 117
    iget-object v8, v13, Lq1/x;->b:Lq1/l0;

    .line 118
    .line 119
    if-eqz v8, :cond_4

    .line 120
    .line 121
    invoke-virtual {v8}, Lq1/l0;->c()Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v7, v8}, Lj3/c;->a(Ljava/util/ArrayList;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    const-string v2, "selector must not be null"

    .line 132
    .line 133
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v1

    .line 137
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 138
    .line 139
    move-object v9, v15

    .line 140
    goto :goto_1

    .line 141
    :cond_5
    iget-boolean v8, v1, Lq1/v0;->e:Z

    .line 142
    .line 143
    if-eqz v8, :cond_6

    .line 144
    .line 145
    iget-wide v8, v1, Lq1/v0;->c:J

    .line 146
    .line 147
    cmp-long v10, v8, v2

    .line 148
    .line 149
    if-lez v10, :cond_6

    .line 150
    .line 151
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    .line 153
    .line 154
    :cond_6
    iget-boolean v1, v1, Lq1/v0;->e:Z

    .line 155
    .line 156
    if-nez v7, :cond_7

    .line 157
    .line 158
    const/4 v8, 0x0

    .line 159
    goto :goto_4

    .line 160
    :cond_7
    new-instance v8, Lq1/x;

    .line 161
    .line 162
    invoke-virtual {v7}, Lj3/c;->b()Lq1/l0;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-direct {v8, v2, v1}, Lq1/x;-><init>(Lq1/l0;Z)V

    .line 167
    .line 168
    .line 169
    :goto_4
    iget-object v1, v0, Lq1/k0;->c:Lq1/x;

    .line 170
    .line 171
    invoke-static {v1, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_9

    .line 176
    .line 177
    iput-object v8, v0, Lq1/k0;->c:Lq1/x;

    .line 178
    .line 179
    iget-object v1, v0, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 180
    .line 181
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 182
    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    invoke-virtual {v1, v8}, Lq1/e0;->g(Lq1/x;)V

    .line 186
    .line 187
    .line 188
    :cond_8
    const/4 v1, 0x1

    .line 189
    return v1

    .line 190
    :cond_9
    return v4
.end method
