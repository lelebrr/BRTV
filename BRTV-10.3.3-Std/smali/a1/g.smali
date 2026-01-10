.class public final La1/g;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:D

.field public b:D

.field public c:Z

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:D

.field public final j:La1/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, La1/g;->a:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 3
    iput-wide v0, p0, La1/g;->b:D

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, La1/g;->c:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 5
    iput-wide v0, p0, La1/g;->i:D

    .line 6
    new-instance v0, La1/e;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, La1/g;->j:La1/e;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, La1/g;->a:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 11
    iput-wide v0, p0, La1/g;->b:D

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, La1/g;->c:Z

    .line 13
    new-instance v0, La1/e;

    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, La1/g;->j:La1/e;

    float-to-double v0, p1

    .line 16
    iput-wide v0, p0, La1/g;->i:D

    return-void
.end method


# virtual methods
.method public final a(DDJ)La1/e;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, La1/g;->c:Z

    .line 4
    .line 5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :goto_0
    move-wide/from16 v4, p5

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-wide v4, v0, La1/g;->i:D

    .line 13
    .line 14
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmpl-double v1, v4, v6

    .line 20
    .line 21
    if-eqz v1, :cond_5

    .line 22
    .line 23
    iget-wide v4, v0, La1/g;->b:D

    .line 24
    .line 25
    cmpl-double v1, v4, v2

    .line 26
    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    neg-double v6, v4

    .line 30
    iget-wide v8, v0, La1/g;->a:D

    .line 31
    .line 32
    mul-double v6, v6, v8

    .line 33
    .line 34
    mul-double v4, v4, v4

    .line 35
    .line 36
    sub-double/2addr v4, v2

    .line 37
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    mul-double v4, v4, v8

    .line 42
    .line 43
    add-double/2addr v4, v6

    .line 44
    iput-wide v4, v0, La1/g;->f:D

    .line 45
    .line 46
    iget-wide v4, v0, La1/g;->b:D

    .line 47
    .line 48
    neg-double v6, v4

    .line 49
    iget-wide v8, v0, La1/g;->a:D

    .line 50
    .line 51
    mul-double v6, v6, v8

    .line 52
    .line 53
    mul-double v4, v4, v4

    .line 54
    .line 55
    sub-double/2addr v4, v2

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    mul-double v4, v4, v8

    .line 61
    .line 62
    sub-double/2addr v6, v4

    .line 63
    iput-wide v6, v0, La1/g;->g:D

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const-wide/16 v6, 0x0

    .line 67
    .line 68
    cmpl-double v1, v4, v6

    .line 69
    .line 70
    if-ltz v1, :cond_2

    .line 71
    .line 72
    cmpg-double v1, v4, v2

    .line 73
    .line 74
    if-gez v1, :cond_2

    .line 75
    .line 76
    iget-wide v6, v0, La1/g;->a:D

    .line 77
    .line 78
    mul-double v4, v4, v4

    .line 79
    .line 80
    sub-double v4, v2, v4

    .line 81
    .line 82
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    mul-double v4, v4, v6

    .line 87
    .line 88
    iput-wide v4, v0, La1/g;->h:D

    .line 89
    .line 90
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 91
    iput-boolean v1, v0, La1/g;->c:Z

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :goto_2
    long-to-double v4, v4

    .line 95
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    div-double/2addr v4, v6

    .line 101
    iget-wide v6, v0, La1/g;->i:D

    .line 102
    .line 103
    sub-double v6, p1, v6

    .line 104
    .line 105
    iget-wide v8, v0, La1/g;->b:D

    .line 106
    .line 107
    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    cmpl-double v1, v8, v2

    .line 113
    .line 114
    if-lez v1, :cond_3

    .line 115
    .line 116
    iget-wide v1, v0, La1/g;->g:D

    .line 117
    .line 118
    mul-double v8, v1, v6

    .line 119
    .line 120
    sub-double v8, v8, p3

    .line 121
    .line 122
    iget-wide v12, v0, La1/g;->f:D

    .line 123
    .line 124
    sub-double v12, v1, v12

    .line 125
    .line 126
    div-double/2addr v8, v12

    .line 127
    sub-double/2addr v6, v8

    .line 128
    mul-double v1, v1, v4

    .line 129
    .line 130
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 131
    .line 132
    .line 133
    move-result-wide v1

    .line 134
    mul-double v1, v1, v6

    .line 135
    .line 136
    iget-wide v12, v0, La1/g;->f:D

    .line 137
    .line 138
    mul-double v12, v12, v4

    .line 139
    .line 140
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 141
    .line 142
    .line 143
    move-result-wide v12

    .line 144
    mul-double v12, v12, v8

    .line 145
    .line 146
    add-double/2addr v12, v1

    .line 147
    iget-wide v1, v0, La1/g;->g:D

    .line 148
    .line 149
    mul-double v6, v6, v1

    .line 150
    .line 151
    mul-double v1, v1, v4

    .line 152
    .line 153
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    mul-double v1, v1, v6

    .line 158
    .line 159
    iget-wide v6, v0, La1/g;->f:D

    .line 160
    .line 161
    mul-double v8, v8, v6

    .line 162
    .line 163
    mul-double v6, v6, v4

    .line 164
    .line 165
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 166
    .line 167
    .line 168
    move-result-wide v3

    .line 169
    mul-double v3, v3, v8

    .line 170
    .line 171
    add-double/2addr v3, v1

    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :cond_3
    if-nez v1, :cond_4

    .line 175
    .line 176
    iget-wide v1, v0, La1/g;->a:D

    .line 177
    .line 178
    mul-double v8, v1, v6

    .line 179
    .line 180
    add-double v8, v8, p3

    .line 181
    .line 182
    mul-double v12, v8, v4

    .line 183
    .line 184
    add-double/2addr v12, v6

    .line 185
    neg-double v1, v1

    .line 186
    mul-double v1, v1, v4

    .line 187
    .line 188
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 189
    .line 190
    .line 191
    move-result-wide v1

    .line 192
    mul-double v1, v1, v12

    .line 193
    .line 194
    iget-wide v6, v0, La1/g;->a:D

    .line 195
    .line 196
    neg-double v6, v6

    .line 197
    mul-double v6, v6, v4

    .line 198
    .line 199
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 200
    .line 201
    .line 202
    move-result-wide v6

    .line 203
    mul-double v6, v6, v12

    .line 204
    .line 205
    iget-wide v12, v0, La1/g;->a:D

    .line 206
    .line 207
    neg-double v12, v12

    .line 208
    mul-double v6, v6, v12

    .line 209
    .line 210
    mul-double v12, v12, v4

    .line 211
    .line 212
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 213
    .line 214
    .line 215
    move-result-wide v3

    .line 216
    mul-double v3, v3, v8

    .line 217
    .line 218
    add-double/2addr v3, v6

    .line 219
    move-wide v12, v1

    .line 220
    goto :goto_3

    .line 221
    :cond_4
    iget-wide v12, v0, La1/g;->h:D

    .line 222
    .line 223
    div-double/2addr v2, v12

    .line 224
    iget-wide v12, v0, La1/g;->a:D

    .line 225
    .line 226
    mul-double v14, v8, v12

    .line 227
    .line 228
    mul-double v14, v14, v6

    .line 229
    .line 230
    add-double v14, v14, p3

    .line 231
    .line 232
    mul-double v14, v14, v2

    .line 233
    .line 234
    neg-double v1, v8

    .line 235
    mul-double v1, v1, v12

    .line 236
    .line 237
    mul-double v1, v1, v4

    .line 238
    .line 239
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 240
    .line 241
    .line 242
    move-result-wide v1

    .line 243
    iget-wide v8, v0, La1/g;->h:D

    .line 244
    .line 245
    mul-double v8, v8, v4

    .line 246
    .line 247
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 248
    .line 249
    .line 250
    move-result-wide v8

    .line 251
    mul-double v8, v8, v6

    .line 252
    .line 253
    iget-wide v12, v0, La1/g;->h:D

    .line 254
    .line 255
    mul-double v12, v12, v4

    .line 256
    .line 257
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 258
    .line 259
    .line 260
    move-result-wide v12

    .line 261
    mul-double v12, v12, v14

    .line 262
    .line 263
    add-double/2addr v12, v8

    .line 264
    mul-double v12, v12, v1

    .line 265
    .line 266
    iget-wide v1, v0, La1/g;->a:D

    .line 267
    .line 268
    neg-double v8, v1

    .line 269
    mul-double v8, v8, v12

    .line 270
    .line 271
    iget-wide v10, v0, La1/g;->b:D

    .line 272
    .line 273
    mul-double v8, v8, v10

    .line 274
    .line 275
    neg-double v10, v10

    .line 276
    mul-double v10, v10, v1

    .line 277
    .line 278
    mul-double v10, v10, v4

    .line 279
    .line 280
    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 286
    .line 287
    .line 288
    move-result-wide v1

    .line 289
    iget-wide v10, v0, La1/g;->h:D

    .line 290
    .line 291
    move-wide/from16 p1, v12

    .line 292
    .line 293
    neg-double v12, v10

    .line 294
    mul-double v12, v12, v6

    .line 295
    .line 296
    mul-double v10, v10, v4

    .line 297
    .line 298
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 299
    .line 300
    .line 301
    move-result-wide v6

    .line 302
    mul-double v6, v6, v12

    .line 303
    .line 304
    iget-wide v10, v0, La1/g;->h:D

    .line 305
    .line 306
    mul-double v14, v14, v10

    .line 307
    .line 308
    mul-double v10, v10, v4

    .line 309
    .line 310
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 311
    .line 312
    .line 313
    move-result-wide v3

    .line 314
    mul-double v3, v3, v14

    .line 315
    .line 316
    add-double/2addr v3, v6

    .line 317
    mul-double v3, v3, v1

    .line 318
    .line 319
    add-double/2addr v3, v8

    .line 320
    move-wide/from16 v12, p1

    .line 321
    .line 322
    :goto_3
    iget-wide v1, v0, La1/g;->i:D

    .line 323
    .line 324
    add-double/2addr v12, v1

    .line 325
    double-to-float v1, v12

    .line 326
    iget-object v2, v0, La1/g;->j:La1/e;

    .line 327
    .line 328
    iput v1, v2, La1/e;->a:F

    .line 329
    .line 330
    double-to-float v1, v3

    .line 331
    iput v1, v2, La1/e;->b:F

    .line 332
    .line 333
    return-object v2

    .line 334
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 335
    .line 336
    const-string v2, "Error: Final position of the spring must be set before the animation starts"

    .line 337
    .line 338
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v1
.end method
