.class public final Lga/h;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/text/SimpleDateFormat;


# instance fields
.field public a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "epF49Cc=\n"

    .line 2
    .line 3
    const-string v1, "OMI9pGC7+RQ=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lga/h;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "ubDpfwMy0jL3vOloAw==\n"

    .line 12
    .line 13
    const-string v1, "2tiIES5XolU=\n"

    .line 14
    .line 15
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lga/h;->c:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "IxWxT+RAkk4+CO9i7kWXWTcB8kW6I4wwCTY=\n"

    .line 22
    .line 23
    const-string v1, "WmzINskN32M=\n"

    .line 24
    .line 25
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 29
    .line 30
    const-string v1, "pYNxVvG0VrW4ni97+7FTorGXMlyv10jLj6A=\n"

    .line 31
    .line 32
    const-string v2, "3PoIL9z5G5g=\n"

    .line 33
    .line 34
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lga/h;->d:Ljava/text/SimpleDateFormat;

    .line 46
    .line 47
    return-void
.end method

.method public static a(I)Ljava/util/HashMap;
    .locals 3

    .line 1
    sget-object v0, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lga/h;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Lda/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_0
    check-cast p0, Ljava/util/HashMap;

    .line 29
    .line 30
    return-object p0
.end method

.method public static b(ILjava/lang/String;)Lorg/bitspark/android/beans/EpgBeans$EpgBean;
    .locals 4

    .line 1
    invoke-static {p0}, Lga/h;->a(I)Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 50
    .line 51
    invoke-virtual {v2}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    return-object v2

    .line 62
    :cond_3
    return-object v0
.end method

.method public static c(I)Ljava/util/ArrayList;
    .locals 19

    .line 1
    invoke-static/range {p0 .. p0}, Lga/h;->a(I)Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v2, Ljava/util/Date;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    sget-wide v4, Lorg/bitspark/android/utils/m;->a:J

    .line 19
    .line 20
    add-long/2addr v2, v4

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const/4 v8, 0x2

    .line 40
    const-wide/16 v9, 0x0

    .line 41
    .line 42
    if-ge v6, v7, :cond_3

    .line 43
    .line 44
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v11

    .line 54
    cmp-long v7, v11, v2

    .line 55
    .line 56
    if-lez v7, :cond_2

    .line 57
    .line 58
    add-int/lit8 v7, v6, -0x1

    .line 59
    .line 60
    if-ltz v7, :cond_2

    .line 61
    .line 62
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v11

    .line 72
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    check-cast v7, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v13

    .line 82
    sub-int/2addr v6, v8

    .line 83
    if-ltz v6, :cond_1

    .line 84
    .line 85
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Ljava/lang/Long;

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move-wide v6, v9

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    move-wide v6, v9

    .line 102
    move-wide v11, v6

    .line 103
    move-wide v13, v11

    .line 104
    :goto_1
    const/4 v15, 0x1

    .line 105
    cmp-long v16, v11, v9

    .line 106
    .line 107
    if-nez v16, :cond_5

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-lt v9, v15, :cond_5

    .line 114
    .line 115
    invoke-static {v15, v4}, Lea/q;->e(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    check-cast v9, Ljava/lang/Long;

    .line 120
    .line 121
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v9

    .line 125
    const-wide/32 v16, 0x5265c00

    .line 126
    .line 127
    .line 128
    add-long v16, v9, v16

    .line 129
    .line 130
    cmp-long v18, v16, v2

    .line 131
    .line 132
    if-lez v18, :cond_5

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    if-lt v11, v8, :cond_4

    .line 139
    .line 140
    invoke-static {v8, v4}, Lea/q;->e(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Ljava/lang/Long;

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 147
    .line 148
    .line 149
    move-result-wide v6

    .line 150
    :cond_4
    move-wide v11, v9

    .line 151
    :cond_5
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Ljava/util/List;

    .line 160
    .line 161
    if-nez v4, :cond_6

    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    const/4 v9, 0x0

    .line 170
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-ge v9, v10, :cond_a

    .line 175
    .line 176
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    check-cast v10, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 181
    .line 182
    invoke-virtual {v10}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getTime()Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 187
    .line 188
    .line 189
    move-result-wide v10

    .line 190
    cmp-long v12, v10, v2

    .line 191
    .line 192
    if-gtz v12, :cond_9

    .line 193
    .line 194
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    check-cast v10, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 199
    .line 200
    invoke-virtual {v10}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getEndTime()Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 205
    .line 206
    .line 207
    move-result-wide v10

    .line 208
    cmp-long v12, v2, v10

    .line 209
    .line 210
    if-gtz v12, :cond_9

    .line 211
    .line 212
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 217
    .line 218
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    add-int/2addr v9, v15

    .line 222
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-ge v9, v1, :cond_7

    .line 227
    .line 228
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 233
    .line 234
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_7
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-eqz v1, :cond_8

    .line 247
    .line 248
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-nez v1, :cond_8

    .line 263
    .line 264
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Ljava/util/List;

    .line 273
    .line 274
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 279
    .line 280
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    :cond_8
    :goto_3
    return-object v8

    .line 284
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    check-cast v0, Ljava/util/List;

    .line 296
    .line 297
    if-nez v0, :cond_b

    .line 298
    .line 299
    return-object v1

    .line 300
    :cond_b
    const/4 v6, 0x0

    .line 301
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-ge v6, v7, :cond_f

    .line 306
    .line 307
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    check-cast v7, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 312
    .line 313
    invoke-virtual {v7}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getTime()Ljava/lang/Long;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 318
    .line 319
    .line 320
    move-result-wide v9

    .line 321
    cmp-long v7, v9, v2

    .line 322
    .line 323
    if-gtz v7, :cond_e

    .line 324
    .line 325
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    check-cast v7, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 330
    .line 331
    invoke-virtual {v7}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getEndTime()Ljava/lang/Long;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 336
    .line 337
    .line 338
    move-result-wide v9

    .line 339
    cmp-long v7, v2, v9

    .line 340
    .line 341
    if-gtz v7, :cond_e

    .line 342
    .line 343
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    check-cast v1, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 348
    .line 349
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    add-int/2addr v6, v15

    .line 353
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-ge v6, v1, :cond_c

    .line 358
    .line 359
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    check-cast v0, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 364
    .line 365
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-nez v0, :cond_d

    .line 374
    .line 375
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 380
    .line 381
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    :cond_d
    :goto_5
    return-object v8

    .line 385
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_f
    return-object v1
.end method

.method public static d(Lorg/bitspark/android/beans/ChannelBean;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bitspark/android/beans/ChannelBean;->getEpgSameAs()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/bitspark/android/beans/ChannelBean;->getEpgSameAs()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    :goto_0
    return p0
.end method

.method public static e(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/io/FileReader;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/alibaba/fastjson/JSONReader;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONReader;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->startArray()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_c

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->startObject()V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lorg/bitspark/android/beans/EpgBeans;

    .line 29
    .line 30
    invoke-direct {v2}, Lorg/bitspark/android/beans/EpgBeans;-><init>()V

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_b

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->readString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "XcE5\n"

    .line 44
    .line 45
    const-string v5, "OLFeGex/Tdg=\n"

    .line 46
    .line 47
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_8

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->startArray()V

    .line 58
    .line 59
    .line 60
    new-instance v3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_7

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->startObject()V

    .line 72
    .line 73
    .line 74
    new-instance v4, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 75
    .line 76
    invoke-direct {v4}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;-><init>()V

    .line 77
    .line 78
    .line 79
    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->readString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->readObject()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    if-eqz v6, :cond_1

    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    goto :goto_4

    .line 100
    :cond_1
    const-string v6, ""

    .line 101
    .line 102
    :goto_4
    const-string v7, "CRmm0mL25A==\n"

    .line 103
    .line 104
    const-string v8, "bHfChgubgao=\n"

    .line 105
    .line 106
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    sget-object v8, Lga/h;->d:Ljava/text/SimpleDateFormat;

    .line 115
    .line 116
    if-eqz v7, :cond_2

    .line 117
    .line 118
    const-string v7, "6w==\n"

    .line 119
    .line 120
    const-string v9, "sYXUmG0/6Fg=\n"

    .line 121
    .line 122
    invoke-static {v7, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    const-string v9, "ojeXucI=\n"

    .line 127
    .line 128
    const-string v10, "iQenifLZesU=\n"

    .line 129
    .line 130
    invoke-static {v9, v10}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-virtual {v8, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 143
    .line 144
    .line 145
    move-result-wide v9

    .line 146
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v4, v7}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->setEndTime(Ljava/lang/Long;)V

    .line 151
    .line 152
    .line 153
    :cond_2
    const-string v7, "QV8=\n"

    .line 154
    .line 155
    const-string v9, "KDvsEDzlqbc=\n"

    .line 156
    .line 157
    invoke-static {v7, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_3

    .line 166
    .line 167
    invoke-virtual {v4, v6}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->setId(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_3
    const-string v7, "fdbhyw==\n"

    .line 171
    .line 172
    const-string v9, "E7eMrpeQrWQ=\n"

    .line 173
    .line 174
    invoke-static {v7, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_4

    .line 183
    .line 184
    invoke-virtual {v4, v6}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->setName(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_4
    const-string v7, "N+F7LV4qOkUS/3Y=\n"

    .line 188
    .line 189
    const-string v9, "R40aVDxLWS4=\n"

    .line 190
    .line 191
    invoke-static {v7, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-eqz v7, :cond_5

    .line 200
    .line 201
    invoke-virtual {v4, v6}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->setPlaybackUrl(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_5
    const-string v7, "7vgVyQ==\n"

    .line 206
    .line 207
    const-string v9, "mpF4rC24AB0=\n"

    .line 208
    .line 209
    invoke-static {v7, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_0

    .line 218
    .line 219
    const-string v5, "lA==\n"

    .line 220
    .line 221
    const-string v7, "ztS5djcDnto=\n"

    .line 222
    .line 223
    invoke-static {v5, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    const-string v7, "lTllK2Q=\n"

    .line 228
    .line 229
    const-string v9, "vglVG1RqzzQ=\n"

    .line 230
    .line 231
    invoke-static {v7, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v8, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 244
    .line 245
    .line 246
    move-result-wide v5

    .line 247
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-virtual {v4, v5}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->setTime(Ljava/lang/Long;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->endObject()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    goto/16 :goto_2

    .line 263
    .line 264
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->endArray()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v3}, Lorg/bitspark/android/beans/EpgBeans;->setEpg(Ljava/util/List;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :cond_8
    const-string v4, "eSGVAkI/vXRwI40=\n"

    .line 273
    .line 274
    const-string v5, "EUDmUi5exDY=\n"

    .line 275
    .line 276
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_9

    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->readObject()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    invoke-virtual {v2, v3}, Lorg/bitspark/android/beans/EpgBeans;->setHasPlayBack(Z)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :cond_9
    const-string v4, "rV4=\n"

    .line 304
    .line 305
    const-string v5, "xDquDRLj0F4=\n"

    .line 306
    .line 307
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-eqz v3, :cond_a

    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->readObject()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    invoke-virtual {v2, v3}, Lorg/bitspark/android/beans/EpgBeans;->setId(I)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->readObject()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    goto/16 :goto_1

    .line 338
    .line 339
    :cond_b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->endObject()V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_0

    .line 346
    .line 347
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->endArray()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONReader;->close()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 354
    .line 355
    .line 356
    return-object v1
.end method
