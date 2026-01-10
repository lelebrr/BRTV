.class public Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

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
    .locals 7
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
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const-class v3, Ljava/lang/Byte;

    .line 9
    .line 10
    const-class v4, Ljava/lang/Short;

    .line 11
    .line 12
    const-class v5, Ljava/lang/Double;

    .line 13
    .line 14
    const/16 v6, 0x10

    .line 15
    .line 16
    if-ne v1, v2, :cond_9

    .line 17
    .line 18
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    if-eq p2, p1, :cond_8

    .line 21
    .line 22
    if-ne p2, v5, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    const-string p3, "short overflow : "

    .line 35
    .line 36
    if-eq p2, p1, :cond_6

    .line 37
    .line 38
    if-ne p2, v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    if-eq p2, p1, :cond_4

    .line 44
    .line 45
    if-ne p2, v3, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-wide/32 p1, -0x80000000

    .line 49
    .line 50
    .line 51
    cmp-long p3, v1, p1

    .line 52
    .line 53
    if-ltz p3, :cond_3

    .line 54
    .line 55
    const-wide/32 p1, 0x7fffffff

    .line 56
    .line 57
    .line 58
    cmp-long p3, v1, p1

    .line 59
    .line 60
    if-gtz p3, :cond_3

    .line 61
    .line 62
    long-to-int p1, v1

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_4
    :goto_0
    const-wide/16 p1, 0x7f

    .line 74
    .line 75
    cmp-long v0, v1, p1

    .line 76
    .line 77
    if-gtz v0, :cond_5

    .line 78
    .line 79
    const-wide/16 p1, -0x80

    .line 80
    .line 81
    cmp-long v0, v1, p1

    .line 82
    .line 83
    if-ltz v0, :cond_5

    .line 84
    .line 85
    long-to-int p1, v1

    .line 86
    int-to-byte p1, p1

    .line 87
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 93
    .line 94
    invoke-static {v1, v2, p3}, La/e;->o(JLjava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_6
    :goto_1
    const-wide/16 p1, 0x7fff

    .line 103
    .line 104
    cmp-long v0, v1, p1

    .line 105
    .line 106
    if-gtz v0, :cond_7

    .line 107
    .line 108
    const-wide/16 p1, -0x8000

    .line 109
    .line 110
    cmp-long v0, v1, p1

    .line 111
    .line 112
    if-ltz v0, :cond_7

    .line 113
    .line 114
    long-to-int p1, v1

    .line 115
    int-to-short p1, p1

    .line 116
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 122
    .line 123
    invoke-static {v1, v2, p3}, La/e;->o(JLjava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_8
    :goto_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 139
    .line 140
    .line 141
    move-result-wide p1

    .line 142
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    return-object p1

    .line 147
    :cond_9
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    const/4 v2, 0x3

    .line 152
    if-ne v1, v2, :cond_11

    .line 153
    .line 154
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 155
    .line 156
    if-eq p2, p1, :cond_10

    .line 157
    .line 158
    if-ne p2, v5, :cond_a

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_a
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 162
    .line 163
    if-eq p2, p1, :cond_f

    .line 164
    .line 165
    if-ne p2, v4, :cond_b

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_b
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 169
    .line 170
    if-eq p2, p1, :cond_e

    .line 171
    .line 172
    if-ne p2, v3, :cond_c

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_c
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 180
    .line 181
    .line 182
    sget-object p2, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    .line 183
    .line 184
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-eqz p2, :cond_d

    .line 189
    .line 190
    return-object p1

    .line 191
    :cond_d
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 192
    .line 193
    .line 194
    move-result-wide p1

    .line 195
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    return-object p1

    .line 200
    :cond_e
    :goto_3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 205
    .line 206
    .line 207
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->byteValue(Ljava/math/BigDecimal;)B

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    return-object p1

    .line 216
    :cond_f
    :goto_4
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 221
    .line 222
    .line 223
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->shortValue(Ljava/math/BigDecimal;)S

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    return-object p1

    .line 232
    :cond_10
    :goto_5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 237
    .line 238
    .line 239
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 240
    .line 241
    .line 242
    move-result-wide p1

    .line 243
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    return-object p1

    .line 248
    :cond_11
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    const/16 v2, 0x12

    .line 253
    .line 254
    const/4 v6, 0x0

    .line 255
    if-ne v1, v2, :cond_14

    .line 256
    .line 257
    const-string v1, "NaN"

    .line 258
    .line 259
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_14

    .line 268
    .line 269
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 270
    .line 271
    .line 272
    if-ne p2, v5, :cond_12

    .line 273
    .line 274
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 275
    .line 276
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    goto :goto_6

    .line 281
    :cond_12
    const-class p1, Ljava/lang/Float;

    .line 282
    .line 283
    if-ne p2, p1, :cond_13

    .line 284
    .line 285
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 286
    .line 287
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    :cond_13
    :goto_6
    return-object v6

    .line 292
    :cond_14
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    if-nez p1, :cond_15

    .line 297
    .line 298
    return-object v6

    .line 299
    :cond_15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 300
    .line 301
    if-eq p2, v0, :cond_1b

    .line 302
    .line 303
    if-ne p2, v5, :cond_16

    .line 304
    .line 305
    goto :goto_9

    .line 306
    :cond_16
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 307
    .line 308
    if-eq p2, v0, :cond_1a

    .line 309
    .line 310
    if-ne p2, v4, :cond_17

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_17
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 314
    .line 315
    if-eq p2, v0, :cond_19

    .line 316
    .line 317
    if-ne p2, v3, :cond_18

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_18
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    return-object p1

    .line 325
    :cond_19
    :goto_7
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    .line 326
    .line 327
    .line 328
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    return-object p1

    .line 330
    :catch_0
    move-exception p1

    .line 331
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 332
    .line 333
    const-string v0, "parseByte error, field : "

    .line 334
    .line 335
    invoke-static {p3, v0}, Lea/q;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p3

    .line 339
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    .line 341
    .line 342
    throw p2

    .line 343
    :cond_1a
    :goto_8
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    .line 344
    .line 345
    .line 346
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    return-object p1

    .line 348
    :catch_1
    move-exception p1

    .line 349
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 350
    .line 351
    const-string v0, "parseShort error, field : "

    .line 352
    .line 353
    invoke-static {p3, v0}, Lea/q;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p3

    .line 357
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    .line 359
    .line 360
    throw p2

    .line 361
    :cond_1b
    :goto_9
    :try_start_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    .line 362
    .line 363
    .line 364
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 365
    return-object p1

    .line 366
    :catch_2
    move-exception p1

    .line 367
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 368
    .line 369
    const-string v0, "parseDouble error, field : "

    .line 370
    .line 371
    invoke-static {p3, v0}, Lea/q;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p3

    .line 375
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    .line 377
    .line 378
    throw p2
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method
