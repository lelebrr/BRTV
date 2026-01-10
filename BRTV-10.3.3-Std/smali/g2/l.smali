.class public final Lg2/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lg2/g;


# static fields
.field public static final f:Lokhttp3/CacheControl;

.field public static final g:Lokhttp3/CacheControl;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lm2/m;

.field public final c:Lw8/i;

.field public final d:Lw8/i;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/CacheControl$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lg2/l;->f:Lokhttp3/CacheControl;

    .line 19
    .line 20
    new-instance v0, Lokhttp3/CacheControl$Builder;

    .line 21
    .line 22
    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lg2/l;->g:Lokhttp3/CacheControl;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lm2/m;Lw8/i;Lw8/i;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg2/l;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lg2/l;->b:Lm2/m;

    .line 7
    .line 8
    iput-object p3, p0, Lg2/l;->c:Lw8/i;

    .line 9
    .line 10
    iput-object p4, p0, Lg2/l;->d:Lw8/i;

    .line 11
    .line 12
    iput-boolean p5, p0, Lg2/l;->e:Z

    .line 13
    .line 14
    return-void
.end method

.method public static d(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "text/plain"

    .line 14
    .line 15
    invoke-static {p1, v2, v1}, Lr9/n;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1, p0}, Lr2/f;->b(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    if-eqz p1, :cond_4

    .line 33
    .line 34
    const/16 p0, 0x3b

    .line 35
    .line 36
    const/4 v0, 0x6

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static {p1, p0, v1, v1, v0}, Lr9/f;->b0(Ljava/lang/CharSequence;CIZI)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const/4 v0, -0x1

    .line 43
    if-ne p0, v0, :cond_3

    .line 44
    .line 45
    move-object v0, p1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "substring(...)"

    .line 52
    .line 53
    invoke-static {p0, p1}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move-object v0, p0

    .line 57
    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a(La9/d;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lg2/k;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lg2/k;

    .line 11
    .line 12
    iget v3, v2, Lg2/k;->f:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lg2/k;->f:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lg2/k;

    .line 25
    .line 26
    check-cast v0, Lc9/c;

    .line 27
    .line 28
    invoke-direct {v2, v1, v0}, Lg2/k;-><init>(Lg2/l;Lc9/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v2, Lg2/k;->d:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v3, Lb9/a;->a:Lb9/a;

    .line 34
    .line 35
    iget v4, v2, Lg2/k;->f:I

    .line 36
    .line 37
    const-string v5, "response body == null"

    .line 38
    .line 39
    sget-object v6, Ld2/f;->d:Ld2/f;

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    sget-object v8, Ld2/f;->c:Ld2/f;

    .line 43
    .line 44
    const-wide/16 v9, 0x0

    .line 45
    .line 46
    const/4 v11, 0x2

    .line 47
    const/4 v12, 0x1

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    if-eq v4, v12, :cond_2

    .line 51
    .line 52
    if-ne v4, v11, :cond_1

    .line 53
    .line 54
    iget-object v3, v2, Lg2/k;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Lokhttp3/Response;

    .line 57
    .line 58
    iget-object v4, v2, Lg2/k;->b:Le2/j;

    .line 59
    .line 60
    iget-object v2, v2, Lg2/k;->a:Lg2/l;

    .line 61
    .line 62
    :try_start_0
    invoke-static {v0}, Lo9/d;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto/16 :goto_9

    .line 69
    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    iget-object v4, v2, Lg2/k;->c:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v4, Ll2/f;

    .line 81
    .line 82
    iget-object v12, v2, Lg2/k;->b:Le2/j;

    .line 83
    .line 84
    iget-object v13, v2, Lg2/k;->a:Lg2/l;

    .line 85
    .line 86
    :try_start_1
    invoke-static {v0}, Lo9/d;->I(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    .line 89
    move-object/from16 v18, v12

    .line 90
    .line 91
    move-object v12, v4

    .line 92
    move-object/from16 v4, v18

    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :catch_1
    move-exception v0

    .line 97
    goto/16 :goto_a

    .line 98
    .line 99
    :cond_3
    invoke-static {v0}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, v1, Lg2/l;->b:Lm2/m;

    .line 103
    .line 104
    iget-object v4, v0, Lm2/m;->n:Lm2/b;

    .line 105
    .line 106
    iget-boolean v4, v4, Lm2/b;->a:Z

    .line 107
    .line 108
    iget-object v13, v1, Lg2/l;->a:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v4, :cond_5

    .line 111
    .line 112
    iget-object v4, v1, Lg2/l;->d:Lw8/i;

    .line 113
    .line 114
    invoke-virtual {v4}, Lw8/i;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Le2/b;

    .line 119
    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    iget-object v0, v0, Lm2/m;->i:Ljava/lang/String;

    .line 123
    .line 124
    if-nez v0, :cond_4

    .line 125
    .line 126
    move-object v0, v13

    .line 127
    :cond_4
    check-cast v4, Le2/k;

    .line 128
    .line 129
    sget-object v14, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 130
    .line 131
    invoke-virtual {v14, v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lokio/ByteString;->sha256()Lokio/ByteString;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v4, v4, Le2/k;->b:Le2/h;

    .line 144
    .line 145
    invoke-virtual {v4, v0}, Le2/h;->c(Ljava/lang/String;)Le2/e;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    new-instance v4, Le2/j;

    .line 152
    .line 153
    invoke-direct {v4, v0}, Le2/j;-><init>(Le2/e;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    move-object v4, v7

    .line 158
    :goto_1
    if-eqz v4, :cond_b

    .line 159
    .line 160
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lg2/l;->c()Lokio/FileSystem;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v14, v4, Le2/j;->a:Le2/e;

    .line 165
    .line 166
    iget-boolean v15, v14, Le2/e;->b:Z

    .line 167
    .line 168
    if-nez v15, :cond_a

    .line 169
    .line 170
    iget-object v14, v14, Le2/e;->a:Le2/d;

    .line 171
    .line 172
    iget-object v14, v14, Le2/d;->c:Ljava/util/ArrayList;

    .line 173
    .line 174
    const/4 v15, 0x0

    .line 175
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v14

    .line 179
    check-cast v14, Lokio/Path;

    .line 180
    .line 181
    invoke-virtual {v0, v14}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lokio/FileMetadata;->getSize()Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-nez v0, :cond_6

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 193
    .line 194
    .line 195
    move-result-wide v14

    .line 196
    cmp-long v0, v14, v9

    .line 197
    .line 198
    if-nez v0, :cond_7

    .line 199
    .line 200
    new-instance v0, Lg2/m;

    .line 201
    .line 202
    invoke-virtual {v1, v4}, Lg2/l;->g(Le2/j;)Ld2/m;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-static {v13, v7}, Lg2/l;->d(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-direct {v0, v2, v3, v8}, Lg2/m;-><init>(Ld2/n;Ljava/lang/String;Ld2/f;)V

    .line 211
    .line 212
    .line 213
    return-object v0

    .line 214
    :catch_2
    move-exception v0

    .line 215
    move-object v12, v4

    .line 216
    goto/16 :goto_a

    .line 217
    .line 218
    :cond_7
    :goto_2
    iget-boolean v0, v1, Lg2/l;->e:Z

    .line 219
    .line 220
    if-eqz v0, :cond_8

    .line 221
    .line 222
    new-instance v0, Ll2/e;

    .line 223
    .line 224
    invoke-virtual/range {p0 .. p0}, Lg2/l;->e()Lokhttp3/Request;

    .line 225
    .line 226
    .line 227
    move-result-object v14

    .line 228
    invoke-virtual {v1, v4}, Lg2/l;->f(Le2/j;)Ll2/c;

    .line 229
    .line 230
    .line 231
    move-result-object v15

    .line 232
    invoke-direct {v0, v14, v15}, Ll2/e;-><init>(Lokhttp3/Request;Ll2/c;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Ll2/e;->a()Ll2/f;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v14, v0, Ll2/f;->a:Lokhttp3/Request;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 240
    .line 241
    if-nez v14, :cond_c

    .line 242
    .line 243
    iget-object v14, v0, Ll2/f;->b:Ll2/c;

    .line 244
    .line 245
    if-eqz v14, :cond_c

    .line 246
    .line 247
    :try_start_3
    new-instance v0, Lg2/m;

    .line 248
    .line 249
    invoke-virtual {v1, v4}, Lg2/l;->g(Le2/j;)Ld2/m;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    iget-object v3, v14, Ll2/c;->b:Ljava/lang/Object;

    .line 254
    .line 255
    invoke-interface {v3}, Lw8/c;->getValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Lokhttp3/MediaType;

    .line 260
    .line 261
    invoke-static {v13, v3}, Lg2/l;->d(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-direct {v0, v2, v3, v8}, Lg2/m;-><init>(Ld2/n;Ljava/lang/String;Ld2/f;)V

    .line 266
    .line 267
    .line 268
    return-object v0

    .line 269
    :cond_8
    new-instance v0, Lg2/m;

    .line 270
    .line 271
    invoke-virtual {v1, v4}, Lg2/l;->g(Le2/j;)Ld2/m;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v1, v4}, Lg2/l;->f(Le2/j;)Ll2/c;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    if-eqz v3, :cond_9

    .line 280
    .line 281
    iget-object v3, v3, Ll2/c;->b:Ljava/lang/Object;

    .line 282
    .line 283
    invoke-interface {v3}, Lw8/c;->getValue()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    move-object v7, v3

    .line 288
    check-cast v7, Lokhttp3/MediaType;

    .line 289
    .line 290
    :cond_9
    invoke-static {v13, v7}, Lg2/l;->d(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-direct {v0, v2, v3, v8}, Lg2/m;-><init>(Ld2/n;Ljava/lang/String;Ld2/f;)V

    .line 295
    .line 296
    .line 297
    return-object v0

    .line 298
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 299
    .line 300
    const-string v2, "snapshot is closed"

    .line 301
    .line 302
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw v0

    .line 306
    :cond_b
    new-instance v0, Ll2/e;

    .line 307
    .line 308
    invoke-virtual/range {p0 .. p0}, Lg2/l;->e()Lokhttp3/Request;

    .line 309
    .line 310
    .line 311
    move-result-object v13

    .line 312
    invoke-direct {v0, v13, v7}, Ll2/e;-><init>(Lokhttp3/Request;Ll2/c;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Ll2/e;->a()Ll2/f;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    :cond_c
    iget-object v13, v0, Ll2/f;->a:Lokhttp3/Request;

    .line 320
    .line 321
    invoke-static {v13}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    iput-object v1, v2, Lg2/k;->a:Lg2/l;

    .line 325
    .line 326
    iput-object v4, v2, Lg2/k;->b:Le2/j;

    .line 327
    .line 328
    iput-object v0, v2, Lg2/k;->c:Ljava/lang/Object;

    .line 329
    .line 330
    iput v12, v2, Lg2/k;->f:I

    .line 331
    .line 332
    invoke-virtual {v1, v13, v2}, Lg2/l;->b(Lokhttp3/Request;Lc9/c;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v12

    .line 336
    if-ne v12, v3, :cond_d

    .line 337
    .line 338
    return-object v3

    .line 339
    :cond_d
    move-object v13, v1

    .line 340
    move-object/from16 v18, v12

    .line 341
    .line 342
    move-object v12, v0

    .line 343
    move-object/from16 v0, v18

    .line 344
    .line 345
    :goto_3
    move-object v14, v0

    .line 346
    check-cast v14, Lokhttp3/Response;

    .line 347
    .line 348
    sget-object v0, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;

    .line 349
    .line 350
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 351
    .line 352
    .line 353
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 354
    if-eqz v0, :cond_15

    .line 355
    .line 356
    :try_start_4
    iget-object v15, v12, Ll2/f;->a:Lokhttp3/Request;

    .line 357
    .line 358
    iget-object v12, v12, Ll2/f;->b:Ll2/c;

    .line 359
    .line 360
    invoke-virtual {v13, v4, v15, v14, v12}, Lg2/l;->h(Le2/j;Lokhttp3/Request;Lokhttp3/Response;Ll2/c;)Le2/j;

    .line 361
    .line 362
    .line 363
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 364
    iget-object v12, v13, Lg2/l;->a:Ljava/lang/String;

    .line 365
    .line 366
    if-eqz v4, :cond_f

    .line 367
    .line 368
    :try_start_5
    new-instance v0, Lg2/m;

    .line 369
    .line 370
    invoke-virtual {v13, v4}, Lg2/l;->g(Le2/j;)Ld2/m;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v13, v4}, Lg2/l;->f(Le2/j;)Ll2/c;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    if-eqz v3, :cond_e

    .line 379
    .line 380
    iget-object v3, v3, Ll2/c;->b:Ljava/lang/Object;

    .line 381
    .line 382
    invoke-interface {v3}, Lw8/c;->getValue()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    move-object v7, v3

    .line 387
    check-cast v7, Lokhttp3/MediaType;

    .line 388
    .line 389
    goto :goto_5

    .line 390
    :goto_4
    move-object v3, v14

    .line 391
    goto/16 :goto_9

    .line 392
    .line 393
    :cond_e
    :goto_5
    invoke-static {v12, v7}, Lg2/l;->d(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-direct {v0, v2, v3, v6}, Lg2/m;-><init>(Ld2/n;Ljava/lang/String;Ld2/f;)V

    .line 398
    .line 399
    .line 400
    return-object v0

    .line 401
    :catch_3
    move-exception v0

    .line 402
    goto :goto_4

    .line 403
    :cond_f
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 404
    .line 405
    .line 406
    move-result-wide v15

    .line 407
    cmp-long v17, v15, v9

    .line 408
    .line 409
    if-lez v17, :cond_11

    .line 410
    .line 411
    new-instance v2, Lg2/m;

    .line 412
    .line 413
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    iget-object v5, v13, Lg2/l;->b:Lm2/m;

    .line 418
    .line 419
    iget-object v5, v5, Lm2/m;->a:Landroid/content/Context;

    .line 420
    .line 421
    new-instance v5, Ld2/p;

    .line 422
    .line 423
    invoke-direct {v5, v3, v7}, Ld2/p;-><init>(Lokio/BufferedSource;Ln5/d;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-static {v12, v0}, Lg2/l;->d(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {v14}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    if-eqz v3, :cond_10

    .line 439
    .line 440
    goto :goto_6

    .line 441
    :cond_10
    move-object v6, v8

    .line 442
    :goto_6
    invoke-direct {v2, v5, v0, v6}, Lg2/m;-><init>(Ld2/n;Ljava/lang/String;Ld2/f;)V

    .line 443
    .line 444
    .line 445
    return-object v2

    .line 446
    :cond_11
    invoke-static {v14}, Lr2/f;->a(Ljava/io/Closeable;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v13}, Lg2/l;->e()Lokhttp3/Request;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    iput-object v13, v2, Lg2/k;->a:Lg2/l;

    .line 454
    .line 455
    iput-object v4, v2, Lg2/k;->b:Le2/j;

    .line 456
    .line 457
    iput-object v14, v2, Lg2/k;->c:Ljava/lang/Object;

    .line 458
    .line 459
    iput v11, v2, Lg2/k;->f:I

    .line 460
    .line 461
    invoke-virtual {v13, v0, v2}, Lg2/l;->b(Lokhttp3/Request;Lc9/c;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 465
    if-ne v0, v3, :cond_12

    .line 466
    .line 467
    return-object v3

    .line 468
    :cond_12
    move-object v2, v13

    .line 469
    move-object v3, v14

    .line 470
    :goto_7
    :try_start_6
    move-object v9, v0

    .line 471
    check-cast v9, Lokhttp3/Response;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 472
    .line 473
    :try_start_7
    sget-object v0, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;

    .line 474
    .line 475
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    if-eqz v0, :cond_14

    .line 480
    .line 481
    new-instance v3, Lg2/m;

    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    iget-object v10, v2, Lg2/l;->b:Lm2/m;

    .line 491
    .line 492
    iget-object v10, v10, Lm2/m;->a:Landroid/content/Context;

    .line 493
    .line 494
    new-instance v10, Ld2/p;

    .line 495
    .line 496
    invoke-direct {v10, v5, v7}, Ld2/p;-><init>(Lokio/BufferedSource;Ln5/d;)V

    .line 497
    .line 498
    .line 499
    iget-object v2, v2, Lg2/l;->a:Ljava/lang/String;

    .line 500
    .line 501
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-static {v2, v0}, Lg2/l;->d(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-virtual {v9}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    if-eqz v2, :cond_13

    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_13
    move-object v6, v8

    .line 517
    :goto_8
    invoke-direct {v3, v10, v0, v6}, Lg2/m;-><init>(Ld2/n;Ljava/lang/String;Ld2/f;)V

    .line 518
    .line 519
    .line 520
    return-object v3

    .line 521
    :catch_4
    move-exception v0

    .line 522
    move-object v3, v9

    .line 523
    goto :goto_9

    .line 524
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 525
    .line 526
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 530
    :goto_9
    :try_start_8
    invoke-static {v3}, Lr2/f;->a(Ljava/io/Closeable;)V

    .line 531
    .line 532
    .line 533
    throw v0

    .line 534
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 535
    .line 536
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 540
    :goto_a
    if-eqz v12, :cond_16

    .line 541
    .line 542
    invoke-static {v12}, Lr2/f;->a(Ljava/io/Closeable;)V

    .line 543
    .line 544
    .line 545
    :cond_16
    throw v0
.end method

.method public final b(Lokhttp3/Request;Lc9/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lg2/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lg2/j;

    .line 7
    .line 8
    iget v1, v0, Lg2/j;->c:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lg2/j;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lg2/j;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lg2/j;-><init>(Lg2/l;Lc9/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lg2/j;->a:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lb9/a;->a:Lb9/a;

    .line 28
    .line 29
    iget v2, v0, Lg2/j;->c:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p2}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-static {p2}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object p2, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;

    .line 52
    .line 53
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {p2, v2}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget-object v2, p0, Lg2/l;->c:Lw8/i;

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    iget-object p2, p0, Lg2/l;->b:Lm2/m;

    .line 70
    .line 71
    iget-object p2, p2, Lm2/m;->o:Lm2/b;

    .line 72
    .line 73
    iget-boolean p2, p2, Lm2/b;->a:Z

    .line 74
    .line 75
    if-nez p2, :cond_3

    .line 76
    .line 77
    invoke-virtual {v2}, Lw8/i;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Lokhttp3/Call$Factory;

    .line 82
    .line 83
    invoke-interface {p2, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    new-instance p1, Landroid/os/NetworkOnMainThreadException;

    .line 93
    .line 94
    invoke-direct {p1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_4
    invoke-virtual {v2}, Lw8/i;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Lokhttp3/Call$Factory;

    .line 103
    .line 104
    invoke-interface {p2, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput v3, v0, Lg2/j;->c:I

    .line 109
    .line 110
    new-instance p2, Lt9/e;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/bumptech/glide/d;->r(La9/d;)La9/d;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {p2, v0, v3}, Lt9/e;-><init>(La9/d;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lt9/e;->n()V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lr2/g;

    .line 123
    .line 124
    invoke-direct {v0, p1, p2}, Lr2/g;-><init>(Lokhttp3/Call;Lt9/e;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v0}, Lt9/e;->p(Li9/l;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lt9/e;->m()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    if-ne p2, v1, :cond_5

    .line 138
    .line 139
    return-object v1

    .line 140
    :cond_5
    :goto_1
    move-object p1, p2

    .line 141
    check-cast p1, Lokhttp3/Response;

    .line 142
    .line 143
    :goto_2
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-nez p2, :cond_7

    .line 148
    .line 149
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    const/16 v0, 0x130

    .line 154
    .line 155
    if-eq p2, v0, :cond_7

    .line 156
    .line 157
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-eqz p2, :cond_6

    .line 162
    .line 163
    invoke-static {p2}, Lr2/f;->a(Ljava/io/Closeable;)V

    .line 164
    .line 165
    .line 166
    :cond_6
    new-instance p2, Landroidx/fragment/app/q;

    .line 167
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v1, "HTTP "

    .line 171
    .line 172
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, ": "

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    const/4 v0, 0x6

    .line 199
    invoke-direct {p2, p1, v0}, Landroidx/fragment/app/q;-><init>(Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    throw p2

    .line 203
    :cond_7
    return-object p1
.end method

.method public final c()Lokio/FileSystem;
    .locals 1

    .line 1
    iget-object v0, p0, Lg2/l;->d:Lw8/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw8/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Le2/b;

    .line 11
    .line 12
    check-cast v0, Le2/k;

    .line 13
    .line 14
    iget-object v0, v0, Le2/k;->a:Lokio/FileSystem;

    .line 15
    .line 16
    return-object v0
.end method

.method public final e()Lokhttp3/Request;
    .locals 6

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lg2/l;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lg2/l;->b:Lm2/m;

    .line 13
    .line 14
    iget-object v2, v1, Lm2/m;->j:Lokhttp3/Headers;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v2, v1, Lm2/m;->k:Lm2/r;

    .line 21
    .line 22
    iget-object v2, v2, Lm2/r;->a:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/util/Map$Entry;

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v5, "null cannot be cast to non-null type java.lang.Class<kotlin.Any>"

    .line 49
    .line 50
    invoke-static {v4, v5}, Lj9/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast v4, Ljava/lang/Class;

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v2, v1, Lm2/m;->n:Lm2/b;

    .line 64
    .line 65
    iget-boolean v3, v2, Lm2/b;->a:Z

    .line 66
    .line 67
    iget-object v1, v1, Lm2/m;->o:Lm2/b;

    .line 68
    .line 69
    iget-boolean v1, v1, Lm2/b;->a:Z

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    sget-object v1, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    if-eqz v1, :cond_3

    .line 82
    .line 83
    if-nez v3, :cond_3

    .line 84
    .line 85
    iget-boolean v1, v2, Lm2/b;->b:Z

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    sget-object v1, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    sget-object v1, Lg2/l;->f:Lokhttp3/CacheControl;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    if-nez v1, :cond_4

    .line 102
    .line 103
    if-nez v3, :cond_4

    .line 104
    .line 105
    sget-object v1, Lg2/l;->g:Lokhttp3/CacheControl;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    return-object v0
.end method

.method public final f(Le2/j;)Ll2/c;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lg2/l;->c()Lokio/FileSystem;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object p1, p1, Le2/j;->a:Le2/e;

    .line 7
    .line 8
    iget-boolean v2, p1, Le2/e;->b:Z

    .line 9
    .line 10
    if-nez v2, :cond_2

    .line 11
    .line 12
    iget-object p1, p1, Le2/e;->a:Le2/d;

    .line 13
    .line 14
    iget-object p1, p1, Le2/d;->c:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lokio/Path;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    new-instance v1, Ll2/c;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Ll2/c;-><init>(Lokio/BufferedSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    move-object p1, v0

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :catchall_1
    move-exception v1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_2
    move-exception p1

    .line 51
    :try_start_4
    invoke-static {v1, p1}, Ll5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    move-object p1, v1

    .line 55
    move-object v1, v0

    .line 56
    :goto_1
    if-nez p1, :cond_1

    .line 57
    .line 58
    invoke-static {v1}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_1
    throw p1

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string v1, "snapshot is closed"

    .line 66
    .line 67
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 71
    :catch_0
    return-object v0
.end method

.method public final g(Le2/j;)Ld2/m;
    .locals 4

    .line 1
    iget-object v0, p1, Le2/j;->a:Le2/e;

    .line 2
    .line 3
    iget-boolean v1, v0, Le2/e;->b:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Le2/e;->a:Le2/d;

    .line 8
    .line 9
    iget-object v0, v0, Le2/d;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lokio/Path;

    .line 17
    .line 18
    invoke-virtual {p0}, Lg2/l;->c()Lokio/FileSystem;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lg2/l;->b:Lm2/m;

    .line 23
    .line 24
    iget-object v2, v2, Lm2/m;->i:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lg2/l;->a:Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    new-instance v3, Ld2/m;

    .line 31
    .line 32
    invoke-direct {v3, v0, v1, v2, p1}, Ld2/m;-><init>(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Ljava/io/Closeable;)V

    .line 33
    .line 34
    .line 35
    return-object v3

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "snapshot is closed"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final h(Le2/j;Lokhttp3/Request;Lokhttp3/Response;Ll2/c;)Le2/j;
    .locals 4

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    iget-object v1, p0, Lg2/l;->b:Lm2/m;

    .line 4
    .line 5
    iget-object v1, v1, Lm2/m;->n:Lm2/b;

    .line 6
    .line 7
    iget-boolean v1, v1, Lm2/b;->b:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_d

    .line 11
    .line 12
    iget-boolean v1, p0, Lg2/l;->e:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lokhttp3/CacheControl;->noStore()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_d

    .line 25
    .line 26
    invoke-virtual {p3}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lokhttp3/CacheControl;->noStore()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_d

    .line 35
    .line 36
    invoke-virtual {p3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string v1, "Vary"

    .line 41
    .line 42
    invoke-virtual {p2, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string v1, "*"

    .line 47
    .line 48
    invoke-static {p2, v1}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_d

    .line 53
    .line 54
    :cond_0
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p1, Le2/j;->a:Le2/e;

    .line 57
    .line 58
    iget-object p2, p1, Le2/e;->c:Le2/h;

    .line 59
    .line 60
    monitor-enter p2

    .line 61
    :try_start_0
    invoke-virtual {p1}, Le2/e;->close()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p1, Le2/e;->a:Le2/d;

    .line 65
    .line 66
    iget-object p1, p1, Le2/d;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Le2/h;->b(Ljava/lang/String;)Le2/c;

    .line 69
    .line 70
    .line 71
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p2

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    new-instance p2, La0/b;

    .line 76
    .line 77
    invoke-direct {p2, v0, p1}, La0/b;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    monitor-exit p2

    .line 83
    throw p1

    .line 84
    :cond_1
    iget-object p1, p0, Lg2/l;->d:Lw8/i;

    .line 85
    .line 86
    invoke-virtual {p1}, Lw8/i;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Le2/b;

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    iget-object p2, p0, Lg2/l;->b:Lm2/m;

    .line 95
    .line 96
    iget-object p2, p2, Lm2/m;->i:Ljava/lang/String;

    .line 97
    .line 98
    if-nez p2, :cond_2

    .line 99
    .line 100
    iget-object p2, p0, Lg2/l;->a:Ljava/lang/String;

    .line 101
    .line 102
    :cond_2
    check-cast p1, Le2/k;

    .line 103
    .line 104
    iget-object p1, p1, Le2/k;->b:Le2/h;

    .line 105
    .line 106
    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 107
    .line 108
    invoke-virtual {v1, p2}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2}, Lokio/ByteString;->sha256()Lokio/ByteString;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p1, p2}, Le2/h;->b(Ljava/lang/String;)Le2/c;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    new-instance p2, La0/b;

    .line 127
    .line 128
    invoke-direct {p2, v0, p1}, La0/b;-><init>(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    move-object p2, v2

    .line 133
    :goto_0
    if-nez p2, :cond_4

    .line 134
    .line 135
    return-object v2

    .line 136
    :cond_4
    const/4 p1, 0x0

    .line 137
    :try_start_1
    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    const/16 v1, 0x130

    .line 142
    .line 143
    if-ne v0, v1, :cond_7

    .line 144
    .line 145
    if-eqz p4, :cond_7

    .line 146
    .line 147
    invoke-virtual {p3}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object p4, p4, Ll2/c;->f:Lokhttp3/Headers;

    .line 152
    .line 153
    invoke-virtual {p3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {p4, v1}, Ll2/d;->a(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    .line 158
    .line 159
    .line 160
    move-result-object p4

    .line 161
    invoke-virtual {v0, p4}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object p4

    .line 165
    invoke-virtual {p4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 166
    .line 167
    .line 168
    move-result-object p4

    .line 169
    invoke-virtual {p0}, Lg2/l;->c()Lokio/FileSystem;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v1, p2, La0/b;->b:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v1, Le2/c;

    .line 176
    .line 177
    invoke-virtual {v1, p1}, Le2/c;->e(I)Lokio/Path;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1, p1}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 186
    .line 187
    .line 188
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 189
    :try_start_2
    new-instance v1, Ll2/c;

    .line 190
    .line 191
    invoke-direct {v1, p4}, Ll2/c;-><init>(Lokhttp3/Response;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ll2/c;->a(Lokio/BufferedSink;)V

    .line 195
    .line 196
    .line 197
    sget-object p4, Lw8/l;->a:Lw8/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 198
    .line 199
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :catchall_1
    move-exception v2

    .line 204
    goto :goto_2

    .line 205
    :catchall_2
    move-exception p4

    .line 206
    if-eqz v0, :cond_5

    .line 207
    .line 208
    :try_start_4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :catchall_3
    move-exception v0

    .line 213
    :try_start_5
    invoke-static {p4, v0}, Ll5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :catchall_4
    move-exception p1

    .line 218
    goto/16 :goto_9

    .line 219
    .line 220
    :catch_0
    move-exception p4

    .line 221
    goto/16 :goto_8

    .line 222
    .line 223
    :cond_5
    :goto_1
    move-object v3, v2

    .line 224
    move-object v2, p4

    .line 225
    move-object p4, v3

    .line 226
    :goto_2
    if-nez v2, :cond_6

    .line 227
    .line 228
    invoke-static {p4}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_7

    .line 232
    .line 233
    :cond_6
    throw v2

    .line 234
    :cond_7
    invoke-virtual {p0}, Lg2/l;->c()Lokio/FileSystem;

    .line 235
    .line 236
    .line 237
    move-result-object p4

    .line 238
    iget-object v0, p2, La0/b;->b:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v0, Le2/c;

    .line 241
    .line 242
    invoke-virtual {v0, p1}, Le2/c;->e(I)Lokio/Path;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {p4, v0, p1}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 247
    .line 248
    .line 249
    move-result-object p4

    .line 250
    invoke-static {p4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 251
    .line 252
    .line 253
    move-result-object p4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 254
    :try_start_6
    new-instance v0, Ll2/c;

    .line 255
    .line 256
    invoke-direct {v0, p3}, Ll2/c;-><init>(Lokhttp3/Response;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, p4}, Ll2/c;->a(Lokio/BufferedSink;)V

    .line 260
    .line 261
    .line 262
    sget-object v0, Lw8/l;->a:Lw8/l;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 263
    .line 264
    :try_start_7
    invoke-interface {p4}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 265
    .line 266
    .line 267
    move-object p4, v2

    .line 268
    goto :goto_4

    .line 269
    :catchall_5
    move-exception p4

    .line 270
    goto :goto_4

    .line 271
    :catchall_6
    move-exception v0

    .line 272
    if-eqz p4, :cond_8

    .line 273
    .line 274
    :try_start_8
    invoke-interface {p4}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :catchall_7
    move-exception p4

    .line 279
    :try_start_9
    invoke-static {v0, p4}, Ll5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 280
    .line 281
    .line 282
    :cond_8
    :goto_3
    move-object p4, v0

    .line 283
    move-object v0, v2

    .line 284
    :goto_4
    if-nez p4, :cond_c

    .line 285
    .line 286
    invoke-static {v0}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Lg2/l;->c()Lokio/FileSystem;

    .line 290
    .line 291
    .line 292
    move-result-object p4

    .line 293
    iget-object v0, p2, La0/b;->b:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v0, Le2/c;

    .line 296
    .line 297
    const/4 v1, 0x1

    .line 298
    invoke-virtual {v0, v1}, Le2/c;->e(I)Lokio/Path;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {p4, v0, p1}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 303
    .line 304
    .line 305
    move-result-object p4

    .line 306
    invoke-static {p4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 307
    .line 308
    .line 309
    move-result-object p4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 310
    :try_start_a
    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-static {v0}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-interface {v0, p4}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 322
    .line 323
    .line 324
    move-result-wide v0

    .line 325
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 326
    .line 327
    .line 328
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 329
    if-eqz p4, :cond_a

    .line 330
    .line 331
    :try_start_b
    invoke-interface {p4}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :catchall_8
    move-exception v2

    .line 336
    goto :goto_6

    .line 337
    :catchall_9
    move-exception v0

    .line 338
    if-eqz p4, :cond_9

    .line 339
    .line 340
    :try_start_c
    invoke-interface {p4}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :catchall_a
    move-exception p4

    .line 345
    :try_start_d
    invoke-static {v0, p4}, Ll5/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 346
    .line 347
    .line 348
    :cond_9
    :goto_5
    move-object v3, v2

    .line 349
    move-object v2, v0

    .line 350
    move-object v0, v3

    .line 351
    :cond_a
    :goto_6
    if-nez v2, :cond_b

    .line 352
    .line 353
    invoke-static {v0}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    :goto_7
    invoke-virtual {p2}, La0/b;->p()Le2/j;

    .line 357
    .line 358
    .line 359
    move-result-object p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 360
    invoke-static {p3}, Lr2/f;->a(Ljava/io/Closeable;)V

    .line 361
    .line 362
    .line 363
    return-object p1

    .line 364
    :cond_b
    :try_start_e
    throw v2

    .line 365
    :cond_c
    throw p4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 366
    :goto_8
    :try_start_f
    sget-object v0, Lr2/f;->a:[Landroid/graphics/Bitmap$Config;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 367
    .line 368
    :try_start_10
    iget-object p2, p2, La0/b;->b:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast p2, Le2/c;

    .line 371
    .line 372
    invoke-virtual {p2, p1}, Le2/c;->d(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 373
    .line 374
    .line 375
    :catch_1
    :try_start_11
    throw p4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 376
    :goto_9
    invoke-static {p3}, Lr2/f;->a(Ljava/io/Closeable;)V

    .line 377
    .line 378
    .line 379
    throw p1

    .line 380
    :cond_d
    if-eqz p1, :cond_e

    .line 381
    .line 382
    invoke-static {p1}, Lr2/f;->a(Ljava/io/Closeable;)V

    .line 383
    .line 384
    .line 385
    :cond_e
    return-object v2
.end method
