.class public final Lq4/z;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lq4/z;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Ljava/lang/String;JIJJ)V
    .locals 2

    .line 1
    iget v0, p0, Lq4/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lq4/b;

    .line 10
    .line 11
    iget-object v0, v0, Lq4/b;->l:Lcom/google/android/gms/internal/cast/u4;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Lc2/b;->l()Lcom/google/android/gms/internal/cast/x7;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/google/android/gms/internal/cast/b0;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cast/b0;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-wide p2, v1, Lcom/google/android/gms/internal/cast/b0;->b:J

    .line 27
    .line 28
    iput p4, v1, Lcom/google/android/gms/internal/cast/b0;->c:I

    .line 29
    .line 30
    iput-wide p5, v1, Lcom/google/android/gms/internal/cast/b0;->d:J

    .line 31
    .line 32
    iput-wide p7, v1, Lcom/google/android/gms/internal/cast/b0;->e:J

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/cast/c0;

    .line 35
    .line 36
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/cast/c0;-><init>(Lcom/google/android/gms/internal/cast/b0;)V

    .line 37
    .line 38
    .line 39
    iget-wide p2, v0, Lcom/google/android/gms/internal/cast/x7;->h:J

    .line 40
    .line 41
    iput-wide p2, p1, Lcom/google/android/gms/internal/cast/c0;->f:J

    .line 42
    .line 43
    iget-object p2, v0, Lcom/google/android/gms/internal/cast/x7;->d:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/String;JIJJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public g([I)V
    .locals 2

    .line 1
    iget v0, p0, Lq4/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-static {p1}, Lv4/a;->d([I)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lr4/a;

    .line 14
    .line 15
    iget-object v1, v0, Lr4/a;->d:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lr4/a;->h()V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lr4/a;->f:Lr4/v;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lr4/a;->g:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    iput-object p1, v0, Lr4/a;->d:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-static {v0}, Lr4/a;->b(Lr4/a;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lr4/a;->g()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lr4/a;->f()V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final h([I)V
    .locals 0

    .line 1
    return-void
.end method

.method public i([II)V
    .locals 3

    .line 1
    iget v0, p0, Lq4/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lr4/a;

    .line 12
    .line 13
    iget-object p2, p2, Lr4/a;->d:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lr4/a;

    .line 23
    .line 24
    iget-object v1, v0, Lr4/a;->e:Landroid/util/SparseIntArray;

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-ne p2, v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lr4/a;->d()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lr4/a;

    .line 40
    .line 41
    invoke-virtual {v0}, Lr4/a;->h()V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lr4/a;->d:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-static {p1}, Lv4/a;->d([I)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lr4/a;->b(Lr4/a;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, v0, Lr4/a;->m:Ljava/util/Set;

    .line 57
    .line 58
    monitor-enter p1

    .line 59
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v0}, Lr4/a;->f()V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void

    .line 74
    :catchall_0
    move-exception p2

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-nez p2, :cond_3

    .line 81
    .line 82
    const/4 p2, 0x0

    .line 83
    throw p2

    .line 84
    :cond_3
    new-instance p2, Ljava/lang/ClassCastException;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/ClassCastException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p2

    .line 90
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p2

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final j([II)V
    .locals 0

    .line 1
    return-void
.end method

.method public k([Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 10

    .line 1
    iget v0, p0, Lq4/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lr4/a;

    .line 15
    .line 16
    iget-object v2, v1, Lr4/a;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    array-length v4, p1

    .line 23
    iget-object v5, v1, Lr4/a;->e:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    const/4 v6, -0x1

    .line 26
    if-ge v3, v4, :cond_1

    .line 27
    .line 28
    aget-object v4, p1, v3

    .line 29
    .line 30
    iget v7, v4, Lcom/google/android/gms/cast/MediaQueueItem;->b:I

    .line 31
    .line 32
    iget-object v8, v1, Lr4/a;->f:Lr4/v;

    .line 33
    .line 34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    invoke-virtual {v8, v9, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ne v4, v6, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Lr4/a;->d()V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v5, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eq v3, v6, :cond_2

    .line 86
    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 96
    .line 97
    .line 98
    new-instance p1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lr4/a;->h()V

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Lv4/a;->f(Ljava/util/AbstractCollection;)[I

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Lr4/a;->a(Lr4/a;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Lr4/a;->f()V

    .line 116
    .line 117
    .line 118
    :goto_2
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final l([Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 0

    .line 1
    return-void
.end method

.method public m([I)V
    .locals 7

    .line 1
    iget v0, p0, Lq4/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, p1

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    aget v2, p1, v1

    .line 17
    .line 18
    iget-object v3, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Lr4/a;

    .line 21
    .line 22
    iget-object v4, v3, Lr4/a;->f:Lr4/v;

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v4, v3, Lr4/a;->e:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    const/4 v5, -0x1

    .line 34
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-ne v6, v5, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Lr4/a;->d()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lr4/a;

    .line 70
    .line 71
    invoke-virtual {v1}, Lr4/a;->h()V

    .line 72
    .line 73
    .line 74
    iget-object v2, v1, Lr4/a;->d:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-static {p1}, Lv4/a;->d([I)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lr4/a;->b(Lr4/a;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lv4/a;->f(Ljava/util/AbstractCollection;)[I

    .line 87
    .line 88
    .line 89
    iget-object p1, v1, Lr4/a;->m:Ljava/util/Set;

    .line 90
    .line 91
    monitor-enter p1

    .line 92
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_3

    .line 101
    .line 102
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v1}, Lr4/a;->f()V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-nez v0, :cond_4

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    throw v0

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    throw v0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final n([I)V
    .locals 0

    .line 1
    return-void
.end method

.method public o(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 5

    .line 1
    iget v0, p0, Lq4/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    iget-object p3, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p3, Lr4/a;

    .line 18
    .line 19
    iget-object p3, p3, Lr4/a;->d:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object p3, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p3, Lr4/a;

    .line 35
    .line 36
    iget-object p3, p3, Lr4/a;->a:Lv4/b;

    .line 37
    .line 38
    new-array v2, v3, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v3, "Received a Queue Reordered message with an empty reordered items IDs list."

    .line 41
    .line 42
    iget-object v4, p3, Lv4/b;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p3, v3, v2}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {v4, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v2, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lr4/a;

    .line 55
    .line 56
    iget-object v2, v2, Lr4/a;->e:Landroid/util/SparseIntArray;

    .line 57
    .line 58
    invoke-virtual {v2, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-ne p3, v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    check-cast p3, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    invoke-virtual {v2, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-eqz p3, :cond_4

    .line 86
    .line 87
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    check-cast p3, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    iget-object v2, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Lr4/a;

    .line 100
    .line 101
    iget-object v3, v2, Lr4/a;->e:Landroid/util/SparseIntArray;

    .line 102
    .line 103
    invoke-virtual {v3, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-ne p3, v1, :cond_3

    .line 108
    .line 109
    invoke-virtual {v2}, Lr4/a;->d()V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    iget-object p2, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p2, Lr4/a;

    .line 124
    .line 125
    invoke-virtual {p2}, Lr4/a;->h()V

    .line 126
    .line 127
    .line 128
    iput-object p1, p2, Lr4/a;->d:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-static {p2}, Lr4/a;->b(Lr4/a;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p2, Lr4/a;->m:Ljava/util/Set;

    .line 134
    .line 135
    monitor-enter p1

    .line 136
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_5

    .line 145
    .line 146
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {p2}, Lr4/a;->f()V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void

    .line 151
    :catchall_0
    move-exception p2

    .line 152
    goto :goto_3

    .line 153
    :cond_5
    :try_start_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    if-nez p2, :cond_6

    .line 158
    .line 159
    const/4 p2, 0x0

    .line 160
    throw p2

    .line 161
    :cond_6
    new-instance p2, Ljava/lang/ClassCastException;

    .line 162
    .line 163
    invoke-direct {p2}, Ljava/lang/ClassCastException;-><init>()V

    .line 164
    .line 165
    .line 166
    throw p2

    .line 167
    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    throw p2

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final p(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public q([I)V
    .locals 6

    .line 1
    iget v0, p0, Lq4/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, p1

    .line 14
    iget-object v3, p0, Lq4/z;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lr4/a;

    .line 17
    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    aget v2, p1, v1

    .line 21
    .line 22
    iget-object v4, v3, Lr4/a;->f:Lr4/v;

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v4, v3, Lr4/a;->e:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    const/4 v5, -0x1

    .line 34
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v2, v5, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Lr4/a;->d()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lr4/a;->h()V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lv4/a;->f(Ljava/util/AbstractCollection;)[I

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Lr4/a;->a(Lr4/a;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lr4/a;->f()V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final r([I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final s()V
    .locals 0

    .line 1
    return-void
.end method
