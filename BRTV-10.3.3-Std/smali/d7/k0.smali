.class public final Ld7/k0;
.super Ljava/util/AbstractSet;
.source "MyApplication"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient a:Ljava/lang/Object;

.field public transient b:[I

.field public transient c:[Ljava/lang/Object;

.field public transient d:I

.field public transient e:I

.field public transient f:[I

.field public transient g:[I

.field public transient h:I

.field public transient i:I


# direct methods
.method public static d(I)Ld7/k0;
    .locals 4

    .line 1
    new-instance v0, Ld7/k0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    const-string v3, "Expected size must be >= 0"

    .line 13
    .line 14
    invoke-static {v3, v2}, Lb7/b;->e(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v1}, Lr4/b;->i(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    iput p0, v0, Ld7/k0;->d:I

    .line 22
    .line 23
    const/4 p0, -0x2

    .line 24
    iput p0, v0, Ld7/k0;->h:I

    .line 25
    .line 26
    iput p0, v0, Ld7/k0;->i:I

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ld7/k0;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0x1f

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Ld7/k0;->f()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v5, "Arrays already allocated"

    .line 19
    .line 20
    invoke-static {v5, v2}, Lb7/b;->n(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    iget v2, v0, Ld7/k0;->d:I

    .line 24
    .line 25
    invoke-static {v2}, Ld7/d0;->E(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-static {v5}, Ld7/d0;->g(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iput-object v6, v0, Ld7/k0;->a:Ljava/lang/Object;

    .line 34
    .line 35
    sub-int/2addr v5, v4

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    rsub-int/lit8 v5, v5, 0x20

    .line 41
    .line 42
    iget v6, v0, Ld7/k0;->d:I

    .line 43
    .line 44
    invoke-static {v6, v5, v3}, Ld7/d0;->r(III)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iput v5, v0, Ld7/k0;->d:I

    .line 49
    .line 50
    new-array v5, v2, [I

    .line 51
    .line 52
    iput-object v5, v0, Ld7/k0;->b:[I

    .line 53
    .line 54
    new-array v5, v2, [Ljava/lang/Object;

    .line 55
    .line 56
    iput-object v5, v0, Ld7/k0;->c:[Ljava/lang/Object;

    .line 57
    .line 58
    new-array v5, v2, [I

    .line 59
    .line 60
    iput-object v5, v0, Ld7/k0;->f:[I

    .line 61
    .line 62
    new-array v2, v2, [I

    .line 63
    .line 64
    iput-object v2, v0, Ld7/k0;->g:[I

    .line 65
    .line 66
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ld7/k0;->e()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    return v1

    .line 77
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ld7/k0;->h()[I

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual/range {p0 .. p0}, Ld7/k0;->g()[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget v6, v0, Ld7/k0;->e:I

    .line 86
    .line 87
    add-int/lit8 v7, v6, 0x1

    .line 88
    .line 89
    invoke-static/range {p1 .. p1}, Ld7/d0;->B(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    iget v9, v0, Ld7/k0;->d:I

    .line 94
    .line 95
    and-int/2addr v9, v3

    .line 96
    shl-int v9, v4, v9

    .line 97
    .line 98
    sub-int/2addr v9, v4

    .line 99
    and-int v10, v8, v9

    .line 100
    .line 101
    iget-object v11, v0, Ld7/k0;->a:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-static {v10, v11}, Ld7/d0;->C(ILjava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    const/4 v12, 0x0

    .line 111
    if-nez v11, :cond_3

    .line 112
    .line 113
    if-le v7, v9, :cond_2

    .line 114
    .line 115
    invoke-static {v9}, Ld7/d0;->u(I)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {v0, v9, v2, v8, v6}, Ld7/k0;->i(IIII)I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_2
    iget-object v2, v0, Ld7/k0;->a:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    invoke-static {v10, v7, v2}, Ld7/d0;->D(IILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    not-int v10, v9

    .line 135
    and-int v13, v8, v10

    .line 136
    .line 137
    const/4 v14, 0x0

    .line 138
    :goto_0
    sub-int/2addr v11, v4

    .line 139
    aget v15, v2, v11

    .line 140
    .line 141
    and-int v3, v15, v10

    .line 142
    .line 143
    if-ne v3, v13, :cond_4

    .line 144
    .line 145
    aget-object v3, v5, v11

    .line 146
    .line 147
    invoke-static {v1, v3}, Lb7/b;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_4

    .line 152
    .line 153
    return v12

    .line 154
    :cond_4
    and-int v3, v15, v9

    .line 155
    .line 156
    add-int/2addr v14, v4

    .line 157
    if-nez v3, :cond_9

    .line 158
    .line 159
    const/16 v3, 0x9

    .line 160
    .line 161
    if-lt v14, v3, :cond_6

    .line 162
    .line 163
    iget v2, v0, Ld7/k0;->d:I

    .line 164
    .line 165
    const/16 v11, 0x1f

    .line 166
    .line 167
    and-int/2addr v2, v11

    .line 168
    shl-int v2, v4, v2

    .line 169
    .line 170
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 171
    .line 172
    const/high16 v5, 0x3f800000    # 1.0f

    .line 173
    .line 174
    invoke-direct {v3, v2, v5}, Ljava/util/LinkedHashSet;-><init>(IF)V

    .line 175
    .line 176
    .line 177
    iget v2, v0, Ld7/k0;->h:I

    .line 178
    .line 179
    :goto_1
    if-ltz v2, :cond_5

    .line 180
    .line 181
    invoke-virtual/range {p0 .. p0}, Ld7/k0;->g()[Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    aget-object v5, v5, v2

    .line 186
    .line 187
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    iget-object v5, v0, Ld7/k0;->g:[I

    .line 191
    .line 192
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    aget v2, v5, v2

    .line 196
    .line 197
    sub-int/2addr v2, v4

    .line 198
    goto :goto_1

    .line 199
    :cond_5
    iput-object v3, v0, Ld7/k0;->a:Ljava/lang/Object;

    .line 200
    .line 201
    const/4 v2, 0x0

    .line 202
    iput-object v2, v0, Ld7/k0;->b:[I

    .line 203
    .line 204
    iput-object v2, v0, Ld7/k0;->c:[Ljava/lang/Object;

    .line 205
    .line 206
    iget v4, v0, Ld7/k0;->d:I

    .line 207
    .line 208
    add-int/lit8 v4, v4, 0x20

    .line 209
    .line 210
    iput v4, v0, Ld7/k0;->d:I

    .line 211
    .line 212
    iput-object v2, v0, Ld7/k0;->f:[I

    .line 213
    .line 214
    iput-object v2, v0, Ld7/k0;->g:[I

    .line 215
    .line 216
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    return v1

    .line 221
    :cond_6
    if-le v7, v9, :cond_7

    .line 222
    .line 223
    invoke-static {v9}, Ld7/d0;->u(I)I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-virtual {v0, v9, v2, v8, v6}, Ld7/k0;->i(IIII)I

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    goto :goto_2

    .line 232
    :cond_7
    invoke-static {v15, v7, v9}, Ld7/d0;->r(III)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    aput v3, v2, v11

    .line 237
    .line 238
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ld7/k0;->h()[I

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    array-length v2, v2

    .line 243
    if-le v7, v2, :cond_8

    .line 244
    .line 245
    ushr-int/lit8 v3, v2, 0x1

    .line 246
    .line 247
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    add-int/2addr v3, v2

    .line 252
    or-int/2addr v3, v4

    .line 253
    const v5, 0x3fffffff    # 1.9999999f

    .line 254
    .line 255
    .line 256
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eq v3, v2, :cond_8

    .line 261
    .line 262
    invoke-virtual/range {p0 .. p0}, Ld7/k0;->h()[I

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    iput-object v2, v0, Ld7/k0;->b:[I

    .line 271
    .line 272
    invoke-virtual/range {p0 .. p0}, Ld7/k0;->g()[Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    iput-object v2, v0, Ld7/k0;->c:[Ljava/lang/Object;

    .line 281
    .line 282
    iget-object v2, v0, Ld7/k0;->f:[I

    .line 283
    .line 284
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    iput-object v2, v0, Ld7/k0;->f:[I

    .line 292
    .line 293
    iget-object v2, v0, Ld7/k0;->g:[I

    .line 294
    .line 295
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    iput-object v2, v0, Ld7/k0;->g:[I

    .line 303
    .line 304
    :cond_8
    invoke-static {v8, v12, v9}, Ld7/d0;->r(III)I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    invoke-virtual/range {p0 .. p0}, Ld7/k0;->h()[I

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    aput v2, v3, v6

    .line 313
    .line 314
    invoke-virtual/range {p0 .. p0}, Ld7/k0;->g()[Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    aput-object v1, v2, v6

    .line 319
    .line 320
    iget v1, v0, Ld7/k0;->i:I

    .line 321
    .line 322
    invoke-virtual {v0, v1, v6}, Ld7/k0;->j(II)V

    .line 323
    .line 324
    .line 325
    const/4 v1, -0x2

    .line 326
    invoke-virtual {v0, v6, v1}, Ld7/k0;->j(II)V

    .line 327
    .line 328
    .line 329
    iput v7, v0, Ld7/k0;->e:I

    .line 330
    .line 331
    iget v1, v0, Ld7/k0;->d:I

    .line 332
    .line 333
    add-int/lit8 v1, v1, 0x20

    .line 334
    .line 335
    iput v1, v0, Ld7/k0;->d:I

    .line 336
    .line 337
    return v4

    .line 338
    :cond_9
    move v11, v3

    .line 339
    const/16 v3, 0x1f

    .line 340
    .line 341
    goto/16 :goto_0
.end method

.method public final c()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ld7/k0;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Ld7/k0;->d:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x20

    .line 11
    .line 12
    iput v0, p0, Ld7/k0;->d:I

    .line 13
    .line 14
    invoke-virtual {p0}, Ld7/k0;->e()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ld7/k0;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x3

    .line 27
    invoke-static {v3, v4}, Lr4/b;->i(II)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iput v3, p0, Ld7/k0;->d:I

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Ld7/k0;->a:Ljava/lang/Object;

    .line 37
    .line 38
    iput v1, p0, Ld7/k0;->e:I

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0}, Ld7/k0;->g()[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v3, p0, Ld7/k0;->e:I

    .line 46
    .line 47
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Ld7/k0;->a:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    instance-of v2, v0, [B

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    check-cast v0, [B

    .line 60
    .line 61
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    instance-of v2, v0, [S

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    check-cast v0, [S

    .line 70
    .line 71
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    check-cast v0, [I

    .line 76
    .line 77
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p0}, Ld7/k0;->h()[I

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget v2, p0, Ld7/k0;->e:I

    .line 85
    .line 86
    invoke-static {v0, v1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 87
    .line 88
    .line 89
    iput v1, p0, Ld7/k0;->e:I

    .line 90
    .line 91
    :goto_1
    return-void
.end method

.method public final clear()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld7/k0;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, -0x2

    .line 9
    iput v0, p0, Ld7/k0;->h:I

    .line 10
    .line 11
    iput v0, p0, Ld7/k0;->i:I

    .line 12
    .line 13
    iget-object v0, p0, Ld7/k0;->f:[I

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Ld7/k0;->g:[I

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Ld7/k0;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Ld7/k0;->g:[I

    .line 30
    .line 31
    invoke-virtual {p0}, Ld7/k0;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Ld7/k0;->c()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ld7/k0;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ld7/k0;->e()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_1
    invoke-static {p1}, Ld7/d0;->B(Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v2, p0, Ld7/k0;->d:I

    .line 25
    .line 26
    and-int/lit8 v2, v2, 0x1f

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    shl-int v2, v3, v2

    .line 30
    .line 31
    sub-int/2addr v2, v3

    .line 32
    iget-object v4, p0, Ld7/k0;->a:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    and-int v5, v0, v2

    .line 38
    .line 39
    invoke-static {v5, v4}, Ld7/d0;->C(ILjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    not-int v5, v2

    .line 47
    and-int/2addr v0, v5

    .line 48
    :cond_3
    sub-int/2addr v4, v3

    .line 49
    invoke-virtual {p0}, Ld7/k0;->h()[I

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    aget v6, v6, v4

    .line 54
    .line 55
    and-int v7, v6, v5

    .line 56
    .line 57
    if-ne v7, v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Ld7/k0;->g()[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    aget-object v4, v7, v4

    .line 64
    .line 65
    invoke-static {p1, v4}, Lb7/b;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    return v3

    .line 72
    :cond_4
    and-int v4, v6, v2

    .line 73
    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    return v1
.end method

.method public final e()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/k0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/Set;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/util/Set;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/k0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final g()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/k0;->c:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast v0, [Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method public final h()[I
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/k0;->b:[I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast v0, [I

    .line 7
    .line 8
    return-object v0
.end method

.method public final i(IIII)I
    .locals 8

    .line 1
    invoke-static {p2}, Ld7/d0;->g(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    add-int/lit8 p2, p2, -0x1

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    and-int/2addr p3, p2

    .line 10
    add-int/lit8 p4, p4, 0x1

    .line 11
    .line 12
    invoke-static {p3, p4, v0}, Ld7/d0;->D(IILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p3, p0, Ld7/k0;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ld7/k0;->h()[I

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-gt v1, p1, :cond_2

    .line 26
    .line 27
    invoke-static {v1, p3}, Ld7/d0;->C(ILjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :goto_1
    if-eqz v2, :cond_1

    .line 32
    .line 33
    add-int/lit8 v3, v2, -0x1

    .line 34
    .line 35
    aget v4, p4, v3

    .line 36
    .line 37
    not-int v5, p1

    .line 38
    and-int/2addr v5, v4

    .line 39
    or-int/2addr v5, v1

    .line 40
    and-int v6, v5, p2

    .line 41
    .line 42
    invoke-static {v6, v0}, Ld7/d0;->C(ILjava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-static {v6, v2, v0}, Ld7/d0;->D(IILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v5, v7, p2}, Ld7/d0;->r(III)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    aput v2, p4, v3

    .line 54
    .line 55
    and-int v2, v4, p1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iput-object v0, p0, Ld7/k0;->a:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    rsub-int/lit8 p1, p1, 0x20

    .line 68
    .line 69
    iget p3, p0, Ld7/k0;->d:I

    .line 70
    .line 71
    const/16 p4, 0x1f

    .line 72
    .line 73
    invoke-static {p3, p1, p4}, Ld7/d0;->r(III)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Ld7/k0;->d:I

    .line 78
    .line 79
    return p2
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/k0;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/k0;->e()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ld7/j0;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ld7/j0;-><init>(Ld7/k0;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final j(II)V
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iput p2, p0, Ld7/k0;->h:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Ld7/k0;->g:[I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, p2, 0x1

    .line 13
    .line 14
    aput v2, v1, p1

    .line 15
    .line 16
    :goto_0
    if-ne p2, v0, :cond_1

    .line 17
    .line 18
    iput p1, p0, Ld7/k0;->i:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, p0, Ld7/k0;->f:[I

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    aput p1, v0, p2

    .line 29
    .line 30
    :goto_1
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Ld7/k0;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ld7/k0;->e()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_1
    iget v0, p0, Ld7/k0;->d:I

    .line 21
    .line 22
    and-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    shl-int v0, v2, v0

    .line 26
    .line 27
    sub-int/2addr v0, v2

    .line 28
    iget-object v6, p0, Ld7/k0;->a:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ld7/k0;->h()[I

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {p0}, Ld7/k0;->g()[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    move-object v3, p1

    .line 44
    move v5, v0

    .line 45
    invoke-static/range {v3 .. v9}, Ld7/d0;->w(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 v3, -0x1

    .line 50
    if-ne p1, v3, :cond_2

    .line 51
    .line 52
    return v1

    .line 53
    :cond_2
    invoke-virtual {p0}, Ld7/k0;->size()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    sub-int/2addr v3, v2

    .line 58
    iget-object v4, p0, Ld7/k0;->a:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ld7/k0;->h()[I

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {p0}, Ld7/k0;->g()[Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {p0}, Ld7/k0;->size()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    add-int/lit8 v8, v7, -0x1

    .line 76
    .line 77
    const/4 v9, 0x0

    .line 78
    if-ge p1, v8, :cond_5

    .line 79
    .line 80
    aget-object v10, v6, v8

    .line 81
    .line 82
    aput-object v10, v6, p1

    .line 83
    .line 84
    aput-object v9, v6, v8

    .line 85
    .line 86
    aget v6, v5, v8

    .line 87
    .line 88
    aput v6, v5, p1

    .line 89
    .line 90
    aput v1, v5, v8

    .line 91
    .line 92
    invoke-static {v10}, Ld7/d0;->B(Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    and-int/2addr v6, v0

    .line 97
    invoke-static {v6, v4}, Ld7/d0;->C(ILjava/lang/Object;)I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-ne v8, v7, :cond_3

    .line 102
    .line 103
    add-int/lit8 v0, p1, 0x1

    .line 104
    .line 105
    invoke-static {v6, v0, v4}, Ld7/d0;->D(IILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    :goto_0
    sub-int/2addr v8, v2

    .line 110
    aget v4, v5, v8

    .line 111
    .line 112
    and-int v6, v4, v0

    .line 113
    .line 114
    if-ne v6, v7, :cond_4

    .line 115
    .line 116
    add-int/lit8 v6, p1, 0x1

    .line 117
    .line 118
    invoke-static {v4, v6, v0}, Ld7/d0;->r(III)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    aput v0, v5, v8

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    move v8, v6

    .line 126
    goto :goto_0

    .line 127
    :cond_5
    aput-object v9, v6, p1

    .line 128
    .line 129
    aput v1, v5, p1

    .line 130
    .line 131
    :goto_1
    iget-object v0, p0, Ld7/k0;->f:[I

    .line 132
    .line 133
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    aget v0, v0, p1

    .line 137
    .line 138
    sub-int/2addr v0, v2

    .line 139
    iget-object v4, p0, Ld7/k0;->g:[I

    .line 140
    .line 141
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    aget v4, v4, p1

    .line 145
    .line 146
    sub-int/2addr v4, v2

    .line 147
    invoke-virtual {p0, v0, v4}, Ld7/k0;->j(II)V

    .line 148
    .line 149
    .line 150
    if-ge p1, v3, :cond_6

    .line 151
    .line 152
    iget-object v0, p0, Ld7/k0;->f:[I

    .line 153
    .line 154
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    aget v0, v0, v3

    .line 158
    .line 159
    sub-int/2addr v0, v2

    .line 160
    invoke-virtual {p0, v0, p1}, Ld7/k0;->j(II)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Ld7/k0;->g:[I

    .line 164
    .line 165
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    aget v0, v0, v3

    .line 169
    .line 170
    sub-int/2addr v0, v2

    .line 171
    invoke-virtual {p0, p1, v0}, Ld7/k0;->j(II)V

    .line 172
    .line 173
    .line 174
    :cond_6
    iget-object p1, p0, Ld7/k0;->f:[I

    .line 175
    .line 176
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    aput v1, p1, v3

    .line 180
    .line 181
    iget-object p1, p0, Ld7/k0;->g:[I

    .line 182
    .line 183
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    aput v1, p1, v3

    .line 187
    .line 188
    iget p1, p0, Ld7/k0;->e:I

    .line 189
    .line 190
    sub-int/2addr p1, v2

    .line 191
    iput p1, p0, Ld7/k0;->e:I

    .line 192
    .line 193
    iget p1, p0, Ld7/k0;->d:I

    .line 194
    .line 195
    add-int/lit8 p1, p1, 0x20

    .line 196
    .line 197
    iput p1, p0, Ld7/k0;->d:I

    .line 198
    .line 199
    return v2
.end method

.method public final size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld7/k0;->e()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Ld7/k0;->e:I

    .line 13
    .line 14
    :goto_0
    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 5

    .line 9
    invoke-virtual {p0}, Ld7/k0;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 11
    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ld7/k0;->size()I

    move-result v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 3
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Ld7/k0;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 6
    aput-object v3, p1, v2

    move v2, v4

    goto :goto_1

    .line 7
    :cond_2
    array-length v1, p1

    if-le v1, v0, :cond_3

    const/4 v1, 0x0

    .line 8
    aput-object v1, p1, v0

    :cond_3
    return-object p1
.end method
