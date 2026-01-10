.class public final Lc2/l;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm2/c;

.field public final c:Lw8/i;

.field public final d:Lr2/j;

.field public final e:Lx9/d;

.field public final f:La1/b;

.field public final g:Lc2/c;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm2/c;Lw8/i;Lw8/i;Lw8/i;Lc2/c;Lr2/j;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x5

    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    move-object/from16 v8, p1

    .line 15
    .line 16
    iput-object v8, v0, Lc2/l;->a:Landroid/content/Context;

    .line 17
    .line 18
    move-object/from16 v8, p2

    .line 19
    .line 20
    iput-object v8, v0, Lc2/l;->b:Lm2/c;

    .line 21
    .line 22
    move-object/from16 v8, p3

    .line 23
    .line 24
    iput-object v8, v0, Lc2/l;->c:Lw8/i;

    .line 25
    .line 26
    iput-object v1, v0, Lc2/l;->d:Lr2/j;

    .line 27
    .line 28
    new-instance v8, Lt9/d1;

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    invoke-direct {v8, v9}, Lt9/t0;-><init>(Lt9/q0;)V

    .line 32
    .line 33
    .line 34
    sget-object v10, Lt9/b0;->a:Lz9/d;

    .line 35
    .line 36
    sget-object v10, Lx9/n;->a:Lu9/c;

    .line 37
    .line 38
    iget-object v10, v10, Lu9/c;->f:Lu9/c;

    .line 39
    .line 40
    invoke-static {v8, v10}, Lcom/bumptech/glide/d;->A(La9/g;La9/i;)La9/i;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    new-instance v10, Lc2/k;

    .line 45
    .line 46
    invoke-direct {v10, v0}, Lc2/k;-><init>(Lc2/l;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v8, v10}, La9/i;->f(La9/i;)La9/i;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    new-instance v10, Lx9/d;

    .line 54
    .line 55
    sget-object v11, Lt9/q;->b:Lt9/q;

    .line 56
    .line 57
    invoke-interface {v8, v11}, La9/i;->e(La9/h;)La9/g;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    if-eqz v11, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance v11, Lt9/t0;

    .line 65
    .line 66
    invoke-direct {v11, v9}, Lt9/t0;-><init>(Lt9/q0;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v8, v11}, La9/i;->f(La9/i;)La9/i;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    :goto_0
    invoke-direct {v10, v8}, Lx9/d;-><init>(La9/i;)V

    .line 74
    .line 75
    .line 76
    iput-object v10, v0, Lc2/l;->e:Lx9/d;

    .line 77
    .line 78
    new-instance v8, Lr2/l;

    .line 79
    .line 80
    invoke-direct {v8, v0}, Lr2/l;-><init>(Lc2/l;)V

    .line 81
    .line 82
    .line 83
    new-instance v9, La1/b;

    .line 84
    .line 85
    invoke-direct {v9, v0, v8}, La1/b;-><init>(Lc2/l;Lr2/l;)V

    .line 86
    .line 87
    .line 88
    iput-object v9, v0, Lc2/l;->f:La1/b;

    .line 89
    .line 90
    new-instance v10, Lc2/b;

    .line 91
    .line 92
    move-object/from16 v11, p6

    .line 93
    .line 94
    invoke-direct {v10, v11}, Lc2/b;-><init>(Lc2/c;)V

    .line 95
    .line 96
    .line 97
    new-instance v11, Lj2/a;

    .line 98
    .line 99
    invoke-direct {v11, v6}, Lj2/a;-><init>(I)V

    .line 100
    .line 101
    .line 102
    const-class v12, Lokhttp3/HttpUrl;

    .line 103
    .line 104
    invoke-virtual {v10, v11, v12}, Lc2/b;->b(Lj2/a;Ljava/lang/Class;)V

    .line 105
    .line 106
    .line 107
    new-instance v11, Lj2/a;

    .line 108
    .line 109
    invoke-direct {v11, v5}, Lj2/a;-><init>(I)V

    .line 110
    .line 111
    .line 112
    const-class v12, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v10, v11, v12}, Lc2/b;->b(Lj2/a;Ljava/lang/Class;)V

    .line 115
    .line 116
    .line 117
    new-instance v11, Lj2/a;

    .line 118
    .line 119
    invoke-direct {v11, v4}, Lj2/a;-><init>(I)V

    .line 120
    .line 121
    .line 122
    const-class v12, Landroid/net/Uri;

    .line 123
    .line 124
    invoke-virtual {v10, v11, v12}, Lc2/b;->b(Lj2/a;Ljava/lang/Class;)V

    .line 125
    .line 126
    .line 127
    new-instance v11, Lj2/a;

    .line 128
    .line 129
    invoke-direct {v11, v3}, Lj2/a;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10, v11, v12}, Lc2/b;->b(Lj2/a;Ljava/lang/Class;)V

    .line 133
    .line 134
    .line 135
    new-instance v11, Lj2/a;

    .line 136
    .line 137
    invoke-direct {v11, v2}, Lj2/a;-><init>(I)V

    .line 138
    .line 139
    .line 140
    const-class v13, Ljava/lang/Integer;

    .line 141
    .line 142
    invoke-virtual {v10, v11, v13}, Lc2/b;->b(Lj2/a;Ljava/lang/Class;)V

    .line 143
    .line 144
    .line 145
    new-instance v11, Lj2/a;

    .line 146
    .line 147
    invoke-direct {v11, v7}, Lj2/a;-><init>(I)V

    .line 148
    .line 149
    .line 150
    const-class v13, [B

    .line 151
    .line 152
    invoke-virtual {v10, v11, v13}, Lc2/b;->b(Lj2/a;Ljava/lang/Class;)V

    .line 153
    .line 154
    .line 155
    new-instance v11, Li2/c;

    .line 156
    .line 157
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-object v13, v10, Lc2/b;->d:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v13, Ljava/util/ArrayList;

    .line 163
    .line 164
    new-instance v14, Lw8/f;

    .line 165
    .line 166
    invoke-direct {v14, v11, v12}, Lw8/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    new-instance v11, Li2/a;

    .line 173
    .line 174
    iget-boolean v14, v1, Lr2/j;->a:Z

    .line 175
    .line 176
    invoke-direct {v11, v14}, Li2/a;-><init>(Z)V

    .line 177
    .line 178
    .line 179
    new-instance v14, Lw8/f;

    .line 180
    .line 181
    const-class v15, Ljava/io/File;

    .line 182
    .line 183
    invoke-direct {v14, v11, v15}, Lw8/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    new-instance v11, Lg2/i;

    .line 190
    .line 191
    iget-boolean v14, v1, Lr2/j;->c:Z

    .line 192
    .line 193
    move-object/from16 v6, p4

    .line 194
    .line 195
    move-object/from16 v4, p5

    .line 196
    .line 197
    invoke-direct {v11, v4, v6, v14}, Lg2/i;-><init>(Lw8/i;Lw8/i;Z)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v11, v12}, Lc2/b;->a(Lg2/f;Ljava/lang/Class;)V

    .line 201
    .line 202
    .line 203
    new-instance v4, Lg2/a;

    .line 204
    .line 205
    invoke-direct {v4, v5}, Lg2/a;-><init>(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10, v4, v15}, Lc2/b;->a(Lg2/f;Ljava/lang/Class;)V

    .line 209
    .line 210
    .line 211
    new-instance v4, Lg2/a;

    .line 212
    .line 213
    invoke-direct {v4, v7}, Lg2/a;-><init>(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v4, v12}, Lc2/b;->a(Lg2/f;Ljava/lang/Class;)V

    .line 217
    .line 218
    .line 219
    new-instance v4, Lg2/a;

    .line 220
    .line 221
    invoke-direct {v4, v2}, Lg2/a;-><init>(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v10, v4, v12}, Lc2/b;->a(Lg2/f;Ljava/lang/Class;)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Lg2/a;

    .line 228
    .line 229
    const/4 v4, 0x6

    .line 230
    invoke-direct {v2, v4}, Lg2/a;-><init>(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v10, v2, v12}, Lc2/b;->a(Lg2/f;Ljava/lang/Class;)V

    .line 234
    .line 235
    .line 236
    new-instance v2, Lg2/a;

    .line 237
    .line 238
    invoke-direct {v2, v3}, Lg2/a;-><init>(I)V

    .line 239
    .line 240
    .line 241
    const-class v3, Landroid/graphics/drawable/Drawable;

    .line 242
    .line 243
    invoke-virtual {v10, v2, v3}, Lc2/b;->a(Lg2/f;Ljava/lang/Class;)V

    .line 244
    .line 245
    .line 246
    new-instance v2, Lg2/a;

    .line 247
    .line 248
    const/4 v3, 0x1

    .line 249
    invoke-direct {v2, v3}, Lg2/a;-><init>(I)V

    .line 250
    .line 251
    .line 252
    const-class v3, Landroid/graphics/Bitmap;

    .line 253
    .line 254
    invoke-virtual {v10, v2, v3}, Lc2/b;->a(Lg2/f;Ljava/lang/Class;)V

    .line 255
    .line 256
    .line 257
    new-instance v2, Lg2/a;

    .line 258
    .line 259
    const/4 v3, 0x2

    .line 260
    invoke-direct {v2, v3}, Lg2/a;-><init>(I)V

    .line 261
    .line 262
    .line 263
    const-class v3, Ljava/nio/ByteBuffer;

    .line 264
    .line 265
    invoke-virtual {v10, v2, v3}, Lc2/b;->a(Lg2/f;Ljava/lang/Class;)V

    .line 266
    .line 267
    .line 268
    new-instance v2, Ld2/c;

    .line 269
    .line 270
    iget v3, v1, Lr2/j;->d:I

    .line 271
    .line 272
    iget-object v1, v1, Lr2/j;->e:Ld2/j;

    .line 273
    .line 274
    invoke-direct {v2, v3, v1}, Ld2/c;-><init>(ILd2/j;)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v10, Lc2/b;->f:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v1, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    new-instance v2, Lc2/c;

    .line 285
    .line 286
    iget-object v3, v10, Lc2/b;->b:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v3, Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-static {v3}, Lo9/d;->J(Ljava/util/List;)Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    iget-object v4, v10, Lc2/b;->c:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v4, Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-static {v4}, Lo9/d;->J(Ljava/util/List;)Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-static {v13}, Lo9/d;->J(Ljava/util/List;)Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    iget-object v6, v10, Lc2/b;->e:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v6, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-static {v6}, Lo9/d;->J(Ljava/util/List;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-static {v1}, Lo9/d;->J(Ljava/util/List;)Ljava/util/List;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    move-object/from16 p1, v2

    .line 319
    .line 320
    move-object/from16 p2, v3

    .line 321
    .line 322
    move-object/from16 p3, v4

    .line 323
    .line 324
    move-object/from16 p4, v5

    .line 325
    .line 326
    move-object/from16 p5, v6

    .line 327
    .line 328
    move-object/from16 p6, v1

    .line 329
    .line 330
    invoke-direct/range {p1 .. p6}, Lc2/c;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 331
    .line 332
    .line 333
    iput-object v2, v0, Lc2/l;->g:Lc2/c;

    .line 334
    .line 335
    new-instance v1, Lh2/i;

    .line 336
    .line 337
    invoke-direct {v1, v0, v8, v9}, Lh2/i;-><init>(Lc2/l;Lr2/l;La1/b;)V

    .line 338
    .line 339
    .line 340
    invoke-static {v3, v1}, Lx8/j;->a0(Ljava/util/List;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    iput-object v1, v0, Lc2/l;->h:Ljava/util/ArrayList;

    .line 345
    .line 346
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 347
    .line 348
    invoke-direct {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 349
    .line 350
    .line 351
    return-void
.end method

.method public static final a(Lc2/l;Lm2/i;Lc9/c;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    instance-of v3, v2, Lc2/i;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    move-object v3, v2

    .line 15
    check-cast v3, Lc2/i;

    .line 16
    .line 17
    iget v4, v3, Lc2/i;->h:I

    .line 18
    .line 19
    const/high16 v5, -0x80000000

    .line 20
    .line 21
    and-int v6, v4, v5

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    sub-int/2addr v4, v5

    .line 26
    iput v4, v3, Lc2/i;->h:I

    .line 27
    .line 28
    :goto_0
    move-object v8, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance v3, Lc2/i;

    .line 31
    .line 32
    invoke-direct {v3, v1, v2}, Lc2/i;-><init>(Lc2/l;Lc9/c;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    iget-object v2, v8, Lc2/i;->f:Ljava/lang/Object;

    .line 37
    .line 38
    sget-object v9, Lb9/a;->a:Lb9/a;

    .line 39
    .line 40
    iget v3, v8, Lc2/i;->h:I

    .line 41
    .line 42
    const/4 v10, 0x3

    .line 43
    const/4 v11, 0x2

    .line 44
    const/4 v12, 0x1

    .line 45
    const/4 v13, 0x0

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    if-eq v3, v12, :cond_3

    .line 49
    .line 50
    if-eq v3, v11, :cond_2

    .line 51
    .line 52
    if-ne v3, v10, :cond_1

    .line 53
    .line 54
    iget-object v1, v8, Lc2/i;->d:Lc2/d;

    .line 55
    .line 56
    iget-object v3, v8, Lc2/i;->c:Lm2/i;

    .line 57
    .line 58
    iget-object v4, v8, Lc2/i;->b:Lm2/p;

    .line 59
    .line 60
    iget-object v5, v8, Lc2/i;->a:Lc2/l;

    .line 61
    .line 62
    :try_start_0
    invoke-static {v2}, Lo9/d;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    move-object v0, v2

    .line 66
    move-object v2, v1

    .line 67
    move-object v1, v5

    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :catchall_0
    move-exception v0

    .line 71
    move-object v2, v1

    .line 72
    move-object v1, v5

    .line 73
    goto/16 :goto_8

    .line 74
    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_2
    iget-object v0, v8, Lc2/i;->e:Landroid/graphics/Bitmap;

    .line 84
    .line 85
    iget-object v1, v8, Lc2/i;->d:Lc2/d;

    .line 86
    .line 87
    iget-object v3, v8, Lc2/i;->c:Lm2/i;

    .line 88
    .line 89
    iget-object v4, v8, Lc2/i;->b:Lm2/p;

    .line 90
    .line 91
    iget-object v5, v8, Lc2/i;->a:Lc2/l;

    .line 92
    .line 93
    :try_start_1
    invoke-static {v2}, Lo9/d;->I(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    move-object/from16 v19, v0

    .line 97
    .line 98
    move-object v0, v2

    .line 99
    move-object v2, v1

    .line 100
    move-object v1, v5

    .line 101
    goto/16 :goto_4

    .line 102
    .line 103
    :cond_3
    iget-object v1, v8, Lc2/i;->d:Lc2/d;

    .line 104
    .line 105
    iget-object v3, v8, Lc2/i;->c:Lm2/i;

    .line 106
    .line 107
    iget-object v4, v8, Lc2/i;->b:Lm2/p;

    .line 108
    .line 109
    iget-object v5, v8, Lc2/i;->a:Lc2/l;

    .line 110
    .line 111
    :try_start_2
    invoke-static {v2}, Lo9/d;->I(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .line 113
    .line 114
    move-object v2, v1

    .line 115
    move-object v1, v5

    .line 116
    goto :goto_3

    .line 117
    :cond_4
    invoke-static {v2}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v8}, La9/d;->getContext()La9/i;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v2}, Lt9/u;->g(La9/i;)Lt9/q0;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    iget-object v2, v1, Lc2/l;->f:La1/b;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object v6, v0, Lm2/i;->u:Landroidx/lifecycle/p;

    .line 134
    .line 135
    iget-object v5, v0, Lm2/i;->c:Lo2/a;

    .line 136
    .line 137
    instance-of v3, v5, Lo2/a;

    .line 138
    .line 139
    if-eqz v3, :cond_5

    .line 140
    .line 141
    new-instance v14, Lm2/s;

    .line 142
    .line 143
    iget-object v2, v2, La1/b;->b:Ljava/lang/Object;

    .line 144
    .line 145
    move-object v3, v2

    .line 146
    check-cast v3, Lc2/l;

    .line 147
    .line 148
    move-object v2, v14

    .line 149
    move-object/from16 v4, p1

    .line 150
    .line 151
    invoke-direct/range {v2 .. v7}, Lm2/s;-><init>(Lc2/l;Lm2/i;Lo2/a;Landroidx/lifecycle/p;Lt9/q0;)V

    .line 152
    .line 153
    .line 154
    move-object v4, v14

    .line 155
    goto :goto_2

    .line 156
    :cond_5
    new-instance v2, Lm2/a;

    .line 157
    .line 158
    invoke-direct {v2, v6, v7}, Lm2/a;-><init>(Landroidx/lifecycle/p;Lt9/q0;)V

    .line 159
    .line 160
    .line 161
    move-object v4, v2

    .line 162
    :goto_2
    invoke-interface {v4}, Lm2/p;->f()V

    .line 163
    .line 164
    .line 165
    new-instance v2, Lm2/h;

    .line 166
    .line 167
    iget-object v3, v0, Lm2/i;->a:Landroid/content/Context;

    .line 168
    .line 169
    invoke-direct {v2, v0, v3}, Lm2/h;-><init>(Lm2/i;Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, v1, Lc2/l;->b:Lm2/c;

    .line 173
    .line 174
    iput-object v0, v2, Lm2/h;->b:Lm2/c;

    .line 175
    .line 176
    iput-object v13, v2, Lm2/h;->u:Ln2/g;

    .line 177
    .line 178
    invoke-virtual {v2}, Lm2/h;->a()Lm2/i;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    sget-object v2, Lc2/d;->a:Lc2/d;

    .line 183
    .line 184
    :try_start_3
    iget-object v0, v3, Lm2/i;->b:Ljava/lang/Object;

    .line 185
    .line 186
    sget-object v5, Lm2/k;->b:Lm2/k;

    .line 187
    .line 188
    if-eq v0, v5, :cond_10

    .line 189
    .line 190
    invoke-interface {v4}, Lm2/p;->start()V

    .line 191
    .line 192
    .line 193
    iget-object v0, v3, Lm2/i;->u:Landroidx/lifecycle/p;

    .line 194
    .line 195
    iput-object v1, v8, Lc2/i;->a:Lc2/l;

    .line 196
    .line 197
    iput-object v4, v8, Lc2/i;->b:Lm2/p;

    .line 198
    .line 199
    iput-object v3, v8, Lc2/i;->c:Lm2/i;

    .line 200
    .line 201
    iput-object v2, v8, Lc2/i;->d:Lc2/d;

    .line 202
    .line 203
    iput v12, v8, Lc2/i;->h:I

    .line 204
    .line 205
    invoke-static {v0, v8}, Lr4/b;->b(Landroidx/lifecycle/p;Lc9/c;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-ne v0, v9, :cond_6

    .line 210
    .line 211
    goto/16 :goto_9

    .line 212
    .line 213
    :cond_6
    :goto_3
    iget-object v0, v1, Lc2/l;->c:Lw8/i;

    .line 214
    .line 215
    invoke-virtual {v0}, Lw8/i;->getValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Lk2/b;

    .line 220
    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    :cond_7
    iget-object v0, v3, Lm2/i;->D:Lm2/c;

    .line 227
    .line 228
    iget-object v0, v0, Lm2/c;->j:Landroid/graphics/drawable/Drawable;

    .line 229
    .line 230
    iget-object v5, v3, Lm2/i;->z:Landroid/graphics/drawable/Drawable;

    .line 231
    .line 232
    iget-object v6, v3, Lm2/i;->y:Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-static {v3, v5, v6, v0}, Lr2/d;->b(Lm2/i;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v5, v3, Lm2/i;->c:Lo2/a;

    .line 239
    .line 240
    if-eqz v5, :cond_8

    .line 241
    .line 242
    invoke-virtual {v5, v0}, Lo2/a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 243
    .line 244
    .line 245
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    iget-object v0, v3, Lm2/i;->v:Ln2/i;

    .line 249
    .line 250
    iput-object v1, v8, Lc2/i;->a:Lc2/l;

    .line 251
    .line 252
    iput-object v4, v8, Lc2/i;->b:Lm2/p;

    .line 253
    .line 254
    iput-object v3, v8, Lc2/i;->c:Lm2/i;

    .line 255
    .line 256
    iput-object v2, v8, Lc2/i;->d:Lc2/d;

    .line 257
    .line 258
    iput-object v13, v8, Lc2/i;->e:Landroid/graphics/Bitmap;

    .line 259
    .line 260
    iput v11, v8, Lc2/i;->h:I

    .line 261
    .line 262
    invoke-interface {v0, v8}, Ln2/i;->a(Lc2/i;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-ne v0, v9, :cond_9

    .line 267
    .line 268
    goto/16 :goto_9

    .line 269
    .line 270
    :cond_9
    move-object/from16 v19, v13

    .line 271
    .line 272
    :goto_4
    move-object/from16 v17, v0

    .line 273
    .line 274
    check-cast v17, Ln2/h;

    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    iget-object v0, v3, Lm2/i;->q:Lt9/p;

    .line 280
    .line 281
    new-instance v5, Lc2/j;

    .line 282
    .line 283
    const/16 v20, 0x0

    .line 284
    .line 285
    move-object v14, v5

    .line 286
    move-object v15, v3

    .line 287
    move-object/from16 v16, v1

    .line 288
    .line 289
    move-object/from16 v18, v2

    .line 290
    .line 291
    invoke-direct/range {v14 .. v20}, Lc2/j;-><init>(Lm2/i;Lc2/l;Ln2/h;Lc2/d;Landroid/graphics/Bitmap;La9/d;)V

    .line 292
    .line 293
    .line 294
    iput-object v1, v8, Lc2/i;->a:Lc2/l;

    .line 295
    .line 296
    iput-object v4, v8, Lc2/i;->b:Lm2/p;

    .line 297
    .line 298
    iput-object v3, v8, Lc2/i;->c:Lm2/i;

    .line 299
    .line 300
    iput-object v2, v8, Lc2/i;->d:Lc2/d;

    .line 301
    .line 302
    iput-object v13, v8, Lc2/i;->e:Landroid/graphics/Bitmap;

    .line 303
    .line 304
    iput v10, v8, Lc2/i;->h:I

    .line 305
    .line 306
    invoke-static {v0, v5, v8}, Lt9/u;->p(La9/i;Li9/p;Lc9/c;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    if-ne v0, v9, :cond_a

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_a
    :goto_5
    move-object v9, v0

    .line 314
    check-cast v9, Lm2/j;

    .line 315
    .line 316
    instance-of v0, v9, Lm2/q;

    .line 317
    .line 318
    if-eqz v0, :cond_e

    .line 319
    .line 320
    move-object v0, v9

    .line 321
    check-cast v0, Lm2/q;

    .line 322
    .line 323
    iget-object v5, v3, Lm2/i;->c:Lo2/a;

    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    iget-object v6, v0, Lm2/q;->b:Lm2/i;

    .line 329
    .line 330
    instance-of v7, v5, Lo2/a;

    .line 331
    .line 332
    iget-object v8, v0, Lm2/q;->a:Landroid/graphics/drawable/Drawable;

    .line 333
    .line 334
    if-nez v7, :cond_b

    .line 335
    .line 336
    if-eqz v5, :cond_d

    .line 337
    .line 338
    invoke-virtual {v5, v8}, Lo2/a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 339
    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_b
    iget-object v7, v6, Lm2/i;->g:Lq2/d;

    .line 343
    .line 344
    invoke-interface {v7, v5, v0}, Lq2/d;->a(Lo2/a;Lm2/j;)Lq2/e;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    instance-of v7, v0, Lq2/c;

    .line 349
    .line 350
    if-eqz v7, :cond_c

    .line 351
    .line 352
    invoke-virtual {v5, v8}, Lo2/a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 353
    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    invoke-interface {v0}, Lq2/e;->a()V

    .line 360
    .line 361
    .line 362
    :cond_d
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    goto :goto_7

    .line 369
    :catchall_1
    move-exception v0

    .line 370
    goto :goto_8

    .line 371
    :cond_e
    instance-of v0, v9, Lm2/e;

    .line 372
    .line 373
    if-eqz v0, :cond_f

    .line 374
    .line 375
    move-object v0, v9

    .line 376
    check-cast v0, Lm2/e;

    .line 377
    .line 378
    iget-object v5, v3, Lm2/i;->c:Lo2/a;

    .line 379
    .line 380
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    invoke-static {v0, v5, v2}, Lc2/l;->c(Lm2/e;Lo2/a;Lc2/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 384
    .line 385
    .line 386
    :cond_f
    :goto_7
    invoke-interface {v4}, Lm2/p;->a()V

    .line 387
    .line 388
    .line 389
    goto :goto_9

    .line 390
    :cond_10
    :try_start_4
    new-instance v0, Lm2/l;

    .line 391
    .line 392
    const-string v5, "The request\'s data is null."

    .line 393
    .line 394
    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 398
    :goto_8
    :try_start_5
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    .line 399
    .line 400
    if-nez v5, :cond_11

    .line 401
    .line 402
    iget-object v1, v1, Lc2/l;->f:La1/b;

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    invoke-static {v3, v0}, La1/b;->k(Lm2/i;Ljava/lang/Throwable;)Lm2/e;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    iget-object v0, v3, Lm2/i;->c:Lo2/a;

    .line 412
    .line 413
    invoke-static {v9, v0, v2}, Lc2/l;->c(Lm2/e;Lo2/a;Lc2/d;)V

    .line 414
    .line 415
    .line 416
    goto :goto_7

    .line 417
    :goto_9
    return-object v9

    .line 418
    :catchall_2
    move-exception v0

    .line 419
    goto :goto_a

    .line 420
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 430
    :goto_a
    invoke-interface {v4}, Lm2/p;->a()V

    .line 431
    .line 432
    .line 433
    throw v0
.end method

.method public static c(Lm2/e;Lo2/a;Lc2/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm2/e;->b:Lm2/i;

    .line 2
    .line 3
    instance-of v1, p1, Lo2/a;

    .line 4
    .line 5
    iget-object v2, p0, Lm2/e;->a:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Lo2/a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, v0, Lm2/i;->g:Lq2/d;

    .line 16
    .line 17
    invoke-interface {v1, p1, p0}, Lq2/d;->a(Lo2/a;Lm2/j;)Lq2/e;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    instance-of v1, p0, Lq2/c;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lo2/a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Lq2/e;->a()V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final b(Lm2/i;)Lm2/k;
    .locals 6

    .line 1
    iget-object v0, p0, Lc2/l;->e:Lx9/d;

    .line 2
    .line 3
    new-instance v1, Lc2/h;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lc2/h;-><init>(Lc2/l;Lm2/i;La9/d;)V

    .line 7
    .line 8
    .line 9
    sget-object v3, La9/j;->a:La9/j;

    .line 10
    .line 11
    invoke-virtual {v0}, Lx9/d;->d()La9/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-static {v0, v3, v4}, Lt9/u;->e(La9/i;La9/i;Z)La9/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v3, Lt9/b0;->a:Lz9/d;

    .line 21
    .line 22
    if-eq v0, v3, :cond_0

    .line 23
    .line 24
    sget-object v5, La9/e;->a:La9/e;

    .line 25
    .line 26
    invoke-interface {v0, v5}, La9/i;->e(La9/h;)La9/g;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, v3}, La9/i;->f(La9/i;)La9/i;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_0
    new-instance v3, Lt9/x;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-direct {v3, v0, v4, v5}, Lt9/x;-><init>(La9/i;ZI)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4, v3, v1}, Lt9/a;->I(ILt9/a;Li9/p;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Lm2/i;->c:Lo2/a;

    .line 46
    .line 47
    instance-of v0, p1, Lo2/a;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object p1, p1, Lo2/a;->b:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-static {p1}, Lr2/f;->c(Landroid/widget/ImageView;)Lm2/u;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    monitor-enter p1

    .line 58
    :try_start_0
    iget-object v0, p1, Lm2/u;->b:Lm2/k;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v1, v3}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    iget-boolean v1, p1, Lm2/u;->e:Z

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    iput-boolean v1, p1, Lm2/u;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    monitor-exit p1

    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    :try_start_1
    iget-object v0, p1, Lm2/u;->c:Lt9/x;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-static {v0}, Lt9/u;->c(Lt9/q0;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iput-object v2, p1, Lm2/u;->c:Lt9/x;

    .line 95
    .line 96
    new-instance v0, Lm2/k;

    .line 97
    .line 98
    iget-object v1, p1, Lm2/u;->a:Landroid/widget/ImageView;

    .line 99
    .line 100
    invoke-direct {v0, v1}, Lm2/k;-><init>(Landroid/widget/ImageView;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p1, Lm2/u;->b:Lm2/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    monitor-exit p1

    .line 106
    goto :goto_1

    .line 107
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw v0

    .line 109
    :cond_3
    new-instance v0, Lm2/k;

    .line 110
    .line 111
    const/4 p1, 0x1

    .line 112
    invoke-direct {v0, p1}, Lm2/k;-><init>(I)V

    .line 113
    .line 114
    .line 115
    :goto_1
    return-object v0
.end method
