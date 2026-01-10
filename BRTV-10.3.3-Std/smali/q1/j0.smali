.class public Lq1/j0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final a:Landroid/os/Messenger;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:Lq1/x;

.field public e:J

.field public final f:Landroid/util/SparseArray;

.field public final g:Lj7/c;

.field public final synthetic h:Lq1/k0;


# direct methods
.method public constructor <init>(Lq1/k0;Landroid/os/Messenger;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq1/j0;->h:Lq1/k0;

    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lq1/j0;->f:Landroid/util/SparseArray;

    .line 12
    .line 13
    new-instance p1, Lj7/c;

    .line 14
    .line 15
    const/16 v0, 0x1a

    .line 16
    .line 17
    invoke-direct {p1, v0, p0}, Lj7/c;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lq1/j0;->g:Lj7/c;

    .line 21
    .line 22
    iput-object p2, p0, Lq1/j0;->a:Landroid/os/Messenger;

    .line 23
    .line 24
    iput p3, p0, Lq1/j0;->b:I

    .line 25
    .line 26
    iput-object p4, p0, Lq1/j0;->c:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/app/r0;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget v0, p0, Lq1/j0;->b:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/mediarouter/media/MediaRouteProviderService;->a(Landroidx/appcompat/app/r0;I)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Ljava/lang/String;Lq1/d0;I)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lq1/j0;->f:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lq1/j0;->h:Lq1/k0;

    .line 10
    .line 11
    iget-object v2, v1, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 12
    .line 13
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 14
    .line 15
    invoke-virtual {v2, p1, p2}, Lq1/e0;->a(Ljava/lang/String;Lq1/d0;)Lq1/b0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p2, v1, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p2}, Lu7/d;->m(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object v1, p0, Lq1/j0;->g:Lj7/c;

    .line 32
    .line 33
    invoke-virtual {p1, p2, v1}, Lq1/b0;->q(Ljava/util/concurrent/Executor;Lq1/a0;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string p3, "groupableTitle"

    .line 45
    .line 46
    invoke-virtual {p1}, Lq1/b0;->k()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p3, "transferableTitle"

    .line 54
    .line 55
    invoke-virtual {p1}, Lq1/b0;->l()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_0
    const/4 p1, 0x0

    .line 64
    return-object p1
.end method

.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq1/j0;->h:Lq1/k0;

    .line 2
    .line 3
    iget-object v0, v0, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProviderService;->b:Landroidx/mediarouter/app/c;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lq1/j0;->a:Landroid/os/Messenger;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lq1/d0;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/j0;->f:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lq1/j0;->h:Lq1/k0;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iget-object p2, v1, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 14
    .line 15
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 16
    .line 17
    invoke-virtual {p2, p1, p3}, Lq1/e0;->d(Ljava/lang/String;Lq1/d0;)Lq1/c0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p3, v1, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 23
    .line 24
    iget-object p3, p3, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 25
    .line 26
    invoke-virtual {p3, p1, p2}, Lq1/e0;->c(Ljava/lang/String;Ljava/lang/String;)Lq1/c0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq1/j0;->f:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lq1/c0;

    .line 16
    .line 17
    invoke-virtual {v4}, Lq1/c0;->e()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lq1/j0;->a:Landroid/os/Messenger;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-object v2, p0, Lq1/j0;->d:Lq1/x;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    iput-object v3, p0, Lq1/j0;->d:Lq1/x;

    .line 49
    .line 50
    iput-wide v0, p0, Lq1/j0;->e:J

    .line 51
    .line 52
    iget-object v0, p0, Lq1/j0;->h:Lq1/k0;

    .line 53
    .line 54
    invoke-virtual {v0}, Lq1/k0;->h()Z

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public final e(I)Lq1/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lq1/j0;->f:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lq1/c0;

    .line 8
    .line 9
    return-object p1
.end method

.method public f(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/j0;->f:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lq1/c0;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lq1/c0;->e()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public g(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lq1/j0;->f:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string p3, "Ignoring unknown dynamic group route controller: "

    .line 12
    .line 13
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "MediaRouteProviderSrv"

    .line 24
    .line 25
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lq1/z;

    .line 53
    .line 54
    iget-object v1, v0, Lq1/z;->f:Landroid/os/Bundle;

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    new-instance v1, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v1, v0, Lq1/z;->f:Landroid/os/Bundle;

    .line 64
    .line 65
    iget-object v2, v0, Lq1/z;->a:Lq1/w;

    .line 66
    .line 67
    iget-object v2, v2, Lq1/w;->a:Landroid/os/Bundle;

    .line 68
    .line 69
    const-string v4, "mrDescriptor"

    .line 70
    .line 71
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lq1/z;->f:Landroid/os/Bundle;

    .line 75
    .line 76
    const-string v2, "selectionState"

    .line 77
    .line 78
    iget v4, v0, Lq1/z;->b:I

    .line 79
    .line 80
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lq1/z;->f:Landroid/os/Bundle;

    .line 84
    .line 85
    const-string v2, "isUnselectable"

    .line 86
    .line 87
    iget-boolean v4, v0, Lq1/z;->c:Z

    .line 88
    .line 89
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lq1/z;->f:Landroid/os/Bundle;

    .line 93
    .line 94
    const-string v2, "isGroupable"

    .line 95
    .line 96
    iget-boolean v4, v0, Lq1/z;->d:Z

    .line 97
    .line 98
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lq1/z;->f:Landroid/os/Bundle;

    .line 102
    .line 103
    const-string v2, "isTransferable"

    .line 104
    .line 105
    iget-boolean v4, v0, Lq1/z;->e:Z

    .line 106
    .line 107
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v0, v0, Lq1/z;->f:Landroid/os/Bundle;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    new-instance v4, Landroid/os/Bundle;

    .line 117
    .line 118
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 119
    .line 120
    .line 121
    if-eqz p2, :cond_3

    .line 122
    .line 123
    const-string p3, "groupRoute"

    .line 124
    .line 125
    iget-object p2, p2, Lq1/w;->a:Landroid/os/Bundle;

    .line 126
    .line 127
    invoke-virtual {v4, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    const-string p2, "dynamicRoutes"

    .line 131
    .line 132
    invoke-virtual {v4, p2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lq1/j0;->a:Landroid/os/Messenger;

    .line 136
    .line 137
    const/4 v1, 0x7

    .line 138
    const/4 v2, 0x0

    .line 139
    const/4 v5, 0x0

    .line 140
    invoke-static/range {v0 .. v5}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroidx/mediarouter/media/MediaRouteProviderService;->f:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Client connection "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lq1/j0;->a:Landroid/os/Messenger;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
