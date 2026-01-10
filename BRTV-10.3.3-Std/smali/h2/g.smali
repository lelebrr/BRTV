.class public final Lh2/g;
.super Lc9/i;
.source "MyApplication"

# interfaces
.implements Li9/p;


# instance fields
.field public b:I

.field public final synthetic c:Lh2/i;

.field public final synthetic d:Lm2/i;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lm2/m;

.field public final synthetic g:Lc2/d;

.field public final synthetic h:Lcoil/memory/MemoryCache$Key;

.field public final synthetic i:Lh2/k;


# direct methods
.method public constructor <init>(Lh2/i;Lm2/i;Ljava/lang/Object;Lm2/m;Lc2/d;Lcoil/memory/MemoryCache$Key;Lh2/k;La9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/g;->c:Lh2/i;

    .line 2
    .line 3
    iput-object p2, p0, Lh2/g;->d:Lm2/i;

    .line 4
    .line 5
    iput-object p3, p0, Lh2/g;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lh2/g;->f:Lm2/m;

    .line 8
    .line 9
    iput-object p5, p0, Lh2/g;->g:Lc2/d;

    .line 10
    .line 11
    iput-object p6, p0, Lh2/g;->h:Lcoil/memory/MemoryCache$Key;

    .line 12
    .line 13
    iput-object p7, p0, Lh2/g;->i:Lh2/k;

    .line 14
    .line 15
    invoke-direct {p0, p8}, Lc9/i;-><init>(La9/d;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La9/d;)La9/d;
    .locals 9

    .line 1
    new-instance p1, Lh2/g;

    .line 2
    .line 3
    iget-object v6, p0, Lh2/g;->h:Lcoil/memory/MemoryCache$Key;

    .line 4
    .line 5
    iget-object v7, p0, Lh2/g;->i:Lh2/k;

    .line 6
    .line 7
    iget-object v1, p0, Lh2/g;->c:Lh2/i;

    .line 8
    .line 9
    iget-object v2, p0, Lh2/g;->d:Lm2/i;

    .line 10
    .line 11
    iget-object v3, p0, Lh2/g;->e:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v4, p0, Lh2/g;->f:Lm2/m;

    .line 14
    .line 15
    iget-object v5, p0, Lh2/g;->g:Lc2/d;

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lh2/g;-><init>(Lh2/i;Lm2/i;Ljava/lang/Object;Lm2/m;Lc2/d;Lcoil/memory/MemoryCache$Key;Lh2/k;La9/d;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lt9/s;

    .line 2
    .line 3
    check-cast p2, La9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lh2/g;->create(Ljava/lang/Object;La9/d;)La9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lh2/g;

    .line 10
    .line 11
    sget-object p2, Lw8/l;->a:Lw8/l;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lh2/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object v0, Lb9/a;->a:Lb9/a;

    .line 2
    .line 3
    iget v1, p0, Lh2/g;->b:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lh2/g;->c:Lh2/i;

    .line 26
    .line 27
    iget-object v4, p0, Lh2/g;->d:Lm2/i;

    .line 28
    .line 29
    iget-object v5, p0, Lh2/g;->e:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v6, p0, Lh2/g;->f:Lm2/m;

    .line 32
    .line 33
    iget-object v7, p0, Lh2/g;->g:Lc2/d;

    .line 34
    .line 35
    iput v2, p0, Lh2/g;->b:I

    .line 36
    .line 37
    move-object v8, p0

    .line 38
    invoke-static/range {v3 .. v8}, Lh2/i;->b(Lh2/i;Lm2/i;Ljava/lang/Object;Lm2/m;Lc2/d;Lc9/c;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-ne p1, v0, :cond_2

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    :goto_0
    check-cast p1, Lh2/a;

    .line 46
    .line 47
    iget-object v0, p0, Lh2/g;->c:Lh2/i;

    .line 48
    .line 49
    iget-object v0, v0, Lh2/i;->b:Lr2/l;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, v0, Lr2/l;->a:Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lc2/l;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    iget-object v4, v0, Lr2/l;->b:Landroid/content/Context;

    .line 64
    .line 65
    if-nez v4, :cond_3

    .line 66
    .line 67
    iget-object v1, v1, Lc2/l;->a:Landroid/content/Context;

    .line 68
    .line 69
    iput-object v1, v0, Lr2/l;->b:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto/16 :goto_8

    .line 77
    .line 78
    :cond_3
    :goto_1
    sget-object v1, Lw8/l;->a:Lw8/l;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object v1, v3

    .line 82
    :goto_2
    if-nez v1, :cond_5

    .line 83
    .line 84
    invoke-virtual {v0}, Lr2/l;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    :cond_5
    monitor-exit v0

    .line 88
    iget-object v0, p0, Lh2/g;->c:Lh2/i;

    .line 89
    .line 90
    iget-object v0, v0, Lh2/i;->d:Lj7/c;

    .line 91
    .line 92
    iget-object v1, p0, Lh2/g;->h:Lcoil/memory/MemoryCache$Key;

    .line 93
    .line 94
    iget-object v4, p0, Lh2/g;->d:Lm2/i;

    .line 95
    .line 96
    iget-object v4, v4, Lm2/i;->n:Lm2/b;

    .line 97
    .line 98
    iget-boolean v4, v4, Lm2/b;->b:Z

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    if-nez v4, :cond_7

    .line 102
    .line 103
    :cond_6
    :goto_3
    const/4 v0, 0x0

    .line 104
    goto :goto_5

    .line 105
    :cond_7
    iget-object v0, v0, Lj7/c;->b:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lc2/l;

    .line 108
    .line 109
    iget-object v0, v0, Lc2/l;->c:Lw8/i;

    .line 110
    .line 111
    invoke-virtual {v0}, Lw8/i;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lk2/b;

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    if-nez v1, :cond_8

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_8
    iget-object v4, p1, Lh2/a;->a:Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    instance-of v6, v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 125
    .line 126
    if-eqz v6, :cond_9

    .line 127
    .line 128
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_9
    move-object v4, v3

    .line 132
    :goto_4
    if-eqz v4, :cond_6

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-nez v4, :cond_a

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_a
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 142
    .line 143
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    .line 145
    .line 146
    iget-boolean v7, p1, Lh2/a;->b:Z

    .line 147
    .line 148
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    const-string v8, "coil#is_sampled"

    .line 153
    .line 154
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget-object v7, p1, Lh2/a;->d:Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v7, :cond_b

    .line 160
    .line 161
    const-string v8, "coil#disk_cache_key"

    .line 162
    .line 163
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_b
    iget-object v7, v1, Lcoil/memory/MemoryCache$Key;->b:Ljava/util/Map;

    .line 167
    .line 168
    invoke-static {v7}, Lo9/d;->K(Ljava/util/Map;)Ljava/util/Map;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    new-instance v8, Lcoil/memory/MemoryCache$Key;

    .line 173
    .line 174
    iget-object v1, v1, Lcoil/memory/MemoryCache$Key;->a:Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {v8, v1, v7}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v6}, Lo9/d;->K(Ljava/util/Map;)Ljava/util/Map;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iget-object v0, v0, Lk2/b;->a:Lk2/f;

    .line 184
    .line 185
    invoke-interface {v0, v8, v4, v1}, Lk2/f;->b(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;)V

    .line 186
    .line 187
    .line 188
    const/4 v0, 0x1

    .line 189
    :goto_5
    iget-object v7, p1, Lh2/a;->a:Landroid/graphics/drawable/Drawable;

    .line 190
    .line 191
    iget-object v8, p0, Lh2/g;->d:Lm2/i;

    .line 192
    .line 193
    iget-object v9, p1, Lh2/a;->c:Ld2/f;

    .line 194
    .line 195
    iget-object v1, p0, Lh2/g;->h:Lcoil/memory/MemoryCache$Key;

    .line 196
    .line 197
    if-eqz v0, :cond_c

    .line 198
    .line 199
    move-object v10, v1

    .line 200
    goto :goto_6

    .line 201
    :cond_c
    move-object v10, v3

    .line 202
    :goto_6
    iget-object v11, p1, Lh2/a;->d:Ljava/lang/String;

    .line 203
    .line 204
    iget-boolean v12, p1, Lh2/a;->b:Z

    .line 205
    .line 206
    iget-object p1, p0, Lh2/g;->i:Lh2/k;

    .line 207
    .line 208
    sget-object v0, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;

    .line 209
    .line 210
    instance-of v0, p1, Lh2/k;

    .line 211
    .line 212
    if-eqz v0, :cond_d

    .line 213
    .line 214
    iget-boolean p1, p1, Lh2/k;->g:Z

    .line 215
    .line 216
    if-eqz p1, :cond_d

    .line 217
    .line 218
    const/4 v13, 0x1

    .line 219
    goto :goto_7

    .line 220
    :cond_d
    const/4 v13, 0x0

    .line 221
    :goto_7
    new-instance p1, Lm2/q;

    .line 222
    .line 223
    move-object v6, p1

    .line 224
    invoke-direct/range {v6 .. v13}, Lm2/q;-><init>(Landroid/graphics/drawable/Drawable;Lm2/i;Ld2/f;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    .line 225
    .line 226
    .line 227
    return-object p1

    .line 228
    :goto_8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    throw p1
.end method
