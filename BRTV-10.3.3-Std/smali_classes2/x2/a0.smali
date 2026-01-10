.class public final Lx2/a0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lx2/f;
.implements Lx2/e;


# instance fields
.field public final a:Lx2/g;

.field public final b:Lx2/i;

.field public volatile c:I

.field public volatile d:Lx2/c;

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Lb3/t;

.field public volatile g:Lx2/d;


# direct methods
.method public constructor <init>(Lx2/g;Lx2/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx2/a0;->a:Lx2/g;

    .line 5
    .line 6
    iput-object p2, p0, Lx2/a0;->b:Lx2/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lv2/e;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V
    .locals 1

    .line 1
    iget-object p4, p0, Lx2/a0;->b:Lx2/i;

    .line 2
    .line 3
    iget-object v0, p0, Lx2/a0;->f:Lb3/t;

    .line 4
    .line 5
    iget-object v0, v0, Lb3/t;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->e()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p4, p1, p2, p3, v0}, Lx2/i;->a(Lv2/e;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lx2/a0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lx2/a0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v1, p0, Lx2/a0;->e:Ljava/lang/Object;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Lx2/a0;->d(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const-string v3, "SourceGenerator"

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const-string v4, "Failed to properly rewind or write data to cache"

    .line 29
    .line 30
    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lx2/a0;->d:Lx2/c;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lx2/a0;->d:Lx2/c;

    .line 38
    .line 39
    invoke-virtual {v0}, Lx2/c;->b()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    iput-object v1, p0, Lx2/a0;->d:Lx2/c;

    .line 47
    .line 48
    iput-object v1, p0, Lx2/a0;->f:Lb3/t;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget v1, p0, Lx2/a0;->c:I

    .line 54
    .line 55
    iget-object v3, p0, Lx2/a0;->a:Lx2/g;

    .line 56
    .line 57
    invoke-virtual {v3}, Lx2/g;->b()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ge v1, v3, :cond_4

    .line 66
    .line 67
    iget-object v1, p0, Lx2/a0;->a:Lx2/g;

    .line 68
    .line 69
    invoke-virtual {v1}, Lx2/g;->b()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget v3, p0, Lx2/a0;->c:I

    .line 74
    .line 75
    add-int/lit8 v4, v3, 0x1

    .line 76
    .line 77
    iput v4, p0, Lx2/a0;->c:I

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lb3/t;

    .line 84
    .line 85
    iput-object v1, p0, Lx2/a0;->f:Lb3/t;

    .line 86
    .line 87
    iget-object v1, p0, Lx2/a0;->f:Lb3/t;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    iget-object v1, p0, Lx2/a0;->a:Lx2/g;

    .line 92
    .line 93
    iget-object v1, v1, Lx2/g;->p:Lx2/k;

    .line 94
    .line 95
    iget-object v3, p0, Lx2/a0;->f:Lb3/t;

    .line 96
    .line 97
    iget-object v3, v3, Lb3/t;->c:Lcom/bumptech/glide/load/data/e;

    .line 98
    .line 99
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->e()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v1, v3}, Lx2/k;->a(I)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    iget-object v1, p0, Lx2/a0;->a:Lx2/g;

    .line 110
    .line 111
    iget-object v3, p0, Lx2/a0;->f:Lb3/t;

    .line 112
    .line 113
    iget-object v3, v3, Lb3/t;->c:Lcom/bumptech/glide/load/data/e;

    .line 114
    .line 115
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Lx2/g;->c(Ljava/lang/Class;)Lx2/v;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    :cond_3
    iget-object v0, p0, Lx2/a0;->f:Lb3/t;

    .line 126
    .line 127
    iget-object v1, p0, Lx2/a0;->f:Lb3/t;

    .line 128
    .line 129
    iget-object v1, v1, Lb3/t;->c:Lcom/bumptech/glide/load/data/e;

    .line 130
    .line 131
    iget-object v3, p0, Lx2/a0;->a:Lx2/g;

    .line 132
    .line 133
    iget-object v3, v3, Lx2/g;->o:Lcom/bumptech/glide/g;

    .line 134
    .line 135
    new-instance v4, Ll6/h;

    .line 136
    .line 137
    const/16 v5, 0xb

    .line 138
    .line 139
    invoke-direct {v4, p0, v5, v0}, Ll6/h;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v1, v3, v4}, Lcom/bumptech/glide/load/data/e;->f(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V

    .line 143
    .line 144
    .line 145
    const/4 v0, 0x1

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    return v0
.end method

.method public final c(Lv2/e;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILv2/e;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lx2/a0;->b:Lx2/i;

    .line 2
    .line 3
    iget-object p4, p0, Lx2/a0;->f:Lb3/t;

    .line 4
    .line 5
    iget-object p4, p4, Lb3/t;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {p4}, Lcom/bumptech/glide/load/data/e;->e()I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v5, p1

    .line 15
    invoke-virtual/range {v0 .. v5}, Lx2/i;->c(Lv2/e;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILv2/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx2/a0;->f:Lb3/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lb3/t;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 13

    .line 1
    const-string v0, "SourceGenerator"

    .line 2
    .line 3
    const-string v1, "Attempt to write: "

    .line 4
    .line 5
    const-string v2, "Finished encoding source to cache, key: "

    .line 6
    .line 7
    sget v3, Lr3/h;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/4 v5, 0x0

    .line 14
    :try_start_0
    iget-object v6, p0, Lx2/a0;->a:Lx2/g;

    .line 15
    .line 16
    iget-object v6, v6, Lx2/g;->c:Lcom/bumptech/glide/f;

    .line 17
    .line 18
    invoke-virtual {v6}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/j;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v6, p1}, Lcom/bumptech/glide/j;->h(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-interface {v6}, Lcom/bumptech/glide/load/data/g;->e()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    iget-object v8, p0, Lx2/a0;->a:Lx2/g;

    .line 31
    .line 32
    invoke-virtual {v8, v7}, Lx2/g;->d(Ljava/lang/Object;)Lv2/b;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    new-instance v9, Ls/g;

    .line 37
    .line 38
    iget-object v10, p0, Lx2/a0;->a:Lx2/g;

    .line 39
    .line 40
    iget-object v10, v10, Lx2/g;->i:Lv2/h;

    .line 41
    .line 42
    const/4 v11, 0x4

    .line 43
    invoke-direct {v9, v8, v7, v10, v11}, Ls/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    new-instance v7, Lx2/d;

    .line 47
    .line 48
    iget-object v10, p0, Lx2/a0;->f:Lb3/t;

    .line 49
    .line 50
    iget-object v10, v10, Lb3/t;->a:Lv2/e;

    .line 51
    .line 52
    iget-object v11, p0, Lx2/a0;->a:Lx2/g;

    .line 53
    .line 54
    iget-object v12, v11, Lx2/g;->n:Lv2/e;

    .line 55
    .line 56
    invoke-direct {v7, v10, v12}, Lx2/d;-><init>(Lv2/e;Lv2/e;)V

    .line 57
    .line 58
    .line 59
    iget-object v10, v11, Lx2/g;->h:Lb/a;

    .line 60
    .line 61
    invoke-virtual {v10}, Lb/a;->a()Lz2/a;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-interface {v10, v7, v9}, Lz2/a;->f(Lv2/e;Ls/g;)V

    .line 66
    .line 67
    .line 68
    const/4 v9, 0x2

    .line 69
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 70
    .line 71
    .line 72
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const-string v11, ", data: "

    .line 74
    .line 75
    if-eqz v9, :cond_0

    .line 76
    .line 77
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, ", encoder: "

    .line 92
    .line 93
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, ", duration: "

    .line 100
    .line 101
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {v3, v4}, Lr3/h;->a(J)D

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    goto :goto_1

    .line 121
    :cond_0
    :goto_0
    invoke-interface {v10, v7}, Lz2/a;->h(Lv2/e;)Ljava/io/File;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const/4 v3, 0x1

    .line 126
    if-eqz v2, :cond_1

    .line 127
    .line 128
    iput-object v7, p0, Lx2/a0;->g:Lx2/d;

    .line 129
    .line 130
    new-instance p1, Lx2/c;

    .line 131
    .line 132
    iget-object v0, p0, Lx2/a0;->f:Lb3/t;

    .line 133
    .line 134
    iget-object v0, v0, Lb3/t;->a:Lv2/e;

    .line 135
    .line 136
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v1, p0, Lx2/a0;->a:Lx2/g;

    .line 141
    .line 142
    invoke-direct {p1, v0, v1, p0}, Lx2/c;-><init>(Ljava/util/List;Lx2/g;Lx2/e;)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lx2/a0;->d:Lx2/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    iget-object p1, p0, Lx2/a0;->f:Lb3/t;

    .line 148
    .line 149
    iget-object p1, p1, Lb3/t;->c:Lcom/bumptech/glide/load/data/e;

    .line 150
    .line 151
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 152
    .line 153
    .line 154
    return v3

    .line 155
    :cond_1
    const/4 v2, 0x3

    .line 156
    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_2

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lx2/a0;->g:Lx2/d;

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    .line 179
    .line 180
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .line 189
    .line 190
    :cond_2
    :try_start_3
    iget-object p1, p0, Lx2/a0;->b:Lx2/i;

    .line 191
    .line 192
    iget-object v0, p0, Lx2/a0;->f:Lb3/t;

    .line 193
    .line 194
    iget-object v7, v0, Lb3/t;->a:Lv2/e;

    .line 195
    .line 196
    invoke-interface {v6}, Lcom/bumptech/glide/load/data/g;->e()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    iget-object v0, p0, Lx2/a0;->f:Lb3/t;

    .line 201
    .line 202
    iget-object v9, v0, Lb3/t;->c:Lcom/bumptech/glide/load/data/e;

    .line 203
    .line 204
    iget-object v0, p0, Lx2/a0;->f:Lb3/t;

    .line 205
    .line 206
    iget-object v0, v0, Lb3/t;->c:Lcom/bumptech/glide/load/data/e;

    .line 207
    .line 208
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->e()I

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    iget-object v0, p0, Lx2/a0;->f:Lb3/t;

    .line 213
    .line 214
    iget-object v11, v0, Lb3/t;->a:Lv2/e;

    .line 215
    .line 216
    move-object v6, p1

    .line 217
    invoke-virtual/range {v6 .. v11}, Lx2/i;->c(Lv2/e;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILv2/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    .line 219
    .line 220
    return v5

    .line 221
    :catchall_1
    move-exception p1

    .line 222
    const/4 v5, 0x1

    .line 223
    :goto_1
    if-nez v5, :cond_3

    .line 224
    .line 225
    iget-object v0, p0, Lx2/a0;->f:Lb3/t;

    .line 226
    .line 227
    iget-object v0, v0, Lb3/t;->c:Lcom/bumptech/glide/load/data/e;

    .line 228
    .line 229
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 230
    .line 231
    .line 232
    :cond_3
    throw p1
.end method
