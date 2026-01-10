.class public final Lw/d;
.super Lw/n;
.source "MyApplication"


# instance fields
.field public final k:Ljava/util/ArrayList;

.field public l:I


# direct methods
.method public constructor <init>(Lv/e;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lw/n;-><init>(Lv/e;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lw/d;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput p2, p0, Lw/n;->f:I

    .line 12
    .line 13
    iget-object p1, p0, Lw/n;->b:Lv/e;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lv/e;->l(I)Lv/e;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :goto_0
    move-object v3, p2

    .line 20
    move-object p2, p1

    .line 21
    move-object p1, v3

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget p2, p0, Lw/n;->f:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lv/e;->l(I)Lv/e;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-object p2, p0, Lw/n;->b:Lv/e;

    .line 32
    .line 33
    iget p1, p0, Lw/n;->f:I

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p2, Lv/e;->d:Lw/k;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-ne p1, v1, :cond_2

    .line 43
    .line 44
    iget-object p1, p2, Lv/e;->e:Lw/m;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object p1, v0

    .line 48
    :goto_1
    iget-object v2, p0, Lw/d;->k:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget p1, p0, Lw/n;->f:I

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lv/e;->k(I)Lv/e;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_2
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iget p2, p0, Lw/n;->f:I

    .line 62
    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    iget-object p2, p1, Lv/e;->d:Lw/k;

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    if-ne p2, v1, :cond_4

    .line 69
    .line 70
    iget-object p2, p1, Lv/e;->e:Lw/m;

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    move-object p2, v0

    .line 74
    :goto_3
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    iget p2, p0, Lw/n;->f:I

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lv/e;->k(I)Lv/e;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_8

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Lw/n;

    .line 99
    .line 100
    iget v0, p0, Lw/n;->f:I

    .line 101
    .line 102
    if-nez v0, :cond_7

    .line 103
    .line 104
    iget-object p2, p2, Lw/n;->b:Lv/e;

    .line 105
    .line 106
    iput-object p0, p2, Lv/e;->b:Lw/d;

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_7
    if-ne v0, v1, :cond_6

    .line 110
    .line 111
    iget-object p2, p2, Lw/n;->b:Lv/e;

    .line 112
    .line 113
    iput-object p0, p2, Lv/e;->c:Lw/d;

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_8
    iget p1, p0, Lw/n;->f:I

    .line 117
    .line 118
    if-nez p1, :cond_9

    .line 119
    .line 120
    iget-object p1, p0, Lw/n;->b:Lv/e;

    .line 121
    .line 122
    iget-object p1, p1, Lv/e;->K:Lv/e;

    .line 123
    .line 124
    check-cast p1, Lv/f;

    .line 125
    .line 126
    iget-boolean p1, p1, Lv/f;->k0:Z

    .line 127
    .line 128
    if-eqz p1, :cond_9

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-le p1, v1, :cond_9

    .line 135
    .line 136
    invoke-static {v1, v2}, Lea/q;->e(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Lw/n;

    .line 141
    .line 142
    iget-object p1, p1, Lw/n;->b:Lv/e;

    .line 143
    .line 144
    iput-object p1, p0, Lw/n;->b:Lv/e;

    .line 145
    .line 146
    :cond_9
    iget p1, p0, Lw/n;->f:I

    .line 147
    .line 148
    if-nez p1, :cond_a

    .line 149
    .line 150
    iget-object p1, p0, Lw/n;->b:Lv/e;

    .line 151
    .line 152
    iget p1, p1, Lv/e;->Z:I

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_a
    iget-object p1, p0, Lw/n;->b:Lv/e;

    .line 156
    .line 157
    iget p1, p1, Lv/e;->a0:I

    .line 158
    .line 159
    :goto_5
    iput p1, p0, Lw/d;->l:I

    .line 160
    .line 161
    return-void
.end method


# virtual methods
.method public final a(Lw/e;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lw/n;->h:Lw/g;

    .line 4
    .line 5
    iget-boolean v2, v1, Lw/g;->j:Z

    .line 6
    .line 7
    if-eqz v2, :cond_59

    .line 8
    .line 9
    iget-object v2, v0, Lw/n;->i:Lw/g;

    .line 10
    .line 11
    iget-boolean v3, v2, Lw/g;->j:Z

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_35

    .line 16
    .line 17
    :cond_0
    iget-object v3, v0, Lw/n;->b:Lv/e;

    .line 18
    .line 19
    iget-object v3, v3, Lv/e;->K:Lv/e;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    instance-of v5, v3, Lv/f;

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    check-cast v3, Lv/f;

    .line 28
    .line 29
    iget-boolean v3, v3, Lv/f;->k0:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    :goto_0
    iget v5, v2, Lw/g;->g:I

    .line 34
    .line 35
    iget v6, v1, Lw/g;->g:I

    .line 36
    .line 37
    sub-int/2addr v5, v6

    .line 38
    iget-object v6, v0, Lw/d;->k:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/4 v8, 0x0

    .line 45
    :goto_1
    const/4 v9, -0x1

    .line 46
    const/16 v10, 0x8

    .line 47
    .line 48
    if-ge v8, v7, :cond_2

    .line 49
    .line 50
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    check-cast v11, Lw/n;

    .line 55
    .line 56
    iget-object v11, v11, Lw/n;->b:Lv/e;

    .line 57
    .line 58
    iget v11, v11, Lv/e;->X:I

    .line 59
    .line 60
    if-ne v11, v10, :cond_3

    .line 61
    .line 62
    add-int/lit8 v8, v8, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v8, -0x1

    .line 66
    :cond_3
    add-int/lit8 v11, v7, -0x1

    .line 67
    .line 68
    move v12, v11

    .line 69
    :goto_2
    if-ltz v12, :cond_5

    .line 70
    .line 71
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    check-cast v13, Lw/n;

    .line 76
    .line 77
    iget-object v13, v13, Lw/n;->b:Lv/e;

    .line 78
    .line 79
    iget v13, v13, Lv/e;->X:I

    .line 80
    .line 81
    if-ne v13, v10, :cond_4

    .line 82
    .line 83
    add-int/lit8 v12, v12, -0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move v9, v12

    .line 87
    :cond_5
    const/4 v12, 0x0

    .line 88
    :goto_3
    sget-object v13, Lv/d;->c:Lv/d;

    .line 89
    .line 90
    const/4 v4, 0x2

    .line 91
    if-ge v12, v4, :cond_14

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v15, 0x0

    .line 95
    const/16 v17, 0x0

    .line 96
    .line 97
    const/16 v18, 0x0

    .line 98
    .line 99
    const/16 v19, 0x0

    .line 100
    .line 101
    :goto_4
    if-ge v4, v7, :cond_11

    .line 102
    .line 103
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v20

    .line 107
    move-object/from16 v14, v20

    .line 108
    .line 109
    check-cast v14, Lw/n;

    .line 110
    .line 111
    iget-object v10, v14, Lw/n;->b:Lv/e;

    .line 112
    .line 113
    move-object/from16 v21, v6

    .line 114
    .line 115
    iget v6, v10, Lv/e;->X:I

    .line 116
    .line 117
    move/from16 v22, v7

    .line 118
    .line 119
    const/16 v7, 0x8

    .line 120
    .line 121
    if-ne v6, v7, :cond_6

    .line 122
    .line 123
    move/from16 v25, v8

    .line 124
    .line 125
    goto/16 :goto_a

    .line 126
    .line 127
    :cond_6
    add-int/lit8 v18, v18, 0x1

    .line 128
    .line 129
    if-lez v4, :cond_7

    .line 130
    .line 131
    if-lt v4, v8, :cond_7

    .line 132
    .line 133
    iget-object v6, v14, Lw/n;->h:Lw/g;

    .line 134
    .line 135
    iget v6, v6, Lw/g;->f:I

    .line 136
    .line 137
    add-int/2addr v15, v6

    .line 138
    :cond_7
    iget-object v6, v14, Lw/n;->e:Lw/h;

    .line 139
    .line 140
    iget v7, v6, Lw/g;->g:I

    .line 141
    .line 142
    move/from16 v23, v7

    .line 143
    .line 144
    iget-object v7, v14, Lw/n;->d:Lv/d;

    .line 145
    .line 146
    if-eq v7, v13, :cond_8

    .line 147
    .line 148
    const/4 v7, 0x1

    .line 149
    goto :goto_5

    .line 150
    :cond_8
    const/4 v7, 0x0

    .line 151
    :goto_5
    if-eqz v7, :cond_b

    .line 152
    .line 153
    iget v6, v0, Lw/n;->f:I

    .line 154
    .line 155
    move/from16 v24, v7

    .line 156
    .line 157
    if-nez v6, :cond_9

    .line 158
    .line 159
    iget-object v7, v10, Lv/e;->d:Lw/k;

    .line 160
    .line 161
    iget-object v7, v7, Lw/n;->e:Lw/h;

    .line 162
    .line 163
    iget-boolean v7, v7, Lw/g;->j:Z

    .line 164
    .line 165
    if-nez v7, :cond_9

    .line 166
    .line 167
    return-void

    .line 168
    :cond_9
    const/4 v7, 0x1

    .line 169
    if-ne v6, v7, :cond_a

    .line 170
    .line 171
    iget-object v6, v10, Lv/e;->e:Lw/m;

    .line 172
    .line 173
    iget-object v6, v6, Lw/n;->e:Lw/h;

    .line 174
    .line 175
    iget-boolean v6, v6, Lw/g;->j:Z

    .line 176
    .line 177
    if-nez v6, :cond_a

    .line 178
    .line 179
    return-void

    .line 180
    :cond_a
    move/from16 v25, v8

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_b
    move/from16 v24, v7

    .line 184
    .line 185
    move/from16 v25, v8

    .line 186
    .line 187
    const/4 v7, 0x1

    .line 188
    iget v8, v14, Lw/n;->a:I

    .line 189
    .line 190
    if-ne v8, v7, :cond_c

    .line 191
    .line 192
    if-nez v12, :cond_c

    .line 193
    .line 194
    iget v7, v6, Lw/h;->m:I

    .line 195
    .line 196
    add-int/lit8 v17, v17, 0x1

    .line 197
    .line 198
    :goto_6
    const/16 v24, 0x1

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_c
    iget-boolean v6, v6, Lw/g;->j:Z

    .line 202
    .line 203
    if-eqz v6, :cond_d

    .line 204
    .line 205
    move/from16 v7, v23

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_d
    :goto_7
    move/from16 v7, v23

    .line 209
    .line 210
    :goto_8
    if-nez v24, :cond_e

    .line 211
    .line 212
    add-int/lit8 v17, v17, 0x1

    .line 213
    .line 214
    iget-object v6, v10, Lv/e;->b0:[F

    .line 215
    .line 216
    iget v7, v0, Lw/n;->f:I

    .line 217
    .line 218
    aget v6, v6, v7

    .line 219
    .line 220
    const/4 v7, 0x0

    .line 221
    cmpl-float v8, v6, v7

    .line 222
    .line 223
    if-ltz v8, :cond_f

    .line 224
    .line 225
    add-float v19, v19, v6

    .line 226
    .line 227
    goto :goto_9

    .line 228
    :cond_e
    add-int/2addr v15, v7

    .line 229
    :cond_f
    :goto_9
    if-ge v4, v11, :cond_10

    .line 230
    .line 231
    if-ge v4, v9, :cond_10

    .line 232
    .line 233
    iget-object v6, v14, Lw/n;->i:Lw/g;

    .line 234
    .line 235
    iget v6, v6, Lw/g;->f:I

    .line 236
    .line 237
    neg-int v6, v6

    .line 238
    add-int/2addr v15, v6

    .line 239
    :cond_10
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 240
    .line 241
    move-object/from16 v6, v21

    .line 242
    .line 243
    move/from16 v7, v22

    .line 244
    .line 245
    move/from16 v8, v25

    .line 246
    .line 247
    const/16 v10, 0x8

    .line 248
    .line 249
    goto/16 :goto_4

    .line 250
    .line 251
    :cond_11
    move-object/from16 v21, v6

    .line 252
    .line 253
    move/from16 v22, v7

    .line 254
    .line 255
    move/from16 v25, v8

    .line 256
    .line 257
    if-lt v15, v5, :cond_13

    .line 258
    .line 259
    if-nez v17, :cond_12

    .line 260
    .line 261
    goto :goto_b

    .line 262
    :cond_12
    add-int/lit8 v12, v12, 0x1

    .line 263
    .line 264
    move-object/from16 v6, v21

    .line 265
    .line 266
    move/from16 v7, v22

    .line 267
    .line 268
    move/from16 v8, v25

    .line 269
    .line 270
    const/16 v10, 0x8

    .line 271
    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    :cond_13
    :goto_b
    move/from16 v4, v17

    .line 275
    .line 276
    move/from16 v6, v18

    .line 277
    .line 278
    goto :goto_c

    .line 279
    :cond_14
    move-object/from16 v21, v6

    .line 280
    .line 281
    move/from16 v22, v7

    .line 282
    .line 283
    move/from16 v25, v8

    .line 284
    .line 285
    const/4 v4, 0x0

    .line 286
    const/4 v6, 0x0

    .line 287
    const/4 v15, 0x0

    .line 288
    const/16 v19, 0x0

    .line 289
    .line 290
    :goto_c
    iget v1, v1, Lw/g;->g:I

    .line 291
    .line 292
    if-eqz v3, :cond_15

    .line 293
    .line 294
    iget v1, v2, Lw/g;->g:I

    .line 295
    .line 296
    :cond_15
    const/high16 v2, 0x3f000000    # 0.5f

    .line 297
    .line 298
    if-le v15, v5, :cond_17

    .line 299
    .line 300
    const/high16 v7, 0x40000000    # 2.0f

    .line 301
    .line 302
    if-eqz v3, :cond_16

    .line 303
    .line 304
    sub-int v8, v15, v5

    .line 305
    .line 306
    int-to-float v8, v8

    .line 307
    div-float/2addr v8, v7

    .line 308
    add-float/2addr v8, v2

    .line 309
    float-to-int v7, v8

    .line 310
    add-int/2addr v1, v7

    .line 311
    goto :goto_d

    .line 312
    :cond_16
    sub-int v8, v15, v5

    .line 313
    .line 314
    int-to-float v8, v8

    .line 315
    div-float/2addr v8, v7

    .line 316
    add-float/2addr v8, v2

    .line 317
    float-to-int v7, v8

    .line 318
    sub-int/2addr v1, v7

    .line 319
    :cond_17
    :goto_d
    if-lez v4, :cond_27

    .line 320
    .line 321
    sub-int v7, v5, v15

    .line 322
    .line 323
    int-to-float v7, v7

    .line 324
    int-to-float v8, v4

    .line 325
    div-float v8, v7, v8

    .line 326
    .line 327
    add-float/2addr v8, v2

    .line 328
    float-to-int v8, v8

    .line 329
    move/from16 v10, v22

    .line 330
    .line 331
    const/4 v12, 0x0

    .line 332
    const/4 v14, 0x0

    .line 333
    :goto_e
    if-ge v12, v10, :cond_21

    .line 334
    .line 335
    move-object/from16 v2, v21

    .line 336
    .line 337
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v18

    .line 341
    move/from16 v21, v8

    .line 342
    .line 343
    move-object/from16 v8, v18

    .line 344
    .line 345
    check-cast v8, Lw/n;

    .line 346
    .line 347
    move/from16 v18, v15

    .line 348
    .line 349
    iget-object v15, v8, Lw/n;->b:Lv/e;

    .line 350
    .line 351
    move/from16 v22, v1

    .line 352
    .line 353
    iget v1, v15, Lv/e;->X:I

    .line 354
    .line 355
    move/from16 v23, v3

    .line 356
    .line 357
    const/16 v3, 0x8

    .line 358
    .line 359
    if-ne v1, v3, :cond_19

    .line 360
    .line 361
    :cond_18
    move/from16 v26, v7

    .line 362
    .line 363
    move-object/from16 v24, v13

    .line 364
    .line 365
    goto/16 :goto_13

    .line 366
    .line 367
    :cond_19
    iget-object v1, v8, Lw/n;->d:Lv/d;

    .line 368
    .line 369
    if-ne v1, v13, :cond_18

    .line 370
    .line 371
    iget-object v1, v8, Lw/n;->e:Lw/h;

    .line 372
    .line 373
    iget-boolean v3, v1, Lw/g;->j:Z

    .line 374
    .line 375
    if-nez v3, :cond_18

    .line 376
    .line 377
    const/4 v3, 0x0

    .line 378
    cmpl-float v16, v19, v3

    .line 379
    .line 380
    if-lez v16, :cond_1a

    .line 381
    .line 382
    iget-object v3, v15, Lv/e;->b0:[F

    .line 383
    .line 384
    move-object/from16 v24, v13

    .line 385
    .line 386
    iget v13, v0, Lw/n;->f:I

    .line 387
    .line 388
    aget v3, v3, v13

    .line 389
    .line 390
    mul-float v3, v3, v7

    .line 391
    .line 392
    div-float v3, v3, v19

    .line 393
    .line 394
    const/high16 v13, 0x3f000000    # 0.5f

    .line 395
    .line 396
    add-float/2addr v3, v13

    .line 397
    float-to-int v3, v3

    .line 398
    goto :goto_f

    .line 399
    :cond_1a
    move-object/from16 v24, v13

    .line 400
    .line 401
    move/from16 v3, v21

    .line 402
    .line 403
    :goto_f
    iget v13, v0, Lw/n;->f:I

    .line 404
    .line 405
    if-nez v13, :cond_1d

    .line 406
    .line 407
    iget v13, v15, Lv/e;->n:I

    .line 408
    .line 409
    iget v15, v15, Lv/e;->m:I

    .line 410
    .line 411
    iget v8, v8, Lw/n;->a:I

    .line 412
    .line 413
    move/from16 v26, v7

    .line 414
    .line 415
    const/4 v7, 0x1

    .line 416
    if-ne v8, v7, :cond_1b

    .line 417
    .line 418
    iget v7, v1, Lw/h;->m:I

    .line 419
    .line 420
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 421
    .line 422
    .line 423
    move-result v7

    .line 424
    goto :goto_10

    .line 425
    :cond_1b
    move v7, v3

    .line 426
    :goto_10
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    .line 427
    .line 428
    .line 429
    move-result v7

    .line 430
    if-lez v13, :cond_1c

    .line 431
    .line 432
    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    .line 433
    .line 434
    .line 435
    move-result v7

    .line 436
    :cond_1c
    if-eq v7, v3, :cond_20

    .line 437
    .line 438
    add-int/lit8 v14, v14, 0x1

    .line 439
    .line 440
    move v3, v7

    .line 441
    goto :goto_12

    .line 442
    :cond_1d
    move/from16 v26, v7

    .line 443
    .line 444
    iget v7, v15, Lv/e;->q:I

    .line 445
    .line 446
    iget v13, v15, Lv/e;->p:I

    .line 447
    .line 448
    iget v8, v8, Lw/n;->a:I

    .line 449
    .line 450
    const/4 v15, 0x1

    .line 451
    if-ne v8, v15, :cond_1e

    .line 452
    .line 453
    iget v8, v1, Lw/h;->m:I

    .line 454
    .line 455
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    .line 456
    .line 457
    .line 458
    move-result v8

    .line 459
    goto :goto_11

    .line 460
    :cond_1e
    move v8, v3

    .line 461
    :goto_11
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    .line 462
    .line 463
    .line 464
    move-result v8

    .line 465
    if-lez v7, :cond_1f

    .line 466
    .line 467
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 468
    .line 469
    .line 470
    move-result v8

    .line 471
    :cond_1f
    if-eq v8, v3, :cond_20

    .line 472
    .line 473
    add-int/lit8 v14, v14, 0x1

    .line 474
    .line 475
    move v3, v8

    .line 476
    :cond_20
    :goto_12
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 477
    .line 478
    .line 479
    :goto_13
    add-int/lit8 v12, v12, 0x1

    .line 480
    .line 481
    move/from16 v15, v18

    .line 482
    .line 483
    move/from16 v8, v21

    .line 484
    .line 485
    move/from16 v1, v22

    .line 486
    .line 487
    move/from16 v3, v23

    .line 488
    .line 489
    move-object/from16 v13, v24

    .line 490
    .line 491
    move/from16 v7, v26

    .line 492
    .line 493
    move-object/from16 v21, v2

    .line 494
    .line 495
    const/high16 v2, 0x3f000000    # 0.5f

    .line 496
    .line 497
    goto/16 :goto_e

    .line 498
    .line 499
    :cond_21
    move/from16 v22, v1

    .line 500
    .line 501
    move/from16 v23, v3

    .line 502
    .line 503
    move-object/from16 v24, v13

    .line 504
    .line 505
    move/from16 v18, v15

    .line 506
    .line 507
    move-object/from16 v2, v21

    .line 508
    .line 509
    if-lez v14, :cond_26

    .line 510
    .line 511
    sub-int/2addr v4, v14

    .line 512
    const/4 v1, 0x0

    .line 513
    const/4 v15, 0x0

    .line 514
    :goto_14
    if-ge v1, v10, :cond_25

    .line 515
    .line 516
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    check-cast v3, Lw/n;

    .line 521
    .line 522
    iget-object v7, v3, Lw/n;->b:Lv/e;

    .line 523
    .line 524
    iget v7, v7, Lv/e;->X:I

    .line 525
    .line 526
    const/16 v8, 0x8

    .line 527
    .line 528
    if-ne v7, v8, :cond_22

    .line 529
    .line 530
    move/from16 v8, v25

    .line 531
    .line 532
    goto :goto_15

    .line 533
    :cond_22
    move/from16 v8, v25

    .line 534
    .line 535
    if-lez v1, :cond_23

    .line 536
    .line 537
    if-lt v1, v8, :cond_23

    .line 538
    .line 539
    iget-object v7, v3, Lw/n;->h:Lw/g;

    .line 540
    .line 541
    iget v7, v7, Lw/g;->f:I

    .line 542
    .line 543
    add-int/2addr v15, v7

    .line 544
    :cond_23
    iget-object v7, v3, Lw/n;->e:Lw/h;

    .line 545
    .line 546
    iget v7, v7, Lw/g;->g:I

    .line 547
    .line 548
    add-int/2addr v15, v7

    .line 549
    if-ge v1, v11, :cond_24

    .line 550
    .line 551
    if-ge v1, v9, :cond_24

    .line 552
    .line 553
    iget-object v3, v3, Lw/n;->i:Lw/g;

    .line 554
    .line 555
    iget v3, v3, Lw/g;->f:I

    .line 556
    .line 557
    neg-int v3, v3

    .line 558
    add-int/2addr v15, v3

    .line 559
    :cond_24
    :goto_15
    add-int/lit8 v1, v1, 0x1

    .line 560
    .line 561
    move/from16 v25, v8

    .line 562
    .line 563
    goto :goto_14

    .line 564
    :cond_25
    move/from16 v8, v25

    .line 565
    .line 566
    goto :goto_16

    .line 567
    :cond_26
    move/from16 v8, v25

    .line 568
    .line 569
    move/from16 v15, v18

    .line 570
    .line 571
    :goto_16
    iget v1, v0, Lw/d;->l:I

    .line 572
    .line 573
    const/4 v3, 0x2

    .line 574
    if-ne v1, v3, :cond_28

    .line 575
    .line 576
    if-nez v14, :cond_28

    .line 577
    .line 578
    const/4 v1, 0x0

    .line 579
    iput v1, v0, Lw/d;->l:I

    .line 580
    .line 581
    goto :goto_17

    .line 582
    :cond_27
    move/from16 v23, v3

    .line 583
    .line 584
    move-object/from16 v24, v13

    .line 585
    .line 586
    move/from16 v18, v15

    .line 587
    .line 588
    move-object/from16 v2, v21

    .line 589
    .line 590
    move/from16 v10, v22

    .line 591
    .line 592
    move/from16 v8, v25

    .line 593
    .line 594
    const/4 v3, 0x2

    .line 595
    move/from16 v22, v1

    .line 596
    .line 597
    :cond_28
    const/4 v1, 0x0

    .line 598
    :goto_17
    if-le v15, v5, :cond_29

    .line 599
    .line 600
    iput v3, v0, Lw/d;->l:I

    .line 601
    .line 602
    :cond_29
    if-lez v6, :cond_2a

    .line 603
    .line 604
    if-nez v4, :cond_2a

    .line 605
    .line 606
    if-ne v8, v9, :cond_2a

    .line 607
    .line 608
    iput v3, v0, Lw/d;->l:I

    .line 609
    .line 610
    :cond_2a
    iget v3, v0, Lw/d;->l:I

    .line 611
    .line 612
    const/4 v7, 0x1

    .line 613
    if-ne v3, v7, :cond_3b

    .line 614
    .line 615
    if-le v6, v7, :cond_2b

    .line 616
    .line 617
    sub-int/2addr v5, v15

    .line 618
    sub-int/2addr v6, v7

    .line 619
    div-int/2addr v5, v6

    .line 620
    goto :goto_18

    .line 621
    :cond_2b
    if-ne v6, v7, :cond_2c

    .line 622
    .line 623
    sub-int/2addr v5, v15

    .line 624
    const/4 v3, 0x2

    .line 625
    div-int/2addr v5, v3

    .line 626
    goto :goto_18

    .line 627
    :cond_2c
    const/4 v5, 0x0

    .line 628
    :goto_18
    if-lez v4, :cond_2d

    .line 629
    .line 630
    const/4 v5, 0x0

    .line 631
    :cond_2d
    move/from16 v1, v22

    .line 632
    .line 633
    const/4 v4, 0x0

    .line 634
    :goto_19
    if-ge v4, v10, :cond_59

    .line 635
    .line 636
    if-eqz v23, :cond_2e

    .line 637
    .line 638
    add-int/lit8 v3, v4, 0x1

    .line 639
    .line 640
    sub-int v7, v10, v3

    .line 641
    .line 642
    goto :goto_1a

    .line 643
    :cond_2e
    move v7, v4

    .line 644
    :goto_1a
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    check-cast v3, Lw/n;

    .line 649
    .line 650
    iget-object v6, v3, Lw/n;->b:Lv/e;

    .line 651
    .line 652
    iget v6, v6, Lv/e;->X:I

    .line 653
    .line 654
    iget-object v7, v3, Lw/n;->i:Lw/g;

    .line 655
    .line 656
    iget-object v12, v3, Lw/n;->h:Lw/g;

    .line 657
    .line 658
    const/16 v13, 0x8

    .line 659
    .line 660
    if-ne v6, v13, :cond_2f

    .line 661
    .line 662
    invoke-virtual {v12, v1}, Lw/g;->d(I)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v7, v1}, Lw/g;->d(I)V

    .line 666
    .line 667
    .line 668
    move/from16 p1, v5

    .line 669
    .line 670
    move-object/from16 v15, v24

    .line 671
    .line 672
    goto :goto_22

    .line 673
    :cond_2f
    if-lez v4, :cond_31

    .line 674
    .line 675
    if-eqz v23, :cond_30

    .line 676
    .line 677
    sub-int/2addr v1, v5

    .line 678
    goto :goto_1b

    .line 679
    :cond_30
    add-int/2addr v1, v5

    .line 680
    :cond_31
    :goto_1b
    if-lez v4, :cond_33

    .line 681
    .line 682
    if-lt v4, v8, :cond_33

    .line 683
    .line 684
    if-eqz v23, :cond_32

    .line 685
    .line 686
    iget v6, v12, Lw/g;->f:I

    .line 687
    .line 688
    sub-int/2addr v1, v6

    .line 689
    goto :goto_1c

    .line 690
    :cond_32
    iget v6, v12, Lw/g;->f:I

    .line 691
    .line 692
    add-int/2addr v1, v6

    .line 693
    :cond_33
    :goto_1c
    if-eqz v23, :cond_34

    .line 694
    .line 695
    invoke-virtual {v7, v1}, Lw/g;->d(I)V

    .line 696
    .line 697
    .line 698
    goto :goto_1d

    .line 699
    :cond_34
    invoke-virtual {v12, v1}, Lw/g;->d(I)V

    .line 700
    .line 701
    .line 702
    :goto_1d
    iget-object v6, v3, Lw/n;->e:Lw/h;

    .line 703
    .line 704
    iget v13, v6, Lw/g;->g:I

    .line 705
    .line 706
    iget-object v14, v3, Lw/n;->d:Lv/d;

    .line 707
    .line 708
    move-object/from16 v15, v24

    .line 709
    .line 710
    if-ne v14, v15, :cond_35

    .line 711
    .line 712
    iget v14, v3, Lw/n;->a:I

    .line 713
    .line 714
    move/from16 p1, v5

    .line 715
    .line 716
    const/4 v5, 0x1

    .line 717
    if-ne v14, v5, :cond_36

    .line 718
    .line 719
    iget v13, v6, Lw/h;->m:I

    .line 720
    .line 721
    goto :goto_1e

    .line 722
    :cond_35
    move/from16 p1, v5

    .line 723
    .line 724
    :cond_36
    :goto_1e
    if-eqz v23, :cond_37

    .line 725
    .line 726
    sub-int/2addr v1, v13

    .line 727
    goto :goto_1f

    .line 728
    :cond_37
    add-int/2addr v1, v13

    .line 729
    :goto_1f
    if-eqz v23, :cond_38

    .line 730
    .line 731
    invoke-virtual {v12, v1}, Lw/g;->d(I)V

    .line 732
    .line 733
    .line 734
    :goto_20
    const/4 v5, 0x1

    .line 735
    goto :goto_21

    .line 736
    :cond_38
    invoke-virtual {v7, v1}, Lw/g;->d(I)V

    .line 737
    .line 738
    .line 739
    goto :goto_20

    .line 740
    :goto_21
    iput-boolean v5, v3, Lw/n;->g:Z

    .line 741
    .line 742
    if-ge v4, v11, :cond_3a

    .line 743
    .line 744
    if-ge v4, v9, :cond_3a

    .line 745
    .line 746
    if-eqz v23, :cond_39

    .line 747
    .line 748
    iget v3, v7, Lw/g;->f:I

    .line 749
    .line 750
    neg-int v3, v3

    .line 751
    sub-int/2addr v1, v3

    .line 752
    goto :goto_22

    .line 753
    :cond_39
    iget v3, v7, Lw/g;->f:I

    .line 754
    .line 755
    neg-int v3, v3

    .line 756
    add-int/2addr v1, v3

    .line 757
    :cond_3a
    :goto_22
    add-int/lit8 v4, v4, 0x1

    .line 758
    .line 759
    move/from16 v5, p1

    .line 760
    .line 761
    move-object/from16 v24, v15

    .line 762
    .line 763
    goto/16 :goto_19

    .line 764
    .line 765
    :cond_3b
    move-object/from16 v7, v24

    .line 766
    .line 767
    if-nez v3, :cond_48

    .line 768
    .line 769
    sub-int/2addr v5, v15

    .line 770
    const/4 v3, 0x1

    .line 771
    add-int/2addr v6, v3

    .line 772
    div-int/2addr v5, v6

    .line 773
    if-lez v4, :cond_3c

    .line 774
    .line 775
    const/4 v5, 0x0

    .line 776
    :cond_3c
    move/from16 v1, v22

    .line 777
    .line 778
    const/4 v4, 0x0

    .line 779
    :goto_23
    if-ge v4, v10, :cond_59

    .line 780
    .line 781
    if-eqz v23, :cond_3d

    .line 782
    .line 783
    add-int/lit8 v3, v4, 0x1

    .line 784
    .line 785
    sub-int v3, v10, v3

    .line 786
    .line 787
    goto :goto_24

    .line 788
    :cond_3d
    move v3, v4

    .line 789
    :goto_24
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    check-cast v3, Lw/n;

    .line 794
    .line 795
    iget-object v6, v3, Lw/n;->b:Lv/e;

    .line 796
    .line 797
    iget v6, v6, Lv/e;->X:I

    .line 798
    .line 799
    iget-object v12, v3, Lw/n;->i:Lw/g;

    .line 800
    .line 801
    iget-object v13, v3, Lw/n;->h:Lw/g;

    .line 802
    .line 803
    const/16 v14, 0x8

    .line 804
    .line 805
    if-ne v6, v14, :cond_3e

    .line 806
    .line 807
    invoke-virtual {v13, v1}, Lw/g;->d(I)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v12, v1}, Lw/g;->d(I)V

    .line 811
    .line 812
    .line 813
    goto :goto_2a

    .line 814
    :cond_3e
    if-eqz v23, :cond_3f

    .line 815
    .line 816
    sub-int/2addr v1, v5

    .line 817
    goto :goto_25

    .line 818
    :cond_3f
    add-int/2addr v1, v5

    .line 819
    :goto_25
    if-lez v4, :cond_41

    .line 820
    .line 821
    if-lt v4, v8, :cond_41

    .line 822
    .line 823
    if-eqz v23, :cond_40

    .line 824
    .line 825
    iget v6, v13, Lw/g;->f:I

    .line 826
    .line 827
    sub-int/2addr v1, v6

    .line 828
    goto :goto_26

    .line 829
    :cond_40
    iget v6, v13, Lw/g;->f:I

    .line 830
    .line 831
    add-int/2addr v1, v6

    .line 832
    :cond_41
    :goto_26
    if-eqz v23, :cond_42

    .line 833
    .line 834
    invoke-virtual {v12, v1}, Lw/g;->d(I)V

    .line 835
    .line 836
    .line 837
    goto :goto_27

    .line 838
    :cond_42
    invoke-virtual {v13, v1}, Lw/g;->d(I)V

    .line 839
    .line 840
    .line 841
    :goto_27
    iget-object v6, v3, Lw/n;->e:Lw/h;

    .line 842
    .line 843
    iget v14, v6, Lw/g;->g:I

    .line 844
    .line 845
    iget-object v15, v3, Lw/n;->d:Lv/d;

    .line 846
    .line 847
    if-ne v15, v7, :cond_43

    .line 848
    .line 849
    iget v3, v3, Lw/n;->a:I

    .line 850
    .line 851
    const/4 v15, 0x1

    .line 852
    if-ne v3, v15, :cond_43

    .line 853
    .line 854
    iget v3, v6, Lw/h;->m:I

    .line 855
    .line 856
    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    .line 857
    .line 858
    .line 859
    move-result v14

    .line 860
    :cond_43
    if-eqz v23, :cond_44

    .line 861
    .line 862
    sub-int/2addr v1, v14

    .line 863
    goto :goto_28

    .line 864
    :cond_44
    add-int/2addr v1, v14

    .line 865
    :goto_28
    if-eqz v23, :cond_45

    .line 866
    .line 867
    invoke-virtual {v13, v1}, Lw/g;->d(I)V

    .line 868
    .line 869
    .line 870
    goto :goto_29

    .line 871
    :cond_45
    invoke-virtual {v12, v1}, Lw/g;->d(I)V

    .line 872
    .line 873
    .line 874
    :goto_29
    if-ge v4, v11, :cond_47

    .line 875
    .line 876
    if-ge v4, v9, :cond_47

    .line 877
    .line 878
    if-eqz v23, :cond_46

    .line 879
    .line 880
    iget v3, v12, Lw/g;->f:I

    .line 881
    .line 882
    neg-int v3, v3

    .line 883
    sub-int/2addr v1, v3

    .line 884
    goto :goto_2a

    .line 885
    :cond_46
    iget v3, v12, Lw/g;->f:I

    .line 886
    .line 887
    neg-int v3, v3

    .line 888
    add-int/2addr v1, v3

    .line 889
    :cond_47
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    .line 890
    .line 891
    goto :goto_23

    .line 892
    :cond_48
    const/4 v6, 0x2

    .line 893
    if-ne v3, v6, :cond_59

    .line 894
    .line 895
    iget v3, v0, Lw/n;->f:I

    .line 896
    .line 897
    if-nez v3, :cond_49

    .line 898
    .line 899
    iget-object v3, v0, Lw/n;->b:Lv/e;

    .line 900
    .line 901
    iget v3, v3, Lv/e;->U:F

    .line 902
    .line 903
    goto :goto_2b

    .line 904
    :cond_49
    iget-object v3, v0, Lw/n;->b:Lv/e;

    .line 905
    .line 906
    iget v3, v3, Lv/e;->V:F

    .line 907
    .line 908
    :goto_2b
    if-eqz v23, :cond_4a

    .line 909
    .line 910
    const/high16 v6, 0x3f800000    # 1.0f

    .line 911
    .line 912
    sub-float v3, v6, v3

    .line 913
    .line 914
    :cond_4a
    sub-int/2addr v5, v15

    .line 915
    int-to-float v5, v5

    .line 916
    mul-float v5, v5, v3

    .line 917
    .line 918
    const/high16 v3, 0x3f000000    # 0.5f

    .line 919
    .line 920
    add-float/2addr v5, v3

    .line 921
    float-to-int v3, v5

    .line 922
    if-ltz v3, :cond_4b

    .line 923
    .line 924
    if-lez v4, :cond_4c

    .line 925
    .line 926
    :cond_4b
    const/4 v3, 0x0

    .line 927
    :cond_4c
    if-eqz v23, :cond_4d

    .line 928
    .line 929
    sub-int v3, v22, v3

    .line 930
    .line 931
    goto :goto_2c

    .line 932
    :cond_4d
    add-int v3, v22, v3

    .line 933
    .line 934
    :goto_2c
    const/4 v4, 0x0

    .line 935
    :goto_2d
    if-ge v4, v10, :cond_59

    .line 936
    .line 937
    if-eqz v23, :cond_4e

    .line 938
    .line 939
    add-int/lit8 v1, v4, 0x1

    .line 940
    .line 941
    sub-int v1, v10, v1

    .line 942
    .line 943
    goto :goto_2e

    .line 944
    :cond_4e
    move v1, v4

    .line 945
    :goto_2e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    check-cast v1, Lw/n;

    .line 950
    .line 951
    iget-object v5, v1, Lw/n;->b:Lv/e;

    .line 952
    .line 953
    iget v5, v5, Lv/e;->X:I

    .line 954
    .line 955
    iget-object v6, v1, Lw/n;->i:Lw/g;

    .line 956
    .line 957
    iget-object v12, v1, Lw/n;->h:Lw/g;

    .line 958
    .line 959
    const/16 v13, 0x8

    .line 960
    .line 961
    if-ne v5, v13, :cond_4f

    .line 962
    .line 963
    invoke-virtual {v12, v3}, Lw/g;->d(I)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v6, v3}, Lw/g;->d(I)V

    .line 967
    .line 968
    .line 969
    const/4 v15, 0x1

    .line 970
    goto :goto_34

    .line 971
    :cond_4f
    if-lez v4, :cond_51

    .line 972
    .line 973
    if-lt v4, v8, :cond_51

    .line 974
    .line 975
    if-eqz v23, :cond_50

    .line 976
    .line 977
    iget v5, v12, Lw/g;->f:I

    .line 978
    .line 979
    sub-int/2addr v3, v5

    .line 980
    goto :goto_2f

    .line 981
    :cond_50
    iget v5, v12, Lw/g;->f:I

    .line 982
    .line 983
    add-int/2addr v3, v5

    .line 984
    :cond_51
    :goto_2f
    if-eqz v23, :cond_52

    .line 985
    .line 986
    invoke-virtual {v6, v3}, Lw/g;->d(I)V

    .line 987
    .line 988
    .line 989
    goto :goto_30

    .line 990
    :cond_52
    invoke-virtual {v12, v3}, Lw/g;->d(I)V

    .line 991
    .line 992
    .line 993
    :goto_30
    iget-object v5, v1, Lw/n;->e:Lw/h;

    .line 994
    .line 995
    iget v14, v5, Lw/g;->g:I

    .line 996
    .line 997
    iget-object v15, v1, Lw/n;->d:Lv/d;

    .line 998
    .line 999
    if-ne v15, v7, :cond_53

    .line 1000
    .line 1001
    iget v1, v1, Lw/n;->a:I

    .line 1002
    .line 1003
    const/4 v15, 0x1

    .line 1004
    if-ne v1, v15, :cond_54

    .line 1005
    .line 1006
    iget v14, v5, Lw/h;->m:I

    .line 1007
    .line 1008
    goto :goto_31

    .line 1009
    :cond_53
    const/4 v15, 0x1

    .line 1010
    :cond_54
    :goto_31
    if-eqz v23, :cond_55

    .line 1011
    .line 1012
    sub-int/2addr v3, v14

    .line 1013
    goto :goto_32

    .line 1014
    :cond_55
    add-int/2addr v3, v14

    .line 1015
    :goto_32
    if-eqz v23, :cond_56

    .line 1016
    .line 1017
    invoke-virtual {v12, v3}, Lw/g;->d(I)V

    .line 1018
    .line 1019
    .line 1020
    goto :goto_33

    .line 1021
    :cond_56
    invoke-virtual {v6, v3}, Lw/g;->d(I)V

    .line 1022
    .line 1023
    .line 1024
    :goto_33
    if-ge v4, v11, :cond_58

    .line 1025
    .line 1026
    if-ge v4, v9, :cond_58

    .line 1027
    .line 1028
    if-eqz v23, :cond_57

    .line 1029
    .line 1030
    iget v1, v6, Lw/g;->f:I

    .line 1031
    .line 1032
    neg-int v1, v1

    .line 1033
    sub-int/2addr v3, v1

    .line 1034
    goto :goto_34

    .line 1035
    :cond_57
    iget v1, v6, Lw/g;->f:I

    .line 1036
    .line 1037
    neg-int v1, v1

    .line 1038
    add-int/2addr v3, v1

    .line 1039
    :cond_58
    :goto_34
    add-int/lit8 v4, v4, 0x1

    .line 1040
    .line 1041
    goto :goto_2d

    .line 1042
    :cond_59
    :goto_35
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lw/d;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lw/n;

    .line 18
    .line 19
    invoke-virtual {v2}, Lw/n;->d()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-ge v1, v2, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lw/n;

    .line 37
    .line 38
    iget-object v4, v4, Lw/n;->b:Lv/e;

    .line 39
    .line 40
    sub-int/2addr v1, v2

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lw/n;

    .line 46
    .line 47
    iget-object v0, v0, Lw/n;->b:Lv/e;

    .line 48
    .line 49
    iget v1, p0, Lw/n;->f:I

    .line 50
    .line 51
    iget-object v5, p0, Lw/n;->i:Lw/g;

    .line 52
    .line 53
    iget-object v6, p0, Lw/n;->h:Lw/g;

    .line 54
    .line 55
    if-nez v1, :cond_5

    .line 56
    .line 57
    iget-object v1, v4, Lv/e;->y:Lv/c;

    .line 58
    .line 59
    iget-object v0, v0, Lv/e;->A:Lv/c;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lw/n;->i(Lv/c;I)Lw/g;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1}, Lv/c;->c()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p0}, Lw/d;->m()Lv/e;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    iget-object v1, v4, Lv/e;->y:Lv/c;

    .line 76
    .line 77
    invoke-virtual {v1}, Lv/c;->c()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :cond_2
    if-eqz v2, :cond_3

    .line 82
    .line 83
    invoke-static {v6, v2, v1}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-static {v0, v3}, Lw/n;->i(Lv/c;I)Lw/g;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0}, Lv/c;->c()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p0}, Lw/d;->n()Lv/e;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    iget-object v0, v2, Lv/e;->A:Lv/c;

    .line 101
    .line 102
    invoke-virtual {v0}, Lv/c;->c()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    :cond_4
    if-eqz v1, :cond_9

    .line 107
    .line 108
    neg-int v0, v0

    .line 109
    invoke-static {v5, v1, v0}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    iget-object v1, v4, Lv/e;->z:Lv/c;

    .line 114
    .line 115
    iget-object v0, v0, Lv/e;->B:Lv/c;

    .line 116
    .line 117
    invoke-static {v1, v2}, Lw/n;->i(Lv/c;I)Lw/g;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v1}, Lv/c;->c()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {p0}, Lw/d;->m()Lv/e;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    if-eqz v4, :cond_6

    .line 130
    .line 131
    iget-object v1, v4, Lv/e;->z:Lv/c;

    .line 132
    .line 133
    invoke-virtual {v1}, Lv/c;->c()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    :cond_6
    if-eqz v3, :cond_7

    .line 138
    .line 139
    invoke-static {v6, v3, v1}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 140
    .line 141
    .line 142
    :cond_7
    invoke-static {v0, v2}, Lw/n;->i(Lv/c;I)Lw/g;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0}, Lv/c;->c()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p0}, Lw/d;->n()Lv/e;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    if-eqz v2, :cond_8

    .line 155
    .line 156
    iget-object v0, v2, Lv/e;->B:Lv/c;

    .line 157
    .line 158
    invoke-virtual {v0}, Lv/c;->c()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    :cond_8
    if-eqz v1, :cond_9

    .line 163
    .line 164
    neg-int v0, v0

    .line 165
    invoke-static {v5, v1, v0}, Lw/n;->b(Lw/g;Lw/g;I)V

    .line 166
    .line 167
    .line 168
    :cond_9
    :goto_1
    iput-object p0, v6, Lw/g;->a:Lw/n;

    .line 169
    .line 170
    iput-object p0, v5, Lw/g;->a:Lw/n;

    .line 171
    .line 172
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lw/d;->k:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lw/n;

    .line 15
    .line 16
    invoke-virtual {v1}, Lw/n;->e()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lw/n;->c:Lw/l;

    .line 3
    .line 4
    iget-object v0, p0, Lw/d;->k:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lw/n;

    .line 21
    .line 22
    invoke-virtual {v1}, Lw/n;->f()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final j()J
    .locals 8

    .line 1
    iget-object v0, p0, Lw/d;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Lw/n;

    .line 17
    .line 18
    iget-object v6, v5, Lw/n;->h:Lw/g;

    .line 19
    .line 20
    iget v6, v6, Lw/g;->f:I

    .line 21
    .line 22
    int-to-long v6, v6

    .line 23
    add-long/2addr v2, v6

    .line 24
    invoke-virtual {v5}, Lw/n;->j()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    add-long/2addr v6, v2

    .line 29
    iget-object v2, v5, Lw/n;->i:Lw/g;

    .line 30
    .line 31
    iget v2, v2, Lw/g;->f:I

    .line 32
    .line 33
    int-to-long v2, v2

    .line 34
    add-long/2addr v2, v6

    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-wide v2
.end method

.method public final k()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lw/d;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lw/n;

    .line 16
    .line 17
    invoke-virtual {v4}, Lw/n;->k()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public final m()Lv/e;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lw/d;->k:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lw/n;

    .line 15
    .line 16
    iget-object v1, v1, Lw/n;->b:Lv/e;

    .line 17
    .line 18
    iget v2, v1, Lv/e;->X:I

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public final n()Lv/e;
    .locals 5

    .line 1
    iget-object v0, p0, Lw/d;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lw/n;

    .line 16
    .line 17
    iget-object v2, v2, Lw/n;->b:Lv/e;

    .line 18
    .line 19
    iget v3, v2, Lv/e;->X:I

    .line 20
    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lw/n;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "horizontal : "

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "vertical : "

    .line 9
    .line 10
    :goto_0
    const-string v1, "ChainRun "

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lw/d;->k:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lw/n;

    .line 33
    .line 34
    const-string v3, "<"

    .line 35
    .line 36
    invoke-static {v0, v3}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "> "

    .line 56
    .line 57
    invoke-static {v0, v2}, Lea/q;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    return-object v0
.end method
