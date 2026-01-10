.class public final Lx2/i;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lx2/e;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Ls3/b;


# instance fields
.field public volatile A:Z

.field public B:Z

.field public C:I

.field public D:I

.field public E:I

.field public final a:Lx2/g;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ls3/d;

.field public final d:Lb/a;

.field public final e:Ls/g;

.field public final f:Ls/g;

.field public final g:Lx2/h;

.field public h:Lcom/bumptech/glide/f;

.field public i:Lv2/e;

.field public j:Lcom/bumptech/glide/g;

.field public k:Lx2/q;

.field public l:I

.field public m:I

.field public n:Lx2/k;

.field public o:Lv2/h;

.field public p:Lx2/p;

.field public q:I

.field public r:J

.field public s:Ljava/lang/Object;

.field public t:Ljava/lang/Thread;

.field public u:Lv2/e;

.field public v:Lv2/e;

.field public w:Ljava/lang/Object;

.field public x:Lcom/bumptech/glide/load/data/e;

.field public volatile y:Lx2/f;

.field public volatile z:Z


# direct methods
.method public constructor <init>(Lb/a;Ls/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx2/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lx2/g;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lx2/i;->a:Lx2/g;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lx2/i;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ls3/d;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lx2/i;->c:Ls3/d;

    .line 24
    .line 25
    new-instance v0, Ls/g;

    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    invoke-direct {v0, v1}, Ls/g;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lx2/i;->f:Ls/g;

    .line 32
    .line 33
    new-instance v0, Lx2/h;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lx2/i;->g:Lx2/h;

    .line 39
    .line 40
    iput-object p1, p0, Lx2/i;->d:Lb/a;

    .line 41
    .line 42
    iput-object p2, p0, Lx2/i;->e:Ls/g;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lv2/e;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V
    .locals 2

    .line 1
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx2/t;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v1, "Fetching data failed"

    .line 11
    .line 12
    invoke-direct {v0, v1, p2}, Lx2/t;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p1, v0, Lx2/t;->b:Lv2/e;

    .line 20
    .line 21
    iput p4, v0, Lx2/t;->c:I

    .line 22
    .line 23
    iput-object p2, v0, Lx2/t;->d:Ljava/lang/Class;

    .line 24
    .line 25
    iget-object p1, p0, Lx2/i;->b:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lx2/i;->t:Ljava/lang/Thread;

    .line 35
    .line 36
    if-eq p1, p2, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    invoke-virtual {p0, p1}, Lx2/i;->o(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lx2/i;->p()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final b()Ls3/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lx2/i;->c:Ls3/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Lv2/e;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILv2/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx2/i;->u:Lv2/e;

    .line 2
    .line 3
    iput-object p2, p0, Lx2/i;->w:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lx2/i;->x:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    iput p4, p0, Lx2/i;->E:I

    .line 8
    .line 9
    iput-object p5, p0, Lx2/i;->v:Lv2/e;

    .line 10
    .line 11
    iget-object p2, p0, Lx2/i;->a:Lx2/g;

    .line 12
    .line 13
    invoke-virtual {p2}, Lx2/g;->a()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eq p1, p2, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    :cond_0
    iput-boolean p3, p0, Lx2/i;->B:Z

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p2, p0, Lx2/i;->t:Ljava/lang/Thread;

    .line 32
    .line 33
    if-eq p1, p2, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x3

    .line 36
    invoke-virtual {p0, p1}, Lx2/i;->o(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lx2/i;->f()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lx2/i;

    .line 2
    .line 3
    iget-object v0, p0, Lx2/i;->j:Lcom/bumptech/glide/g;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p1, Lx2/i;->j:Lcom/bumptech/glide/g;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lx2/i;->q:I

    .line 19
    .line 20
    iget p1, p1, Lx2/i;->q:I

    .line 21
    .line 22
    sub-int/2addr v0, p1

    .line 23
    :cond_0
    return v0
.end method

.method public final d(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;I)Lx2/x;
    .locals 5

    .line 1
    const-string v0, "Decoded result "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 7
    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_0
    sget v2, Lr3/h;->b:I

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {p0, p3, p2}, Lx2/i;->e(ILjava/lang/Object;)Lx2/x;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string p3, "DecodeJob"

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-static {p3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p0, v2, v3, p3, v1}, Lx2/i;->i(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 48
    .line 49
    .line 50
    return-object p2

    .line 51
    :goto_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 52
    .line 53
    .line 54
    throw p2
.end method

.method public final e(ILjava/lang/Object;)Lx2/x;
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lx2/i;->a:Lx2/g;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lx2/g;->c(Ljava/lang/Class;)Lx2/v;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v0, p0, Lx2/i;->o:Lv2/h;

    .line 12
    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v4, 0x1a

    .line 16
    .line 17
    if-ge v3, v4, :cond_1

    .line 18
    .line 19
    :cond_0
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_3

    .line 21
    :cond_1
    const/4 v3, 0x4

    .line 22
    if-eq p1, v3, :cond_3

    .line 23
    .line 24
    iget-boolean v1, v1, Lx2/g;->r:Z

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    goto :goto_2

    .line 31
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 32
    :goto_2
    sget-object v3, Le3/p;->i:Lv2/g;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Lv2/h;->c(Lv2/g;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/Boolean;

    .line 39
    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    new-instance v0, Lv2/h;

    .line 52
    .line 53
    invoke-direct {v0}, Lv2/h;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lx2/i;->o:Lv2/h;

    .line 57
    .line 58
    iget-object v5, v0, Lv2/h;->b:Lr3/b;

    .line 59
    .line 60
    iget-object v4, v4, Lv2/h;->b:Lr3/b;

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Lr3/b;->g(Lp/e;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v5, v3, v1}, Lr3/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :goto_3
    iget-object v0, p0, Lx2/i;->h:Lcom/bumptech/glide/f;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/j;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/j;->h(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    :try_start_0
    iget v3, p0, Lx2/i;->l:I

    .line 84
    .line 85
    iget v4, p0, Lx2/i;->m:I

    .line 86
    .line 87
    new-instance v5, Lc6/b;

    .line 88
    .line 89
    invoke-direct {v5, p1, p0}, Lc6/b;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object v6, p2

    .line 93
    invoke-virtual/range {v2 .. v7}, Lx2/v;->a(IILc6/b;Lcom/bumptech/glide/load/data/g;Lv2/h;)Lx2/x;

    .line 94
    .line 95
    .line 96
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-interface {p2}, Lcom/bumptech/glide/load/data/g;->b()V

    .line 98
    .line 99
    .line 100
    return-object p1

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    invoke-interface {p2}, Lcom/bumptech/glide/load/data/g;->b()V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public final f()V
    .locals 9

    .line 1
    const-string v0, "DecodeJob"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Retrieved data"

    .line 11
    .line 12
    iget-wide v1, p0, Lx2/i;->r:J

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v4, "data: "

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lx2/i;->w:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, ", cache key: "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lx2/i;->u:Lv2/e;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, ", fetcher: "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lx2/i;->x:Lcom/bumptech/glide/load/data/e;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0, v1, v2, v0, v3}, Lx2/i;->i(JLjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :try_start_0
    iget-object v1, p0, Lx2/i;->x:Lcom/bumptech/glide/load/data/e;

    .line 55
    .line 56
    iget-object v2, p0, Lx2/i;->w:Ljava/lang/Object;

    .line 57
    .line 58
    iget v3, p0, Lx2/i;->E:I

    .line 59
    .line 60
    invoke-virtual {p0, v1, v2, v3}, Lx2/i;->d(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;I)Lx2/x;

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_0
    .catch Lx2/t; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    iget-object v2, p0, Lx2/i;->v:Lv2/e;

    .line 67
    .line 68
    iget v3, p0, Lx2/i;->E:I

    .line 69
    .line 70
    iput-object v2, v1, Lx2/t;->b:Lv2/e;

    .line 71
    .line 72
    iput v3, v1, Lx2/t;->c:I

    .line 73
    .line 74
    iput-object v0, v1, Lx2/t;->d:Ljava/lang/Class;

    .line 75
    .line 76
    iget-object v2, p0, Lx2/i;->b:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-object v1, v0

    .line 82
    :goto_0
    if-eqz v1, :cond_7

    .line 83
    .line 84
    iget v2, p0, Lx2/i;->E:I

    .line 85
    .line 86
    iget-boolean v3, p0, Lx2/i;->B:Z

    .line 87
    .line 88
    instance-of v4, v1, Lx2/u;

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    move-object v4, v1

    .line 93
    check-cast v4, Lx2/u;

    .line 94
    .line 95
    invoke-interface {v4}, Lx2/u;->initialize()V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v4, p0, Lx2/i;->f:Ls/g;

    .line 99
    .line 100
    iget-object v4, v4, Ls/g;->d:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v4, Lx2/w;

    .line 103
    .line 104
    const/4 v5, 0x1

    .line 105
    const/4 v6, 0x0

    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    sget-object v0, Lx2/w;->e:Ls/g;

    .line 109
    .line 110
    invoke-virtual {v0}, Ls/g;->f()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lx2/w;

    .line 115
    .line 116
    iput-boolean v6, v0, Lx2/w;->d:Z

    .line 117
    .line 118
    iput-boolean v5, v0, Lx2/w;->c:Z

    .line 119
    .line 120
    iput-object v1, v0, Lx2/w;->b:Lx2/x;

    .line 121
    .line 122
    move-object v1, v0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lx2/i;->r()V

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Lx2/i;->p:Lx2/p;

    .line 127
    .line 128
    monitor-enter v4

    .line 129
    :try_start_1
    iput-object v1, v4, Lx2/p;->n:Lx2/x;

    .line 130
    .line 131
    iput v2, v4, Lx2/p;->o:I

    .line 132
    .line 133
    iput-boolean v3, v4, Lx2/p;->v:Z

    .line 134
    .line 135
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 136
    invoke-virtual {v4}, Lx2/p;->h()V

    .line 137
    .line 138
    .line 139
    const/4 v1, 0x5

    .line 140
    iput v1, p0, Lx2/i;->C:I

    .line 141
    .line 142
    :try_start_2
    iget-object v1, p0, Lx2/i;->f:Ls/g;

    .line 143
    .line 144
    iget-object v2, v1, Ls/g;->d:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v2, Lx2/w;

    .line 147
    .line 148
    if-eqz v2, :cond_3

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    const/4 v5, 0x0

    .line 152
    :goto_1
    if-eqz v5, :cond_4

    .line 153
    .line 154
    iget-object v2, p0, Lx2/i;->d:Lb/a;

    .line 155
    .line 156
    iget-object v3, p0, Lx2/i;->o:Lv2/h;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    .line 160
    .line 161
    :try_start_3
    invoke-virtual {v2}, Lb/a;->a()Lz2/a;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iget-object v4, v1, Ls/g;->b:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v4, Lv2/e;

    .line 168
    .line 169
    new-instance v5, Ls/g;

    .line 170
    .line 171
    iget-object v6, v1, Ls/g;->c:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v6, Lv2/k;

    .line 174
    .line 175
    iget-object v7, v1, Ls/g;->d:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v7, Lx2/w;

    .line 178
    .line 179
    const/4 v8, 0x4

    .line 180
    invoke-direct {v5, v6, v7, v3, v8}, Ls/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v2, v4, v5}, Lz2/a;->f(Lv2/e;Ls/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    .line 185
    .line 186
    :try_start_4
    iget-object v1, v1, Ls/g;->d:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v1, Lx2/w;

    .line 189
    .line 190
    invoke-virtual {v1}, Lx2/w;->e()V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catchall_0
    move-exception v2

    .line 195
    iget-object v1, v1, Ls/g;->d:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v1, Lx2/w;

    .line 198
    .line 199
    invoke-virtual {v1}, Lx2/w;->e()V

    .line 200
    .line 201
    .line 202
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 203
    :catchall_1
    move-exception v1

    .line 204
    goto :goto_3

    .line 205
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 206
    .line 207
    invoke-virtual {v0}, Lx2/w;->e()V

    .line 208
    .line 209
    .line 210
    :cond_5
    invoke-virtual {p0}, Lx2/i;->k()V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :goto_3
    if-eqz v0, :cond_6

    .line 215
    .line 216
    invoke-virtual {v0}, Lx2/w;->e()V

    .line 217
    .line 218
    .line 219
    :cond_6
    throw v1

    .line 220
    :catchall_2
    move-exception v0

    .line 221
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 222
    throw v0

    .line 223
    :cond_7
    invoke-virtual {p0}, Lx2/i;->p()V

    .line 224
    .line 225
    .line 226
    :goto_4
    return-void
.end method

.method public final g()Lx2/f;
    .locals 3

    .line 1
    iget v0, p0, Lx2/i;->C:I

    .line 2
    .line 3
    invoke-static {v0}, Lu/h;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lx2/i;->a:Lx2/g;

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    iget v1, p0, Lx2/i;->C:I

    .line 26
    .line 27
    invoke-static {v1}, Lea/q;->t(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "Unrecognized stage: "

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    new-instance v0, Lx2/a0;

    .line 42
    .line 43
    invoke-direct {v0, v2, p0}, Lx2/a0;-><init>(Lx2/g;Lx2/i;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    new-instance v0, Lx2/c;

    .line 48
    .line 49
    invoke-virtual {v2}, Lx2/g;->a()Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1, v2, p0}, Lx2/c;-><init>(Ljava/util/List;Lx2/g;Lx2/e;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_3
    new-instance v0, Lx2/y;

    .line 58
    .line 59
    invoke-direct {v0, v2, p0}, Lx2/y;-><init>(Lx2/g;Lx2/i;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public final h(I)I
    .locals 4

    .line 1
    invoke-static {p1}, Lu/h;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v0, v2, :cond_3

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    invoke-static {p1}, Lea/q;->t(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "Unrecognized stage: "

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 37
    return p1

    .line 38
    :cond_2
    const/4 p1, 0x4

    .line 39
    return p1

    .line 40
    :cond_3
    iget-object p1, p0, Lx2/i;->n:Lx2/k;

    .line 41
    .line 42
    iget p1, p1, Lx2/k;->a:I

    .line 43
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    :pswitch_0
    const/4 p1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :pswitch_1
    const/4 p1, 0x0

    .line 50
    :goto_1
    if-eqz p1, :cond_4

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    invoke-virtual {p0, v3}, Lx2/i;->h(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    :goto_2
    return v3

    .line 58
    :cond_5
    iget-object p1, p0, Lx2/i;->n:Lx2/k;

    .line 59
    .line 60
    iget p1, p1, Lx2/k;->a:I

    .line 61
    .line 62
    packed-switch p1, :pswitch_data_1

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    goto :goto_3

    .line 67
    :pswitch_2
    const/4 p1, 0x0

    .line 68
    :goto_3
    if-eqz p1, :cond_6

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_6
    invoke-virtual {p0, v1}, Lx2/i;->h(I)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :goto_4
    return v1

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final i(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, " in "

    .line 2
    .line 3
    invoke-static {p3, v0}, La/e;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-static {p1, p2}, Lr3/h;->a(J)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ", load key: "

    .line 15
    .line 16
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lx2/i;->k:Lx2/q;

    .line 20
    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    if-eqz p4, :cond_0

    .line 25
    .line 26
    const-string p1, ", "

    .line 27
    .line 28
    invoke-virtual {p1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, ""

    .line 34
    .line 35
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, ", thread: "

    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "DecodeJob"

    .line 59
    .line 60
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lx2/i;->r()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx2/t;

    .line 5
    .line 6
    const-string v1, "Failed to load resource"

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, Lx2/i;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lx2/t;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lx2/i;->p:Lx2/p;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iput-object v0, v1, Lx2/p;->q:Lx2/t;

    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v1}, Lx2/p;->g()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lx2/i;->l()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v0
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx2/i;->g:Lx2/h;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, Lx2/h;->b:Z

    .line 6
    .line 7
    invoke-virtual {v0}, Lx2/h;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lx2/i;->n()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v1
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx2/i;->g:Lx2/h;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, Lx2/h;->c:Z

    .line 6
    .line 7
    invoke-virtual {v0}, Lx2/h;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lx2/i;->n()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v1
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx2/i;->g:Lx2/h;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, Lx2/h;->a:Z

    .line 6
    .line 7
    invoke-virtual {v0}, Lx2/h;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lx2/i;->n()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v1
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lx2/i;->g:Lx2/h;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, v0, Lx2/h;->b:Z

    .line 6
    .line 7
    iput-boolean v1, v0, Lx2/h;->a:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Lx2/h;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    iget-object v0, p0, Lx2/i;->f:Ls/g;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v0, Ls/g;->b:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object v2, v0, Ls/g;->c:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v2, v0, Ls/g;->d:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, p0, Lx2/i;->a:Lx2/g;

    .line 22
    .line 23
    iput-object v2, v0, Lx2/g;->c:Lcom/bumptech/glide/f;

    .line 24
    .line 25
    iput-object v2, v0, Lx2/g;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v2, v0, Lx2/g;->n:Lv2/e;

    .line 28
    .line 29
    iput-object v2, v0, Lx2/g;->g:Ljava/lang/Class;

    .line 30
    .line 31
    iput-object v2, v0, Lx2/g;->k:Ljava/lang/Class;

    .line 32
    .line 33
    iput-object v2, v0, Lx2/g;->i:Lv2/h;

    .line 34
    .line 35
    iput-object v2, v0, Lx2/g;->o:Lcom/bumptech/glide/g;

    .line 36
    .line 37
    iput-object v2, v0, Lx2/g;->j:Lr3/b;

    .line 38
    .line 39
    iput-object v2, v0, Lx2/g;->p:Lx2/k;

    .line 40
    .line 41
    iget-object v3, v0, Lx2/g;->a:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    iput-boolean v1, v0, Lx2/g;->l:Z

    .line 47
    .line 48
    iget-object v3, v0, Lx2/g;->b:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iput-boolean v1, v0, Lx2/g;->m:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lx2/i;->z:Z

    .line 56
    .line 57
    iput-object v2, p0, Lx2/i;->h:Lcom/bumptech/glide/f;

    .line 58
    .line 59
    iput-object v2, p0, Lx2/i;->i:Lv2/e;

    .line 60
    .line 61
    iput-object v2, p0, Lx2/i;->o:Lv2/h;

    .line 62
    .line 63
    iput-object v2, p0, Lx2/i;->j:Lcom/bumptech/glide/g;

    .line 64
    .line 65
    iput-object v2, p0, Lx2/i;->k:Lx2/q;

    .line 66
    .line 67
    iput-object v2, p0, Lx2/i;->p:Lx2/p;

    .line 68
    .line 69
    iput v1, p0, Lx2/i;->C:I

    .line 70
    .line 71
    iput-object v2, p0, Lx2/i;->y:Lx2/f;

    .line 72
    .line 73
    iput-object v2, p0, Lx2/i;->t:Ljava/lang/Thread;

    .line 74
    .line 75
    iput-object v2, p0, Lx2/i;->u:Lv2/e;

    .line 76
    .line 77
    iput-object v2, p0, Lx2/i;->w:Ljava/lang/Object;

    .line 78
    .line 79
    iput v1, p0, Lx2/i;->E:I

    .line 80
    .line 81
    iput-object v2, p0, Lx2/i;->x:Lcom/bumptech/glide/load/data/e;

    .line 82
    .line 83
    const-wide/16 v2, 0x0

    .line 84
    .line 85
    iput-wide v2, p0, Lx2/i;->r:J

    .line 86
    .line 87
    iput-boolean v1, p0, Lx2/i;->A:Z

    .line 88
    .line 89
    iget-object v0, p0, Lx2/i;->b:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lx2/i;->e:Ls/g;

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Ls/g;->k(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception v1

    .line 101
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    throw v1
.end method

.method public final o(I)V
    .locals 1

    .line 1
    iput p1, p0, Lx2/i;->D:I

    .line 2
    .line 3
    iget-object p1, p0, Lx2/i;->p:Lx2/p;

    .line 4
    .line 5
    iget-boolean v0, p1, Lx2/p;->m:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lx2/p;->i:La3/f;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p1, Lx2/p;->h:La3/f;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p0}, La3/f;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lx2/i;->t:Ljava/lang/Thread;

    .line 6
    .line 7
    sget v0, Lr3/h;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lx2/i;->r:J

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    iget-boolean v1, p0, Lx2/i;->A:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lx2/i;->y:Lx2/f;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lx2/i;->y:Lx2/f;

    .line 25
    .line 26
    invoke-interface {v0}, Lx2/f;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget v1, p0, Lx2/i;->C:I

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lx2/i;->h(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lx2/i;->C:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lx2/i;->g()Lx2/f;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lx2/i;->y:Lx2/f;

    .line 45
    .line 46
    iget v1, p0, Lx2/i;->C:I

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    if-ne v1, v2, :cond_0

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    invoke-virtual {p0, v0}, Lx2/i;->o(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget v1, p0, Lx2/i;->C:I

    .line 57
    .line 58
    const/4 v2, 0x6

    .line 59
    if-eq v1, v2, :cond_2

    .line 60
    .line 61
    iget-boolean v1, p0, Lx2/i;->A:Z

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    :cond_2
    if-nez v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Lx2/i;->j()V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget v0, p0, Lx2/i;->D:I

    .line 2
    .line 3
    invoke-static {v0}, Lu/h;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lx2/i;->f()V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    iget v1, p0, Lx2/i;->D:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    const-string v1, "null"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v1, "DECODE_DATA"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string v1, "INITIALIZE"

    .line 42
    .line 43
    :goto_0
    const-string v2, "Unrecognized run reason: "

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_4
    invoke-virtual {p0}, Lx2/i;->p()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    invoke-virtual {p0, v1}, Lx2/i;->h(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lx2/i;->C:I

    .line 62
    .line 63
    invoke-virtual {p0}, Lx2/i;->g()Lx2/f;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lx2/i;->y:Lx2/f;

    .line 68
    .line 69
    invoke-virtual {p0}, Lx2/i;->p()V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/i;->c:Ls3/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls3/d;->a()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lx2/i;->z:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lx2/i;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lx2/i;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {v1, v0}, Lea/q;->e(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Throwable;

    .line 28
    .line 29
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "Already notified"

    .line 32
    .line 33
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    iput-boolean v1, p0, Lx2/i;->z:Z

    .line 38
    .line 39
    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    const-string v0, "DecodeJob"

    .line 2
    .line 3
    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    .line 4
    .line 5
    iget-object v2, p0, Lx2/i;->x:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    :try_start_0
    iget-boolean v3, p0, Lx2/i;->A:Z

    .line 8
    .line 9
    if-eqz v3, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lx2/i;->j()V
    :try_end_0
    .catch Lx2/b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :catchall_0
    move-exception v3

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lx2/i;->q()V
    :try_end_1
    .catch Lx2/b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void

    .line 33
    :goto_0
    const/4 v4, 0x3

    .line 34
    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lx2/i;->A:Z

    .line 46
    .line 47
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", stage: "

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v1, p0, Lx2/i;->C:I

    .line 56
    .line 57
    invoke-static {v1}, Lea/q;->t(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    :goto_1
    iget v0, p0, Lx2/i;->C:I

    .line 75
    .line 76
    const/4 v1, 0x5

    .line 77
    if-eq v0, v1, :cond_4

    .line 78
    .line 79
    iget-object v0, p0, Lx2/i;->b:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lx2/i;->j()V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-boolean v0, p0, Lx2/i;->A:Z

    .line 88
    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    throw v3

    .line 92
    :cond_5
    throw v3

    .line 93
    :goto_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :goto_3
    if-eqz v2, :cond_6

    .line 95
    .line 96
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 97
    .line 98
    .line 99
    :cond_6
    throw v0
.end method
