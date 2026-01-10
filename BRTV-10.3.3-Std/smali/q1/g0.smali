.class public final Lq1/g0;
.super Lq1/j0;
.source "MyApplication"


# instance fields
.field public final i:Lp/e;

.field public final j:Landroid/os/Handler;

.field public final k:Ljava/util/Map;

.field public final synthetic l:Lq1/h0;


# direct methods
.method public constructor <init>(Lq1/h0;Landroid/os/Messenger;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/g0;->l:Lq1/h0;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lq1/j0;-><init>(Lq1/k0;Landroid/os/Messenger;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lp/e;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-direct {p1, p2}, Lp/l;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lq1/g0;->i:Lp/e;

    .line 13
    .line 14
    new-instance p1, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    invoke-direct {p1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lq1/g0;->j:Landroid/os/Handler;

    .line 24
    .line 25
    const/4 p1, 0x4

    .line 26
    if-ge p3, p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Lp/e;

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lp/l;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lq1/g0;->k:Ljava/util/Map;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lq1/g0;->k:Ljava/util/Map;

    .line 41
    .line 42
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/app/r0;)Landroid/os/Bundle;
    .locals 10

    .line 1
    iget-object v0, p0, Lq1/g0;->k:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Lq1/j0;->b:I

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v2}, Landroidx/mediarouter/media/MediaRouteProviderService;->a(Landroidx/appcompat/app/r0;I)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v3, p1, Landroidx/appcompat/app/r0;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lq1/w;

    .line 40
    .line 41
    invoke-virtual {v4}, Lq1/w;->f()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    new-instance v5, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v5, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v5, Ljava/util/HashSet;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v5, Landroid/os/Bundle;

    .line 67
    .line 68
    iget-object v6, v4, Lq1/w;->a:Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Lq1/w;->d()Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v4}, Lq1/w;->b()Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v4}, Lq1/w;->a()Ljava/util/HashSet;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v8, "enabled"

    .line 86
    .line 87
    const/4 v9, 0x0

    .line 88
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    new-instance v8, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .line 95
    .line 96
    const-string v7, "controlFilters"

    .line 97
    .line 98
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 99
    .line 100
    .line 101
    new-instance v7, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    .line 105
    .line 106
    const-string v6, "groupMemberIds"

    .line 107
    .line 108
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 109
    .line 110
    .line 111
    new-instance v6, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .line 115
    .line 116
    const-string v4, "allowedPackages"

    .line 117
    .line 118
    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 119
    .line 120
    .line 121
    new-instance v4, Lq1/w;

    .line 122
    .line 123
    invoke-direct {v4, v5}, Lq1/w;-><init>(Landroid/os/Bundle;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v3, p1, Landroidx/appcompat/app/r0;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v3, Ljava/util/List;

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    new-instance v1, Landroidx/appcompat/app/r0;

    .line 153
    .line 154
    iget-boolean p1, p1, Landroidx/appcompat/app/r0;->b:Z

    .line 155
    .line 156
    invoke-direct {v1, v0, p1}, Landroidx/appcompat/app/r0;-><init>(Ljava/util/ArrayList;Z)V

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v2}, Landroidx/mediarouter/media/MediaRouteProviderService;->a(Landroidx/appcompat/app/r0;I)Landroid/os/Bundle;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    return-object p1
.end method

.method public final b(Ljava/lang/String;Lq1/d0;I)Landroid/os/Bundle;
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Lq1/j0;->b(Ljava/lang/String;Lq1/d0;I)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lq1/j0;->c:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lq1/g0;->l:Lq1/h0;

    .line 12
    .line 13
    iget-object v1, v0, Lq1/h0;->i:Lq1/v;

    .line 14
    .line 15
    iget-object v0, p0, Lq1/j0;->f:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v3, v0

    .line 22
    check-cast v3, Lq1/c0;

    .line 23
    .line 24
    iget-object v5, p0, Lq1/j0;->c:Ljava/lang/String;

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    move v4, p3

    .line 28
    move-object v6, p1

    .line 29
    invoke-virtual/range {v1 .. v6}, Lq1/v;->e(Lq1/g0;Lq1/c0;ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object p2
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lq1/d0;I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lq1/g0;->i:Lp/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lq1/c0;

    .line 8
    .line 9
    iget-object v2, p0, Lq1/j0;->f:Landroid/util/SparseArray;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2, p4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lq1/j0;->c(Ljava/lang/String;Ljava/lang/String;Lq1/d0;I)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Lq1/j0;->c:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget-object p2, p0, Lq1/g0;->l:Lq1/h0;

    .line 31
    .line 32
    iget-object v3, p2, Lq1/h0;->i:Lq1/v;

    .line 33
    .line 34
    invoke-virtual {v2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    move-object v5, p2

    .line 39
    check-cast v5, Lq1/c0;

    .line 40
    .line 41
    iget-object v7, p0, Lq1/j0;->c:Ljava/lang/String;

    .line 42
    .line 43
    move-object v4, p0

    .line 44
    move v6, p4

    .line 45
    move-object v8, p1

    .line 46
    invoke-virtual/range {v3 .. v8}, Lq1/v;->e(Lq1/g0;Lq1/c0;ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    if-eqz p3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lq1/c0;

    .line 56
    .line 57
    invoke-virtual {v0, p1, p2}, Lp/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_2
    return p3
.end method

.method public final d()V
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
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    iget-object v4, p0, Lq1/g0;->l:Lq1/h0;

    .line 15
    .line 16
    iget-object v4, v4, Lq1/h0;->i:Lq1/v;

    .line 17
    .line 18
    invoke-virtual {v4, v3}, Lq1/v;->f(I)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lq1/g0;->i:Lp/e;

    .line 25
    .line 26
    invoke-virtual {v0}, Lp/l;->clear()V

    .line 27
    .line 28
    .line 29
    invoke-super {p0}, Lq1/j0;->d()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final f(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lq1/g0;->l:Lq1/h0;

    .line 2
    .line 3
    iget-object v1, v0, Lq1/h0;->i:Lq1/v;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lq1/v;->f(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lq1/j0;->f:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lq1/c0;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lq1/g0;->i:Lp/e;

    .line 19
    .line 20
    invoke-virtual {v2}, Lp/e;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ld7/g0;

    .line 25
    .line 26
    invoke-virtual {v3}, Ld7/g0;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/util/Map$Entry;

    .line 41
    .line 42
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-ne v5, v1, :cond_0

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v2, v1}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v1, p0, Lq1/g0;->k:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-ne v4, p1, :cond_2

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-nez v1, :cond_3

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, v0, Lq1/k0;->a:Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 103
    .line 104
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProviderService;->d:Lq1/e0;

    .line 105
    .line 106
    iget-object v0, v0, Lq1/e0;->g:Landroidx/appcompat/app/r0;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lq1/g0;->a(Landroidx/appcompat/app/r0;)Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const/4 v3, 0x0

    .line 115
    const/4 v4, 0x0

    .line 116
    iget-object v1, p0, Lq1/j0;->a:Landroid/os/Messenger;

    .line 117
    .line 118
    const/4 v2, 0x5

    .line 119
    const/4 v6, 0x0

    .line 120
    invoke-static/range {v1 .. v6}, Landroidx/mediarouter/media/MediaRouteProviderService;->e(Landroid/os/Messenger;IIILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lq1/j0;->f(I)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    return p1
.end method

.method public final g(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lq1/j0;->g(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq1/g0;->l:Lq1/h0;

    .line 5
    .line 6
    iget-object v0, v0, Lq1/h0;->i:Lq1/v;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lq1/v;->g(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
