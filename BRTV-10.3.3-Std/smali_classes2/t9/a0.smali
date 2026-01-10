.class public abstract Lt9/a0;
.super Lz9/h;
.source "MyApplication"


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    sget-object v2, Lz9/j;->g:Landroidx/leanback/widget/o;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, v2}, Lz9/h;-><init>(JLandroidx/leanback/widget/o;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lt9/a0;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract b()La9/d;
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Lt9/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lt9/k;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v1, p1, Lt9/k;->a:Ljava/lang/Throwable;

    .line 13
    .line 14
    :cond_1
    return-object v1
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-static {p1, p2}, Ll5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    if-nez p1, :cond_2

    .line 14
    .line 15
    move-object p1, p2

    .line 16
    :cond_2
    new-instance p2, Lt9/t;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Fatal exception in coroutines machinery for "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lt9/a0;->b()La9/d;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, La9/d;->getContext()La9/i;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1, p2}, Lt9/u;->h(La9/i;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public abstract f()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 11

    .line 1
    sget-object v0, Lw8/l;->a:Lw8/l;

    .line 2
    .line 3
    iget-object v1, p0, Lz9/h;->b:Landroidx/leanback/widget/o;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lt9/a0;->b()La9/d;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    .line 10
    .line 11
    invoke-static {v2, v3}, Lj9/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v2, Lx9/g;

    .line 15
    .line 16
    iget-object v3, v2, Lx9/g;->e:Lc9/c;

    .line 17
    .line 18
    iget-object v2, v2, Lx9/g;->g:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {v3}, La9/d;->getContext()La9/i;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {v4, v2}, Lx9/a;->j(La9/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-object v5, Lx9/a;->f:Lu7/b;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    if-eq v2, v5, :cond_0

    .line 32
    .line 33
    invoke-static {v3, v4, v2}, Lt9/u;->o(Lc9/c;La9/i;Ljava/lang/Object;)Lt9/i1;

    .line 34
    .line 35
    .line 36
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v5, v6

    .line 39
    :goto_0
    :try_start_1
    invoke-interface {v3}, La9/d;->getContext()La9/i;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {p0}, Lt9/a0;->f()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-virtual {p0, v8}, Lt9/a0;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    if-nez v9, :cond_1

    .line 52
    .line 53
    iget v10, p0, Lt9/a0;->c:I

    .line 54
    .line 55
    invoke-static {v10}, Lt9/u;->j(I)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-eqz v10, :cond_1

    .line 60
    .line 61
    sget-object v10, Lt9/q;->b:Lt9/q;

    .line 62
    .line 63
    invoke-interface {v7, v10}, La9/i;->e(La9/h;)La9/g;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Lt9/q0;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v3

    .line 71
    goto :goto_5

    .line 72
    :cond_1
    move-object v7, v6

    .line 73
    :goto_1
    if-eqz v7, :cond_2

    .line 74
    .line 75
    invoke-interface {v7}, Lt9/q0;->isActive()Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-nez v10, :cond_2

    .line 80
    .line 81
    check-cast v7, Lt9/y0;

    .line 82
    .line 83
    invoke-virtual {v7}, Lt9/y0;->q()Ljava/util/concurrent/CancellationException;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {p0, v8, v7}, Lt9/a0;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v7}, Lo9/d;->f(Ljava/lang/Throwable;)Lw8/g;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-interface {v3, v7}, La9/d;->resumeWith(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    if-eqz v9, :cond_3

    .line 99
    .line 100
    invoke-static {v9}, Lo9/d;->f(Ljava/lang/Throwable;)Lw8/g;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-interface {v3, v7}, La9/d;->resumeWith(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    invoke-virtual {p0, v8}, Lt9/a0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-interface {v3, v7}, La9/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    :goto_2
    if-eqz v5, :cond_4

    .line 116
    .line 117
    :try_start_2
    invoke-virtual {v5}, Lt9/i1;->J()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_5

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catchall_1
    move-exception v2

    .line 125
    goto :goto_6

    .line 126
    :cond_4
    :goto_3
    invoke-static {v4, v2}, Lx9/a;->e(La9/i;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    .line 128
    .line 129
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :catchall_2
    move-exception v0

    .line 134
    invoke-static {v0}, Lo9/d;->f(Ljava/lang/Throwable;)Lw8/g;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :goto_4
    invoke-static {v0}, Lw8/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p0, v6, v0}, Lt9/a0;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    goto :goto_8

    .line 146
    :goto_5
    if-eqz v5, :cond_6

    .line 147
    .line 148
    :try_start_4
    invoke-virtual {v5}, Lt9/i1;->J()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_7

    .line 153
    .line 154
    :cond_6
    invoke-static {v4, v2}, Lx9/a;->e(La9/i;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    :goto_6
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 159
    .line 160
    .line 161
    goto :goto_7

    .line 162
    :catchall_3
    move-exception v0

    .line 163
    invoke-static {v0}, Lo9/d;->f(Ljava/lang/Throwable;)Lw8/g;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    :goto_7
    invoke-static {v0}, Lw8/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p0, v2, v0}, Lt9/a0;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    :goto_8
    return-void
.end method
