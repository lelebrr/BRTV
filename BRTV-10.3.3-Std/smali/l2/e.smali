.class public final Ll2/e;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Lokhttp3/Request;

.field public final b:Ll2/c;

.field public final c:Ljava/util/Date;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/Date;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/Date;

.field public final h:J

.field public final i:J

.field public final j:Ljava/lang/String;

.field public final k:I


# direct methods
.method public constructor <init>(Lokhttp3/Request;Ll2/c;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll2/e;->a:Lokhttp3/Request;

    .line 5
    .line 6
    iput-object p2, p0, Ll2/e;->b:Ll2/c;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Ll2/e;->k:I

    .line 10
    .line 11
    if-eqz p2, :cond_8

    .line 12
    .line 13
    iget-wide v0, p2, Ll2/c;->c:J

    .line 14
    .line 15
    iput-wide v0, p0, Ll2/e;->h:J

    .line 16
    .line 17
    iget-wide v0, p2, Ll2/c;->d:J

    .line 18
    .line 19
    iput-wide v0, p0, Ll2/e;->i:J

    .line 20
    .line 21
    iget-object p2, p2, Ll2/c;->f:Lokhttp3/Headers;

    .line 22
    .line 23
    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v0, :cond_8

    .line 30
    .line 31
    invoke-virtual {p2, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "Date"

    .line 36
    .line 37
    invoke-static {v3, v4}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    invoke-virtual {p2, v4}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iput-object v3, p0, Ll2/e;->c:Ljava/util/Date;

    .line 48
    .line 49
    invoke-virtual {p2, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iput-object v3, p0, Ll2/e;->d:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_0
    const-string v4, "Expires"

    .line 57
    .line 58
    invoke-static {v3, v4}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    invoke-virtual {p2, v4}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iput-object v3, p0, Ll2/e;->g:Ljava/util/Date;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    const-string v4, "Last-Modified"

    .line 72
    .line 73
    invoke-static {v3, v4}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_2

    .line 78
    .line 79
    invoke-virtual {p2, v4}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iput-object v3, p0, Ll2/e;->e:Ljava/util/Date;

    .line 84
    .line 85
    invoke-virtual {p2, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iput-object v3, p0, Ll2/e;->f:Ljava/lang/String;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    const-string v4, "ETag"

    .line 93
    .line 94
    invoke-static {v3, v4}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    invoke-virtual {p2, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iput-object v3, p0, Ll2/e;->j:Ljava/lang/String;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    const-string v4, "Age"

    .line 108
    .line 109
    invoke-static {v3, v4}, Lr9/n;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_7

    .line 114
    .line 115
    invoke-virtual {p2, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    sget-object v4, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;

    .line 120
    .line 121
    invoke-static {v3}, Lr9/m;->M(Ljava/lang/String;)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-eqz v3, :cond_6

    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    const-wide/32 v5, 0x7fffffff

    .line 132
    .line 133
    .line 134
    cmp-long v7, v3, v5

    .line 135
    .line 136
    if-lez v7, :cond_4

    .line 137
    .line 138
    const v3, 0x7fffffff

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    const-wide/16 v5, 0x0

    .line 143
    .line 144
    cmp-long v7, v3, v5

    .line 145
    .line 146
    if-gez v7, :cond_5

    .line 147
    .line 148
    const/4 v3, 0x0

    .line 149
    goto :goto_1

    .line 150
    :cond_5
    long-to-int v3, v3

    .line 151
    goto :goto_1

    .line 152
    :cond_6
    const/4 v3, -0x1

    .line 153
    :goto_1
    iput v3, p0, Ll2/e;->k:I

    .line 154
    .line 155
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_8
    return-void
.end method


# virtual methods
.method public final a()Ll2/f;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ll2/e;->a:Lokhttp3/Request;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Ll2/e;->b:Ll2/c;

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    new-instance v3, Ll2/f;

    .line 11
    .line 12
    invoke-direct {v3, v1, v2}, Ll2/f;-><init>(Lokhttp3/Request;Ll2/c;)V

    .line 13
    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Request;->isHttps()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    iget-boolean v4, v3, Ll2/c;->e:Z

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    new-instance v3, Ll2/f;

    .line 27
    .line 28
    invoke-direct {v3, v1, v2}, Ll2/f;-><init>(Lokhttp3/Request;Ll2/c;)V

    .line 29
    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_1
    iget-object v4, v3, Ll2/c;->a:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-interface {v4}, Lw8/c;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lokhttp3/CacheControl;

    .line 39
    .line 40
    invoke-virtual {v1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6}, Lokhttp3/CacheControl;->noStore()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-nez v6, :cond_12

    .line 49
    .line 50
    invoke-interface {v4}, Lw8/c;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Lokhttp3/CacheControl;

    .line 55
    .line 56
    invoke-virtual {v6}, Lokhttp3/CacheControl;->noStore()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-nez v6, :cond_12

    .line 61
    .line 62
    const-string v6, "Vary"

    .line 63
    .line 64
    iget-object v7, v3, Ll2/c;->f:Lokhttp3/Headers;

    .line 65
    .line 66
    invoke-virtual {v7, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string v7, "*"

    .line 71
    .line 72
    invoke-static {v6, v7}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_12

    .line 77
    .line 78
    invoke-virtual {v1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lokhttp3/CacheControl;->noCache()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-nez v7, :cond_11

    .line 87
    .line 88
    const-string v7, "If-Modified-Since"

    .line 89
    .line 90
    invoke-virtual {v1, v7}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    if-nez v8, :cond_11

    .line 95
    .line 96
    const-string v8, "If-None-Match"

    .line 97
    .line 98
    invoke-virtual {v1, v8}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    if-eqz v9, :cond_2

    .line 103
    .line 104
    goto/16 :goto_7

    .line 105
    .line 106
    :cond_2
    iget-wide v9, v0, Ll2/e;->i:J

    .line 107
    .line 108
    iget-object v11, v0, Ll2/e;->c:Ljava/util/Date;

    .line 109
    .line 110
    const-wide/16 v12, 0x0

    .line 111
    .line 112
    if-eqz v11, :cond_3

    .line 113
    .line 114
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    .line 115
    .line 116
    .line 117
    move-result-wide v14

    .line 118
    sub-long v14, v9, v14

    .line 119
    .line 120
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 121
    .line 122
    .line 123
    move-result-wide v14

    .line 124
    goto :goto_0

    .line 125
    :cond_3
    move-wide v14, v12

    .line 126
    :goto_0
    iget v2, v0, Ll2/e;->k:I

    .line 127
    .line 128
    const/4 v12, -0x1

    .line 129
    if-eq v2, v12, :cond_4

    .line 130
    .line 131
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    .line 133
    move-object/from16 v18, v7

    .line 134
    .line 135
    move-object/from16 v19, v8

    .line 136
    .line 137
    int-to-long v7, v2

    .line 138
    invoke-virtual {v13, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 143
    .line 144
    .line 145
    move-result-wide v14

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    move-object/from16 v18, v7

    .line 148
    .line 149
    move-object/from16 v19, v8

    .line 150
    .line 151
    :goto_1
    iget-wide v7, v0, Ll2/e;->h:J

    .line 152
    .line 153
    sub-long v20, v9, v7

    .line 154
    .line 155
    sget-object v2, Lr2/n;->a:Lr2/m;

    .line 156
    .line 157
    invoke-virtual {v2}, Lr2/m;->invoke()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Ljava/lang/Number;

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 164
    .line 165
    .line 166
    move-result-wide v22

    .line 167
    sub-long v22, v22, v9

    .line 168
    .line 169
    add-long v14, v14, v20

    .line 170
    .line 171
    add-long v14, v14, v22

    .line 172
    .line 173
    invoke-interface {v4}, Lw8/c;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lokhttp3/CacheControl;

    .line 178
    .line 179
    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    iget-object v13, v0, Ll2/e;->e:Ljava/util/Date;

    .line 184
    .line 185
    if-eq v4, v12, :cond_5

    .line 186
    .line 187
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 188
    .line 189
    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    int-to-long v7, v2

    .line 194
    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 195
    .line 196
    .line 197
    move-result-wide v7

    .line 198
    goto :goto_2

    .line 199
    :cond_5
    iget-object v2, v0, Ll2/e;->g:Ljava/util/Date;

    .line 200
    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    if-eqz v11, :cond_6

    .line 204
    .line 205
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    .line 206
    .line 207
    .line 208
    move-result-wide v9

    .line 209
    :cond_6
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 210
    .line 211
    .line 212
    move-result-wide v7

    .line 213
    sub-long/2addr v7, v9

    .line 214
    const-wide/16 v9, 0x0

    .line 215
    .line 216
    cmp-long v2, v7, v9

    .line 217
    .line 218
    if-lez v2, :cond_9

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_7
    if-eqz v13, :cond_9

    .line 222
    .line 223
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    if-nez v2, :cond_9

    .line 232
    .line 233
    if-eqz v11, :cond_8

    .line 234
    .line 235
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    .line 236
    .line 237
    .line 238
    move-result-wide v7

    .line 239
    :cond_8
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    .line 240
    .line 241
    .line 242
    move-result-wide v9

    .line 243
    sub-long/2addr v7, v9

    .line 244
    const-wide/16 v9, 0x0

    .line 245
    .line 246
    cmp-long v2, v7, v9

    .line 247
    .line 248
    if-lez v2, :cond_9

    .line 249
    .line 250
    const/16 v2, 0xa

    .line 251
    .line 252
    int-to-long v9, v2

    .line 253
    div-long/2addr v7, v9

    .line 254
    goto :goto_2

    .line 255
    :cond_9
    const-wide/16 v7, 0x0

    .line 256
    .line 257
    :goto_2
    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eq v2, v12, :cond_a

    .line 262
    .line 263
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 264
    .line 265
    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    int-to-long v9, v4

    .line 270
    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 271
    .line 272
    .line 273
    move-result-wide v9

    .line 274
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 275
    .line 276
    .line 277
    move-result-wide v7

    .line 278
    :cond_a
    invoke-virtual {v6}, Lokhttp3/CacheControl;->minFreshSeconds()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eq v2, v12, :cond_b

    .line 283
    .line 284
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 285
    .line 286
    invoke-virtual {v6}, Lokhttp3/CacheControl;->minFreshSeconds()I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    int-to-long v9, v4

    .line 291
    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 292
    .line 293
    .line 294
    move-result-wide v9

    .line 295
    goto :goto_3

    .line 296
    :cond_b
    const-wide/16 v9, 0x0

    .line 297
    .line 298
    :goto_3
    invoke-virtual {v5}, Lokhttp3/CacheControl;->mustRevalidate()Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-nez v2, :cond_c

    .line 303
    .line 304
    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-eq v2, v12, :cond_c

    .line 309
    .line 310
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 311
    .line 312
    invoke-virtual {v6}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    move-object v6, v11

    .line 317
    int-to-long v11, v4

    .line 318
    invoke-virtual {v2, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 319
    .line 320
    .line 321
    move-result-wide v11

    .line 322
    move-wide/from16 v16, v11

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_c
    move-object v6, v11

    .line 326
    const-wide/16 v16, 0x0

    .line 327
    .line 328
    :goto_4
    invoke-virtual {v5}, Lokhttp3/CacheControl;->noCache()Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-nez v2, :cond_d

    .line 333
    .line 334
    add-long/2addr v14, v9

    .line 335
    add-long v7, v7, v16

    .line 336
    .line 337
    cmp-long v2, v14, v7

    .line 338
    .line 339
    if-gez v2, :cond_d

    .line 340
    .line 341
    new-instance v1, Ll2/f;

    .line 342
    .line 343
    const/4 v2, 0x0

    .line 344
    invoke-direct {v1, v2, v3}, Ll2/f;-><init>(Lokhttp3/Request;Ll2/c;)V

    .line 345
    .line 346
    .line 347
    return-object v1

    .line 348
    :cond_d
    iget-object v2, v0, Ll2/e;->j:Ljava/lang/String;

    .line 349
    .line 350
    if-eqz v2, :cond_e

    .line 351
    .line 352
    move-object/from16 v7, v19

    .line 353
    .line 354
    goto :goto_6

    .line 355
    :cond_e
    if-eqz v13, :cond_f

    .line 356
    .line 357
    iget-object v2, v0, Ll2/e;->f:Ljava/lang/String;

    .line 358
    .line 359
    invoke-static {v2}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    :goto_5
    move-object/from16 v7, v18

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_f
    if-eqz v6, :cond_10

    .line 366
    .line 367
    iget-object v2, v0, Ll2/e;->d:Ljava/lang/String;

    .line 368
    .line 369
    invoke-static {v2}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    goto :goto_5

    .line 373
    :goto_6
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1, v7, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    new-instance v2, Ll2/f;

    .line 386
    .line 387
    invoke-direct {v2, v1, v3}, Ll2/f;-><init>(Lokhttp3/Request;Ll2/c;)V

    .line 388
    .line 389
    .line 390
    return-object v2

    .line 391
    :cond_10
    new-instance v2, Ll2/f;

    .line 392
    .line 393
    const/4 v3, 0x0

    .line 394
    invoke-direct {v2, v1, v3}, Ll2/f;-><init>(Lokhttp3/Request;Ll2/c;)V

    .line 395
    .line 396
    .line 397
    return-object v2

    .line 398
    :cond_11
    :goto_7
    move-object v3, v2

    .line 399
    new-instance v2, Ll2/f;

    .line 400
    .line 401
    invoke-direct {v2, v1, v3}, Ll2/f;-><init>(Lokhttp3/Request;Ll2/c;)V

    .line 402
    .line 403
    .line 404
    return-object v2

    .line 405
    :cond_12
    move-object v3, v2

    .line 406
    new-instance v2, Ll2/f;

    .line 407
    .line 408
    invoke-direct {v2, v1, v3}, Ll2/f;-><init>(Lokhttp3/Request;Ll2/c;)V

    .line 409
    .line 410
    .line 411
    return-object v2
.end method
