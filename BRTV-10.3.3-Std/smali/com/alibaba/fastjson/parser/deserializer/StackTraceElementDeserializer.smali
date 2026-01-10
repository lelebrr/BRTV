.class public Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/16 v4, 0x8

    .line 11
    .line 12
    if-ne v2, v4, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 15
    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v5, 0xc

    .line 23
    .line 24
    const/16 v6, 0x10

    .line 25
    .line 26
    if-eq v2, v5, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ne v2, v6, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "syntax error: "

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 64
    move-object v5, v3

    .line 65
    move-object v7, v5

    .line 66
    move-object v8, v7

    .line 67
    const/4 v9, 0x0

    .line 68
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-interface {v1, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    const/16 v11, 0xd

    .line 77
    .line 78
    if-nez v10, :cond_5

    .line 79
    .line 80
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    if-ne v12, v11, :cond_4

    .line 85
    .line 86
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :cond_4
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    if-ne v12, v6, :cond_5

    .line 96
    .line 97
    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 98
    .line 99
    invoke-interface {v1, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-eqz v12, :cond_5

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    const/4 v12, 0x4

    .line 107
    invoke-interface {v1, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 108
    .line 109
    .line 110
    const-string v13, "className"

    .line 111
    .line 112
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    const-string v14, "syntax error"

    .line 117
    .line 118
    if-eqz v13, :cond_8

    .line 119
    .line 120
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-ne v5, v4, :cond_6

    .line 125
    .line 126
    move-object v5, v3

    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :cond_6
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-ne v5, v12, :cond_7

    .line 134
    .line 135
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 142
    .line 143
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_8
    const-string v13, "methodName"

    .line 148
    .line 149
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    if-eqz v13, :cond_b

    .line 154
    .line 155
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-ne v7, v4, :cond_9

    .line 160
    .line 161
    move-object v7, v3

    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :cond_9
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-ne v7, v12, :cond_a

    .line 169
    .line 170
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 177
    .line 178
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_b
    const-string v13, "fileName"

    .line 183
    .line 184
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    if-eqz v13, :cond_e

    .line 189
    .line 190
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-ne v8, v4, :cond_c

    .line 195
    .line 196
    move-object v8, v3

    .line 197
    goto/16 :goto_2

    .line 198
    .line 199
    :cond_c
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-ne v8, v12, :cond_d

    .line 204
    .line 205
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 212
    .line 213
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_e
    const-string v13, "lineNumber"

    .line 218
    .line 219
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    if-eqz v13, :cond_11

    .line 224
    .line 225
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-ne v9, v4, :cond_f

    .line 230
    .line 231
    const/4 v9, 0x0

    .line 232
    goto/16 :goto_2

    .line 233
    .line 234
    :cond_f
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    const/4 v10, 0x2

    .line 239
    if-ne v9, v10, :cond_10

    .line 240
    .line 241
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    goto/16 :goto_2

    .line 246
    .line 247
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 248
    .line 249
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v0

    .line 253
    :cond_11
    const-string v13, "nativeMethod"

    .line 254
    .line 255
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v13

    .line 259
    if-eqz v13, :cond_15

    .line 260
    .line 261
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 262
    .line 263
    .line 264
    move-result v10

    .line 265
    if-ne v10, v4, :cond_12

    .line 266
    .line 267
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :cond_12
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    const/4 v12, 0x6

    .line 277
    if-ne v10, v12, :cond_13

    .line 278
    .line 279
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :cond_13
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    const/4 v12, 0x7

    .line 289
    if-ne v10, v12, :cond_14

    .line 290
    .line 291
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_2

    .line 295
    .line 296
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 297
    .line 298
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_15
    sget-object v13, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 303
    .line 304
    const-string v15, "syntax error : "

    .line 305
    .line 306
    if-ne v10, v13, :cond_19

    .line 307
    .line 308
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    if-ne v10, v12, :cond_17

    .line 313
    .line 314
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    const-string v12, "java.lang.StackTraceElement"

    .line 319
    .line 320
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v12

    .line 324
    if-eqz v12, :cond_16

    .line 325
    .line 326
    goto/16 :goto_2

    .line 327
    .line 328
    :cond_16
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 329
    .line 330
    invoke-virtual {v15, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v0

    .line 338
    :cond_17
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 339
    .line 340
    .line 341
    move-result v10

    .line 342
    if-ne v10, v4, :cond_18

    .line 343
    .line 344
    goto :goto_2

    .line 345
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 346
    .line 347
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v0

    .line 351
    :cond_19
    const-string v13, "moduleName"

    .line 352
    .line 353
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v13

    .line 357
    if-eqz v13, :cond_1c

    .line 358
    .line 359
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 360
    .line 361
    .line 362
    move-result v10

    .line 363
    if-ne v10, v4, :cond_1a

    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_1a
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    if-ne v10, v12, :cond_1b

    .line 371
    .line 372
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    goto :goto_2

    .line 376
    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 377
    .line 378
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v0

    .line 382
    :cond_1c
    const-string v13, "moduleVersion"

    .line 383
    .line 384
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v13

    .line 388
    if-eqz v13, :cond_1f

    .line 389
    .line 390
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 391
    .line 392
    .line 393
    move-result v10

    .line 394
    if-ne v10, v4, :cond_1d

    .line 395
    .line 396
    goto :goto_2

    .line 397
    :cond_1d
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 398
    .line 399
    .line 400
    move-result v10

    .line 401
    if-ne v10, v12, :cond_1e

    .line 402
    .line 403
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    goto :goto_2

    .line 407
    :cond_1e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 408
    .line 409
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v0

    .line 413
    :cond_1f
    const-string v13, "classLoaderName"

    .line 414
    .line 415
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v13

    .line 419
    if-eqz v13, :cond_22

    .line 420
    .line 421
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 422
    .line 423
    .line 424
    move-result v10

    .line 425
    if-ne v10, v4, :cond_20

    .line 426
    .line 427
    goto :goto_2

    .line 428
    :cond_20
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 429
    .line 430
    .line 431
    move-result v10

    .line 432
    if-ne v10, v12, :cond_21

    .line 433
    .line 434
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    :goto_2
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 438
    .line 439
    .line 440
    move-result v10

    .line 441
    if-ne v10, v11, :cond_3

    .line 442
    .line 443
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 444
    .line 445
    .line 446
    :goto_3
    new-instance v0, Ljava/lang/StackTraceElement;

    .line 447
    .line 448
    invoke-direct {v0, v5, v7, v8, v9}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 449
    .line 450
    .line 451
    return-object v0

    .line 452
    :cond_21
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 453
    .line 454
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    throw v0

    .line 458
    :cond_22
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 459
    .line 460
    invoke-static {v15, v10}, Lea/q;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    return v0
.end method
