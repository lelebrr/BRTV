.class public final Landroidx/lifecycle/y;
.super Landroidx/lifecycle/p;
.source "MyApplication"


# instance fields
.field public final b:Z

.field public c:Lm/a;

.field public d:Landroidx/lifecycle/o;

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:I

.field public g:Z

.field public h:Z

.field public final i:Ljava/util/ArrayList;

.field public final j:Lv9/b;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/w;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/p;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/y;->b:Z

    .line 6
    .line 7
    new-instance v0, Lm/a;

    .line 8
    .line 9
    invoke-direct {v0}, Lm/a;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 13
    .line 14
    sget-object v0, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/o;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Landroidx/lifecycle/y;->i:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroidx/lifecycle/y;->e:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    new-instance p1, Lv9/b;

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lv9/b;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/lifecycle/y;->j:Lv9/b;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/v;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/y;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "observer"

    .line 6
    .line 7
    invoke-static {p1, v3}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "addObserver"

    .line 11
    .line 12
    invoke-virtual {p0, v3}, Landroidx/lifecycle/y;->e(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 16
    .line 17
    sget-object v4, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/o;

    .line 18
    .line 19
    if-ne v3, v4, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v4, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/o;

    .line 23
    .line 24
    :goto_0
    new-instance v3, Landroidx/lifecycle/x;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    sget-object v5, Landroidx/lifecycle/z;->a:Ljava/util/HashMap;

    .line 30
    .line 31
    instance-of v5, p1, Landroidx/lifecycle/u;

    .line 32
    .line 33
    instance-of v6, p1, Landroidx/lifecycle/e;

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    new-instance v5, Landroidx/lifecycle/g;

    .line 41
    .line 42
    move-object v6, p1

    .line 43
    check-cast v6, Landroidx/lifecycle/e;

    .line 44
    .line 45
    move-object v8, p1

    .line 46
    check-cast v8, Landroidx/lifecycle/u;

    .line 47
    .line 48
    invoke-direct {v5, v6, v8}, Landroidx/lifecycle/g;-><init>(Landroidx/lifecycle/e;Landroidx/lifecycle/u;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    if-eqz v6, :cond_2

    .line 53
    .line 54
    new-instance v5, Landroidx/lifecycle/g;

    .line 55
    .line 56
    move-object v6, p1

    .line 57
    check-cast v6, Landroidx/lifecycle/e;

    .line 58
    .line 59
    invoke-direct {v5, v6, v1}, Landroidx/lifecycle/g;-><init>(Landroidx/lifecycle/e;Landroidx/lifecycle/u;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    if-eqz v5, :cond_3

    .line 64
    .line 65
    move-object v5, p1

    .line 66
    check-cast v5, Landroidx/lifecycle/u;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5}, Landroidx/lifecycle/z;->b(Ljava/lang/Class;)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const/4 v8, 0x2

    .line 78
    if-ne v6, v8, :cond_6

    .line 79
    .line 80
    sget-object v6, Landroidx/lifecycle/z;->b:Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-static {v5}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    check-cast v5, Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eq v6, v2, :cond_5

    .line 96
    .line 97
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    new-array v8, v6, [Landroidx/lifecycle/i;

    .line 102
    .line 103
    if-gtz v6, :cond_4

    .line 104
    .line 105
    new-instance v5, Lv1/a;

    .line 106
    .line 107
    invoke-direct {v5, v2, v8}, Lv1/a;-><init>(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 116
    .line 117
    invoke-static {v0, p1}, Landroidx/lifecycle/z;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/v;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :cond_5
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 126
    .line 127
    invoke-static {v0, p1}, Landroidx/lifecycle/z;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/v;)V

    .line 128
    .line 129
    .line 130
    throw v1

    .line 131
    :cond_6
    new-instance v5, Landroidx/lifecycle/g;

    .line 132
    .line 133
    invoke-direct {v5, p1}, Landroidx/lifecycle/g;-><init>(Landroidx/lifecycle/v;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    iput-object v5, v3, Landroidx/lifecycle/x;->b:Landroidx/lifecycle/u;

    .line 137
    .line 138
    iput-object v4, v3, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 139
    .line 140
    iget-object v4, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 141
    .line 142
    invoke-virtual {v4, p1}, Lm/a;->c(Ljava/lang/Object;)Lm/c;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    if-eqz v5, :cond_7

    .line 147
    .line 148
    iget-object v1, v5, Lm/c;->b:Ljava/lang/Object;

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    iget-object v5, v4, Lm/a;->e:Ljava/util/HashMap;

    .line 152
    .line 153
    new-instance v6, Lm/c;

    .line 154
    .line 155
    invoke-direct {v6, p1, v3}, Lm/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    iget v8, v4, Lm/f;->d:I

    .line 159
    .line 160
    add-int/2addr v8, v2

    .line 161
    iput v8, v4, Lm/f;->d:I

    .line 162
    .line 163
    iget-object v8, v4, Lm/f;->b:Lm/c;

    .line 164
    .line 165
    if-nez v8, :cond_8

    .line 166
    .line 167
    iput-object v6, v4, Lm/f;->a:Lm/c;

    .line 168
    .line 169
    iput-object v6, v4, Lm/f;->b:Lm/c;

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_8
    iput-object v6, v8, Lm/c;->c:Lm/c;

    .line 173
    .line 174
    iput-object v8, v6, Lm/c;->d:Lm/c;

    .line 175
    .line 176
    iput-object v6, v4, Lm/f;->b:Lm/c;

    .line 177
    .line 178
    :goto_2
    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    :goto_3
    check-cast v1, Landroidx/lifecycle/x;

    .line 182
    .line 183
    if-eqz v1, :cond_9

    .line 184
    .line 185
    return-void

    .line 186
    :cond_9
    iget-object v1, p0, Landroidx/lifecycle/y;->e:Ljava/lang/ref/WeakReference;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Landroidx/lifecycle/w;

    .line 193
    .line 194
    if-nez v1, :cond_a

    .line 195
    .line 196
    return-void

    .line 197
    :cond_a
    iget v4, p0, Landroidx/lifecycle/y;->f:I

    .line 198
    .line 199
    if-nez v4, :cond_b

    .line 200
    .line 201
    iget-boolean v4, p0, Landroidx/lifecycle/y;->g:Z

    .line 202
    .line 203
    if-eqz v4, :cond_c

    .line 204
    .line 205
    :cond_b
    const/4 v7, 0x1

    .line 206
    :cond_c
    invoke-virtual {p0, p1}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    iget v5, p0, Landroidx/lifecycle/y;->f:I

    .line 211
    .line 212
    add-int/2addr v5, v2

    .line 213
    iput v5, p0, Landroidx/lifecycle/y;->f:I

    .line 214
    .line 215
    :goto_4
    iget-object v5, v3, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 216
    .line 217
    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-gez v4, :cond_e

    .line 222
    .line 223
    iget-object v4, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 224
    .line 225
    iget-object v4, v4, Lm/a;->e:Ljava/util/HashMap;

    .line 226
    .line 227
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_e

    .line 232
    .line 233
    iget-object v4, v3, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 234
    .line 235
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    sget-object v4, Landroidx/lifecycle/n;->Companion:Landroidx/lifecycle/l;

    .line 239
    .line 240
    iget-object v5, v3, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v5}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/o;)Landroidx/lifecycle/n;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    if-eqz v4, :cond_d

    .line 250
    .line 251
    invoke-virtual {v3, v1, v4}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/w;Landroidx/lifecycle/n;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    sub-int/2addr v4, v2

    .line 259
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, p1}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    goto :goto_4

    .line 267
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 268
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v1, "no event up from "

    .line 272
    .line 273
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v1, v3, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p1

    .line 289
    :cond_e
    if-nez v7, :cond_f

    .line 290
    .line 291
    invoke-virtual {p0}, Landroidx/lifecycle/y;->i()V

    .line 292
    .line 293
    .line 294
    :cond_f
    iget p1, p0, Landroidx/lifecycle/y;->f:I

    .line 295
    .line 296
    add-int/lit8 p1, p1, -0x1

    .line 297
    .line 298
    iput p1, p0, Landroidx/lifecycle/y;->f:I

    .line 299
    .line 300
    return-void
.end method

.method public final b()Landroidx/lifecycle/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Landroidx/lifecycle/v;)V
    .locals 1

    .line 1
    const-string v0, "observer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "removeObserver"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/y;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lm/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 2
    .line 3
    iget-object v0, v0, Lm/a;->e:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lm/c;

    .line 17
    .line 18
    iget-object p1, p1, Lm/c;->d:Lm/c;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v2

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p1, Lm/c;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Landroidx/lifecycle/x;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object p1, v2

    .line 34
    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/y;->i:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {v1, v0}, Lea/q;->e(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v2, v0

    .line 48
    check-cast v2, Landroidx/lifecycle/o;

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 51
    .line 52
    const-string v1, "state1"

    .line 53
    .line 54
    invoke-static {v0, v1}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-gez v1, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move-object p1, v0

    .line 67
    :goto_2
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-gez v0, :cond_4

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move-object v2, p1

    .line 77
    :goto_3
    return-object v2
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/y;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Ll/a;->V()Ll/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Ll/a;->r:Ll/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "Method "

    .line 30
    .line 31
    const-string v1, " must be called on the main thread"

    .line 32
    .line 33
    invoke-static {v0, p1, v1}, La/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final f(Landroidx/lifecycle/n;)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "handleLifecycleEvent"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/y;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/lifecycle/n;->a()Landroidx/lifecycle/o;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/o;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final g(Landroidx/lifecycle/o;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/o;

    .line 7
    .line 8
    sget-object v2, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/o;

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    if-eq p1, v2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "no event down from "

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, " in component "

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/lifecycle/y;->e:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 56
    .line 57
    iget-boolean p1, p0, Landroidx/lifecycle/y;->g:Z

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    iget p1, p0, Landroidx/lifecycle/y;->f:I

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/y;->g:Z

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/lifecycle/y;->i()V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Landroidx/lifecycle/y;->g:Z

    .line 74
    .line 75
    iget-object p1, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 76
    .line 77
    if-ne p1, v2, :cond_4

    .line 78
    .line 79
    new-instance p1, Lm/a;

    .line 80
    .line 81
    invoke-direct {p1}, Lm/a;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 85
    .line 86
    :cond_4
    return-void

    .line 87
    :cond_5
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/y;->h:Z

    .line 88
    .line 89
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/lifecycle/o;->c:Landroidx/lifecycle/o;

    .line 2
    .line 3
    const-string v1, "setCurrentState"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroidx/lifecycle/y;->e(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/o;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final i()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/y;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/w;

    .line 8
    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 12
    .line 13
    iget v2, v1, Lm/f;->d:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, v1, Lm/f;->a:Lm/c;

    .line 20
    .line 21
    invoke-static {v1}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v1, Lm/c;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroidx/lifecycle/x;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 31
    .line 32
    iget-object v2, v2, Lm/f;->b:Lm/c;

    .line 33
    .line 34
    invoke-static {v2}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v2, Lm/c;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Landroidx/lifecycle/x;

    .line 40
    .line 41
    iget-object v2, v2, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 42
    .line 43
    if-ne v1, v2, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 46
    .line 47
    if-ne v1, v2, :cond_2

    .line 48
    .line 49
    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/y;->h:Z

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/lifecycle/y;->j:Lv9/b;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lv9/b;->a(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/y;->h:Z

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 64
    .line 65
    iget-object v2, v2, Lm/f;->a:Lm/c;

    .line 66
    .line 67
    invoke-static {v2}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v2, Lm/c;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Landroidx/lifecycle/x;

    .line 73
    .line 74
    iget-object v2, v2, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-gez v1, :cond_8

    .line 81
    .line 82
    iget-object v1, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 83
    .line 84
    new-instance v2, Lm/b;

    .line 85
    .line 86
    iget-object v3, v1, Lm/f;->b:Lm/c;

    .line 87
    .line 88
    iget-object v4, v1, Lm/f;->a:Lm/c;

    .line 89
    .line 90
    const/4 v5, 0x1

    .line 91
    invoke-direct {v2, v3, v4, v5}, Lm/b;-><init>(Lm/c;Lm/c;I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v1, Lm/f;->c:Ljava/util/WeakHashMap;

    .line 95
    .line 96
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-virtual {v2}, Lm/b;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_8

    .line 106
    .line 107
    iget-boolean v1, p0, Landroidx/lifecycle/y;->h:Z

    .line 108
    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    invoke-virtual {v2}, Lm/b;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ljava/util/Map$Entry;

    .line 116
    .line 117
    const-string v3, "next()"

    .line 118
    .line 119
    invoke-static {v1, v3}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Landroidx/lifecycle/v;

    .line 127
    .line 128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Landroidx/lifecycle/x;

    .line 133
    .line 134
    :goto_1
    iget-object v4, v1, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 135
    .line 136
    iget-object v5, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 137
    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-lez v4, :cond_3

    .line 143
    .line 144
    iget-boolean v4, p0, Landroidx/lifecycle/y;->h:Z

    .line 145
    .line 146
    if-nez v4, :cond_3

    .line 147
    .line 148
    iget-object v4, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 149
    .line 150
    iget-object v4, v4, Lm/a;->e:Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_3

    .line 157
    .line 158
    sget-object v4, Landroidx/lifecycle/n;->Companion:Landroidx/lifecycle/l;

    .line 159
    .line 160
    iget-object v5, v1, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    const-string v4, "state"

    .line 166
    .line 167
    invoke-static {v5, v4}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    const/4 v5, 0x2

    .line 175
    if-eq v4, v5, :cond_6

    .line 176
    .line 177
    const/4 v5, 0x3

    .line 178
    if-eq v4, v5, :cond_5

    .line 179
    .line 180
    const/4 v5, 0x4

    .line 181
    if-eq v4, v5, :cond_4

    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    goto :goto_2

    .line 185
    :cond_4
    sget-object v4, Landroidx/lifecycle/n;->ON_PAUSE:Landroidx/lifecycle/n;

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    sget-object v4, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    sget-object v4, Landroidx/lifecycle/n;->ON_DESTROY:Landroidx/lifecycle/n;

    .line 192
    .line 193
    :goto_2
    if-eqz v4, :cond_7

    .line 194
    .line 195
    invoke-virtual {v4}, Landroidx/lifecycle/n;->a()Landroidx/lifecycle/o;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    iget-object v6, p0, Landroidx/lifecycle/y;->i:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/w;Landroidx/lifecycle/n;)V

    .line 205
    .line 206
    .line 207
    iget-object v4, p0, Landroidx/lifecycle/y;->i:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    add-int/lit8 v5, v5, -0x1

    .line 214
    .line 215
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 220
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v3, "no event down from "

    .line 224
    .line 225
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v1, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 229
    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v0

    .line 241
    :cond_8
    iget-object v1, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 242
    .line 243
    iget-object v1, v1, Lm/f;->b:Lm/c;

    .line 244
    .line 245
    iget-boolean v2, p0, Landroidx/lifecycle/y;->h:Z

    .line 246
    .line 247
    if-nez v2, :cond_0

    .line 248
    .line 249
    if-eqz v1, :cond_0

    .line 250
    .line 251
    iget-object v2, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 252
    .line 253
    iget-object v1, v1, Lm/c;->b:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v1, Landroidx/lifecycle/x;

    .line 256
    .line 257
    iget-object v1, v1, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 258
    .line 259
    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-lez v1, :cond_0

    .line 264
    .line 265
    iget-object v1, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    new-instance v2, Lm/d;

    .line 271
    .line 272
    invoke-direct {v2, v1}, Lm/d;-><init>(Lm/f;)V

    .line 273
    .line 274
    .line 275
    iget-object v1, v1, Lm/f;->c:Ljava/util/WeakHashMap;

    .line 276
    .line 277
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 278
    .line 279
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    :cond_9
    invoke-virtual {v2}, Lm/d;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_0

    .line 287
    .line 288
    iget-boolean v1, p0, Landroidx/lifecycle/y;->h:Z

    .line 289
    .line 290
    if-nez v1, :cond_0

    .line 291
    .line 292
    invoke-virtual {v2}, Lm/d;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    check-cast v1, Ljava/util/Map$Entry;

    .line 297
    .line 298
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Landroidx/lifecycle/v;

    .line 303
    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    check-cast v1, Landroidx/lifecycle/x;

    .line 309
    .line 310
    :goto_3
    iget-object v4, v1, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 311
    .line 312
    iget-object v5, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/o;

    .line 313
    .line 314
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-gez v4, :cond_9

    .line 319
    .line 320
    iget-boolean v4, p0, Landroidx/lifecycle/y;->h:Z

    .line 321
    .line 322
    if-nez v4, :cond_9

    .line 323
    .line 324
    iget-object v4, p0, Landroidx/lifecycle/y;->c:Lm/a;

    .line 325
    .line 326
    iget-object v4, v4, Lm/a;->e:Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_9

    .line 333
    .line 334
    iget-object v4, v1, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 335
    .line 336
    iget-object v5, p0, Landroidx/lifecycle/y;->i:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    sget-object v4, Landroidx/lifecycle/n;->Companion:Landroidx/lifecycle/l;

    .line 342
    .line 343
    iget-object v5, v1, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 344
    .line 345
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-static {v5}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/o;)Landroidx/lifecycle/n;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    if-eqz v4, :cond_a

    .line 353
    .line 354
    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/w;Landroidx/lifecycle/n;)V

    .line 355
    .line 356
    .line 357
    iget-object v4, p0, Landroidx/lifecycle/y;->i:Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    add-int/lit8 v5, v5, -0x1

    .line 364
    .line 365
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 370
    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    const-string v3, "no event up from "

    .line 374
    .line 375
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object v1, v1, Landroidx/lifecycle/x;->a:Landroidx/lifecycle/o;

    .line 379
    .line 380
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    throw v0

    .line 391
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 392
    .line 393
    const-string v1, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    .line 394
    .line 395
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v0
.end method
