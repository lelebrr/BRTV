.class public final Lfa/r;
.super Landroid/widget/Filter;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lfa/t;


# direct methods
.method public constructor <init>(Lfa/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfa/r;->a:Lfa/t;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9

    .line 1
    new-instance p1, Landroid/widget/Filter$FilterResults;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "h1R9O+ao4SOrXH477Kg=\n"

    .line 12
    .line 13
    const-string v2, "zz0OT4namGI=\n"

    .line 14
    .line 15
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    const-string v1, "YVRS3HY28VFhVFLcd2agAzQaAYR3faAKJU8=\n"

    .line 19
    .line 20
    const-string v2, "QHVz/VcOyXA=\n"

    .line 21
    .line 22
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lfa/r;->a:Lfa/t;

    .line 26
    .line 27
    iget-object v1, v1, Lfa/t;->g:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lfa/r;->a:Lfa/t;

    .line 33
    .line 34
    iget-object v1, v1, Lfa/t;->i:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lfa/r;->a:Lfa/t;

    .line 40
    .line 41
    iget-object v1, v1, Lfa/t;->g:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v1, :cond_e

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    iget-object v2, p0, Lfa/r;->a:Lfa/t;

    .line 47
    .line 48
    iget-object v2, v2, Lfa/t;->g:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ge v1, v2, :cond_e

    .line 55
    .line 56
    iget-object v2, p0, Lfa/r;->a:Lfa/t;

    .line 57
    .line 58
    iget-object v2, v2, Lfa/t;->g:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lorg/bitspark/android/beans/HistoryBean;

    .line 65
    .line 66
    sget-boolean v3, Lorg/bitspark/android/Spark;->c2:Z

    .line 67
    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    iget-object v3, v2, Lorg/bitspark/android/beans/HistoryBean;->type:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 71
    .line 72
    sget-object v4, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSLIVE:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 73
    .line 74
    const/16 v5, 0x12

    .line 75
    .line 76
    if-eq v3, v4, :cond_1

    .line 77
    .line 78
    sget-object v4, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSPALYBACK:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 79
    .line 80
    if-ne v3, v4, :cond_0

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    sget-object v4, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 84
    .line 85
    if-ne v3, v4, :cond_2

    .line 86
    .line 87
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 88
    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 92
    .line 93
    iget v4, v2, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 94
    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 106
    .line 107
    iget v4, v2, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 108
    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lorg/bitspark/android/beans/ChannelBean;

    .line 118
    .line 119
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-lt v3, v5, :cond_2

    .line 124
    .line 125
    const-string v2, "u48TrqocI4KXhxCuoBw=\n"

    .line 126
    .line 127
    const-string v3, "8+Zg2sVuWsM=\n"

    .line 128
    .line 129
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v3, "3xqOXv647oXbDMp68r3/holL1zam87bK2h6DZuei9I2JW8Q4\n"

    .line 134
    .line 135
    const-string v4, "qXXqFpfLmuo=\n"

    .line 136
    .line 137
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 142
    .line 143
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :cond_1
    :goto_1
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 149
    .line 150
    if-eqz v3, :cond_2

    .line 151
    .line 152
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 153
    .line 154
    iget v4, v2, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 155
    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    if-eqz v3, :cond_2

    .line 165
    .line 166
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 167
    .line 168
    iget v4, v2, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 169
    .line 170
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lorg/bitspark/android/beans/ChannelBean;

    .line 179
    .line 180
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-lt v3, v5, :cond_2

    .line 185
    .line 186
    const-string v2, "qttw7W8s8R6G03PtZSw=\n"

    .line 187
    .line 188
    const-string v3, "4rIDmQBeiF8=\n"

    .line 189
    .line 190
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    const-string v3, "Yyh/M0Y2bEBgM3B2YjppUWNhN2subicYLzJiP34vdlpoYSd4IA==\n"

    .line 195
    .line 196
    const-string v4, "D0EJVg5fHzQ=\n"

    .line 197
    .line 198
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 203
    .line 204
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_3

    .line 208
    .line 209
    :cond_2
    iget-object v3, v2, Lorg/bitspark/android/beans/HistoryBean;->type:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 210
    .line 211
    sget-object v4, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSLIVE:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 212
    .line 213
    if-ne v3, v4, :cond_3

    .line 214
    .line 215
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 216
    .line 217
    if-eqz v3, :cond_d

    .line 218
    .line 219
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 220
    .line 221
    iget v4, v2, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 222
    .line 223
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    if-eqz v3, :cond_d

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto/16 :goto_3

    .line 237
    .line 238
    :cond_3
    sget-object v5, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSPALYBACK:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 239
    .line 240
    if-ne v3, v5, :cond_7

    .line 241
    .line 242
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 243
    .line 244
    if-nez v3, :cond_4

    .line 245
    .line 246
    goto/16 :goto_3

    .line 247
    .line 248
    :cond_4
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 249
    .line 250
    iget v4, v2, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 251
    .line 252
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    check-cast v3, Lorg/bitspark/android/beans/ChannelBean;

    .line 261
    .line 262
    if-nez v3, :cond_5

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_5
    iget v3, v2, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 266
    .line 267
    iget-object v4, v2, Lorg/bitspark/android/beans/HistoryBean;->subId:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v3, v4}, Lga/h;->b(ILjava/lang/String;)Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    if-nez v3, :cond_6

    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_7
    sget-object v6, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 281
    .line 282
    if-eq v3, v6, :cond_c

    .line 283
    .line 284
    sget-object v7, Lorg/bitspark/android/Constants$VIDEO_TYPE;->STATIC:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 285
    .line 286
    if-ne v3, v7, :cond_8

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_8
    if-nez v3, :cond_d

    .line 290
    .line 291
    iget-object v3, v2, Lorg/bitspark/android/beans/HistoryBean;->address:Ljava/lang/String;

    .line 292
    .line 293
    if-eqz v3, :cond_d

    .line 294
    .line 295
    const-string v7, "AcO8FRM=\n"

    .line 296
    .line 297
    const-string v8, "dbXeYGDS6dQ=\n"

    .line 298
    .line 299
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_9

    .line 308
    .line 309
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    iput-object v4, v2, Lorg/bitspark/android/beans/HistoryBean;->type:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_9
    iget-object v3, v2, Lorg/bitspark/android/beans/HistoryBean;->address:Ljava/lang/String;

    .line 316
    .line 317
    const-string v4, "glWe6Lo=\n"

    .line 318
    .line 319
    const-string v7, "9iP9icinUEQ=\n"

    .line 320
    .line 321
    invoke-static {v4, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    if-eqz v3, :cond_b

    .line 330
    .line 331
    iget v3, v2, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 332
    .line 333
    iget-object v4, v2, Lorg/bitspark/android/beans/HistoryBean;->subId:Ljava/lang/String;

    .line 334
    .line 335
    invoke-static {v3, v4}, Lga/h;->b(ILjava/lang/String;)Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    if-nez v3, :cond_a

    .line 340
    .line 341
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    iput-object v6, v2, Lorg/bitspark/android/beans/HistoryBean;->type:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    iput-object v5, v2, Lorg/bitspark/android/beans/HistoryBean;->type:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    iput-object v6, v2, Lorg/bitspark/android/beans/HistoryBean;->type:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_c
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    :cond_d
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    iput v1, p1, Landroid/widget/Filter$FilterResults;->count:I

    .line 371
    .line 372
    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 373
    .line 374
    const-string v0, "ID9WVM7ulHwMN1VUxO4=\n"

    .line 375
    .line 376
    const-string v1, "aFYlIKGc7T0=\n"

    .line 377
    .line 378
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    const-string v0, "ltWmcn4aYEWW1aZyf1A9F8KY8yBxQTcR2YC9cw==\n"

    .line 382
    .line 383
    const-string v1, "t/SHU18iWGQ=\n"

    .line 384
    .line 385
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    iget-object v0, p0, Lfa/r;->a:Lfa/t;

    .line 389
    .line 390
    iget-object v0, v0, Lfa/t;->i:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    return-object p1
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 1
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    .line 5
    iget-object p2, p0, Lfa/r;->a:Lfa/t;

    .line 6
    .line 7
    iput-object p1, p2, Lfa/t;->g:Ljava/util/List;

    .line 8
    .line 9
    const-string p1, "1R+9HFgJcDv5F74cUgk=\n"

    .line 10
    .line 11
    const-string v0, "nXbOaDd7CXo=\n"

    .line 12
    .line 13
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    const-string p1, "h+FEtpifW2KH4US2mdcWIcqpFv/rwhA2yrQWtw==\n"

    .line 17
    .line 18
    const-string v0, "psBll7mnY0M=\n"

    .line 19
    .line 20
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    iget-object p1, p2, Lfa/t;->i:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
