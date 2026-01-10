.class public Lcom/alibaba/fastjson/serializer/DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "MyApplication"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateCodec;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateCodec;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 p3, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    return-object p3

    .line 5
    :cond_0
    instance-of v0, p4, Ljava/util/Date;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    return-object p4

    .line 10
    :cond_1
    instance-of v0, p4, Ljava/math/BigDecimal;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    new-instance p1, Ljava/util/Date;

    .line 15
    .line 16
    check-cast p4, Ljava/math/BigDecimal;

    .line 17
    .line 18
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    .line 19
    .line 20
    .line 21
    move-result-wide p2

    .line 22
    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_2
    instance-of v0, p4, Ljava/lang/Number;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    new-instance p1, Ljava/util/Date;

    .line 31
    .line 32
    check-cast p4, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide p2

    .line 38
    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_3
    instance-of v0, p4, Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v0, :cond_11

    .line 45
    .line 46
    check-cast p4, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    return-object p3

    .line 55
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v1, 0x17

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    if-ne v0, v1, :cond_5

    .line 63
    .line 64
    const-string v0, " 000"

    .line 65
    .line 66
    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    const/16 v0, 0x13

    .line 73
    .line 74
    invoke-virtual {p4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 79
    .line 80
    invoke-direct {v0, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    .line 84
    .line 85
    .line 86
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const-class v3, Ljava/util/Calendar;

    .line 88
    .line 89
    if-eqz v1, :cond_7

    .line 90
    .line 91
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    if-ne p2, v3, :cond_6

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 98
    .line 99
    .line 100
    return-object p1

    .line 101
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 102
    .line 103
    .line 104
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 106
    .line 107
    .line 108
    return-object p1

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFomartPattern()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eq v1, v4, :cond_9

    .line 128
    .line 129
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/16 v4, 0x16

    .line 134
    .line 135
    if-ne v1, v4, :cond_8

    .line 136
    .line 137
    const-string v1, "yyyyMMddHHmmssSSSZ"

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_9

    .line 144
    .line 145
    :cond_8
    const/16 v1, 0x54

    .line 146
    .line 147
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    const/4 v4, -0x1

    .line 152
    if-eq v1, v4, :cond_a

    .line 153
    .line 154
    const-string v1, "\'T\'"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_a

    .line 161
    .line 162
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    add-int/lit8 v1, v1, 0x2

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-ne v1, v0, :cond_a

    .line 173
    .line 174
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    :try_start_3
    invoke-virtual {p1, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 179
    .line 180
    .line 181
    move-result-object p1
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    .line 182
    return-object p1

    .line 183
    :catch_0
    nop

    .line 184
    :cond_a
    const-string p1, "/Date("

    .line 185
    .line 186
    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_b

    .line 191
    .line 192
    const-string p1, ")/"

    .line 193
    .line 194
    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_b

    .line 199
    .line 200
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    add-int/lit8 p1, p1, -0x2

    .line 205
    .line 206
    const/4 v0, 0x6

    .line 207
    invoke-virtual {p4, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p4

    .line 211
    :cond_b
    const-string p1, "0000-00-00"

    .line 212
    .line 213
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_10

    .line 218
    .line 219
    const-string p1, "0000-00-00T00:00:00"

    .line 220
    .line 221
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_10

    .line 226
    .line 227
    const-string p1, "0001-01-01T00:00:00+08:00"

    .line 228
    .line 229
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_c

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_c
    const/16 p1, 0x7c

    .line 237
    .line 238
    invoke-virtual {p4, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    const/16 p3, 0x14

    .line 243
    .line 244
    if-le p1, p3, :cond_f

    .line 245
    .line 246
    add-int/lit8 p3, p1, 0x1

    .line 247
    .line 248
    invoke-virtual {p4, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p3

    .line 252
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const-string v1, "GMT"

    .line 261
    .line 262
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-nez v0, :cond_f

    .line 267
    .line 268
    invoke-virtual {p4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 273
    .line 274
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :try_start_4
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_e

    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 288
    .line 289
    .line 290
    if-ne p2, v3, :cond_d

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 293
    .line 294
    .line 295
    return-object p1

    .line 296
    :cond_d
    :try_start_5
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 297
    .line 298
    .line 299
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 300
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 301
    .line 302
    .line 303
    return-object p1

    .line 304
    :catchall_1
    move-exception p1

    .line 305
    goto :goto_0

    .line 306
    :cond_e
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 307
    .line 308
    .line 309
    goto :goto_1

    .line 310
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 311
    .line 312
    .line 313
    throw p1

    .line 314
    :cond_f
    :goto_1
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 315
    .line 316
    .line 317
    move-result-wide p1

    .line 318
    new-instance p3, Ljava/util/Date;

    .line 319
    .line 320
    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 321
    .line 322
    .line 323
    :cond_10
    :goto_2
    return-object p3

    .line 324
    :goto_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 325
    .line 326
    .line 327
    throw p1

    .line 328
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 329
    .line 330
    const-string p2, "parse error"

    .line 331
    .line 332
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw p1
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const-class v6, Ljava/sql/Date;

    .line 19
    .line 20
    const-wide/32 v7, 0x5265c00

    .line 21
    .line 22
    .line 23
    if-ne v5, v6, :cond_1

    .line 24
    .line 25
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 26
    .line 27
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    move-object v6, v1

    .line 34
    check-cast v6, Ljava/sql/Date;

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    .line 41
    .line 42
    invoke-virtual {v6, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    int-to-long v11, v6

    .line 47
    add-long/2addr v9, v11

    .line 48
    rem-long/2addr v9, v7

    .line 49
    const-wide/16 v11, 0x0

    .line 50
    .line 51
    cmp-long v6, v9, v11

    .line 52
    .line 53
    if-nez v6, :cond_1

    .line 54
    .line 55
    iget v6, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 56
    .line 57
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 58
    .line 59
    move/from16 v10, p5

    .line 60
    .line 61
    invoke-static {v6, v10, v9}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_1

    .line 66
    .line 67
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    const-class v6, Ljava/sql/Time;

    .line 76
    .line 77
    const-string v9, "millis"

    .line 78
    .line 79
    const-wide/16 v10, 0x3e8

    .line 80
    .line 81
    const-string v12, "unixtime"

    .line 82
    .line 83
    if-ne v5, v6, :cond_4

    .line 84
    .line 85
    move-object v6, v1

    .line 86
    check-cast v6, Ljava/sql/Time;

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v13

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_2

    .line 101
    .line 102
    div-long/2addr v13, v10

    .line 103
    invoke-virtual {v4, v13, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    invoke-virtual {v4, v13, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_3
    cmp-long v6, v13, v7

    .line 122
    .line 123
    if-gez v6, :cond_4

    .line 124
    .line 125
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    const-class v6, Ljava/sql/Timestamp;

    .line 134
    .line 135
    if-ne v5, v6, :cond_5

    .line 136
    .line 137
    move-object v6, v1

    .line 138
    check-cast v6, Ljava/sql/Timestamp;

    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/sql/Timestamp;->getNanos()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    goto :goto_0

    .line 145
    :cond_5
    const/4 v6, 0x0

    .line 146
    :goto_0
    instance-of v7, v1, Ljava/util/Date;

    .line 147
    .line 148
    if-eqz v7, :cond_6

    .line 149
    .line 150
    move-object v7, v1

    .line 151
    check-cast v7, Ljava/util/Date;

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_7

    .line 167
    .line 168
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 169
    .line 170
    .line 171
    move-result-wide v0

    .line 172
    div-long/2addr v0, v10

    .line 173
    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-eqz v8, :cond_8

    .line 186
    .line 187
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 188
    .line 189
    .line 190
    move-result-wide v0

    .line 191
    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_8
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 196
    .line 197
    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-eqz v8, :cond_b

    .line 202
    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    if-nez v1, :cond_a

    .line 208
    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getFastJsonConfigDateFormatPattern()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-nez v1, :cond_9

    .line 214
    .line 215
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 216
    .line 217
    :cond_9
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 218
    .line 219
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    .line 220
    .line 221
    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    .line 225
    .line 226
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 227
    .line 228
    .line 229
    move-object v1, v2

    .line 230
    :cond_a
    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :cond_b
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 239
    .line 240
    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-eqz v8, :cond_d

    .line 245
    .line 246
    move-object/from16 v8, p4

    .line 247
    .line 248
    if-eq v5, v8, :cond_d

    .line 249
    .line 250
    const-class v2, Ljava/util/Date;

    .line 251
    .line 252
    if-ne v5, v2, :cond_c

    .line 253
    .line 254
    const-string v0, "new Date("

    .line 255
    .line 256
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    move-object v0, v1

    .line 260
    check-cast v0, Ljava/util/Date;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 263
    .line 264
    .line 265
    move-result-wide v0

    .line 266
    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 267
    .line 268
    .line 269
    const/16 v0, 0x29

    .line 270
    .line 271
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_c
    const/16 v2, 0x7b

    .line 276
    .line 277
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 278
    .line 279
    .line 280
    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    move-object v0, v1

    .line 293
    check-cast v0, Ljava/util/Date;

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 296
    .line 297
    .line 298
    move-result-wide v0

    .line 299
    const/16 v2, 0x2c

    .line 300
    .line 301
    const-string v3, "val"

    .line 302
    .line 303
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;J)V

    .line 304
    .line 305
    .line 306
    const/16 v0, 0x7d

    .line 307
    .line 308
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 309
    .line 310
    .line 311
    :goto_2
    return-void

    .line 312
    :cond_d
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 313
    .line 314
    .line 315
    move-result-wide v7

    .line 316
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 317
    .line 318
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_1a

    .line 323
    .line 324
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 325
    .line 326
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_e

    .line 331
    .line 332
    const/16 v1, 0x27

    .line 333
    .line 334
    goto :goto_3

    .line 335
    :cond_e
    const/16 v1, 0x22

    .line 336
    .line 337
    :goto_3
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 338
    .line 339
    .line 340
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    .line 341
    .line 342
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    .line 343
    .line 344
    invoke-static {v5, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    const/4 v7, 0x2

    .line 356
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    add-int/2addr v7, v3

    .line 361
    const/4 v8, 0x5

    .line 362
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    .line 363
    .line 364
    .line 365
    move-result v8

    .line 366
    const/16 v9, 0xb

    .line 367
    .line 368
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 369
    .line 370
    .line 371
    move-result v9

    .line 372
    const/16 v10, 0xc

    .line 373
    .line 374
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    .line 375
    .line 376
    .line 377
    move-result v10

    .line 378
    const/16 v11, 0xd

    .line 379
    .line 380
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    .line 381
    .line 382
    .line 383
    move-result v12

    .line 384
    const/16 v13, 0xe

    .line 385
    .line 386
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    .line 387
    .line 388
    .line 389
    move-result v13

    .line 390
    const/16 v14, 0x10

    .line 391
    .line 392
    const/16 v15, 0x13

    .line 393
    .line 394
    const/16 v2, 0xa

    .line 395
    .line 396
    if-lez v6, :cond_f

    .line 397
    .line 398
    const-string v13, "0000-00-00 00:00:00.000000000"

    .line 399
    .line 400
    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    .line 401
    .line 402
    .line 403
    move-result-object v13

    .line 404
    const/16 v3, 0x1d

    .line 405
    .line 406
    invoke-static {v6, v3, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 407
    .line 408
    .line 409
    invoke-static {v12, v15, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 410
    .line 411
    .line 412
    invoke-static {v10, v14, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 413
    .line 414
    .line 415
    invoke-static {v9, v11, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 416
    .line 417
    .line 418
    invoke-static {v8, v2, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 419
    .line 420
    .line 421
    const/4 v2, 0x7

    .line 422
    invoke-static {v7, v2, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 423
    .line 424
    .line 425
    const/4 v2, 0x4

    .line 426
    invoke-static {v5, v2, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 427
    .line 428
    .line 429
    goto :goto_4

    .line 430
    :cond_f
    if-eqz v13, :cond_10

    .line 431
    .line 432
    const-string v3, "0000-00-00T00:00:00.000"

    .line 433
    .line 434
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    const/16 v2, 0x17

    .line 439
    .line 440
    invoke-static {v13, v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 441
    .line 442
    .line 443
    invoke-static {v12, v15, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 444
    .line 445
    .line 446
    invoke-static {v10, v14, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 447
    .line 448
    .line 449
    invoke-static {v9, v11, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 450
    .line 451
    .line 452
    const/16 v2, 0xa

    .line 453
    .line 454
    invoke-static {v8, v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 455
    .line 456
    .line 457
    const/4 v13, 0x7

    .line 458
    invoke-static {v7, v13, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 459
    .line 460
    .line 461
    const/4 v2, 0x4

    .line 462
    invoke-static {v5, v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 463
    .line 464
    .line 465
    move-object v13, v3

    .line 466
    goto :goto_4

    .line 467
    :cond_10
    const/4 v3, 0x4

    .line 468
    const/4 v13, 0x7

    .line 469
    if-nez v12, :cond_11

    .line 470
    .line 471
    if-nez v10, :cond_11

    .line 472
    .line 473
    if-nez v9, :cond_11

    .line 474
    .line 475
    const-string v9, "0000-00-00"

    .line 476
    .line 477
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    .line 478
    .line 479
    .line 480
    move-result-object v9

    .line 481
    invoke-static {v8, v2, v9}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 482
    .line 483
    .line 484
    invoke-static {v7, v13, v9}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 485
    .line 486
    .line 487
    invoke-static {v5, v3, v9}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 488
    .line 489
    .line 490
    move-object v13, v9

    .line 491
    goto :goto_4

    .line 492
    :cond_11
    const-string v2, "0000-00-00T00:00:00"

    .line 493
    .line 494
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 495
    .line 496
    .line 497
    move-result-object v13

    .line 498
    invoke-static {v12, v15, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 499
    .line 500
    .line 501
    invoke-static {v10, v14, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 502
    .line 503
    .line 504
    invoke-static {v9, v11, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 505
    .line 506
    .line 507
    const/16 v2, 0xa

    .line 508
    .line 509
    invoke-static {v8, v2, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 510
    .line 511
    .line 512
    const/4 v2, 0x7

    .line 513
    invoke-static {v7, v2, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 514
    .line 515
    .line 516
    const/4 v2, 0x4

    .line 517
    invoke-static {v5, v2, v13}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 518
    .line 519
    .line 520
    :goto_4
    const/16 v2, 0x9

    .line 521
    .line 522
    const/16 v3, 0x30

    .line 523
    .line 524
    if-lez v6, :cond_14

    .line 525
    .line 526
    const/4 v0, 0x0

    .line 527
    :goto_5
    if-ge v0, v2, :cond_13

    .line 528
    .line 529
    array-length v5, v13

    .line 530
    sub-int/2addr v5, v0

    .line 531
    const/4 v6, 0x1

    .line 532
    sub-int/2addr v5, v6

    .line 533
    aget-char v5, v13, v5

    .line 534
    .line 535
    if-eq v5, v3, :cond_12

    .line 536
    .line 537
    goto :goto_6

    .line 538
    :cond_12
    add-int/2addr v0, v6

    .line 539
    goto :goto_5

    .line 540
    :cond_13
    :goto_6
    array-length v2, v13

    .line 541
    sub-int/2addr v2, v0

    .line 542
    const/4 v0, 0x0

    .line 543
    invoke-virtual {v4, v13, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    :cond_14
    invoke-virtual {v4, v13}, Ljava/io/Writer;->write([C)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 558
    .line 559
    .line 560
    move-result-wide v6

    .line 561
    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    int-to-float v0, v0

    .line 566
    const v5, 0x4a5bba00    # 3600000.0f

    .line 567
    .line 568
    .line 569
    div-float/2addr v0, v5

    .line 570
    float-to-int v5, v0

    .line 571
    int-to-double v6, v5

    .line 572
    const-wide/16 v8, 0x0

    .line 573
    .line 574
    cmpl-double v10, v6, v8

    .line 575
    .line 576
    if-nez v10, :cond_15

    .line 577
    .line 578
    const/16 v0, 0x5a

    .line 579
    .line 580
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 581
    .line 582
    .line 583
    goto :goto_8

    .line 584
    :cond_15
    const/16 v6, 0x2b

    .line 585
    .line 586
    if-le v5, v2, :cond_16

    .line 587
    .line 588
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 592
    .line 593
    .line 594
    goto :goto_7

    .line 595
    :cond_16
    if-lez v5, :cond_17

    .line 596
    .line 597
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 604
    .line 605
    .line 606
    goto :goto_7

    .line 607
    :cond_17
    const/16 v2, -0x9

    .line 608
    .line 609
    const/16 v6, 0x2d

    .line 610
    .line 611
    if-ge v5, v2, :cond_18

    .line 612
    .line 613
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 614
    .line 615
    .line 616
    neg-int v2, v5

    .line 617
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 618
    .line 619
    .line 620
    goto :goto_7

    .line 621
    :cond_18
    if-gez v5, :cond_19

    .line 622
    .line 623
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 627
    .line 628
    .line 629
    neg-int v2, v5

    .line 630
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 631
    .line 632
    .line 633
    :cond_19
    :goto_7
    const/16 v2, 0x3a

    .line 634
    .line 635
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 636
    .line 637
    .line 638
    int-to-float v2, v5

    .line 639
    sub-float/2addr v0, v2

    .line 640
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    const/high16 v2, 0x42700000    # 60.0f

    .line 645
    .line 646
    mul-float v0, v0, v2

    .line 647
    .line 648
    float-to-int v0, v0

    .line 649
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    const/4 v2, 0x1

    .line 654
    new-array v2, v2, [Ljava/lang/Object;

    .line 655
    .line 656
    const/4 v3, 0x0

    .line 657
    aput-object v0, v2, v3

    .line 658
    .line 659
    const-string v0, "%02d"

    .line 660
    .line 661
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 666
    .line 667
    .line 668
    :goto_8
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 669
    .line 670
    .line 671
    goto :goto_9

    .line 672
    :cond_1a
    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 673
    .line 674
    .line 675
    :goto_9
    return-void
.end method
