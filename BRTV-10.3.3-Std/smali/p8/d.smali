.class public final Lp8/d;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "MyApplication"

# interfaces
.implements Li8/c;
.implements Ljava/lang/Runnable;
.implements Ls8/a;


# instance fields
.field public final a:Li8/c;

.field public final b:Li8/e;

.field public final c:I

.field public d:Ls8/b;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Throwable;

.field public volatile g:Z

.field public volatile h:Z

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(Li8/c;Li8/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp8/d;->a:Li8/c;

    .line 5
    .line 6
    iput-object p2, p0, Lp8/d;->b:Li8/e;

    .line 7
    .line 8
    iput p3, p0, Lp8/d;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp8/d;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lp8/d;->h:Z

    .line 7
    .line 8
    iget-object v0, p0, Lp8/d;->e:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-interface {v0}, Lj8/b;->a()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lp8/d;->b:Li8/e;

    .line 14
    .line 15
    invoke-interface {v0}, Lj8/b;->a()V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lp8/d;->j:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lp8/d;->d:Ls8/b;

    .line 29
    .line 30
    invoke-interface {v0}, Ls8/b;->clear()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp8/d;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp8/d;->g:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lp8/d;->b:Li8/e;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Li8/e;->c(Lp8/d;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final c(Lj8/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp8/d;->e:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lj8/b;->a()V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lk8/d;

    .line 9
    .line 10
    const-string v0, "Disposable already set!"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/bumptech/glide/d;->y(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object p1, p0, Lp8/d;->e:Ljava/lang/Object;

    .line 20
    .line 21
    instance-of v0, p1, Ls8/a;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    check-cast p1, Ls8/a;

    .line 26
    .line 27
    invoke-interface {p1}, Ls8/a;->e()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    iput v0, p0, Lp8/d;->i:I

    .line 35
    .line 36
    iput-object p1, p0, Lp8/d;->d:Ls8/b;

    .line 37
    .line 38
    iput-boolean v1, p0, Lp8/d;->g:Z

    .line 39
    .line 40
    iget-object p1, p0, Lp8/d;->a:Li8/c;

    .line 41
    .line 42
    invoke-interface {p1, p0}, Li8/c;->c(Lj8/b;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lp8/d;->b:Li8/e;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Li8/e;->c(Lp8/d;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :cond_2
    const/4 v1, 0x2

    .line 58
    if-ne v0, v1, :cond_3

    .line 59
    .line 60
    iput v0, p0, Lp8/d;->i:I

    .line 61
    .line 62
    iput-object p1, p0, Lp8/d;->d:Ls8/b;

    .line 63
    .line 64
    iget-object p1, p0, Lp8/d;->a:Li8/c;

    .line 65
    .line 66
    invoke-interface {p1, p0}, Li8/c;->c(Lj8/b;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    new-instance p1, Ls8/c;

    .line 71
    .line 72
    iget v0, p0, Lp8/d;->c:I

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ls8/c;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lp8/d;->d:Ls8/b;

    .line 78
    .line 79
    iget-object p1, p0, Lp8/d;->a:Li8/c;

    .line 80
    .line 81
    invoke-interface {p1, p0}, Li8/c;->c(Lj8/b;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp8/d;->d:Ls8/b;

    .line 2
    .line 3
    invoke-interface {v0}, Ls8/b;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp8/d;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/bumptech/glide/d;->y(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-object p1, p0, Lp8/d;->f:Ljava/lang/Throwable;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lp8/d;->g:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lp8/d;->b:Li8/e;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Li8/e;->c(Lp8/d;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final e()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp8/d;->j:Z

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    return v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp8/d;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lp8/d;->i:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lp8/d;->d:Ls8/b;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ls8/b;->offer(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lp8/d;->b:Li8/e;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Li8/e;->c(Lp8/d;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public final g(ZZLi8/c;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp8/d;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lp8/d;->d:Ls8/b;

    .line 7
    .line 8
    invoke-interface {p1}, Ls8/b;->clear()V

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lp8/d;->f:Ljava/lang/Throwable;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iput-boolean v1, p0, Lp8/d;->h:Z

    .line 19
    .line 20
    iget-object p2, p0, Lp8/d;->d:Ls8/b;

    .line 21
    .line 22
    invoke-interface {p2}, Ls8/b;->clear()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p3, p1}, Li8/c;->d(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lp8/d;->b:Li8/e;

    .line 29
    .line 30
    invoke-interface {p1}, Lj8/b;->a()V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    if-eqz p2, :cond_2

    .line 35
    .line 36
    iput-boolean v1, p0, Lp8/d;->h:Z

    .line 37
    .line 38
    invoke-interface {p3}, Li8/c;->b()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lp8/d;->b:Li8/e;

    .line 42
    .line 43
    invoke-interface {p1}, Lj8/b;->a()V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp8/d;->d:Ls8/b;

    .line 2
    .line 3
    invoke-interface {v0}, Ls8/b;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Should not be called"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lp8/d;->d:Ls8/b;

    .line 2
    .line 3
    invoke-interface {v0}, Ls8/b;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final run()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lp8/d;->j:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_0
    iget-boolean v2, p0, Lp8/d;->h:Z

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_1
    iget-boolean v2, p0, Lp8/d;->g:Z

    .line 14
    .line 15
    iget-object v3, p0, Lp8/d;->f:Ljava/lang/Throwable;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    iput-boolean v1, p0, Lp8/d;->h:Z

    .line 22
    .line 23
    iget-object v0, p0, Lp8/d;->a:Li8/c;

    .line 24
    .line 25
    iget-object v1, p0, Lp8/d;->f:Ljava/lang/Throwable;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Li8/c;->d(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lp8/d;->b:Li8/e;

    .line 31
    .line 32
    invoke-interface {v0}, Lj8/b;->a()V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_2
    iget-object v3, p0, Lp8/d;->a:Li8/c;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-interface {v3, v4}, Li8/c;->f(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    iput-boolean v1, p0, Lp8/d;->h:Z

    .line 46
    .line 47
    iget-object v0, p0, Lp8/d;->f:Ljava/lang/Throwable;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object v1, p0, Lp8/d;->a:Li8/c;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Li8/c;->d(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Lp8/d;->a:Li8/c;

    .line 58
    .line 59
    invoke-interface {v0}, Li8/c;->b()V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object v0, p0, Lp8/d;->b:Li8/e;

    .line 63
    .line 64
    invoke-interface {v0}, Lj8/b;->a()V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    neg-int v0, v0

    .line 69
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    iget-object v0, p0, Lp8/d;->d:Ls8/b;

    .line 77
    .line 78
    iget-object v2, p0, Lp8/d;->a:Li8/c;

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    :cond_6
    iget-boolean v4, p0, Lp8/d;->g:Z

    .line 82
    .line 83
    invoke-interface {v0}, Ls8/b;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-virtual {p0, v4, v5, v2}, Lp8/d;->g(ZZLi8/c;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_7

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_7
    :goto_1
    iget-boolean v4, p0, Lp8/d;->g:Z

    .line 95
    .line 96
    :try_start_0
    invoke-interface {v0}, Ls8/b;->poll()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-nez v5, :cond_8

    .line 101
    .line 102
    const/4 v6, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_8
    const/4 v6, 0x0

    .line 105
    :goto_2
    invoke-virtual {p0, v4, v6, v2}, Lp8/d;->g(ZZLi8/c;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_9

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_9
    if-eqz v6, :cond_a

    .line 113
    .line 114
    neg-int v3, v3

    .line 115
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_6

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_a
    invoke-interface {v2, v5}, Li8/c;->f(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catchall_0
    move-exception v3

    .line 127
    invoke-static {v3}, Lcom/bumptech/glide/d;->G(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    iput-boolean v1, p0, Lp8/d;->h:Z

    .line 131
    .line 132
    iget-object v1, p0, Lp8/d;->e:Ljava/lang/Object;

    .line 133
    .line 134
    invoke-interface {v1}, Lj8/b;->a()V

    .line 135
    .line 136
    .line 137
    invoke-interface {v0}, Ls8/b;->clear()V

    .line 138
    .line 139
    .line 140
    invoke-interface {v2, v3}, Li8/c;->d(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lp8/d;->b:Li8/e;

    .line 144
    .line 145
    invoke-interface {v0}, Lj8/b;->a()V

    .line 146
    .line 147
    .line 148
    :goto_3
    return-void
.end method
