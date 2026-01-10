.class public final Lu7/a;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:[Lu7/c;

.field public final b:Lx7/a;

.field public final c:Ls2/c;

.field public final d:Lu7/e;

.field public volatile e:Lu7/e;


# direct methods
.method public constructor <init>([Lu7/c;)V
    .locals 3

    .line 1
    sget-object v0, Lu7/e;->a:Lu7/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ls2/c;

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    invoke-direct {v1, v2}, Ls2/c;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lu7/a;->c:Ls2/c;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lu7/a;->e:Lu7/e;

    .line 16
    .line 17
    iput-object v0, p0, Lu7/a;->e:Lu7/e;

    .line 18
    .line 19
    invoke-virtual {p1}, [Lu7/c;->clone()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, [Lu7/c;

    .line 24
    .line 25
    iput-object p1, p0, Lu7/a;->a:[Lu7/c;

    .line 26
    .line 27
    new-instance p1, Lx7/a;

    .line 28
    .line 29
    const/16 v0, 0x100

    .line 30
    .line 31
    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 35
    .line 36
    .line 37
    iput v0, p1, Lx7/a;->a:I

    .line 38
    .line 39
    iput-object p1, p0, Lu7/a;->b:Lx7/a;

    .line 40
    .line 41
    new-instance p1, Lu7/e;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lu7/a;->d:Lu7/e;

    .line 52
    .line 53
    return-void
.end method

.method public static a([Lu7/f;)[Lu7/f;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    array-length v2, p0

    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    array-length v2, p0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_4

    .line 17
    .line 18
    aget-object v4, p0, v3

    .line 19
    .line 20
    if-eqz v4, :cond_3

    .line 21
    .line 22
    iget-object v5, v4, Lu7/f;->a:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v5, :cond_3

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-lez v5, :cond_3

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    const-wide/16 v7, 0x3e8

    .line 37
    .line 38
    div-long/2addr v5, v7

    .line 39
    const/4 v7, -0x1

    .line 40
    iget v8, v4, Lu7/f;->c:I

    .line 41
    .line 42
    if-ne v8, v7, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-wide v9, v4, Lu7/f;->d:J

    .line 46
    .line 47
    int-to-long v7, v8

    .line 48
    add-long/2addr v9, v7

    .line 49
    cmp-long v7, v9, v5

    .line 50
    .line 51
    if-gez v7, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_5

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    new-array p0, p0, [Lu7/f;

    .line 72
    .line 73
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, [Lu7/f;

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_6
    :goto_3
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)[Lu7/f;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lu7/b;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p1, v2}, Lu7/b;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_12

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_12

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x7

    .line 25
    if-lt v3, v4, :cond_5

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v4, 0xf

    .line 32
    .line 33
    if-le v3, v4, :cond_0

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    const-string v3, "-"

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/16 v3, 0x2e

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v5, -0x1

    .line 53
    const/16 v6, 0xff

    .line 54
    .line 55
    if-eq v4, v5, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-le v7, v6, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    add-int/2addr v4, v0

    .line 69
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eq v7, v5, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-le v4, v6, :cond_3

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    add-int/2addr v7, v0

    .line 87
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->indexOf(II)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eq v4, v5, :cond_4

    .line 92
    .line 93
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-le v5, v6, :cond_4

    .line 102
    .line 103
    add-int/2addr v4, v0

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    sub-int/2addr v5, v0

    .line 109
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-le v4, v6, :cond_4

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    sub-int/2addr v4, v0

    .line 124
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 125
    .line 126
    .line 127
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    if-ne v4, v3, :cond_5

    .line 129
    .line 130
    :cond_4
    new-instance v1, Lu7/f;

    .line 131
    .line 132
    new-instance v3, Ljava/util/Date;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    invoke-direct {v1, p1, v3, v4}, Lu7/f;-><init>(Ljava/lang/String;J)V

    .line 142
    .line 143
    .line 144
    new-array p1, v0, [Lu7/f;

    .line 145
    .line 146
    aput-object v1, p1, v2

    .line 147
    .line 148
    goto/16 :goto_a

    .line 149
    .line 150
    :catch_0
    :cond_5
    :goto_0
    iget-object v3, p0, Lu7/a;->b:Lx7/a;

    .line 151
    .line 152
    monitor-enter v3

    .line 153
    :try_start_1
    iget-object p1, p0, Lu7/a;->e:Lu7/e;

    .line 154
    .line 155
    sget-object v4, Lu7/e;->a:Lu7/e;

    .line 156
    .line 157
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_6

    .line 162
    .line 163
    invoke-static {}, Lu7/d;->u()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    iget-object p1, p0, Lu7/a;->b:Lx7/a;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/util/AbstractMap;->clear()V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lu7/a;->a:[Lu7/c;

    .line 175
    .line 176
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    :try_start_2
    monitor-exit p1

    .line 178
    goto :goto_1

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :try_start_3
    throw v0

    .line 182
    :catchall_1
    move-exception p1

    .line 183
    goto/16 :goto_b

    .line 184
    .line 185
    :cond_6
    iget-object p1, p0, Lu7/a;->b:Lx7/a;

    .line 186
    .line 187
    iget-object v4, v1, Lu7/b;->b:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, [Lu7/f;

    .line 194
    .line 195
    invoke-static {p1}, Lu7/a;->a([Lu7/f;)[Lu7/f;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    array-length v4, p1

    .line 202
    if-lez v4, :cond_7

    .line 203
    .line 204
    iget-object v0, p0, Lu7/a;->b:Lx7/a;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 207
    .line 208
    .line 209
    monitor-exit v3

    .line 210
    goto/16 :goto_9

    .line 211
    .line 212
    :cond_7
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    const/4 p1, 0x0

    .line 214
    move-object v3, p1

    .line 215
    const/4 v4, 0x0

    .line 216
    :goto_2
    iget-object v5, p0, Lu7/a;->a:[Lu7/c;

    .line 217
    .line 218
    array-length v6, v5

    .line 219
    if-ge v4, v6, :cond_9

    .line 220
    .line 221
    array-length v5, v5

    .line 222
    rem-int v5, v4, v5

    .line 223
    .line 224
    iget-object v6, p0, Lu7/a;->e:Lu7/e;

    .line 225
    .line 226
    :try_start_4
    const-string v7, "DNSMgr"

    .line 227
    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v9, "doh resolver resolve[0]:"

    .line 234
    .line 235
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object v9, v1, Lu7/b;->b:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v9, " "

    .line 244
    .line 245
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v9, "/"

    .line 252
    .line 253
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget-object v9, p0, Lu7/a;->a:[Lu7/c;

    .line 257
    .line 258
    array-length v9, v9

    .line 259
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    sget-boolean v9, Lorg/bitspark/android/utils/m;->b:Z

    .line 267
    .line 268
    invoke-static {v7, v8}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v7, p0, Lu7/a;->a:[Lu7/c;

    .line 272
    .line 273
    aget-object v7, v7, v5

    .line 274
    .line 275
    check-cast v7, Lv7/d;

    .line 276
    .line 277
    invoke-virtual {v7, v1}, Lv7/d;->b(Lu7/b;)[Lu7/f;

    .line 278
    .line 279
    .line 280
    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 281
    goto :goto_5

    .line 282
    :catch_1
    move-exception v3

    .line 283
    goto :goto_3

    .line 284
    :catch_2
    move-exception v3

    .line 285
    goto :goto_4

    .line 286
    :goto_3
    const-string v7, "DNSMgr"

    .line 287
    .line 288
    new-instance v8, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v9, "doh resolver resolve[6]:"

    .line 291
    .line 292
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v9, " from:"

    .line 299
    .line 300
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget-object v9, p0, Lu7/a;->a:[Lu7/c;

    .line 304
    .line 305
    aget-object v5, v9, v5

    .line 306
    .line 307
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v5, " "

    .line 311
    .line 312
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    sget-boolean v8, Lorg/bitspark/android/utils/m;->b:Z

    .line 323
    .line 324
    invoke-static {v7, v5}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    new-instance v5, Ljava/io/IOException;

    .line 328
    .line 329
    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    move-object v3, v5

    .line 333
    goto :goto_5

    .line 334
    :goto_4
    const-string v7, "DNSMgr"

    .line 335
    .line 336
    new-instance v8, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string v9, "doh resolver resolve[4]:"

    .line 339
    .line 340
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-object v9, v1, Lu7/b;->b:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v9, " from:"

    .line 349
    .line 350
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    iget-object v9, p0, Lu7/a;->a:[Lu7/c;

    .line 354
    .line 355
    aget-object v5, v9, v5

    .line 356
    .line 357
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v5, " "

    .line 361
    .line 362
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    sget-boolean v8, Lorg/bitspark/android/utils/m;->b:Z

    .line 373
    .line 374
    invoke-static {v7, v5}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    :goto_5
    iget-object v5, p0, Lu7/a;->e:Lu7/e;

    .line 378
    .line 379
    if-ne v5, v6, :cond_9

    .line 380
    .line 381
    if-eqz p1, :cond_8

    .line 382
    .line 383
    array-length v5, p1

    .line 384
    if-nez v5, :cond_9

    .line 385
    .line 386
    :cond_8
    add-int/2addr v4, v0

    .line 387
    goto/16 :goto_2

    .line 388
    .line 389
    :cond_9
    if-eqz p1, :cond_f

    .line 390
    .line 391
    array-length v4, p1

    .line 392
    if-nez v4, :cond_a

    .line 393
    .line 394
    goto :goto_8

    .line 395
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    .line 396
    .line 397
    array-length v4, p1

    .line 398
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    .line 400
    .line 401
    array-length v4, p1

    .line 402
    :goto_6
    if-ge v2, v4, :cond_d

    .line 403
    .line 404
    aget-object v5, p1, v2

    .line 405
    .line 406
    if-eqz v5, :cond_c

    .line 407
    .line 408
    iget v6, v5, Lu7/f;->b:I

    .line 409
    .line 410
    if-ne v6, v0, :cond_b

    .line 411
    .line 412
    goto :goto_7

    .line 413
    :cond_b
    const/16 v7, 0x1c

    .line 414
    .line 415
    if-ne v6, v7, :cond_c

    .line 416
    .line 417
    :goto_7
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    :cond_c
    add-int/2addr v2, v0

    .line 421
    goto :goto_6

    .line 422
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    new-array p1, p1, [Lu7/f;

    .line 427
    .line 428
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    check-cast p1, [Lu7/f;

    .line 433
    .line 434
    array-length v0, p1

    .line 435
    if-eqz v0, :cond_e

    .line 436
    .line 437
    iget-object v0, p0, Lu7/a;->b:Lx7/a;

    .line 438
    .line 439
    monitor-enter v0

    .line 440
    :try_start_5
    iget-object v2, p0, Lu7/a;->b:Lx7/a;

    .line 441
    .line 442
    iget-object v3, v1, Lu7/b;->b:Ljava/lang/String;

    .line 443
    .line 444
    invoke-virtual {v2, v3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 448
    const-string v0, "DNSMgr"

    .line 449
    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    const-string v3, "doh resolver resolve[9]:"

    .line 453
    .line 454
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v1, v1, Lu7/b;->b:Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v1, " "

    .line 463
    .line 464
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    array-length v1, p1

    .line 468
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 476
    .line 477
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    goto :goto_9

    .line 481
    :catchall_2
    move-exception p1

    .line 482
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 483
    throw p1

    .line 484
    :cond_e
    new-instance p1, Ljava/net/UnknownHostException;

    .line 485
    .line 486
    const-string v0, "no A/AAAA records"

    .line 487
    .line 488
    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    throw p1

    .line 492
    :cond_f
    :goto_8
    const-string p1, "DNSMgr"

    .line 493
    .line 494
    const-string v0, "doh resolver resolve[8]: null "

    .line 495
    .line 496
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 497
    .line 498
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    iget-object p1, p0, Lu7/a;->c:Ls2/c;

    .line 502
    .line 503
    invoke-virtual {p1, v1}, Ls2/c;->e(Lu7/b;)[Lu7/f;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    invoke-static {p1}, Lu7/a;->a([Lu7/f;)[Lu7/f;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    if-eqz p1, :cond_10

    .line 512
    .line 513
    array-length v0, p1

    .line 514
    if-eqz v0, :cond_10

    .line 515
    .line 516
    :goto_9
    iget-object v0, p0, Lu7/a;->d:Lu7/e;

    .line 517
    .line 518
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    :goto_a
    return-object p1

    .line 522
    :cond_10
    if-nez v3, :cond_11

    .line 523
    .line 524
    new-instance p1, Ljava/net/UnknownHostException;

    .line 525
    .line 526
    iget-object v0, v1, Lu7/b;->b:Ljava/lang/String;

    .line 527
    .line 528
    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    throw p1

    .line 532
    :cond_11
    throw v3

    .line 533
    :goto_b
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 534
    throw p1

    .line 535
    :cond_12
    new-instance v0, Ljava/io/IOException;

    .line 536
    .line 537
    const-string v1, "empty domain "

    .line 538
    .line 539
    invoke-static {v1, p1}, Lea/q;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    throw v0
.end method
