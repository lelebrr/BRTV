.class public final Lc7/q;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MyApplication"


# instance fields
.field public final a:Lc7/b0;

.field public volatile b:I

.field public c:J

.field public d:I

.field public e:I

.field public volatile f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final g:J

.field public final h:Ljava/lang/ref/ReferenceQueue;

.field public final i:Ljava/lang/ref/ReferenceQueue;

.field public final j:Ljava/util/AbstractQueue;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final l:Ljava/util/AbstractQueue;

.field public final m:Ljava/util/AbstractQueue;

.field public final n:Lx4/e;


# direct methods
.method public constructor <init>(Lc7/b0;IJLx4/e;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc7/q;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    iput-object p1, p0, Lc7/q;->a:Lc7/b0;

    .line 12
    .line 13
    iput-wide p3, p0, Lc7/q;->g:J

    .line 14
    .line 15
    iput-object p5, p0, Lc7/q;->n:Lx4/e;

    .line 16
    .line 17
    new-instance p5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 18
    .line 19
    invoke-direct {p5, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    mul-int/lit8 p2, p2, 0x3

    .line 27
    .line 28
    div-int/lit8 p2, p2, 0x4

    .line 29
    .line 30
    iput p2, p0, Lc7/q;->e:I

    .line 31
    .line 32
    sget-object v0, Lc7/c;->a:Lc7/c;

    .line 33
    .line 34
    iget-object v1, p1, Lc7/b0;->j:Lc7/c;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-eq v1, v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    int-to-long v0, p2

    .line 41
    cmp-long v3, v0, p3

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    add-int/2addr p2, v2

    .line 46
    iput p2, p0, Lc7/q;->e:I

    .line 47
    .line 48
    :cond_1
    :goto_0
    iput-object p5, p0, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 49
    .line 50
    iget p2, p1, Lc7/b0;->g:I

    .line 51
    .line 52
    if-eq p2, v2, :cond_2

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 p2, 0x0

    .line 57
    :goto_1
    const/4 p3, 0x0

    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    new-instance p2, Ljava/lang/ref/ReferenceQueue;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move-object p2, p3

    .line 67
    :goto_2
    iput-object p2, p0, Lc7/q;->h:Ljava/lang/ref/ReferenceQueue;

    .line 68
    .line 69
    iget p2, p1, Lc7/b0;->h:I

    .line 70
    .line 71
    if-eq p2, v2, :cond_4

    .line 72
    .line 73
    new-instance p3, Ljava/lang/ref/ReferenceQueue;

    .line 74
    .line 75
    invoke-direct {p3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 76
    .line 77
    .line 78
    :cond_4
    iput-object p3, p0, Lc7/q;->i:Ljava/lang/ref/ReferenceQueue;

    .line 79
    .line 80
    invoke-virtual {p1}, Lc7/b0;->a()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_5

    .line 85
    .line 86
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 87
    .line 88
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    sget-object p2, Lc7/b0;->t:Lc7/f;

    .line 93
    .line 94
    :goto_3
    iput-object p2, p0, Lc7/q;->j:Ljava/util/AbstractQueue;

    .line 95
    .line 96
    invoke-virtual {p1}, Lc7/b0;->b()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_6

    .line 101
    .line 102
    new-instance p2, Lc7/j;

    .line 103
    .line 104
    const/4 p3, 0x1

    .line 105
    invoke-direct {p2, p3}, Lc7/j;-><init>(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_6
    sget-object p2, Lc7/b0;->t:Lc7/f;

    .line 110
    .line 111
    :goto_4
    iput-object p2, p0, Lc7/q;->l:Ljava/util/AbstractQueue;

    .line 112
    .line 113
    invoke-virtual {p1}, Lc7/b0;->a()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_7

    .line 118
    .line 119
    new-instance p1, Lc7/j;

    .line 120
    .line 121
    const/4 p2, 0x0

    .line 122
    invoke-direct {p1, p2}, Lc7/j;-><init>(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_7
    sget-object p1, Lc7/b0;->t:Lc7/f;

    .line 127
    .line 128
    :goto_5
    iput-object p1, p0, Lc7/q;->m:Ljava/util/AbstractQueue;

    .line 129
    .line 130
    return-void
.end method


# virtual methods
.method public final a(Lc7/c0;Lc7/c0;)Lc7/c0;
    .locals 5

    .line 1
    invoke-interface {p1}, Lc7/c0;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-interface {p1}, Lc7/c0;->a()Lc7/v;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Lc7/v;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v2}, Lc7/v;->isActive()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    iget-object v1, p0, Lc7/q;->a:Lc7/b0;

    .line 27
    .line 28
    iget v1, v1, Lc7/b0;->n:I

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-eq v1, v4, :cond_7

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    if-eq v1, v4, :cond_6

    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    if-eq v1, v4, :cond_5

    .line 38
    .line 39
    const/4 v4, 0x6

    .line 40
    if-eq v1, v4, :cond_4

    .line 41
    .line 42
    const/4 v4, 0x7

    .line 43
    if-eq v1, v4, :cond_3

    .line 44
    .line 45
    const/16 v4, 0x8

    .line 46
    .line 47
    if-eq v1, v4, :cond_2

    .line 48
    .line 49
    invoke-static {v1, p0, p1, p2, v0}, Lc7/k;->b(ILc7/q;Lc7/c0;Lc7/c0;Ljava/lang/Object;)Lc7/c0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/16 v1, 0x8

    .line 55
    .line 56
    invoke-static {v1, p0, p1, p2, v0}, Lc7/k;->b(ILc7/q;Lc7/c0;Lc7/c0;Ljava/lang/Object;)Lc7/c0;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p1, p2}, Lc7/k;->a(Lc7/c0;Lc7/c0;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2}, Lc7/k;->c(Lc7/c0;Lc7/c0;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    move-object p1, p2

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 v1, 0x7

    .line 69
    invoke-static {v1, p0, p1, p2, v0}, Lc7/k;->b(ILc7/q;Lc7/c0;Lc7/c0;Ljava/lang/Object;)Lc7/c0;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p1, p2}, Lc7/k;->c(Lc7/c0;Lc7/c0;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const/4 v1, 0x6

    .line 78
    invoke-static {v1, p0, p1, p2, v0}, Lc7/k;->b(ILc7/q;Lc7/c0;Lc7/c0;Ljava/lang/Object;)Lc7/c0;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p1, p2}, Lc7/k;->a(Lc7/c0;Lc7/c0;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const/4 v1, 0x4

    .line 87
    invoke-static {v1, p0, p1, p2, v0}, Lc7/k;->b(ILc7/q;Lc7/c0;Lc7/c0;Ljava/lang/Object;)Lc7/c0;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p1, p2}, Lc7/k;->a(Lc7/c0;Lc7/c0;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1, p2}, Lc7/k;->c(Lc7/c0;Lc7/c0;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    const/4 v1, 0x3

    .line 99
    invoke-static {v1, p0, p1, p2, v0}, Lc7/k;->b(ILc7/q;Lc7/c0;Lc7/c0;Ljava/lang/Object;)Lc7/c0;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p1, p2}, Lc7/k;->c(Lc7/c0;Lc7/c0;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_7
    const/4 v1, 0x2

    .line 108
    invoke-static {v1, p0, p1, p2, v0}, Lc7/k;->b(ILc7/q;Lc7/c0;Lc7/c0;Ljava/lang/Object;)Lc7/c0;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p1, p2}, Lc7/k;->a(Lc7/c0;Lc7/c0;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :goto_1
    iget-object p2, p0, Lc7/q;->i:Ljava/lang/ref/ReferenceQueue;

    .line 117
    .line 118
    invoke-interface {v2, p2, v3, p1}, Lc7/v;->b(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lc7/c0;)Lc7/v;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-interface {p1, p2}, Lc7/c0;->j(Lc7/v;)V

    .line 123
    .line 124
    .line 125
    return-object p1
.end method

.method public final b()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lc7/q;->j:Ljava/util/AbstractQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lc7/c0;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lc7/q;->m:Ljava/util/AbstractQueue;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lc7/q;->a:Lc7/b0;

    .line 4
    .line 5
    iget v0, v0, Lc7/b0;->g:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v0, v3, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/16 v4, 0x10

    .line 14
    .line 15
    const/4 v13, 0x3

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :cond_1
    iget-object v5, v1, Lc7/q;->h:Ljava/lang/ref/ReferenceQueue;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-eqz v5, :cond_4

    .line 26
    .line 27
    check-cast v5, Lc7/c0;

    .line 28
    .line 29
    iget-object v6, v1, Lc7/q;->a:Lc7/b0;

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-interface {v5}, Lc7/c0;->c()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    invoke-virtual {v6, v9}, Lc7/b0;->e(I)Lc7/q;

    .line 39
    .line 40
    .line 41
    move-result-object v14

    .line 42
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget-object v15, v14, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 46
    .line 47
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    sub-int/2addr v6, v3

    .line 52
    and-int v12, v9, v6

    .line 53
    .line 54
    invoke-virtual {v15, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Lc7/c0;

    .line 59
    .line 60
    move-object v7, v6

    .line 61
    :goto_1
    if-eqz v7, :cond_2

    .line 62
    .line 63
    if-ne v7, v5, :cond_3

    .line 64
    .line 65
    iget v5, v14, Lc7/q;->d:I

    .line 66
    .line 67
    add-int/2addr v5, v3

    .line 68
    iput v5, v14, Lc7/q;->d:I

    .line 69
    .line 70
    invoke-interface {v7}, Lc7/c0;->getKey()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-interface {v7}, Lc7/c0;->a()Lc7/v;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-interface {v5}, Lc7/v;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-interface {v7}, Lc7/c0;->a()Lc7/v;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    move-object v5, v14

    .line 87
    move v2, v12

    .line 88
    move v12, v13

    .line 89
    invoke-virtual/range {v5 .. v12}, Lc7/q;->n(Lc7/c0;Lc7/c0;Ljava/lang/Object;ILjava/lang/Object;Lc7/v;I)Lc7/c0;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget v6, v14, Lc7/q;->b:I

    .line 94
    .line 95
    sub-int/2addr v6, v3

    .line 96
    invoke-virtual {v15, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iput v6, v14, Lc7/q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    :cond_2
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v14}, Lc7/q;->p()V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    move v2, v12

    .line 111
    :try_start_1
    invoke-interface {v7}, Lc7/c0;->b()Lc7/c0;

    .line 112
    .line 113
    .line 114
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    move v12, v2

    .line 116
    goto :goto_1

    .line 117
    :goto_2
    add-int/2addr v0, v3

    .line 118
    if-ne v0, v4, :cond_1

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :goto_3
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v14}, Lc7/q;->p()V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_4
    :goto_4
    iget-object v0, v1, Lc7/q;->a:Lc7/b0;

    .line 129
    .line 130
    iget v0, v0, Lc7/b0;->h:I

    .line 131
    .line 132
    if-eq v0, v3, :cond_b

    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    :cond_5
    iget-object v0, v1, Lc7/q;->i:Ljava/lang/ref/ReferenceQueue;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_b

    .line 142
    .line 143
    move-object v11, v0

    .line 144
    check-cast v11, Lc7/v;

    .line 145
    .line 146
    iget-object v0, v1, Lc7/q;->a:Lc7/b0;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-interface {v11}, Lc7/v;->a()Lc7/c0;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-interface {v5}, Lc7/c0;->c()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-virtual {v0, v9}, Lc7/b0;->e(I)Lc7/q;

    .line 160
    .line 161
    .line 162
    move-result-object v14

    .line 163
    invoke-interface {v5}, Lc7/c0;->getKey()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 168
    .line 169
    .line 170
    :try_start_2
    iget-object v15, v14, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 171
    .line 172
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    sub-int/2addr v5, v3

    .line 177
    and-int v12, v9, v5

    .line 178
    .line 179
    invoke-virtual {v15, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    move-object v6, v5

    .line 184
    check-cast v6, Lc7/c0;

    .line 185
    .line 186
    move-object v7, v6

    .line 187
    :goto_5
    if-eqz v7, :cond_8

    .line 188
    .line 189
    invoke-interface {v7}, Lc7/c0;->getKey()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-interface {v7}, Lc7/c0;->c()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-ne v5, v9, :cond_7

    .line 198
    .line 199
    if-eqz v8, :cond_7

    .line 200
    .line 201
    iget-object v5, v14, Lc7/q;->a:Lc7/b0;

    .line 202
    .line 203
    iget-object v5, v5, Lc7/b0;->e:Lb7/h;

    .line 204
    .line 205
    invoke-virtual {v5, v0, v8}, Lb7/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_7

    .line 210
    .line 211
    invoke-interface {v7}, Lc7/c0;->a()Lc7/v;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-ne v0, v11, :cond_6

    .line 216
    .line 217
    iget v0, v14, Lc7/q;->d:I

    .line 218
    .line 219
    add-int/2addr v0, v3

    .line 220
    iput v0, v14, Lc7/q;->d:I

    .line 221
    .line 222
    invoke-interface {v11}, Lc7/v;->get()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    move-object v5, v14

    .line 227
    move v0, v12

    .line 228
    move v12, v13

    .line 229
    invoke-virtual/range {v5 .. v12}, Lc7/q;->n(Lc7/c0;Lc7/c0;Ljava/lang/Object;ILjava/lang/Object;Lc7/v;I)Lc7/c0;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    iget v6, v14, Lc7/q;->b:I

    .line 234
    .line 235
    sub-int/2addr v6, v3

    .line 236
    invoke-virtual {v15, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    iput v6, v14, Lc7/q;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    .line 241
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-nez v0, :cond_9

    .line 249
    .line 250
    :goto_6
    invoke-virtual {v14}, Lc7/q;->p()V

    .line 251
    .line 252
    .line 253
    goto :goto_7

    .line 254
    :catchall_1
    move-exception v0

    .line 255
    goto :goto_8

    .line 256
    :cond_6
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_9

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_7
    move v5, v12

    .line 267
    :try_start_3
    invoke-interface {v7}, Lc7/c0;->b()Lc7/c0;

    .line 268
    .line 269
    .line 270
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 271
    move v12, v5

    .line 272
    goto :goto_5

    .line 273
    :cond_8
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-nez v0, :cond_9

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_9
    :goto_7
    add-int/2addr v2, v3

    .line 284
    if-ne v2, v4, :cond_5

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :goto_8
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-nez v2, :cond_a

    .line 295
    .line 296
    invoke-virtual {v14}, Lc7/q;->p()V

    .line 297
    .line 298
    .line 299
    :cond_a
    throw v0

    .line 300
    :cond_b
    :goto_9
    return-void
.end method

.method public final d(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lc7/q;->c:J

    .line 2
    .line 3
    int-to-long v2, p1

    .line 4
    sub-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Lc7/q;->c:J

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p4, v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p4, v1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lc7/q;->n:Lx4/e;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lc7/q;->a:Lc7/b0;

    .line 23
    .line 24
    iget-object p4, p1, Lc7/b0;->l:Lc7/f;

    .line 25
    .line 26
    sget-object v0, Lc7/b0;->t:Lc7/f;

    .line 27
    .line 28
    if-eq p4, v0, :cond_2

    .line 29
    .line 30
    new-instance p4, Lc7/d0;

    .line 31
    .line 32
    invoke-direct {p4, p2, p3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lc7/b0;->l:Lc7/f;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final e(Lc7/c0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc7/q;->a:Lc7/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc7/b0;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lc7/q;->b()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lc7/c0;->a()Lc7/v;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lc7/v;->d()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-long v0, v0

    .line 22
    const/4 v2, 0x5

    .line 23
    iget-wide v3, p0, Lc7/q;->g:J

    .line 24
    .line 25
    cmp-long v5, v0, v3

    .line 26
    .line 27
    if-lez v5, :cond_2

    .line 28
    .line 29
    invoke-interface {p1}, Lc7/c0;->c()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, p1, v0, v2}, Lc7/q;->m(Lc7/c0;II)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    :goto_0
    iget-wide v0, p0, Lc7/q;->c:J

    .line 47
    .line 48
    cmp-long p1, v0, v3

    .line 49
    .line 50
    if-lez p1, :cond_6

    .line 51
    .line 52
    iget-object p1, p0, Lc7/q;->m:Ljava/util/AbstractQueue;

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lc7/c0;

    .line 69
    .line 70
    invoke-interface {v0}, Lc7/c0;->a()Lc7/v;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1}, Lc7/v;->d()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-lez v1, :cond_3

    .line 79
    .line 80
    invoke-interface {v0}, Lc7/c0;->c()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p0, v0, p1, v2}, Lc7/q;->m(Lc7/c0;II)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_6
    return-void
.end method

.method public final f()V
    .locals 11

    .line 1
    iget-object v0, p0, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/high16 v2, 0x40000000    # 2.0f

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v2, p0, Lc7/q;->b:I

    .line 13
    .line 14
    shl-int/lit8 v3, v1, 0x1

    .line 15
    .line 16
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 17
    .line 18
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    mul-int/lit8 v3, v3, 0x3

    .line 26
    .line 27
    div-int/lit8 v3, v3, 0x4

    .line 28
    .line 29
    iput v3, p0, Lc7/q;->e:I

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/lit8 v3, v3, -0x1

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_0
    if-ge v5, v1, :cond_6

    .line 39
    .line 40
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lc7/c0;

    .line 45
    .line 46
    if-eqz v6, :cond_5

    .line 47
    .line 48
    invoke-interface {v6}, Lc7/c0;->b()Lc7/c0;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-interface {v6}, Lc7/c0;->c()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    and-int/2addr v8, v3

    .line 57
    if-nez v7, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_1
    move-object v9, v6

    .line 64
    :goto_1
    if-eqz v7, :cond_3

    .line 65
    .line 66
    invoke-interface {v7}, Lc7/c0;->c()I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    and-int/2addr v10, v3

    .line 71
    if-eq v10, v8, :cond_2

    .line 72
    .line 73
    move-object v9, v7

    .line 74
    move v8, v10

    .line 75
    :cond_2
    invoke-interface {v7}, Lc7/c0;->b()Lc7/c0;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    if-eq v6, v9, :cond_5

    .line 84
    .line 85
    invoke-interface {v6}, Lc7/c0;->c()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    and-int/2addr v7, v3

    .line 90
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    check-cast v8, Lc7/c0;

    .line 95
    .line 96
    invoke-virtual {p0, v6, v8}, Lc7/q;->a(Lc7/c0;Lc7/c0;)Lc7/c0;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    if-eqz v8, :cond_4

    .line 101
    .line 102
    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-virtual {p0, v6}, Lc7/q;->l(Lc7/c0;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v2, v2, -0x1

    .line 110
    .line 111
    :goto_3
    invoke-interface {v6}, Lc7/c0;->b()Lc7/c0;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    iput-object v4, p0, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 120
    .line 121
    iput v2, p0, Lc7/q;->b:I

    .line 122
    .line 123
    return-void
.end method

.method public final g(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc7/q;->b()V

    .line 2
    .line 3
    .line 4
    :goto_0
    iget-object v0, p0, Lc7/q;->l:Ljava/util/AbstractQueue;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lc7/c0;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    iget-object v2, p0, Lc7/q;->a:Lc7/b0;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v2, v0, p1, p2}, Lc7/b0;->d(Lc7/c0;J)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Lc7/c0;->c()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0, v0, v2, v1}, Lc7/q;->m(Lc7/c0;II)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    :goto_1
    iget-object v0, p0, Lc7/q;->m:Ljava/util/AbstractQueue;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lc7/c0;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v2, v0, p1, p2}, Lc7/b0;->d(Lc7/c0;J)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-interface {v0}, Lc7/c0;->c()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {p0, v0, v3, v1}, Lc7/q;->m(Lc7/c0;II)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_3
    return-void
.end method

.method public final h(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lc7/q;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lc7/q;->a:Lc7/b0;

    .line 7
    .line 8
    iget-object v0, v0, Lc7/b0;->m:Lb7/k0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lb7/k0;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual {p0, p1, v2, v3, p2}, Lc7/q;->i(IJLjava/lang/Object;)Lc7/c0;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lc7/q;->j()V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lc7/c0;->a()Lc7/v;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p2}, Lc7/v;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lc7/q;->a:Lc7/b0;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lc7/q;->j:Ljava/util/AbstractQueue;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lc7/c0;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lc7/q;->a:Lc7/b0;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lc7/q;->a:Lc7/b0;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lc7/q;->j()V

    .line 58
    .line 59
    .line 60
    return-object p2

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lc7/q;->r()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Lc7/q;->j()V

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :goto_0
    invoke-virtual {p0}, Lc7/q;->j()V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public final i(IJLjava/lang/Object;)Lc7/c0;
    .locals 4

    .line 1
    iget-object v0, p0, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    and-int/2addr v1, p1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lc7/c0;

    .line 15
    .line 16
    :goto_0
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Lc7/c0;->c()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eq v2, p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-interface {v0}, Lc7/c0;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lc7/q;->r()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v3, p0, Lc7/q;->a:Lc7/b0;

    .line 37
    .line 38
    iget-object v3, v3, Lc7/b0;->e:Lb7/h;

    .line 39
    .line 40
    invoke-virtual {v3, p4, v2}, Lb7/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    invoke-interface {v0}, Lc7/c0;->b()Lc7/c0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    move-object v0, v1

    .line 53
    :goto_2
    if-nez v0, :cond_4

    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_4
    iget-object p1, p0, Lc7/q;->a:Lc7/b0;

    .line 57
    .line 58
    invoke-virtual {p1, v0, p2, p3}, Lc7/b0;->d(Lc7/c0;J)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_6

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lc7/q;->g(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_5
    :goto_3
    return-object v1

    .line 83
    :cond_6
    return-object v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc7/q;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit8 v0, v0, 0x3f

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lc7/q;->a:Lc7/b0;

    .line 12
    .line 13
    iget-object v0, v0, Lc7/b0;->m:Lb7/k0;

    .line 14
    .line 15
    invoke-virtual {v0}, Lb7/k0;->a()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p0, v0, v1}, Lc7/q;->o(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lc7/q;->p()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final k(ILjava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lc7/q;->a:Lc7/b0;

    .line 5
    .line 6
    iget-object v0, v0, Lc7/b0;->m:Lb7/k0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lb7/k0;->a()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p0, v0, v1}, Lc7/q;->o(J)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lc7/q;->b:I

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    iget v3, p0, Lc7/q;->e:I

    .line 20
    .line 21
    if-le v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lc7/q;->f()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    :goto_0
    iget-object v2, p0, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    add-int/lit8 v3, v3, -0x1

    .line 37
    .line 38
    and-int/2addr v3, p1

    .line 39
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lc7/c0;

    .line 44
    .line 45
    move-object v5, v4

    .line 46
    :goto_1
    const/4 v6, 0x0

    .line 47
    if-eqz v5, :cond_5

    .line 48
    .line 49
    invoke-interface {v5}, Lc7/c0;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-interface {v5}, Lc7/c0;->c()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-ne v8, p1, :cond_4

    .line 58
    .line 59
    if-eqz v7, :cond_4

    .line 60
    .line 61
    iget-object v8, p0, Lc7/q;->a:Lc7/b0;

    .line 62
    .line 63
    iget-object v8, v8, Lc7/b0;->e:Lb7/h;

    .line 64
    .line 65
    invoke-virtual {v8, p2, v7}, Lb7/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    invoke-interface {v5}, Lc7/c0;->a()Lc7/v;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Lc7/v;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    iget p4, p0, Lc7/q;->d:I

    .line 82
    .line 83
    add-int/lit8 p4, p4, 0x1

    .line 84
    .line 85
    iput p4, p0, Lc7/q;->d:I

    .line 86
    .line 87
    invoke-interface {p1}, Lc7/v;->isActive()Z

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    if-eqz p4, :cond_1

    .line 92
    .line 93
    invoke-interface {p1}, Lc7/v;->d()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    const/4 p4, 0x3

    .line 98
    invoke-virtual {p0, p1, p2, v2, p4}, Lc7/q;->d(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v5, p3, v0, v1}, Lc7/q;->q(Lc7/c0;Ljava/lang/Object;J)V

    .line 102
    .line 103
    .line 104
    iget p1, p0, Lc7/q;->b:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_1
    invoke-virtual {p0, v5, p3, v0, v1}, Lc7/q;->q(Lc7/c0;Ljava/lang/Object;J)V

    .line 108
    .line 109
    .line 110
    iget p1, p0, Lc7/q;->b:I

    .line 111
    .line 112
    add-int/lit8 p1, p1, 0x1

    .line 113
    .line 114
    :goto_2
    iput p1, p0, Lc7/q;->b:I

    .line 115
    .line 116
    invoke-virtual {p0, v5}, Lc7/q;->e(Lc7/c0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lc7/q;->p()V

    .line 123
    .line 124
    .line 125
    return-object v6

    .line 126
    :cond_2
    if-eqz p4, :cond_3

    .line 127
    .line 128
    :try_start_1
    iget-object p1, p0, Lc7/q;->a:Lc7/b0;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lc7/q;->m:Ljava/util/AbstractQueue;

    .line 134
    .line 135
    invoke-interface {p1, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lc7/q;->p()V

    .line 142
    .line 143
    .line 144
    return-object v2

    .line 145
    :cond_3
    :try_start_2
    iget p4, p0, Lc7/q;->d:I

    .line 146
    .line 147
    add-int/lit8 p4, p4, 0x1

    .line 148
    .line 149
    iput p4, p0, Lc7/q;->d:I

    .line 150
    .line 151
    invoke-interface {p1}, Lc7/v;->d()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    const/4 p4, 0x2

    .line 156
    invoke-virtual {p0, p1, p2, v2, p4}, Lc7/q;->d(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v5, p3, v0, v1}, Lc7/q;->q(Lc7/c0;Ljava/lang/Object;J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v5}, Lc7/q;->e(Lc7/c0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lc7/q;->p()V

    .line 169
    .line 170
    .line 171
    return-object v2

    .line 172
    :cond_4
    :try_start_3
    invoke-interface {v5}, Lc7/c0;->b()Lc7/c0;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_5
    iget p4, p0, Lc7/q;->d:I

    .line 179
    .line 180
    add-int/lit8 p4, p4, 0x1

    .line 181
    .line 182
    iput p4, p0, Lc7/q;->d:I

    .line 183
    .line 184
    iget-object p4, p0, Lc7/q;->a:Lc7/b0;

    .line 185
    .line 186
    iget p4, p4, Lc7/b0;->n:I

    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {p4, p0, p2, p1, v4}, Lc7/k;->d(ILc7/q;Ljava/lang/Object;ILc7/c0;)Lc7/c0;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p0, p1, p3, v0, v1}, Lc7/q;->q(Lc7/c0;Ljava/lang/Object;J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    iget p2, p0, Lc7/q;->b:I

    .line 202
    .line 203
    add-int/lit8 p2, p2, 0x1

    .line 204
    .line 205
    iput p2, p0, Lc7/q;->b:I

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Lc7/q;->e(Lc7/c0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lc7/q;->p()V

    .line 214
    .line 215
    .line 216
    return-object v6

    .line 217
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lc7/q;->p()V

    .line 221
    .line 222
    .line 223
    throw p1
.end method

.method public final l(Lc7/c0;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lc7/c0;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lc7/c0;->c()I

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lc7/c0;->a()Lc7/v;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Lc7/v;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1}, Lc7/c0;->a()Lc7/v;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Lc7/v;->d()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x3

    .line 25
    invoke-virtual {p0, v2, v0, v1, v3}, Lc7/q;->d(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lc7/q;->l:Ljava/util/AbstractQueue;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lc7/q;->m:Ljava/util/AbstractQueue;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final m(Lc7/c0;II)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lc7/q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    and-int/2addr v1, p2

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    move-object v5, v3

    .line 15
    check-cast v5, Lc7/c0;

    .line 16
    .line 17
    move-object v6, v5

    .line 18
    :goto_0
    if-eqz v6, :cond_1

    .line 19
    .line 20
    if-ne v6, p1, :cond_0

    .line 21
    .line 22
    iget p1, p0, Lc7/q;->d:I

    .line 23
    .line 24
    add-int/2addr p1, v2

    .line 25
    iput p1, p0, Lc7/q;->d:I

    .line 26
    .line 27
    invoke-interface {v6}, Lc7/c0;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-interface {v6}, Lc7/c0;->a()Lc7/v;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Lc7/v;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-interface {v6}, Lc7/c0;->a()Lc7/v;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    move-object v4, p0

    .line 44
    move v8, p2

    .line 45
    move v11, p3

    .line 46
    invoke-virtual/range {v4 .. v11}, Lc7/q;->n(Lc7/c0;Lc7/c0;Ljava/lang/Object;ILjava/lang/Object;Lc7/v;I)Lc7/c0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget p2, p0, Lc7/q;->b:I

    .line 51
    .line 52
    sub-int/2addr p2, v2

    .line 53
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput p2, p0, Lc7/q;->b:I

    .line 57
    .line 58
    return v2

    .line 59
    :cond_0
    invoke-interface {v6}, Lc7/c0;->b()Lc7/c0;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    return p1
.end method

.method public final n(Lc7/c0;Lc7/c0;Ljava/lang/Object;ILjava/lang/Object;Lc7/v;I)Lc7/c0;
    .locals 0

    .line 1
    invoke-interface {p6}, Lc7/v;->d()I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    invoke-virtual {p0, p4, p3, p5, p7}, Lc7/q;->d(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lc7/q;->l:Ljava/util/AbstractQueue;

    .line 9
    .line 10
    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Lc7/q;->m:Ljava/util/AbstractQueue;

    .line 14
    .line 15
    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-interface {p6}, Lc7/v;->isLoading()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-interface {p6, p2}, Lc7/v;->c(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    iget p3, p0, Lc7/q;->b:I

    .line 30
    .line 31
    invoke-interface {p2}, Lc7/c0;->b()Lc7/c0;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    :goto_0
    if-eq p1, p2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, p1, p4}, Lc7/q;->a(Lc7/c0;Lc7/c0;)Lc7/c0;

    .line 38
    .line 39
    .line 40
    move-result-object p5

    .line 41
    if-eqz p5, :cond_1

    .line 42
    .line 43
    move-object p4, p5

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Lc7/q;->l(Lc7/c0;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 p3, p3, -0x1

    .line 49
    .line 50
    :goto_1
    invoke-interface {p1}, Lc7/c0;->b()Lc7/c0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iput p3, p0, Lc7/q;->b:I

    .line 56
    .line 57
    return-object p4
.end method

.method public final o(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lc7/q;->c()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lc7/q;->g(J)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lc7/q;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_0
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lc7/q;->a:Lc7/b0;

    .line 8
    .line 9
    iget-object v0, v0, Lc7/b0;->l:Lc7/f;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final q(Lc7/c0;Ljava/lang/Object;J)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lc7/c0;->a()Lc7/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lc7/q;->a:Lc7/b0;

    .line 6
    .line 7
    iget-object v2, v1, Lc7/b0;->j:Lc7/c;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v2, v1, Lc7/b0;->h:I

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    new-instance v2, Lc7/u;

    .line 17
    .line 18
    invoke-direct {v2, p2}, Lc7/u;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v2}, Lc7/c0;->j(Lc7/v;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lc7/q;->b()V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Lc7/q;->c:J

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    int-to-long v4, v4

    .line 31
    add-long/2addr v2, v4

    .line 32
    iput-wide v2, p0, Lc7/q;->c:J

    .line 33
    .line 34
    invoke-virtual {v1}, Lc7/b0;->b()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {p1, p3, p4}, Lc7/c0;->d(J)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p3, p0, Lc7/q;->m:Ljava/util/AbstractQueue;

    .line 44
    .line 45
    invoke-interface {p3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object p3, p0, Lc7/q;->l:Ljava/util/AbstractQueue;

    .line 49
    .line 50
    invoke-interface {p3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p2}, Lc7/v;->c(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    const/4 p1, 0x0

    .line 58
    throw p1
.end method

.method public final r()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lc7/q;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_0
    :goto_0
    return-void
.end method
