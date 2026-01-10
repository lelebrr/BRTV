.class public abstract Lcom/alibaba/fastjson/parser/JSONLexerBase;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;
.implements Ljava/io/Closeable;


# static fields
.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field private static final SBUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field protected static final digits:[I

.field protected static final typeFieldName:[C


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected locale:Ljava/util/Locale;

.field public matchStat:I

.field protected nanos:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "\""

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "\":\""

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    .line 34
    .line 35
    const/16 v0, 0x67

    .line 36
    .line 37
    new-array v0, v0, [I

    .line 38
    .line 39
    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    .line 40
    .line 41
    const/16 v0, 0x30

    .line 42
    .line 43
    :goto_0
    const/16 v1, 0x39

    .line 44
    .line 45
    if-gt v0, v1, :cond_0

    .line 46
    .line 47
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    .line 48
    .line 49
    add-int/lit8 v2, v0, -0x30

    .line 50
    .line 51
    aput v2, v1, v0

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/16 v0, 0x61

    .line 57
    .line 58
    :goto_1
    const/16 v1, 0x66

    .line 59
    .line 60
    if-gt v0, v1, :cond_1

    .line 61
    .line 62
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    .line 63
    .line 64
    add-int/lit8 v2, v0, -0x57

    .line 65
    .line 66
    aput v2, v1, v0

    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/16 v0, 0x41

    .line 72
    .line 73
    :goto_2
    const/16 v1, 0x46

    .line 74
    .line 75
    if-gt v0, v1, :cond_2

    .line 76
    .line 77
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    .line 78
    .line 79
    add-int/lit8 v2, v0, -0x37

    .line 80
    .line 81
    aput v2, v1, v0

    .line 82
    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 6
    .line 7
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 10
    .line 11
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 17
    .line 18
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 19
    .line 20
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nanos:I

    .line 21
    .line 22
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 23
    .line 24
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 25
    .line 26
    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 27
    .line 28
    and-int/2addr p1, v0

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, [C

    .line 42
    .line 43
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    const/16 p1, 0x200

    .line 48
    .line 49
    new-array p1, p1, [C

    .line 50
    .line 51
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public static isWhitespace(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-gt p0, v0, :cond_1

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0xd

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x9

    .line 16
    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0xc

    .line 20
    .line 21
    if-eq p0, v0, :cond_0

    .line 22
    .line 23
    const/16 v0, 0x8

    .line 24
    .line 25
    if-ne p0, v0, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method public static readString([CI)Ljava/lang/String;
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x1

    .line 8
    new-array v6, v0, [C

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    :goto_0
    if-ge v8, v0, :cond_9

    .line 14
    .line 15
    aget-char v10, p0, v8

    .line 16
    .line 17
    const/16 v11, 0x5c

    .line 18
    .line 19
    if-eq v10, v11, :cond_0

    .line 20
    .line 21
    add-int/lit8 v11, v9, 0x1

    .line 22
    .line 23
    aput-char v10, v6, v9

    .line 24
    .line 25
    move v9, v11

    .line 26
    :goto_1
    const/4 v12, 0x5

    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v10, v8, 0x1

    .line 30
    .line 31
    aget-char v12, p0, v10

    .line 32
    .line 33
    const/16 v13, 0x22

    .line 34
    .line 35
    if-eq v12, v13, :cond_8

    .line 36
    .line 37
    const/16 v13, 0x27

    .line 38
    .line 39
    if-eq v12, v13, :cond_7

    .line 40
    .line 41
    const/16 v13, 0x46

    .line 42
    .line 43
    if-eq v12, v13, :cond_4

    .line 44
    .line 45
    if-eq v12, v11, :cond_6

    .line 46
    .line 47
    const/16 v11, 0x62

    .line 48
    .line 49
    if-eq v12, v11, :cond_5

    .line 50
    .line 51
    const/16 v11, 0x66

    .line 52
    .line 53
    if-eq v12, v11, :cond_4

    .line 54
    .line 55
    const/16 v11, 0x6e

    .line 56
    .line 57
    if-eq v12, v11, :cond_3

    .line 58
    .line 59
    const/16 v11, 0x72

    .line 60
    .line 61
    if-eq v12, v11, :cond_2

    .line 62
    .line 63
    const/16 v11, 0x78

    .line 64
    .line 65
    const/16 v13, 0x10

    .line 66
    .line 67
    if-eq v12, v11, :cond_1

    .line 68
    .line 69
    packed-switch v12, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    packed-switch v12, :pswitch_data_1

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 76
    .line 77
    const-string v1, "unclosed.str.lit"

    .line 78
    .line 79
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :pswitch_0
    add-int/lit8 v8, v9, 0x1

    .line 84
    .line 85
    const/16 v11, 0xb

    .line 86
    .line 87
    aput-char v11, v6, v9

    .line 88
    .line 89
    move v9, v8

    .line 90
    :goto_2
    move v8, v10

    .line 91
    goto :goto_1

    .line 92
    :pswitch_1
    add-int/lit8 v10, v9, 0x1

    .line 93
    .line 94
    new-instance v11, Ljava/lang/String;

    .line 95
    .line 96
    add-int/lit8 v12, v8, 0x2

    .line 97
    .line 98
    aget-char v12, p0, v12

    .line 99
    .line 100
    add-int/lit8 v14, v8, 0x3

    .line 101
    .line 102
    aget-char v14, p0, v14

    .line 103
    .line 104
    add-int/lit8 v15, v8, 0x4

    .line 105
    .line 106
    aget-char v15, p0, v15

    .line 107
    .line 108
    add-int/2addr v8, v1

    .line 109
    aget-char v16, p0, v8

    .line 110
    .line 111
    new-array v1, v2, [C

    .line 112
    .line 113
    aput-char v12, v1, v7

    .line 114
    .line 115
    aput-char v14, v1, v5

    .line 116
    .line 117
    aput-char v15, v1, v4

    .line 118
    .line 119
    aput-char v16, v1, v3

    .line 120
    .line 121
    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([C)V

    .line 122
    .line 123
    .line 124
    invoke-static {v11, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    int-to-char v1, v1

    .line 129
    aput-char v1, v6, v9

    .line 130
    .line 131
    move v9, v10

    .line 132
    goto :goto_1

    .line 133
    :pswitch_2
    add-int/lit8 v1, v9, 0x1

    .line 134
    .line 135
    const/16 v8, 0x9

    .line 136
    .line 137
    aput-char v8, v6, v9

    .line 138
    .line 139
    :goto_3
    move v9, v1

    .line 140
    goto :goto_2

    .line 141
    :pswitch_3
    add-int/lit8 v1, v9, 0x1

    .line 142
    .line 143
    const/4 v8, 0x7

    .line 144
    aput-char v8, v6, v9

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :pswitch_4
    add-int/lit8 v1, v9, 0x1

    .line 148
    .line 149
    const/4 v8, 0x6

    .line 150
    aput-char v8, v6, v9

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :pswitch_5
    add-int/lit8 v1, v9, 0x1

    .line 154
    .line 155
    const/4 v12, 0x5

    .line 156
    aput-char v12, v6, v9

    .line 157
    .line 158
    :goto_4
    move v9, v1

    .line 159
    move v8, v10

    .line 160
    goto/16 :goto_6

    .line 161
    .line 162
    :pswitch_6
    const/4 v12, 0x5

    .line 163
    add-int/lit8 v1, v9, 0x1

    .line 164
    .line 165
    aput-char v2, v6, v9

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :pswitch_7
    const/4 v12, 0x5

    .line 169
    add-int/lit8 v1, v9, 0x1

    .line 170
    .line 171
    aput-char v3, v6, v9

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :pswitch_8
    const/4 v12, 0x5

    .line 175
    add-int/lit8 v1, v9, 0x1

    .line 176
    .line 177
    aput-char v4, v6, v9

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :pswitch_9
    const/4 v12, 0x5

    .line 181
    add-int/lit8 v1, v9, 0x1

    .line 182
    .line 183
    aput-char v5, v6, v9

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :pswitch_a
    const/4 v12, 0x5

    .line 187
    add-int/lit8 v1, v9, 0x1

    .line 188
    .line 189
    aput-char v7, v6, v9

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :pswitch_b
    const/4 v12, 0x5

    .line 193
    add-int/lit8 v1, v9, 0x1

    .line 194
    .line 195
    const/16 v8, 0x2f

    .line 196
    .line 197
    aput-char v8, v6, v9

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_1
    const/4 v12, 0x5

    .line 201
    add-int/lit8 v1, v9, 0x1

    .line 202
    .line 203
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    .line 204
    .line 205
    add-int/lit8 v11, v8, 0x2

    .line 206
    .line 207
    aget-char v11, p0, v11

    .line 208
    .line 209
    aget v11, v10, v11

    .line 210
    .line 211
    mul-int/lit8 v11, v11, 0x10

    .line 212
    .line 213
    add-int/2addr v8, v3

    .line 214
    aget-char v13, p0, v8

    .line 215
    .line 216
    aget v10, v10, v13

    .line 217
    .line 218
    add-int/2addr v11, v10

    .line 219
    int-to-char v10, v11

    .line 220
    aput-char v10, v6, v9

    .line 221
    .line 222
    move v9, v1

    .line 223
    goto :goto_6

    .line 224
    :cond_2
    const/4 v12, 0x5

    .line 225
    add-int/lit8 v1, v9, 0x1

    .line 226
    .line 227
    const/16 v8, 0xd

    .line 228
    .line 229
    aput-char v8, v6, v9

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_3
    const/4 v12, 0x5

    .line 233
    add-int/lit8 v1, v9, 0x1

    .line 234
    .line 235
    const/16 v8, 0xa

    .line 236
    .line 237
    aput-char v8, v6, v9

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_4
    const/4 v12, 0x5

    .line 241
    goto :goto_5

    .line 242
    :cond_5
    const/4 v12, 0x5

    .line 243
    add-int/lit8 v1, v9, 0x1

    .line 244
    .line 245
    const/16 v8, 0x8

    .line 246
    .line 247
    aput-char v8, v6, v9

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_6
    const/4 v12, 0x5

    .line 251
    add-int/lit8 v1, v9, 0x1

    .line 252
    .line 253
    aput-char v11, v6, v9

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :goto_5
    add-int/lit8 v1, v9, 0x1

    .line 257
    .line 258
    const/16 v8, 0xc

    .line 259
    .line 260
    aput-char v8, v6, v9

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_7
    const/4 v12, 0x5

    .line 264
    add-int/lit8 v1, v9, 0x1

    .line 265
    .line 266
    aput-char v13, v6, v9

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_8
    const/4 v12, 0x5

    .line 270
    add-int/lit8 v1, v9, 0x1

    .line 271
    .line 272
    aput-char v13, v6, v9

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :goto_6
    add-int/2addr v8, v5

    .line 276
    const/4 v1, 0x5

    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_9
    new-instance v0, Ljava/lang/String;

    .line 280
    .line 281
    invoke-direct {v0, v6, v7, v9}, Ljava/lang/String;-><init>([CII)V

    .line 282
    .line 283
    .line 284
    return-object v0

    .line 285
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scanStringSingleQuote()V
    .locals 15

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 6
    .line 7
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const/16 v6, 0x27

    .line 17
    .line 18
    if-ne v5, v6, :cond_0

    .line 19
    .line 20
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string v7, "unclosed single-quote string"

    .line 27
    .line 28
    const/16 v8, 0x1a

    .line 29
    .line 30
    if-ne v5, v8, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 43
    .line 44
    invoke-direct {v0, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_2
    const/16 v8, 0x5c

    .line 49
    .line 50
    if-ne v5, v8, :cond_16

    .line 51
    .line 52
    iget-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 53
    .line 54
    if-nez v5, :cond_4

    .line 55
    .line 56
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 57
    .line 58
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 59
    .line 60
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 61
    .line 62
    array-length v10, v9

    .line 63
    if-le v5, v10, :cond_3

    .line 64
    .line 65
    mul-int/lit8 v5, v5, 0x2

    .line 66
    .line 67
    new-array v5, v5, [C

    .line 68
    .line 69
    array-length v10, v9

    .line 70
    invoke-static {v9, v4, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    iput-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 74
    .line 75
    :cond_3
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 76
    .line 77
    add-int/2addr v5, v3

    .line 78
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 79
    .line 80
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 81
    .line 82
    invoke-virtual {p0, v5, v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 83
    .line 84
    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    const/16 v9, 0x22

    .line 90
    .line 91
    if-eq v5, v9, :cond_15

    .line 92
    .line 93
    if-eq v5, v6, :cond_14

    .line 94
    .line 95
    const/16 v6, 0x46

    .line 96
    .line 97
    if-eq v5, v6, :cond_13

    .line 98
    .line 99
    if-eq v5, v8, :cond_12

    .line 100
    .line 101
    const/16 v8, 0x62

    .line 102
    .line 103
    if-eq v5, v8, :cond_11

    .line 104
    .line 105
    const/16 v8, 0x66

    .line 106
    .line 107
    if-eq v5, v8, :cond_13

    .line 108
    .line 109
    const/16 v9, 0x6e

    .line 110
    .line 111
    if-eq v5, v9, :cond_10

    .line 112
    .line 113
    const/16 v9, 0x72

    .line 114
    .line 115
    if-eq v5, v9, :cond_f

    .line 116
    .line 117
    const/16 v9, 0x78

    .line 118
    .line 119
    const/16 v10, 0x10

    .line 120
    .line 121
    if-eq v5, v9, :cond_5

    .line 122
    .line 123
    packed-switch v5, :pswitch_data_0

    .line 124
    .line 125
    .line 126
    packed-switch v5, :pswitch_data_1

    .line 127
    .line 128
    .line 129
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 130
    .line 131
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 132
    .line 133
    invoke-direct {v0, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :pswitch_0
    const/16 v5, 0xb

    .line 138
    .line 139
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :pswitch_1
    new-instance v5, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    new-array v11, v1, [C

    .line 163
    .line 164
    aput-char v6, v11, v4

    .line 165
    .line 166
    aput-char v7, v11, v3

    .line 167
    .line 168
    aput-char v8, v11, v2

    .line 169
    .line 170
    aput-char v9, v11, v0

    .line 171
    .line 172
    invoke-direct {v5, v11}, Ljava/lang/String;-><init>([C)V

    .line 173
    .line 174
    .line 175
    invoke-static {v5, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    int-to-char v5, v5

    .line 180
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :pswitch_2
    const/16 v5, 0x9

    .line 186
    .line 187
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :pswitch_3
    const/4 v5, 0x7

    .line 193
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :pswitch_4
    const/4 v5, 0x6

    .line 199
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :pswitch_5
    const/4 v5, 0x5

    .line 205
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :pswitch_6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_9
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :pswitch_a
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :pswitch_b
    const/16 v5, 0x2f

    .line 236
    .line 237
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    const/16 v9, 0x41

    .line 251
    .line 252
    const/16 v11, 0x61

    .line 253
    .line 254
    const/16 v12, 0x39

    .line 255
    .line 256
    const/16 v13, 0x30

    .line 257
    .line 258
    if-lt v5, v13, :cond_6

    .line 259
    .line 260
    if-le v5, v12, :cond_8

    .line 261
    .line 262
    :cond_6
    if-lt v5, v11, :cond_7

    .line 263
    .line 264
    if-le v5, v8, :cond_8

    .line 265
    .line 266
    :cond_7
    if-lt v5, v9, :cond_9

    .line 267
    .line 268
    if-gt v5, v6, :cond_9

    .line 269
    .line 270
    :cond_8
    const/4 v14, 0x1

    .line 271
    goto :goto_1

    .line 272
    :cond_9
    const/4 v14, 0x0

    .line 273
    :goto_1
    if-lt v7, v13, :cond_a

    .line 274
    .line 275
    if-le v7, v12, :cond_c

    .line 276
    .line 277
    :cond_a
    if-lt v7, v11, :cond_b

    .line 278
    .line 279
    if-le v7, v8, :cond_c

    .line 280
    .line 281
    :cond_b
    if-lt v7, v9, :cond_d

    .line 282
    .line 283
    if-gt v7, v6, :cond_d

    .line 284
    .line 285
    :cond_c
    const/4 v6, 0x1

    .line 286
    goto :goto_2

    .line 287
    :cond_d
    const/4 v6, 0x0

    .line 288
    :goto_2
    if-eqz v14, :cond_e

    .line 289
    .line 290
    if-eqz v6, :cond_e

    .line 291
    .line 292
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    .line 293
    .line 294
    aget v5, v6, v5

    .line 295
    .line 296
    mul-int/lit8 v5, v5, 0x10

    .line 297
    .line 298
    aget v6, v6, v7

    .line 299
    .line 300
    add-int/2addr v5, v6

    .line 301
    int-to-char v5, v5

    .line 302
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 308
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v2, "invalid escape character \\x"

    .line 312
    .line 313
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v0

    .line 330
    :cond_f
    const/16 v5, 0xd

    .line 331
    .line 332
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_10
    const/16 v5, 0xa

    .line 338
    .line 339
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_0

    .line 343
    .line 344
    :cond_11
    const/16 v5, 0x8

    .line 345
    .line 346
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :cond_12
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :cond_13
    const/16 v5, 0xc

    .line 357
    .line 358
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :cond_14
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :cond_15
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :cond_16
    iget-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 374
    .line 375
    if-nez v6, :cond_17

    .line 376
    .line 377
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 378
    .line 379
    add-int/2addr v5, v3

    .line 380
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 381
    .line 382
    goto/16 :goto_0

    .line 383
    .line 384
    :cond_17
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 385
    .line 386
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 387
    .line 388
    array-length v8, v7

    .line 389
    if-ne v6, v8, :cond_18

    .line 390
    .line 391
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :cond_18
    add-int/lit8 v8, v6, 0x1

    .line 397
    .line 398
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 399
    .line 400
    aput-char v5, v7, v6

    .line 401
    .line 402
    goto/16 :goto_0

    .line 403
    .line 404
    nop

    .line 405
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method public abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method public abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/16 v2, 0x2000

    .line 5
    .line 6
    if-gt v1, v2, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 15
    .line 16
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 8
    .line 9
    sget-object p2, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 10
    .line 11
    iget p2, p2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 12
    .line 13
    and-int/2addr p1, p2

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 6
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public doubleValue()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public floatValue()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    cmpl-float v2, v1, v2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 15
    .line 16
    cmpl-float v2, v1, v2

    .line 17
    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/16 v3, 0x30

    .line 26
    .line 27
    if-le v2, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0x39

    .line 30
    .line 31
    if-le v2, v3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 35
    .line 36
    const-string v2, "float overflow : "

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_2
    :goto_0
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2
    .line 3
    return v0
.end method

.method public getFeatures()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 2
    .line 3
    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public info()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public final intValue()I
    .locals 13

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 10
    .line 11
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x2d

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v3, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    const/high16 v3, -0x80000000

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const v3, -0x7fffffff

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_0
    if-ge v0, v1, :cond_2

    .line 34
    .line 35
    add-int/lit8 v2, v0, 0x1

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/lit8 v0, v0, -0x30

    .line 42
    .line 43
    neg-int v0, v0

    .line 44
    move v12, v2

    .line 45
    move v2, v0

    .line 46
    move v0, v12

    .line 47
    :cond_2
    :goto_1
    if-ge v0, v1, :cond_7

    .line 48
    .line 49
    add-int/lit8 v6, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v7, 0x4c

    .line 56
    .line 57
    if-eq v0, v7, :cond_6

    .line 58
    .line 59
    const/16 v7, 0x53

    .line 60
    .line 61
    if-eq v0, v7, :cond_6

    .line 62
    .line 63
    const/16 v7, 0x42

    .line 64
    .line 65
    if-ne v0, v7, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    add-int/lit8 v0, v0, -0x30

    .line 69
    .line 70
    int-to-long v7, v2

    .line 71
    const-wide/32 v9, -0xccccccc

    .line 72
    .line 73
    .line 74
    cmp-long v11, v7, v9

    .line 75
    .line 76
    if-ltz v11, :cond_5

    .line 77
    .line 78
    mul-int/lit8 v2, v2, 0xa

    .line 79
    .line 80
    add-int v7, v3, v0

    .line 81
    .line 82
    if-lt v2, v7, :cond_4

    .line 83
    .line 84
    sub-int/2addr v2, v0

    .line 85
    move v0, v6

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_6
    :goto_2
    move v0, v6

    .line 108
    :cond_7
    if-eqz v4, :cond_9

    .line 109
    .line 110
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 111
    .line 112
    add-int/2addr v1, v5

    .line 113
    if-le v0, v1, :cond_8

    .line 114
    .line 115
    return v2

    .line 116
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_9
    neg-int v0, v2

    .line 127
    return v0
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 10
    .line 11
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 12
    .line 13
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 14
    .line 15
    add-int/2addr v2, v1

    .line 16
    add-int/lit8 v4, v2, -0x1

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/16 v5, 0x53

    .line 23
    .line 24
    const/16 v6, 0x4c

    .line 25
    .line 26
    const/16 v7, 0x42

    .line 27
    .line 28
    if-eq v4, v7, :cond_3

    .line 29
    .line 30
    if-eq v4, v6, :cond_2

    .line 31
    .line 32
    if-eq v4, v5, :cond_1

    .line 33
    .line 34
    const/16 v4, 0x20

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    const/16 v4, 0x53

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 43
    .line 44
    const/16 v4, 0x4c

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 48
    .line 49
    const/16 v4, 0x42

    .line 50
    .line 51
    :goto_0
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 52
    .line 53
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const/16 v9, 0x2d

    .line 58
    .line 59
    const/4 v10, 0x1

    .line 60
    if-ne v8, v9, :cond_4

    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    const-wide/high16 v8, -0x8000000000000000L

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :goto_1
    if-ge v1, v2, :cond_5

    .line 74
    .line 75
    add-int/lit8 v11, v1, 0x1

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/lit8 v1, v1, -0x30

    .line 82
    .line 83
    neg-int v1, v1

    .line 84
    int-to-long v12, v1

    .line 85
    move v1, v11

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    const-wide/16 v12, 0x0

    .line 88
    .line 89
    :goto_2
    if-ge v1, v2, :cond_8

    .line 90
    .line 91
    add-int/lit8 v11, v1, 0x1

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    add-int/lit8 v1, v1, -0x30

    .line 98
    .line 99
    const/16 v14, 0xa

    .line 100
    .line 101
    const-wide v15, -0xcccccccccccccccL

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    cmp-long v17, v12, v15

    .line 107
    .line 108
    if-gez v17, :cond_6

    .line 109
    .line 110
    new-instance v1, Ljava/math/BigInteger;

    .line 111
    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-direct {v1, v2, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    return-object v1

    .line 120
    :cond_6
    const-wide/16 v15, 0xa

    .line 121
    .line 122
    mul-long v12, v12, v15

    .line 123
    .line 124
    int-to-long v5, v1

    .line 125
    add-long v17, v8, v5

    .line 126
    .line 127
    cmp-long v1, v12, v17

    .line 128
    .line 129
    if-gez v1, :cond_7

    .line 130
    .line 131
    new-instance v1, Ljava/math/BigInteger;

    .line 132
    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-direct {v1, v2, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_7
    sub-long/2addr v12, v5

    .line 142
    move v1, v11

    .line 143
    const/16 v5, 0x53

    .line 144
    .line 145
    const/16 v6, 0x4c

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_8
    if-eqz v3, :cond_d

    .line 149
    .line 150
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 151
    .line 152
    add-int/2addr v2, v10

    .line 153
    if-le v1, v2, :cond_c

    .line 154
    .line 155
    const-wide/32 v1, -0x80000000

    .line 156
    .line 157
    .line 158
    cmp-long v3, v12, v1

    .line 159
    .line 160
    if-ltz v3, :cond_b

    .line 161
    .line 162
    const/16 v1, 0x4c

    .line 163
    .line 164
    if-eq v4, v1, :cond_b

    .line 165
    .line 166
    const/16 v1, 0x53

    .line 167
    .line 168
    if-ne v4, v1, :cond_9

    .line 169
    .line 170
    long-to-int v1, v12

    .line 171
    int-to-short v1, v1

    .line 172
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    return-object v1

    .line 177
    :cond_9
    if-ne v4, v7, :cond_a

    .line 178
    .line 179
    long-to-int v1, v12

    .line 180
    int-to-byte v1, v1

    .line 181
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    return-object v1

    .line 186
    :cond_a
    long-to-int v1, v12

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    return-object v1

    .line 192
    :cond_b
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    return-object v1

    .line 197
    :cond_c
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 198
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v3, "illegal number format : "

    .line 202
    .line 203
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v1

    .line 221
    :cond_d
    neg-long v1, v12

    .line 222
    const-wide/32 v5, 0x7fffffff

    .line 223
    .line 224
    .line 225
    cmp-long v3, v1, v5

    .line 226
    .line 227
    if-gtz v3, :cond_10

    .line 228
    .line 229
    const/16 v3, 0x4c

    .line 230
    .line 231
    if-eq v4, v3, :cond_10

    .line 232
    .line 233
    const/16 v3, 0x53

    .line 234
    .line 235
    if-ne v4, v3, :cond_e

    .line 236
    .line 237
    long-to-int v2, v1

    .line 238
    int-to-short v1, v2

    .line 239
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    return-object v1

    .line 244
    :cond_e
    if-ne v4, v7, :cond_f

    .line 245
    .line 246
    long-to-int v2, v1

    .line 247
    int-to-byte v1, v2

    .line 248
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    return-object v1

    .line 253
    :cond_f
    long-to-int v2, v1

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    return-object v1

    .line 259
    :cond_10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    return-object v1
.end method

.method public isBlankInput()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/16 v3, 0x1a

    .line 8
    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x14

    .line 12
    .line 13
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(I)Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isEnabled(II)Z
    .locals 1

    .line 3
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 0

    .line 1
    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public final isRef()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    add-int/2addr v0, v3

    .line 12
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v4, 0x24

    .line 17
    .line 18
    if-ne v0, v4, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/16 v4, 0x72

    .line 29
    .line 30
    if-ne v0, v4, :cond_1

    .line 31
    .line 32
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x3

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v4, 0x65

    .line 41
    .line 42
    if-ne v0, v4, :cond_1

    .line 43
    .line 44
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 45
    .line 46
    add-int/2addr v0, v2

    .line 47
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/16 v2, 0x66

    .line 52
    .line 53
    if-ne v0, v2, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    :cond_1
    return v1
.end method

.method public varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3
    .line 4
    return-void
.end method

.method public final longValue()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 10
    .line 11
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x2d

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v3, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    const-wide/high16 v2, -0x8000000000000000L

    .line 26
    .line 27
    move-wide v3, v2

    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :goto_0
    if-ge v0, v1, :cond_2

    .line 36
    .line 37
    add-int/lit8 v6, v0, 0x1

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/lit8 v0, v0, -0x30

    .line 44
    .line 45
    neg-int v0, v0

    .line 46
    int-to-long v7, v0

    .line 47
    :goto_1
    move v0, v6

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const-wide/16 v7, 0x0

    .line 50
    .line 51
    :goto_2
    if-ge v0, v1, :cond_7

    .line 52
    .line 53
    add-int/lit8 v6, v0, 0x1

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v9, 0x4c

    .line 60
    .line 61
    if-eq v0, v9, :cond_6

    .line 62
    .line 63
    const/16 v9, 0x53

    .line 64
    .line 65
    if-eq v0, v9, :cond_6

    .line 66
    .line 67
    const/16 v9, 0x42

    .line 68
    .line 69
    if-ne v0, v9, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    add-int/lit8 v0, v0, -0x30

    .line 73
    .line 74
    const-wide v9, -0xcccccccccccccccL

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    cmp-long v11, v7, v9

    .line 80
    .line 81
    if-ltz v11, :cond_5

    .line 82
    .line 83
    const-wide/16 v9, 0xa

    .line 84
    .line 85
    mul-long v7, v7, v9

    .line 86
    .line 87
    int-to-long v9, v0

    .line 88
    add-long v11, v3, v9

    .line 89
    .line 90
    cmp-long v0, v7, v11

    .line 91
    .line 92
    if-ltz v0, :cond_4

    .line 93
    .line 94
    sub-long/2addr v7, v9

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_6
    :goto_3
    move v0, v6

    .line 117
    :cond_7
    if-eqz v2, :cond_9

    .line 118
    .line 119
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 120
    .line 121
    add-int/2addr v1, v5

    .line 122
    if-le v0, v1, :cond_8

    .line 123
    .line 124
    return-wide v7

    .line 125
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_9
    neg-long v0, v7

    .line 136
    return-wide v0
.end method

.method public matchField(J)I
    .locals 0

    .line 15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final matchField([C)Z
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x7b

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xc

    .line 7
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    :cond_2
    const/16 v0, 0x5b

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xe

    .line 9
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    :cond_3
    const/16 v2, 0x53

    if-ne p1, v2, :cond_4

    .line 10
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_4

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x74

    if-ne p1, v2, :cond_4

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_4

    .line 11
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 12
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 p1, 0x15

    .line 13
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    :goto_1
    return v1
.end method

.method public matchField2([C)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final matchStat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    .line 3
    return v0
.end method

.method public newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const-class v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    const-class v0, Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    new-instance p1, Ljava/util/LinkedList;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    return-object p1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .locals 2

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 14
    .line 15
    const/16 v1, 0x5f

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0x24

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 35
    .line 36
    .line 37
    :goto_2
    return-void
.end method

.method public final nextToken()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0

    :cond_0
    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_1
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x10

    .line 7
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    :cond_2
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    const/16 v2, 0x39

    if-gt v1, v2, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    :cond_3
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_5

    .line 12
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 13
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    goto :goto_1

    .line 14
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_6
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1f

    if-le v1, v2, :cond_8

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_7

    goto :goto_2

    .line 16
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "illegal.char"

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    :goto_1
    return-void

    .line 18
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 19
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xd

    .line 20
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 21
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xc

    .line 22
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 23
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanHex()V

    return-void

    .line 24
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    return-void

    .line 25
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    return-void

    .line 26
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    return-void

    .line 27
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xf

    .line 28
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 29
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xe

    .line 30
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 31
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    return-void

    .line 32
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x18

    .line 33
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 34
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x11

    .line 35
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 36
    :sswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x19

    .line 37
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 38
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    .line 40
    :sswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xb

    .line 41
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 42
    :sswitch_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xa

    .line 43
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 44
    :sswitch_f
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    return-void

    .line 46
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :sswitch_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_10
        0x9 -> :sswitch_10
        0xa -> :sswitch_10
        0xc -> :sswitch_10
        0xd -> :sswitch_10
        0x20 -> :sswitch_10
        0x27 -> :sswitch_f
        0x28 -> :sswitch_e
        0x29 -> :sswitch_d
        0x2b -> :sswitch_c
        0x2e -> :sswitch_b
        0x3a -> :sswitch_a
        0x3b -> :sswitch_9
        0x4e -> :sswitch_8
        0x53 -> :sswitch_8
        0x54 -> :sswitch_8
        0x5b -> :sswitch_7
        0x5d -> :sswitch_6
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_8
        0x78 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 10

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    :goto_0
    const/4 v1, 0x2

    const/16 v2, 0x39

    const/16 v3, 0x30

    const/16 v4, 0x22

    const/16 v5, 0xd

    const/16 v6, 0x7b

    const/16 v7, 0xe

    const/16 v8, 0x5b

    const/16 v9, 0xc

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_9

    if-eq p1, v9, :cond_7

    const/16 v1, 0x12

    if-eq p1, v1, :cond_6

    const/16 v1, 0x1a

    const/16 v2, 0x14

    if-eq p1, v2, :cond_5

    const/16 v3, 0xf

    const/16 v4, 0x5d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 49
    :pswitch_0
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_0

    const/16 p1, 0x10

    .line 50
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_0
    const/16 v7, 0x7d

    if-ne v6, v7, :cond_1

    .line 52
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_1
    if-ne v6, v4, :cond_2

    .line 54
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_2
    if-ne v6, v1, :cond_3

    .line 56
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    :cond_3
    const/16 v1, 0x6e

    if-ne v6, v1, :cond_11

    .line 57
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew(Z)V

    return-void

    .line 58
    :pswitch_1
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v6, v4, :cond_5

    .line 59
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 61
    :pswitch_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_4

    .line 62
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_4
    if-ne v1, v6, :cond_11

    .line 64
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 66
    :cond_5
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v3, v1, :cond_11

    .line 67
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 68
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    return-void

    .line 69
    :cond_7
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v6, :cond_8

    .line 70
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_8
    if-ne v1, v8, :cond_11

    .line 72
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 74
    :cond_9
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v4, :cond_a

    .line 75
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_a
    if-lt v1, v3, :cond_b

    if-gt v1, v2, :cond_b

    .line 77
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    :cond_b
    if-ne v1, v8, :cond_c

    .line 79
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_c
    if-ne v1, v6, :cond_11

    .line 81
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 83
    :cond_d
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_e

    if-gt v1, v2, :cond_e

    .line 84
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    :cond_e
    if-ne v1, v4, :cond_f

    .line 86
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_f
    if-ne v1, v8, :cond_10

    .line 88
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_10
    if-ne v1, v6, :cond_11

    .line 90
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 92
    :cond_11
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_13

    const/16 v2, 0xa

    if-eq v1, v2, :cond_13

    if-eq v1, v5, :cond_13

    const/16 v2, 0x9

    if-eq v1, v2, :cond_13

    if-eq v1, v9, :cond_13

    const/16 v2, 0x8

    if-ne v1, v2, :cond_12

    goto :goto_2

    .line 93
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    .line 94
    :cond_13
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3
    .line 4
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/16 v1, 0x20

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/16 v1, 0xd

    .line 24
    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/16 v1, 0x9

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0xc

    .line 32
    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "not match "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " - "

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, ", info : "

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 83
    .line 84
    .line 85
    goto :goto_0
.end method

.method public final nextTokenWithColon()V
    .locals 1

    const/16 v0, 0x3a

    .line 1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    return-void
.end method

.method public final nextTokenWithColon(I)V
    .locals 0

    const/16 p1, 0x3a

    .line 2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    return-void
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final pos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 2
    .line 3
    return v0
.end method

.method public final putChar(C)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-lt v0, v2, :cond_1

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    mul-int/lit8 v2, v2, 0x2

    .line 10
    .line 11
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    add-int/lit8 v2, v0, 0x1

    .line 14
    .line 15
    :cond_0
    new-array v0, v2, [C

    .line 16
    .line 17
    array-length v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 25
    .line 26
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 27
    .line 28
    add-int/lit8 v2, v1, 0x1

    .line 29
    .line 30
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 31
    .line 32
    aput-char p1, v0, v1

    .line 33
    .line 34
    return-void
.end method

.method public final resetStringPosition()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 3
    .line 4
    return-void
.end method

.method public scanBoolean(C)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x74

    .line 11
    .line 12
    const/4 v3, 0x5

    .line 13
    const/16 v4, 0x65

    .line 14
    .line 15
    const/4 v5, -0x1

    .line 16
    const/4 v6, 0x3

    .line 17
    const/4 v7, 0x2

    .line 18
    const/4 v8, 0x1

    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 22
    .line 23
    add-int/2addr v1, v8

    .line 24
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x72

    .line 29
    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 33
    .line 34
    add-int/2addr v1, v7

    .line 35
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v2, 0x75

    .line 40
    .line 41
    if-ne v1, v2, :cond_0

    .line 42
    .line 43
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 44
    .line 45
    add-int/2addr v1, v6

    .line 46
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-ne v1, v4, :cond_0

    .line 51
    .line 52
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x4

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 63
    .line 64
    return v0

    .line 65
    :cond_1
    const/16 v2, 0x66

    .line 66
    .line 67
    if-ne v1, v2, :cond_3

    .line 68
    .line 69
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 70
    .line 71
    add-int/2addr v1, v8

    .line 72
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/16 v2, 0x61

    .line 77
    .line 78
    if-ne v1, v2, :cond_2

    .line 79
    .line 80
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 81
    .line 82
    add-int/2addr v1, v7

    .line 83
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/16 v2, 0x6c

    .line 88
    .line 89
    if-ne v1, v2, :cond_2

    .line 90
    .line 91
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 92
    .line 93
    add-int/2addr v1, v6

    .line 94
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/16 v2, 0x73

    .line 99
    .line 100
    if-ne v1, v2, :cond_2

    .line 101
    .line 102
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x4

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-ne v1, v4, :cond_2

    .line 111
    .line 112
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 113
    .line 114
    add-int/2addr v1, v3

    .line 115
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/4 v3, 0x6

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 122
    .line 123
    return v0

    .line 124
    :cond_3
    const/16 v2, 0x31

    .line 125
    .line 126
    if-ne v1, v2, :cond_4

    .line 127
    .line 128
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 129
    .line 130
    add-int/2addr v0, v8

    .line 131
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    const/4 v0, 0x1

    .line 136
    :goto_0
    const/4 v3, 0x2

    .line 137
    goto :goto_1

    .line 138
    :cond_4
    const/16 v2, 0x30

    .line 139
    .line 140
    if-ne v1, v2, :cond_5

    .line 141
    .line 142
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 143
    .line 144
    add-int/2addr v1, v8

    .line 145
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    goto :goto_0

    .line 150
    :cond_5
    const/4 v3, 0x1

    .line 151
    :goto_1
    if-ne v1, p1, :cond_6

    .line 152
    .line 153
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 154
    .line 155
    add-int/2addr p1, v3

    .line 156
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 163
    .line 164
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 165
    .line 166
    return v0

    .line 167
    :cond_6
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 174
    .line 175
    add-int/lit8 v2, v3, 0x1

    .line 176
    .line 177
    add-int/2addr v1, v3

    .line 178
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    move v3, v2

    .line 183
    goto :goto_1

    .line 184
    :cond_7
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 185
    .line 186
    return v0
.end method

.method public scanDate(C)Ljava/util/Date;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 5
    .line 6
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x4

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, -0x1

    .line 16
    const/4 v7, 0x1

    .line 17
    const/16 v8, 0x22

    .line 18
    .line 19
    if-ne v2, v8, :cond_5

    .line 20
    .line 21
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 22
    .line 23
    add-int/2addr v2, v7

    .line 24
    invoke-virtual {v1, v8, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eq v2, v6, :cond_4

    .line 29
    .line 30
    iget v9, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 31
    .line 32
    add-int/2addr v9, v7

    .line 33
    sub-int v10, v2, v9

    .line 34
    .line 35
    invoke-virtual {v1, v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    const/16 v10, 0x5c

    .line 40
    .line 41
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    if-eq v11, v6, :cond_2

    .line 46
    .line 47
    :goto_0
    add-int/lit8 v9, v2, -0x1

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    :goto_1
    if-ltz v9, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    if-ne v12, v10, :cond_0

    .line 57
    .line 58
    add-int/lit8 v11, v11, 0x1

    .line 59
    .line 60
    add-int/lit8 v9, v9, -0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    rem-int/lit8 v11, v11, 0x2

    .line 64
    .line 65
    if-nez v11, :cond_1

    .line 66
    .line 67
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 68
    .line 69
    add-int/lit8 v9, v8, 0x1

    .line 70
    .line 71
    sub-int v9, v2, v9

    .line 72
    .line 73
    add-int/2addr v8, v7

    .line 74
    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-static {v7, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    invoke-virtual {v1, v8, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    :goto_2
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 91
    .line 92
    add-int/lit8 v8, v7, 0x1

    .line 93
    .line 94
    sub-int/2addr v2, v8

    .line 95
    add-int/lit8 v8, v2, 0x2

    .line 96
    .line 97
    add-int/2addr v2, v4

    .line 98
    add-int/2addr v7, v8

    .line 99
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    new-instance v8, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 104
    .line 105
    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :try_start_0
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 119
    .line 120
    .line 121
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_7

    .line 126
    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    :try_start_1
    iput v6, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .line 131
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 132
    .line 133
    .line 134
    return-object v5

    .line 135
    :goto_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 140
    .line 141
    const-string v2, "unclosed str"

    .line 142
    .line 143
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_5
    const/16 v8, 0x2d

    .line 148
    .line 149
    const/16 v9, 0x39

    .line 150
    .line 151
    const/4 v10, 0x2

    .line 152
    const/16 v11, 0x30

    .line 153
    .line 154
    if-eq v2, v8, :cond_8

    .line 155
    .line 156
    if-lt v2, v11, :cond_6

    .line 157
    .line 158
    if-gt v2, v9, :cond_6

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_6
    const/16 v0, 0x6e

    .line 162
    .line 163
    if-ne v2, v0, :cond_7

    .line 164
    .line 165
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 166
    .line 167
    add-int/2addr v0, v7

    .line 168
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    const/16 v2, 0x75

    .line 173
    .line 174
    if-ne v0, v2, :cond_7

    .line 175
    .line 176
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 177
    .line 178
    add-int/2addr v0, v10

    .line 179
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    const/16 v2, 0x6c

    .line 184
    .line 185
    if-ne v0, v2, :cond_7

    .line 186
    .line 187
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 188
    .line 189
    add-int/2addr v0, v4

    .line 190
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-ne v0, v2, :cond_7

    .line 195
    .line 196
    const/4 v2, 0x5

    .line 197
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 198
    .line 199
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 200
    .line 201
    add-int/2addr v0, v3

    .line 202
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    move-object v0, v5

    .line 207
    goto :goto_7

    .line 208
    :cond_7
    iput v6, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 209
    .line 210
    return-object v5

    .line 211
    :cond_8
    :goto_4
    if-ne v2, v8, :cond_9

    .line 212
    .line 213
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 214
    .line 215
    add-int/2addr v0, v7

    .line 216
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    const/4 v0, 0x1

    .line 221
    const/4 v7, 0x2

    .line 222
    :cond_9
    const-wide/16 v12, 0x0

    .line 223
    .line 224
    if-lt v2, v11, :cond_b

    .line 225
    .line 226
    if-gt v2, v9, :cond_b

    .line 227
    .line 228
    add-int/lit8 v2, v2, -0x30

    .line 229
    .line 230
    int-to-long v14, v2

    .line 231
    :goto_5
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 232
    .line 233
    add-int/lit8 v8, v7, 0x1

    .line 234
    .line 235
    add-int/2addr v2, v7

    .line 236
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-lt v2, v11, :cond_a

    .line 241
    .line 242
    if-gt v2, v9, :cond_a

    .line 243
    .line 244
    const-wide/16 v16, 0xa

    .line 245
    .line 246
    mul-long v14, v14, v16

    .line 247
    .line 248
    add-int/lit8 v2, v2, -0x30

    .line 249
    .line 250
    int-to-long v9, v2

    .line 251
    add-long/2addr v14, v9

    .line 252
    move v7, v8

    .line 253
    const/16 v9, 0x39

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_a
    move v7, v2

    .line 257
    move v2, v8

    .line 258
    goto :goto_6

    .line 259
    :cond_b
    move-wide v14, v12

    .line 260
    move/from16 v18, v7

    .line 261
    .line 262
    move v7, v2

    .line 263
    move/from16 v2, v18

    .line 264
    .line 265
    :goto_6
    cmp-long v8, v14, v12

    .line 266
    .line 267
    if-gez v8, :cond_c

    .line 268
    .line 269
    iput v6, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 270
    .line 271
    return-object v5

    .line 272
    :cond_c
    if-eqz v0, :cond_d

    .line 273
    .line 274
    neg-long v14, v14

    .line 275
    :cond_d
    new-instance v0, Ljava/util/Date;

    .line 276
    .line 277
    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 278
    .line 279
    .line 280
    :goto_7
    const/16 v8, 0x10

    .line 281
    .line 282
    const/16 v9, 0x2c

    .line 283
    .line 284
    if-ne v7, v9, :cond_e

    .line 285
    .line 286
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 287
    .line 288
    add-int/2addr v3, v2

    .line 289
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 290
    .line 291
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 296
    .line 297
    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 298
    .line 299
    iput v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 300
    .line 301
    return-object v0

    .line 302
    :cond_e
    const/16 v4, 0x5d

    .line 303
    .line 304
    if-ne v7, v4, :cond_13

    .line 305
    .line 306
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 307
    .line 308
    add-int/lit8 v10, v2, 0x1

    .line 309
    .line 310
    add-int/2addr v7, v2

    .line 311
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-ne v7, v9, :cond_f

    .line 316
    .line 317
    iput v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 318
    .line 319
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 320
    .line 321
    add-int/2addr v2, v10

    .line 322
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_f
    if-ne v7, v4, :cond_10

    .line 332
    .line 333
    const/16 v2, 0xf

    .line 334
    .line 335
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 336
    .line 337
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 338
    .line 339
    add-int/2addr v2, v10

    .line 340
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 341
    .line 342
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_10
    const/16 v4, 0x7d

    .line 350
    .line 351
    if-ne v7, v4, :cond_11

    .line 352
    .line 353
    const/16 v2, 0xd

    .line 354
    .line 355
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 356
    .line 357
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 358
    .line 359
    add-int/2addr v2, v10

    .line 360
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 361
    .line 362
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_11
    const/16 v4, 0x1a

    .line 370
    .line 371
    if-ne v7, v4, :cond_12

    .line 372
    .line 373
    const/16 v5, 0x14

    .line 374
    .line 375
    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 376
    .line 377
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 378
    .line 379
    add-int/2addr v5, v2

    .line 380
    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 381
    .line 382
    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 383
    .line 384
    :goto_8
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 385
    .line 386
    return-object v0

    .line 387
    :cond_12
    iput v6, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 388
    .line 389
    return-object v5

    .line 390
    :cond_13
    iput v6, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 391
    .line 392
    return-object v5
.end method

.method public scanDecimal(C)Ljava/math/BigDecimal;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/16 v4, 0x22

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v5, 0x0

    .line 20
    :goto_0
    const/4 v6, 0x2

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v7, 0x2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v7, 0x1

    .line 33
    :goto_1
    const/16 v8, 0x2d

    .line 34
    .line 35
    if-ne v2, v8, :cond_2

    .line 36
    .line 37
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 38
    .line 39
    add-int/lit8 v9, v7, 0x1

    .line 40
    .line 41
    add-int/2addr v2, v7

    .line 42
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    move v7, v9

    .line 47
    :cond_2
    const/16 v11, 0x10

    .line 48
    .line 49
    const/16 v12, 0x2c

    .line 50
    .line 51
    const/16 v13, 0x30

    .line 52
    .line 53
    const/4 v14, -0x1

    .line 54
    const/4 v15, 0x0

    .line 55
    if-lt v2, v13, :cond_13

    .line 56
    .line 57
    const/16 v9, 0x39

    .line 58
    .line 59
    if-gt v2, v9, :cond_13

    .line 60
    .line 61
    :goto_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 62
    .line 63
    add-int/lit8 v16, v7, 0x1

    .line 64
    .line 65
    add-int/2addr v2, v7

    .line 66
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-lt v2, v13, :cond_3

    .line 71
    .line 72
    if-gt v2, v9, :cond_3

    .line 73
    .line 74
    move/from16 v7, v16

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const/16 v10, 0x2e

    .line 78
    .line 79
    if-ne v2, v10, :cond_5

    .line 80
    .line 81
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 82
    .line 83
    add-int/2addr v7, v6

    .line 84
    add-int v2, v2, v16

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-lt v2, v13, :cond_4

    .line 91
    .line 92
    if-gt v2, v9, :cond_4

    .line 93
    .line 94
    :goto_3
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 95
    .line 96
    add-int/lit8 v16, v7, 0x1

    .line 97
    .line 98
    add-int/2addr v2, v7

    .line 99
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-lt v2, v13, :cond_5

    .line 104
    .line 105
    if-gt v2, v9, :cond_5

    .line 106
    .line 107
    move/from16 v7, v16

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 111
    .line 112
    return-object v15

    .line 113
    :cond_5
    const/16 v7, 0x65

    .line 114
    .line 115
    if-eq v2, v7, :cond_7

    .line 116
    .line 117
    const/16 v7, 0x45

    .line 118
    .line 119
    if-ne v2, v7, :cond_6

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    move/from16 v7, v16

    .line 123
    .line 124
    goto :goto_8

    .line 125
    :cond_7
    :goto_4
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 126
    .line 127
    add-int/lit8 v7, v16, 0x1

    .line 128
    .line 129
    add-int v2, v2, v16

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    const/16 v10, 0x2b

    .line 136
    .line 137
    if-eq v2, v10, :cond_9

    .line 138
    .line 139
    if-ne v2, v8, :cond_8

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_8
    :goto_5
    move/from16 v16, v7

    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_9
    :goto_6
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 146
    .line 147
    add-int/lit8 v16, v16, 0x2

    .line 148
    .line 149
    add-int/2addr v2, v7

    .line 150
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_7
    if-lt v2, v13, :cond_6

    .line 155
    .line 156
    if-gt v2, v9, :cond_6

    .line 157
    .line 158
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 159
    .line 160
    add-int/lit8 v7, v16, 0x1

    .line 161
    .line 162
    add-int v2, v2, v16

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    goto :goto_5

    .line 169
    :goto_8
    if-eqz v5, :cond_b

    .line 170
    .line 171
    if-eq v2, v4, :cond_a

    .line 172
    .line 173
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 174
    .line 175
    return-object v15

    .line 176
    :cond_a
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 177
    .line 178
    add-int/lit8 v3, v7, 0x1

    .line 179
    .line 180
    add-int/2addr v2, v7

    .line 181
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 186
    .line 187
    add-int/lit8 v5, v4, 0x1

    .line 188
    .line 189
    invoke-static {v4, v3, v5, v6}, La/e;->g(IIII)I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    move v7, v3

    .line 194
    goto :goto_9

    .line 195
    :cond_b
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 196
    .line 197
    invoke-static {v5, v7, v5, v3}, La/e;->g(IIII)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    :goto_9
    const v3, 0xffff

    .line 202
    .line 203
    .line 204
    if-gt v4, v3, :cond_12

    .line 205
    .line 206
    invoke-virtual {v0, v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    new-instance v4, Ljava/math/BigDecimal;

    .line 211
    .line 212
    array-length v5, v3

    .line 213
    sget-object v6, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    .line 214
    .line 215
    invoke-direct {v4, v3, v1, v5, v6}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    .line 216
    .line 217
    .line 218
    if-ne v2, v12, :cond_c

    .line 219
    .line 220
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 221
    .line 222
    add-int/2addr v1, v7

    .line 223
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 230
    .line 231
    const/4 v1, 0x3

    .line 232
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 233
    .line 234
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 235
    .line 236
    return-object v4

    .line 237
    :cond_c
    const/16 v1, 0x5d

    .line 238
    .line 239
    if-ne v2, v1, :cond_11

    .line 240
    .line 241
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 242
    .line 243
    add-int/lit8 v3, v7, 0x1

    .line 244
    .line 245
    add-int/2addr v2, v7

    .line 246
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-ne v2, v12, :cond_d

    .line 251
    .line 252
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 253
    .line 254
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 255
    .line 256
    add-int/2addr v1, v3

    .line 257
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 264
    .line 265
    goto :goto_a

    .line 266
    :cond_d
    if-ne v2, v1, :cond_e

    .line 267
    .line 268
    const/16 v1, 0xf

    .line 269
    .line 270
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 271
    .line 272
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 273
    .line 274
    add-int/2addr v1, v3

    .line 275
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 282
    .line 283
    goto :goto_a

    .line 284
    :cond_e
    const/16 v1, 0x7d

    .line 285
    .line 286
    if-ne v2, v1, :cond_f

    .line 287
    .line 288
    const/16 v1, 0xd

    .line 289
    .line 290
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 291
    .line 292
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 293
    .line 294
    add-int/2addr v1, v3

    .line 295
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 302
    .line 303
    goto :goto_a

    .line 304
    :cond_f
    const/16 v1, 0x1a

    .line 305
    .line 306
    if-ne v2, v1, :cond_10

    .line 307
    .line 308
    const/16 v2, 0x14

    .line 309
    .line 310
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 311
    .line 312
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 313
    .line 314
    add-int/2addr v2, v7

    .line 315
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 316
    .line 317
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 318
    .line 319
    :goto_a
    const/4 v1, 0x4

    .line 320
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 321
    .line 322
    return-object v4

    .line 323
    :cond_10
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 324
    .line 325
    return-object v15

    .line 326
    :cond_11
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 327
    .line 328
    return-object v15

    .line 329
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 330
    .line 331
    const-string v2, "decimal overflow"

    .line 332
    .line 333
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v1

    .line 337
    :cond_13
    const/16 v1, 0x6e

    .line 338
    .line 339
    if-ne v2, v1, :cond_18

    .line 340
    .line 341
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 342
    .line 343
    add-int/2addr v1, v7

    .line 344
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    const/16 v2, 0x75

    .line 349
    .line 350
    if-ne v1, v2, :cond_18

    .line 351
    .line 352
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 353
    .line 354
    invoke-static {v1, v7, v3, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    const/16 v2, 0x6c

    .line 359
    .line 360
    if-ne v1, v2, :cond_18

    .line 361
    .line 362
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 363
    .line 364
    invoke-static {v1, v7, v6, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-ne v1, v2, :cond_18

    .line 369
    .line 370
    const/4 v1, 0x5

    .line 371
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 372
    .line 373
    add-int/lit8 v2, v7, 0x3

    .line 374
    .line 375
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 376
    .line 377
    add-int/lit8 v6, v7, 0x4

    .line 378
    .line 379
    add-int/2addr v3, v2

    .line 380
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v5, :cond_14

    .line 385
    .line 386
    if-ne v2, v4, :cond_14

    .line 387
    .line 388
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 389
    .line 390
    add-int/2addr v7, v1

    .line 391
    add-int/2addr v2, v6

    .line 392
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    move v6, v7

    .line 397
    :cond_14
    :goto_b
    if-ne v2, v12, :cond_15

    .line 398
    .line 399
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 400
    .line 401
    add-int/2addr v2, v6

    .line 402
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 403
    .line 404
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 409
    .line 410
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 411
    .line 412
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 413
    .line 414
    return-object v15

    .line 415
    :cond_15
    const/16 v3, 0x7d

    .line 416
    .line 417
    if-ne v2, v3, :cond_16

    .line 418
    .line 419
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 420
    .line 421
    add-int/2addr v2, v6

    .line 422
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 423
    .line 424
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 429
    .line 430
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 431
    .line 432
    const/16 v4, 0xd

    .line 433
    .line 434
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 435
    .line 436
    return-object v15

    .line 437
    :cond_16
    const/16 v4, 0xd

    .line 438
    .line 439
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-eqz v2, :cond_17

    .line 444
    .line 445
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 446
    .line 447
    add-int/lit8 v5, v6, 0x1

    .line 448
    .line 449
    add-int/2addr v2, v6

    .line 450
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    move v6, v5

    .line 455
    goto :goto_b

    .line 456
    :cond_17
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 457
    .line 458
    return-object v15

    .line 459
    :cond_18
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 460
    .line 461
    return-object v15
.end method

.method public scanDouble(C)D
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/16 v4, 0x22

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v5, 0x0

    .line 20
    :goto_0
    const/4 v6, 0x2

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v7, 0x2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v7, 0x1

    .line 33
    :goto_1
    const/16 v8, 0x2d

    .line 34
    .line 35
    if-ne v2, v8, :cond_2

    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 v9, 0x0

    .line 40
    :goto_2
    if-eqz v9, :cond_3

    .line 41
    .line 42
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 43
    .line 44
    add-int/lit8 v10, v7, 0x1

    .line 45
    .line 46
    add-int/2addr v2, v7

    .line 47
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    move v7, v10

    .line 52
    :cond_3
    const-wide/16 v11, 0x0

    .line 53
    .line 54
    const/4 v13, -0x1

    .line 55
    const/16 v14, 0x30

    .line 56
    .line 57
    if-lt v2, v14, :cond_12

    .line 58
    .line 59
    const/16 v15, 0x39

    .line 60
    .line 61
    if-gt v2, v15, :cond_12

    .line 62
    .line 63
    sub-int/2addr v2, v14

    .line 64
    int-to-long v1, v2

    .line 65
    :goto_3
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 66
    .line 67
    add-int/lit8 v17, v7, 0x1

    .line 68
    .line 69
    add-int/2addr v10, v7

    .line 70
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const-wide/16 v18, 0xa

    .line 75
    .line 76
    if-lt v10, v14, :cond_4

    .line 77
    .line 78
    if-gt v10, v15, :cond_4

    .line 79
    .line 80
    mul-long v1, v1, v18

    .line 81
    .line 82
    add-int/lit8 v10, v10, -0x30

    .line 83
    .line 84
    int-to-long v3, v10

    .line 85
    add-long/2addr v1, v3

    .line 86
    move/from16 v7, v17

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    const/16 v4, 0x22

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    const/16 v3, 0x2e

    .line 93
    .line 94
    if-ne v10, v3, :cond_6

    .line 95
    .line 96
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 97
    .line 98
    add-int/2addr v7, v6

    .line 99
    add-int v3, v3, v17

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-lt v3, v14, :cond_5

    .line 106
    .line 107
    if-gt v3, v15, :cond_5

    .line 108
    .line 109
    mul-long v1, v1, v18

    .line 110
    .line 111
    sub-int/2addr v3, v14

    .line 112
    int-to-long v3, v3

    .line 113
    add-long/2addr v1, v3

    .line 114
    move-wide/from16 v3, v18

    .line 115
    .line 116
    :goto_4
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 117
    .line 118
    add-int/lit8 v17, v7, 0x1

    .line 119
    .line 120
    add-int/2addr v10, v7

    .line 121
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-lt v10, v14, :cond_7

    .line 126
    .line 127
    if-gt v10, v15, :cond_7

    .line 128
    .line 129
    mul-long v1, v1, v18

    .line 130
    .line 131
    add-int/lit8 v10, v10, -0x30

    .line 132
    .line 133
    int-to-long v6, v10

    .line 134
    add-long/2addr v1, v6

    .line 135
    mul-long v3, v3, v18

    .line 136
    .line 137
    move/from16 v7, v17

    .line 138
    .line 139
    const/4 v6, 0x2

    .line 140
    goto :goto_4

    .line 141
    :cond_5
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 142
    .line 143
    return-wide v11

    .line 144
    :cond_6
    const-wide/16 v3, 0x1

    .line 145
    .line 146
    :cond_7
    const/16 v6, 0x65

    .line 147
    .line 148
    if-eq v10, v6, :cond_9

    .line 149
    .line 150
    const/16 v6, 0x45

    .line 151
    .line 152
    if-ne v10, v6, :cond_8

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_8
    const/16 v16, 0x0

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_9
    :goto_5
    const/16 v16, 0x1

    .line 159
    .line 160
    :goto_6
    if-eqz v16, :cond_c

    .line 161
    .line 162
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 163
    .line 164
    add-int/lit8 v7, v17, 0x1

    .line 165
    .line 166
    add-int v6, v6, v17

    .line 167
    .line 168
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    const/16 v10, 0x2b

    .line 173
    .line 174
    if-eq v6, v10, :cond_b

    .line 175
    .line 176
    if-ne v6, v8, :cond_a

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_a
    move v10, v6

    .line 180
    :goto_7
    move/from16 v17, v7

    .line 181
    .line 182
    goto :goto_9

    .line 183
    :cond_b
    :goto_8
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 184
    .line 185
    add-int/lit8 v17, v17, 0x2

    .line 186
    .line 187
    add-int/2addr v6, v7

    .line 188
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    move v10, v6

    .line 193
    :goto_9
    if-lt v10, v14, :cond_c

    .line 194
    .line 195
    if-gt v10, v15, :cond_c

    .line 196
    .line 197
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 198
    .line 199
    add-int/lit8 v7, v17, 0x1

    .line 200
    .line 201
    add-int v6, v6, v17

    .line 202
    .line 203
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    goto :goto_7

    .line 208
    :cond_c
    move/from16 v6, v17

    .line 209
    .line 210
    if-eqz v5, :cond_e

    .line 211
    .line 212
    const/16 v5, 0x22

    .line 213
    .line 214
    if-eq v10, v5, :cond_d

    .line 215
    .line 216
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 217
    .line 218
    return-wide v11

    .line 219
    :cond_d
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 220
    .line 221
    add-int/lit8 v7, v6, 0x1

    .line 222
    .line 223
    add-int/2addr v5, v6

    .line 224
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 229
    .line 230
    add-int/lit8 v6, v5, 0x1

    .line 231
    .line 232
    const/4 v8, 0x2

    .line 233
    invoke-static {v5, v7, v6, v8}, La/e;->g(IIII)I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    goto :goto_a

    .line 238
    :cond_e
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 239
    .line 240
    const/4 v7, 0x1

    .line 241
    invoke-static {v5, v6, v5, v7}, La/e;->g(IIII)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    move/from16 v20, v6

    .line 246
    .line 247
    move v6, v5

    .line 248
    move v5, v7

    .line 249
    move/from16 v7, v20

    .line 250
    .line 251
    :goto_a
    if-nez v16, :cond_10

    .line 252
    .line 253
    const/16 v8, 0x11

    .line 254
    .line 255
    if-ge v5, v8, :cond_10

    .line 256
    .line 257
    long-to-double v1, v1

    .line 258
    long-to-double v3, v3

    .line 259
    div-double/2addr v1, v3

    .line 260
    if-eqz v9, :cond_f

    .line 261
    .line 262
    neg-double v1, v1

    .line 263
    :cond_f
    :goto_b
    move/from16 v3, p1

    .line 264
    .line 265
    goto :goto_c

    .line 266
    :cond_10
    invoke-virtual {v0, v6, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 271
    .line 272
    .line 273
    move-result-wide v1

    .line 274
    goto :goto_b

    .line 275
    :goto_c
    if-ne v10, v3, :cond_11

    .line 276
    .line 277
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 278
    .line 279
    add-int/2addr v3, v7

    .line 280
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 281
    .line 282
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 287
    .line 288
    const/4 v3, 0x3

    .line 289
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 290
    .line 291
    const/16 v3, 0x10

    .line 292
    .line 293
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 294
    .line 295
    return-wide v1

    .line 296
    :cond_11
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 297
    .line 298
    return-wide v1

    .line 299
    :cond_12
    const/16 v1, 0x6e

    .line 300
    .line 301
    if-ne v2, v1, :cond_17

    .line 302
    .line 303
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 304
    .line 305
    add-int/2addr v1, v7

    .line 306
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    const/16 v2, 0x75

    .line 311
    .line 312
    if-ne v1, v2, :cond_17

    .line 313
    .line 314
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 315
    .line 316
    const/4 v2, 0x1

    .line 317
    invoke-static {v1, v7, v2, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    const/16 v2, 0x6c

    .line 322
    .line 323
    if-ne v1, v2, :cond_17

    .line 324
    .line 325
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 326
    .line 327
    const/4 v3, 0x2

    .line 328
    invoke-static {v1, v7, v3, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-ne v1, v2, :cond_17

    .line 333
    .line 334
    const/4 v1, 0x5

    .line 335
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 336
    .line 337
    add-int/lit8 v2, v7, 0x3

    .line 338
    .line 339
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 340
    .line 341
    add-int/lit8 v4, v7, 0x4

    .line 342
    .line 343
    add-int/2addr v3, v2

    .line 344
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v5, :cond_13

    .line 349
    .line 350
    const/16 v3, 0x22

    .line 351
    .line 352
    if-ne v2, v3, :cond_13

    .line 353
    .line 354
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 355
    .line 356
    add-int/2addr v7, v1

    .line 357
    add-int/2addr v2, v4

    .line 358
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    move v4, v7

    .line 363
    :cond_13
    :goto_d
    const/16 v3, 0x2c

    .line 364
    .line 365
    if-ne v2, v3, :cond_14

    .line 366
    .line 367
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 368
    .line 369
    add-int/2addr v2, v4

    .line 370
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 371
    .line 372
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 377
    .line 378
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 379
    .line 380
    const/16 v3, 0x10

    .line 381
    .line 382
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 383
    .line 384
    return-wide v11

    .line 385
    :cond_14
    const/16 v3, 0x10

    .line 386
    .line 387
    const/16 v5, 0x5d

    .line 388
    .line 389
    if-ne v2, v5, :cond_15

    .line 390
    .line 391
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 392
    .line 393
    add-int/2addr v2, v4

    .line 394
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 401
    .line 402
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 403
    .line 404
    const/16 v1, 0xf

    .line 405
    .line 406
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 407
    .line 408
    return-wide v11

    .line 409
    :cond_15
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-eqz v2, :cond_16

    .line 414
    .line 415
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 416
    .line 417
    add-int/lit8 v5, v4, 0x1

    .line 418
    .line 419
    add-int/2addr v2, v4

    .line 420
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    move v4, v5

    .line 425
    goto :goto_d

    .line 426
    :cond_16
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 427
    .line 428
    return-wide v11

    .line 429
    :cond_17
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 430
    .line 431
    return-wide v11
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public scanEnumSymbol([C)J
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p1, -0x2

    .line 13
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 14
    .line 15
    return-wide v1

    .line 16
    :cond_0
    array-length p1, p1

    .line 17
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 18
    .line 19
    add-int/lit8 v3, p1, 0x1

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/16 v0, 0x22

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 32
    .line 33
    return-wide v1

    .line 34
    :cond_1
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :goto_0
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 40
    .line 41
    add-int/lit8 v7, v3, 0x1

    .line 42
    .line 43
    add-int/2addr p1, v3

    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-ne p1, v0, :cond_8

    .line 49
    .line 50
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 51
    .line 52
    add-int/lit8 v0, v3, 0x2

    .line 53
    .line 54
    add-int/2addr p1, v7

    .line 55
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/16 v7, 0x2c

    .line 60
    .line 61
    if-ne p1, v7, :cond_2

    .line 62
    .line 63
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 64
    .line 65
    add-int/2addr p1, v0

    .line 66
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 73
    .line 74
    const/4 p1, 0x3

    .line 75
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 76
    .line 77
    return-wide v5

    .line 78
    :cond_2
    const/16 v8, 0x7d

    .line 79
    .line 80
    if-ne p1, v8, :cond_7

    .line 81
    .line 82
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 83
    .line 84
    add-int/lit8 v9, v3, 0x3

    .line 85
    .line 86
    add-int/2addr p1, v0

    .line 87
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-ne p1, v7, :cond_3

    .line 92
    .line 93
    const/16 p1, 0x10

    .line 94
    .line 95
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 96
    .line 97
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 98
    .line 99
    add-int/2addr p1, v9

    .line 100
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/16 v0, 0x5d

    .line 110
    .line 111
    if-ne p1, v0, :cond_4

    .line 112
    .line 113
    const/16 p1, 0xf

    .line 114
    .line 115
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 116
    .line 117
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 118
    .line 119
    add-int/2addr p1, v9

    .line 120
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    if-ne p1, v8, :cond_5

    .line 130
    .line 131
    const/16 p1, 0xd

    .line 132
    .line 133
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 134
    .line 135
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 136
    .line 137
    add-int/2addr p1, v9

    .line 138
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    const/16 v0, 0x1a

    .line 148
    .line 149
    if-ne p1, v0, :cond_6

    .line 150
    .line 151
    const/16 p1, 0x14

    .line 152
    .line 153
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 154
    .line 155
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 156
    .line 157
    add-int/lit8 v3, v3, 0x2

    .line 158
    .line 159
    add-int/2addr v3, p1

    .line 160
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 161
    .line 162
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 163
    .line 164
    :goto_1
    const/4 p1, 0x4

    .line 165
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 166
    .line 167
    return-wide v5

    .line 168
    :cond_6
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 169
    .line 170
    return-wide v1

    .line 171
    :cond_7
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 172
    .line 173
    return-wide v1

    .line 174
    :cond_8
    const/16 v3, 0x41

    .line 175
    .line 176
    if-lt p1, v3, :cond_9

    .line 177
    .line 178
    const/16 v3, 0x5a

    .line 179
    .line 180
    if-gt p1, v3, :cond_9

    .line 181
    .line 182
    add-int/lit8 v3, p1, 0x20

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_9
    move v3, p1

    .line 186
    :goto_2
    int-to-long v8, v3

    .line 187
    xor-long/2addr v5, v8

    .line 188
    const-wide v8, 0x100000001b3L

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    mul-long v5, v5, v8

    .line 194
    .line 195
    const/16 v3, 0x5c

    .line 196
    .line 197
    if-ne p1, v3, :cond_a

    .line 198
    .line 199
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 200
    .line 201
    return-wide v1

    .line 202
    :cond_a
    move v3, v7

    .line 203
    goto/16 :goto_0
.end method

.method public final scanFalse()V
    .locals 3

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2
    .line 3
    const/16 v1, 0x66

    .line 4
    .line 5
    const-string v2, "error parse false"

    .line 6
    .line 7
    if-ne v0, v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 10
    .line 11
    .line 12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 13
    .line 14
    const/16 v1, 0x61

    .line 15
    .line 16
    if-ne v0, v1, :cond_5

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 19
    .line 20
    .line 21
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 22
    .line 23
    const/16 v1, 0x6c

    .line 24
    .line 25
    if-ne v0, v1, :cond_4

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 28
    .line 29
    .line 30
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 31
    .line 32
    const/16 v1, 0x73

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 37
    .line 38
    .line 39
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 40
    .line 41
    const/16 v1, 0x65

    .line 42
    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 46
    .line 47
    .line 48
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 49
    .line 50
    const/16 v1, 0x20

    .line 51
    .line 52
    if-eq v0, v1, :cond_1

    .line 53
    .line 54
    const/16 v1, 0x2c

    .line 55
    .line 56
    if-eq v0, v1, :cond_1

    .line 57
    .line 58
    const/16 v1, 0x7d

    .line 59
    .line 60
    if-eq v0, v1, :cond_1

    .line 61
    .line 62
    const/16 v1, 0x5d

    .line 63
    .line 64
    if-eq v0, v1, :cond_1

    .line 65
    .line 66
    const/16 v1, 0xa

    .line 67
    .line 68
    if-eq v0, v1, :cond_1

    .line 69
    .line 70
    const/16 v1, 0xd

    .line 71
    .line 72
    if-eq v0, v1, :cond_1

    .line 73
    .line 74
    const/16 v1, 0x9

    .line 75
    .line 76
    if-eq v0, v1, :cond_1

    .line 77
    .line 78
    const/16 v1, 0x1a

    .line 79
    .line 80
    if-eq v0, v1, :cond_1

    .line 81
    .line 82
    const/16 v1, 0xc

    .line 83
    .line 84
    if-eq v0, v1, :cond_1

    .line 85
    .line 86
    const/16 v1, 0x8

    .line 87
    .line 88
    if-eq v0, v1, :cond_1

    .line 89
    .line 90
    const/16 v1, 0x3a

    .line 91
    .line 92
    if-eq v0, v1, :cond_1

    .line 93
    .line 94
    const/16 v1, 0x2f

    .line 95
    .line 96
    if-ne v0, v1, :cond_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 100
    .line 101
    const-string v1, "scan false error"

    .line 102
    .line 103
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_1
    :goto_0
    const/4 v0, 0x7

    .line 108
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 109
    .line 110
    return-void

    .line 111
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 112
    .line 113
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 118
    .line 119
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 124
    .line 125
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 130
    .line 131
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 136
    .line 137
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0
.end method

.method public scanFieldBigInteger([C)Ljava/math/BigInteger;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    const/4 v1, -0x2

    .line 16
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 17
    .line 18
    return-object v4

    .line 19
    :cond_0
    array-length v3, v1

    .line 20
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 21
    .line 22
    add-int/lit8 v6, v3, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v3

    .line 25
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x22

    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    if-ne v5, v7, :cond_1

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v9, 0x0

    .line 37
    :goto_0
    const/4 v10, 0x2

    .line 38
    if-eqz v9, :cond_2

    .line 39
    .line 40
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 41
    .line 42
    add-int/2addr v3, v10

    .line 43
    add-int/2addr v5, v6

    .line 44
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    move v6, v3

    .line 49
    :cond_2
    const/16 v3, 0x2d

    .line 50
    .line 51
    if-ne v5, v3, :cond_3

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 v3, 0x0

    .line 56
    :goto_1
    if-eqz v3, :cond_4

    .line 57
    .line 58
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 59
    .line 60
    add-int/lit8 v11, v6, 0x1

    .line 61
    .line 62
    add-int/2addr v5, v6

    .line 63
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    move v6, v11

    .line 68
    :cond_4
    const/16 v15, 0x30

    .line 69
    .line 70
    const/4 v2, -0x1

    .line 71
    if-lt v5, v15, :cond_13

    .line 72
    .line 73
    const/16 v11, 0x39

    .line 74
    .line 75
    if-gt v5, v11, :cond_13

    .line 76
    .line 77
    sub-int/2addr v5, v15

    .line 78
    int-to-long v12, v5

    .line 79
    :goto_2
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 80
    .line 81
    add-int/lit8 v14, v6, 0x1

    .line 82
    .line 83
    add-int/2addr v5, v6

    .line 84
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-lt v5, v15, :cond_6

    .line 89
    .line 90
    if-gt v5, v11, :cond_6

    .line 91
    .line 92
    const-wide/16 v17, 0xa

    .line 93
    .line 94
    mul-long v17, v17, v12

    .line 95
    .line 96
    add-int/lit8 v11, v5, -0x30

    .line 97
    .line 98
    int-to-long v10, v11

    .line 99
    add-long v10, v17, v10

    .line 100
    .line 101
    cmp-long v17, v10, v12

    .line 102
    .line 103
    if-gez v17, :cond_5

    .line 104
    .line 105
    const/16 v16, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    move-wide v12, v10

    .line 109
    move v6, v14

    .line 110
    const/4 v10, 0x2

    .line 111
    const/16 v11, 0x39

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_6
    const/16 v16, 0x0

    .line 115
    .line 116
    :goto_3
    if-eqz v9, :cond_8

    .line 117
    .line 118
    if-eq v5, v7, :cond_7

    .line 119
    .line 120
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 121
    .line 122
    return-object v4

    .line 123
    :cond_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 124
    .line 125
    const/4 v7, 0x2

    .line 126
    add-int/2addr v6, v7

    .line 127
    add-int/2addr v5, v14

    .line 128
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 133
    .line 134
    array-length v1, v1

    .line 135
    add-int/2addr v1, v9

    .line 136
    add-int/2addr v1, v8

    .line 137
    invoke-static {v9, v6, v1, v7}, La/e;->g(IIII)I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    move v14, v6

    .line 142
    goto :goto_4

    .line 143
    :cond_8
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 144
    .line 145
    array-length v1, v1

    .line 146
    add-int/2addr v1, v6

    .line 147
    invoke-static {v6, v14, v1, v8}, La/e;->g(IIII)I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    :goto_4
    const/16 v6, 0x14

    .line 152
    .line 153
    if-nez v16, :cond_b

    .line 154
    .line 155
    if-lt v7, v6, :cond_9

    .line 156
    .line 157
    if-eqz v3, :cond_b

    .line 158
    .line 159
    const/16 v8, 0x15

    .line 160
    .line 161
    if-ge v7, v8, :cond_b

    .line 162
    .line 163
    :cond_9
    if-eqz v3, :cond_a

    .line 164
    .line 165
    neg-long v12, v12

    .line 166
    :cond_a
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    :goto_5
    const/16 v3, 0x2c

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_b
    const v3, 0xffff

    .line 174
    .line 175
    .line 176
    if-gt v7, v3, :cond_12

    .line 177
    .line 178
    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    new-instance v3, Ljava/math/BigInteger;

    .line 183
    .line 184
    const/16 v7, 0xa

    .line 185
    .line 186
    invoke-direct {v3, v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    move-object v1, v3

    .line 190
    goto :goto_5

    .line 191
    :goto_6
    if-ne v5, v3, :cond_c

    .line 192
    .line 193
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 194
    .line 195
    add-int/2addr v2, v14

    .line 196
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 197
    .line 198
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 203
    .line 204
    const/4 v2, 0x3

    .line 205
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 206
    .line 207
    const/16 v3, 0x10

    .line 208
    .line 209
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 210
    .line 211
    return-object v1

    .line 212
    :cond_c
    const/16 v3, 0x10

    .line 213
    .line 214
    const/16 v7, 0x7d

    .line 215
    .line 216
    if-ne v5, v7, :cond_11

    .line 217
    .line 218
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 219
    .line 220
    add-int/lit8 v7, v14, 0x1

    .line 221
    .line 222
    add-int/2addr v5, v14

    .line 223
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    const/16 v8, 0x2c

    .line 228
    .line 229
    if-ne v5, v8, :cond_d

    .line 230
    .line 231
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 232
    .line 233
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 234
    .line 235
    add-int/2addr v2, v7

    .line 236
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_d
    const/16 v3, 0x5d

    .line 246
    .line 247
    if-ne v5, v3, :cond_e

    .line 248
    .line 249
    const/16 v2, 0xf

    .line 250
    .line 251
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 252
    .line 253
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 254
    .line 255
    add-int/2addr v2, v7

    .line 256
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_e
    const/16 v3, 0x7d

    .line 266
    .line 267
    if-ne v5, v3, :cond_f

    .line 268
    .line 269
    const/16 v3, 0xd

    .line 270
    .line 271
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 272
    .line 273
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 274
    .line 275
    add-int/2addr v2, v7

    .line 276
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_f
    const/16 v3, 0x1a

    .line 286
    .line 287
    if-ne v5, v3, :cond_10

    .line 288
    .line 289
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 290
    .line 291
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 292
    .line 293
    add-int/2addr v2, v14

    .line 294
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 295
    .line 296
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 297
    .line 298
    :goto_7
    const/4 v2, 0x4

    .line 299
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 300
    .line 301
    return-object v1

    .line 302
    :cond_10
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 303
    .line 304
    return-object v4

    .line 305
    :cond_11
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 306
    .line 307
    return-object v4

    .line 308
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 309
    .line 310
    const-string v2, "scanInteger overflow"

    .line 311
    .line 312
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw v1

    .line 316
    :cond_13
    const/16 v1, 0x6e

    .line 317
    .line 318
    if-ne v5, v1, :cond_18

    .line 319
    .line 320
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 321
    .line 322
    add-int/2addr v1, v6

    .line 323
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    const/16 v3, 0x75

    .line 328
    .line 329
    if-ne v1, v3, :cond_18

    .line 330
    .line 331
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 332
    .line 333
    invoke-static {v1, v6, v8, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    const/16 v3, 0x6c

    .line 338
    .line 339
    if-ne v1, v3, :cond_18

    .line 340
    .line 341
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 342
    .line 343
    const/4 v5, 0x2

    .line 344
    invoke-static {v1, v6, v5, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-ne v1, v3, :cond_18

    .line 349
    .line 350
    const/4 v1, 0x5

    .line 351
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 352
    .line 353
    add-int/lit8 v3, v6, 0x3

    .line 354
    .line 355
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 356
    .line 357
    add-int/lit8 v8, v6, 0x4

    .line 358
    .line 359
    add-int/2addr v5, v3

    .line 360
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-eqz v9, :cond_14

    .line 365
    .line 366
    if-ne v3, v7, :cond_14

    .line 367
    .line 368
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 369
    .line 370
    add-int/2addr v6, v1

    .line 371
    add-int/2addr v3, v8

    .line 372
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    move v8, v6

    .line 377
    :cond_14
    const/16 v5, 0x2c

    .line 378
    .line 379
    :goto_8
    if-ne v3, v5, :cond_15

    .line 380
    .line 381
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 382
    .line 383
    add-int/2addr v2, v8

    .line 384
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 385
    .line 386
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 391
    .line 392
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 393
    .line 394
    const/16 v6, 0x10

    .line 395
    .line 396
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 397
    .line 398
    return-object v4

    .line 399
    :cond_15
    const/16 v6, 0x10

    .line 400
    .line 401
    const/16 v7, 0x7d

    .line 402
    .line 403
    if-ne v3, v7, :cond_16

    .line 404
    .line 405
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 406
    .line 407
    add-int/2addr v2, v8

    .line 408
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 409
    .line 410
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 415
    .line 416
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 417
    .line 418
    const/16 v9, 0xd

    .line 419
    .line 420
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 421
    .line 422
    return-object v4

    .line 423
    :cond_16
    const/16 v9, 0xd

    .line 424
    .line 425
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    if-eqz v3, :cond_17

    .line 430
    .line 431
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 432
    .line 433
    add-int/lit8 v10, v8, 0x1

    .line 434
    .line 435
    add-int/2addr v3, v8

    .line 436
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    move v8, v10

    .line 441
    goto :goto_8

    .line 442
    :cond_17
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 443
    .line 444
    return-object v4

    .line 445
    :cond_18
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 446
    .line 447
    return-object v4
.end method

.method public scanFieldBoolean([C)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x2

    .line 11
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    array-length p1, p1

    .line 15
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 16
    .line 17
    add-int/lit8 v2, p1, 0x1

    .line 18
    .line 19
    add-int/2addr v1, p1

    .line 20
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v3, 0x74

    .line 25
    .line 26
    const/16 v4, 0x65

    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x1

    .line 30
    const/4 v7, -0x1

    .line 31
    if-ne v1, v3, :cond_4

    .line 32
    .line 33
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 34
    .line 35
    add-int/lit8 v3, p1, 0x2

    .line 36
    .line 37
    add-int/2addr v1, v2

    .line 38
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/16 v2, 0x72

    .line 43
    .line 44
    if-eq v1, v2, :cond_1

    .line 45
    .line 46
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 47
    .line 48
    return v0

    .line 49
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 50
    .line 51
    add-int/lit8 v2, p1, 0x3

    .line 52
    .line 53
    add-int/2addr v1, v3

    .line 54
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/16 v3, 0x75

    .line 59
    .line 60
    if-eq v1, v3, :cond_2

    .line 61
    .line 62
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 63
    .line 64
    return v0

    .line 65
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 66
    .line 67
    add-int/2addr p1, v5

    .line 68
    add-int/2addr v1, v2

    .line 69
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eq v1, v4, :cond_3

    .line 74
    .line 75
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 76
    .line 77
    return v0

    .line 78
    :cond_3
    const/4 v1, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    const/16 v3, 0x66

    .line 81
    .line 82
    if-ne v1, v3, :cond_f

    .line 83
    .line 84
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 85
    .line 86
    add-int/lit8 v3, p1, 0x2

    .line 87
    .line 88
    add-int/2addr v1, v2

    .line 89
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/16 v2, 0x61

    .line 94
    .line 95
    if-eq v1, v2, :cond_5

    .line 96
    .line 97
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 98
    .line 99
    return v0

    .line 100
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 101
    .line 102
    add-int/lit8 v2, p1, 0x3

    .line 103
    .line 104
    add-int/2addr v1, v3

    .line 105
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/16 v3, 0x6c

    .line 110
    .line 111
    if-eq v1, v3, :cond_6

    .line 112
    .line 113
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 114
    .line 115
    return v0

    .line 116
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 117
    .line 118
    add-int/lit8 v3, p1, 0x4

    .line 119
    .line 120
    add-int/2addr v1, v2

    .line 121
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const/16 v2, 0x73

    .line 126
    .line 127
    if-eq v1, v2, :cond_7

    .line 128
    .line 129
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 130
    .line 131
    return v0

    .line 132
    :cond_7
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 133
    .line 134
    add-int/lit8 p1, p1, 0x5

    .line 135
    .line 136
    add-int/2addr v1, v3

    .line 137
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eq v1, v4, :cond_8

    .line 142
    .line 143
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 144
    .line 145
    return v0

    .line 146
    :cond_8
    const/4 v1, 0x0

    .line 147
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 148
    .line 149
    add-int/lit8 v3, p1, 0x1

    .line 150
    .line 151
    add-int/2addr v2, p1

    .line 152
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    const/16 v4, 0x10

    .line 157
    .line 158
    const/16 v8, 0x2c

    .line 159
    .line 160
    if-ne v2, v8, :cond_9

    .line 161
    .line 162
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 163
    .line 164
    add-int/2addr p1, v3

    .line 165
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 172
    .line 173
    const/4 p1, 0x3

    .line 174
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 175
    .line 176
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 177
    .line 178
    return v1

    .line 179
    :cond_9
    const/16 v9, 0x7d

    .line 180
    .line 181
    if-ne v2, v9, :cond_e

    .line 182
    .line 183
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 184
    .line 185
    add-int/lit8 v10, p1, 0x2

    .line 186
    .line 187
    add-int/2addr v2, v3

    .line 188
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-ne v2, v8, :cond_a

    .line 193
    .line 194
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 195
    .line 196
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 197
    .line 198
    add-int/2addr p1, v10

    .line 199
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 200
    .line 201
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_a
    const/16 v3, 0x5d

    .line 209
    .line 210
    if-ne v2, v3, :cond_b

    .line 211
    .line 212
    const/16 p1, 0xf

    .line 213
    .line 214
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 215
    .line 216
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 217
    .line 218
    add-int/2addr p1, v10

    .line 219
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 220
    .line 221
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_b
    if-ne v2, v9, :cond_c

    .line 229
    .line 230
    const/16 p1, 0xd

    .line 231
    .line 232
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 233
    .line 234
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 235
    .line 236
    add-int/2addr p1, v10

    .line 237
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 238
    .line 239
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_c
    const/16 v3, 0x1a

    .line 247
    .line 248
    if-ne v2, v3, :cond_d

    .line 249
    .line 250
    const/16 v0, 0x14

    .line 251
    .line 252
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 253
    .line 254
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 255
    .line 256
    add-int/2addr p1, v6

    .line 257
    add-int/2addr p1, v0

    .line 258
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 259
    .line 260
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 261
    .line 262
    :goto_1
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 263
    .line 264
    return v1

    .line 265
    :cond_d
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 266
    .line 267
    return v0

    .line 268
    :cond_e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 269
    .line 270
    return v0

    .line 271
    :cond_f
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 272
    .line 273
    return v0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x2

    .line 12
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    array-length v1, p1

    .line 16
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 17
    .line 18
    add-int/lit8 v4, v1, 0x1

    .line 19
    .line 20
    add-int/2addr v3, v1

    .line 21
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/16 v5, 0x22

    .line 26
    .line 27
    const/4 v6, -0x1

    .line 28
    const/4 v7, 0x1

    .line 29
    if-ne v3, v5, :cond_6

    .line 30
    .line 31
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 32
    .line 33
    array-length v3, p1

    .line 34
    add-int/2addr v1, v3

    .line 35
    add-int/2addr v1, v7

    .line 36
    invoke-virtual {p0, v5, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eq v1, v6, :cond_5

    .line 41
    .line 42
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 43
    .line 44
    array-length v8, p1

    .line 45
    add-int/2addr v3, v8

    .line 46
    add-int/2addr v3, v7

    .line 47
    sub-int v8, v1, v3

    .line 48
    .line 49
    invoke-virtual {p0, v3, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/16 v8, 0x5c

    .line 54
    .line 55
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-eq v9, v6, :cond_3

    .line 60
    .line 61
    :goto_0
    add-int/lit8 v3, v1, -0x1

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    :goto_1
    if-ltz v3, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-ne v10, v8, :cond_1

    .line 71
    .line 72
    add-int/lit8 v9, v9, 0x1

    .line 73
    .line 74
    add-int/lit8 v3, v3, -0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    rem-int/lit8 v9, v9, 0x2

    .line 78
    .line 79
    if-nez v9, :cond_2

    .line 80
    .line 81
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 82
    .line 83
    array-length v5, p1

    .line 84
    add-int/2addr v5, v3

    .line 85
    add-int/2addr v5, v7

    .line 86
    sub-int v5, v1, v5

    .line 87
    .line 88
    array-length v8, p1

    .line 89
    add-int/2addr v3, v8

    .line 90
    add-int/2addr v3, v7

    .line 91
    invoke-virtual {p0, v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    invoke-virtual {p0, v5, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    :goto_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 108
    .line 109
    array-length p1, p1

    .line 110
    add-int/2addr p1, v5

    .line 111
    add-int/2addr p1, v7

    .line 112
    sub-int/2addr v1, p1

    .line 113
    add-int/2addr v1, v7

    .line 114
    add-int/2addr v1, v4

    .line 115
    add-int/lit8 p1, v1, 0x1

    .line 116
    .line 117
    add-int/2addr v5, v1

    .line 118
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    new-instance v4, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 123
    .line 124
    invoke-direct {v4, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :try_start_0
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 138
    .line 139
    .line 140
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_7

    .line 145
    .line 146
    :catchall_0
    move-exception p1

    .line 147
    goto :goto_3

    .line 148
    :cond_4
    :try_start_1
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .line 150
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 151
    .line 152
    .line 153
    return-object v2

    .line 154
    :goto_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 159
    .line 160
    const-string v0, "unclosed str"

    .line 161
    .line 162
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_6
    const/16 p1, 0x2d

    .line 167
    .line 168
    const/16 v5, 0x39

    .line 169
    .line 170
    const/16 v8, 0x30

    .line 171
    .line 172
    if-eq v3, p1, :cond_8

    .line 173
    .line 174
    if-lt v3, v8, :cond_7

    .line 175
    .line 176
    if-gt v3, v5, :cond_7

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_7
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 180
    .line 181
    return-object v2

    .line 182
    :cond_8
    :goto_4
    if-ne v3, p1, :cond_9

    .line 183
    .line 184
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 185
    .line 186
    add-int/lit8 v1, v1, 0x2

    .line 187
    .line 188
    add-int/2addr p1, v4

    .line 189
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    move v4, v1

    .line 194
    const/4 v0, 0x1

    .line 195
    :cond_9
    const-wide/16 v9, 0x0

    .line 196
    .line 197
    if-lt v3, v8, :cond_b

    .line 198
    .line 199
    if-gt v3, v5, :cond_b

    .line 200
    .line 201
    add-int/lit8 v3, v3, -0x30

    .line 202
    .line 203
    int-to-long v11, v3

    .line 204
    :goto_5
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 205
    .line 206
    add-int/lit8 v1, v4, 0x1

    .line 207
    .line 208
    add-int/2addr p1, v4

    .line 209
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-lt p1, v8, :cond_a

    .line 214
    .line 215
    if-gt p1, v5, :cond_a

    .line 216
    .line 217
    const-wide/16 v3, 0xa

    .line 218
    .line 219
    mul-long v11, v11, v3

    .line 220
    .line 221
    add-int/lit8 p1, p1, -0x30

    .line 222
    .line 223
    int-to-long v3, p1

    .line 224
    add-long/2addr v11, v3

    .line 225
    move v4, v1

    .line 226
    goto :goto_5

    .line 227
    :cond_a
    move v13, v1

    .line 228
    move v1, p1

    .line 229
    move p1, v13

    .line 230
    goto :goto_6

    .line 231
    :cond_b
    move v1, v3

    .line 232
    move p1, v4

    .line 233
    move-wide v11, v9

    .line 234
    :goto_6
    cmp-long v3, v11, v9

    .line 235
    .line 236
    if-gez v3, :cond_c

    .line 237
    .line 238
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 239
    .line 240
    return-object v2

    .line 241
    :cond_c
    if-eqz v0, :cond_d

    .line 242
    .line 243
    neg-long v11, v11

    .line 244
    :cond_d
    new-instance v0, Ljava/util/Date;

    .line 245
    .line 246
    invoke-direct {v0, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 247
    .line 248
    .line 249
    :goto_7
    const/16 v3, 0x2c

    .line 250
    .line 251
    if-ne v1, v3, :cond_e

    .line 252
    .line 253
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 254
    .line 255
    add-int/2addr v1, p1

    .line 256
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 257
    .line 258
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 263
    .line 264
    const/4 p1, 0x3

    .line 265
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 266
    .line 267
    return-object v0

    .line 268
    :cond_e
    const/16 v4, 0x7d

    .line 269
    .line 270
    if-ne v1, v4, :cond_13

    .line 271
    .line 272
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 273
    .line 274
    add-int/lit8 v5, p1, 0x1

    .line 275
    .line 276
    add-int/2addr v1, p1

    .line 277
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-ne v1, v3, :cond_f

    .line 282
    .line 283
    const/16 p1, 0x10

    .line 284
    .line 285
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 286
    .line 287
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 288
    .line 289
    add-int/2addr p1, v5

    .line 290
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 291
    .line 292
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 297
    .line 298
    goto :goto_8

    .line 299
    :cond_f
    const/16 v3, 0x5d

    .line 300
    .line 301
    if-ne v1, v3, :cond_10

    .line 302
    .line 303
    const/16 p1, 0xf

    .line 304
    .line 305
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 306
    .line 307
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 308
    .line 309
    add-int/2addr p1, v5

    .line 310
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 311
    .line 312
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_10
    if-ne v1, v4, :cond_11

    .line 320
    .line 321
    const/16 p1, 0xd

    .line 322
    .line 323
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 324
    .line 325
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 326
    .line 327
    add-int/2addr p1, v5

    .line 328
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 329
    .line 330
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_11
    const/16 v3, 0x1a

    .line 338
    .line 339
    if-ne v1, v3, :cond_12

    .line 340
    .line 341
    const/16 v1, 0x14

    .line 342
    .line 343
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 344
    .line 345
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 346
    .line 347
    add-int/2addr v1, p1

    .line 348
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 349
    .line 350
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 351
    .line 352
    :goto_8
    const/4 p1, 0x4

    .line 353
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 354
    .line 355
    return-object v0

    .line 356
    :cond_12
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 357
    .line 358
    return-object v2

    .line 359
    :cond_13
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 360
    .line 361
    return-object v2
.end method

.method public scanFieldDecimal([C)Ljava/math/BigDecimal;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    const/4 v1, -0x2

    .line 16
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 17
    .line 18
    return-object v4

    .line 19
    :cond_0
    array-length v3, v1

    .line 20
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 21
    .line 22
    add-int/lit8 v6, v3, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v3

    .line 25
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x22

    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    if-ne v5, v7, :cond_1

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v9, 0x0

    .line 37
    :goto_0
    const/4 v10, 0x2

    .line 38
    if-eqz v9, :cond_2

    .line 39
    .line 40
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 41
    .line 42
    add-int/2addr v3, v10

    .line 43
    add-int/2addr v5, v6

    .line 44
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    move v6, v3

    .line 49
    :cond_2
    const/16 v3, 0x2d

    .line 50
    .line 51
    if-ne v5, v3, :cond_3

    .line 52
    .line 53
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 54
    .line 55
    add-int/lit8 v11, v6, 0x1

    .line 56
    .line 57
    add-int/2addr v5, v6

    .line 58
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    move v6, v11

    .line 63
    :cond_3
    const/16 v14, 0x2c

    .line 64
    .line 65
    const/16 v15, 0x30

    .line 66
    .line 67
    const/4 v11, -0x1

    .line 68
    if-lt v5, v15, :cond_14

    .line 69
    .line 70
    const/16 v12, 0x39

    .line 71
    .line 72
    if-gt v5, v12, :cond_14

    .line 73
    .line 74
    :goto_1
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 75
    .line 76
    add-int/lit8 v16, v6, 0x1

    .line 77
    .line 78
    add-int/2addr v5, v6

    .line 79
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-lt v5, v15, :cond_4

    .line 84
    .line 85
    if-gt v5, v12, :cond_4

    .line 86
    .line 87
    move/from16 v6, v16

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const/16 v13, 0x2e

    .line 91
    .line 92
    if-ne v5, v13, :cond_6

    .line 93
    .line 94
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 95
    .line 96
    add-int/2addr v6, v10

    .line 97
    add-int v5, v5, v16

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-lt v5, v15, :cond_5

    .line 104
    .line 105
    if-gt v5, v12, :cond_5

    .line 106
    .line 107
    :goto_2
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 108
    .line 109
    add-int/lit8 v16, v6, 0x1

    .line 110
    .line 111
    add-int/2addr v5, v6

    .line 112
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-lt v5, v15, :cond_6

    .line 117
    .line 118
    if-gt v5, v12, :cond_6

    .line 119
    .line 120
    move/from16 v6, v16

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 124
    .line 125
    return-object v4

    .line 126
    :cond_6
    const/16 v6, 0x65

    .line 127
    .line 128
    if-eq v5, v6, :cond_8

    .line 129
    .line 130
    const/16 v6, 0x45

    .line 131
    .line 132
    if-ne v5, v6, :cond_7

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_7
    move/from16 v3, v16

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_8
    :goto_3
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 139
    .line 140
    add-int/lit8 v6, v16, 0x1

    .line 141
    .line 142
    add-int v5, v5, v16

    .line 143
    .line 144
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    const/16 v13, 0x2b

    .line 149
    .line 150
    if-eq v5, v13, :cond_a

    .line 151
    .line 152
    if-ne v5, v3, :cond_9

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_9
    move/from16 v16, v6

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_a
    :goto_4
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 159
    .line 160
    add-int/lit8 v16, v16, 0x2

    .line 161
    .line 162
    add-int/2addr v3, v6

    .line 163
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    :goto_5
    move v5, v3

    .line 168
    :goto_6
    if-lt v5, v15, :cond_7

    .line 169
    .line 170
    if-gt v5, v12, :cond_7

    .line 171
    .line 172
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 173
    .line 174
    add-int/lit8 v5, v16, 0x1

    .line 175
    .line 176
    add-int v3, v3, v16

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    move/from16 v16, v5

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :goto_7
    if-eqz v9, :cond_c

    .line 186
    .line 187
    if-eq v5, v7, :cond_b

    .line 188
    .line 189
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 190
    .line 191
    return-object v4

    .line 192
    :cond_b
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 193
    .line 194
    add-int/lit8 v6, v3, 0x1

    .line 195
    .line 196
    add-int/2addr v5, v3

    .line 197
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 202
    .line 203
    array-length v1, v1

    .line 204
    add-int/2addr v1, v3

    .line 205
    add-int/2addr v1, v8

    .line 206
    invoke-static {v3, v6, v1, v10}, La/e;->g(IIII)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    goto :goto_8

    .line 211
    :cond_c
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 212
    .line 213
    array-length v1, v1

    .line 214
    add-int/2addr v1, v6

    .line 215
    invoke-static {v6, v3, v1, v8}, La/e;->g(IIII)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    move/from16 v17, v6

    .line 220
    .line 221
    move v6, v3

    .line 222
    move/from16 v3, v17

    .line 223
    .line 224
    :goto_8
    const v7, 0xffff

    .line 225
    .line 226
    .line 227
    if-gt v3, v7, :cond_13

    .line 228
    .line 229
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    new-instance v3, Ljava/math/BigDecimal;

    .line 234
    .line 235
    array-length v7, v1

    .line 236
    sget-object v8, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    .line 237
    .line 238
    invoke-direct {v3, v1, v2, v7, v8}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    .line 239
    .line 240
    .line 241
    if-ne v5, v14, :cond_d

    .line 242
    .line 243
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 244
    .line 245
    add-int/2addr v1, v6

    .line 246
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 253
    .line 254
    const/4 v1, 0x3

    .line 255
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 256
    .line 257
    const/16 v1, 0x10

    .line 258
    .line 259
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 260
    .line 261
    return-object v3

    .line 262
    :cond_d
    const/16 v1, 0x10

    .line 263
    .line 264
    const/16 v2, 0x7d

    .line 265
    .line 266
    if-ne v5, v2, :cond_12

    .line 267
    .line 268
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 269
    .line 270
    add-int/lit8 v5, v6, 0x1

    .line 271
    .line 272
    add-int/2addr v2, v6

    .line 273
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-ne v2, v14, :cond_e

    .line 278
    .line 279
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 280
    .line 281
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 282
    .line 283
    add-int/2addr v1, v5

    .line 284
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 291
    .line 292
    goto :goto_9

    .line 293
    :cond_e
    const/16 v1, 0x5d

    .line 294
    .line 295
    if-ne v2, v1, :cond_f

    .line 296
    .line 297
    const/16 v1, 0xf

    .line 298
    .line 299
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 300
    .line 301
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 302
    .line 303
    add-int/2addr v1, v5

    .line 304
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_f
    const/16 v1, 0x7d

    .line 314
    .line 315
    if-ne v2, v1, :cond_10

    .line 316
    .line 317
    const/16 v1, 0xd

    .line 318
    .line 319
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 320
    .line 321
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 322
    .line 323
    add-int/2addr v1, v5

    .line 324
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_10
    const/16 v1, 0x1a

    .line 334
    .line 335
    if-ne v2, v1, :cond_11

    .line 336
    .line 337
    const/16 v2, 0x14

    .line 338
    .line 339
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 340
    .line 341
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 342
    .line 343
    add-int/2addr v2, v6

    .line 344
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 345
    .line 346
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 347
    .line 348
    :goto_9
    const/4 v1, 0x4

    .line 349
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 350
    .line 351
    return-object v3

    .line 352
    :cond_11
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 353
    .line 354
    return-object v4

    .line 355
    :cond_12
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 356
    .line 357
    return-object v4

    .line 358
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 359
    .line 360
    const-string v2, "scan decimal overflow"

    .line 361
    .line 362
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw v1

    .line 366
    :cond_14
    const/16 v1, 0x6e

    .line 367
    .line 368
    if-ne v5, v1, :cond_19

    .line 369
    .line 370
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 371
    .line 372
    add-int/2addr v1, v6

    .line 373
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    const/16 v2, 0x75

    .line 378
    .line 379
    if-ne v1, v2, :cond_19

    .line 380
    .line 381
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 382
    .line 383
    invoke-static {v1, v6, v8, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    const/16 v2, 0x6c

    .line 388
    .line 389
    if-ne v1, v2, :cond_19

    .line 390
    .line 391
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 392
    .line 393
    invoke-static {v1, v6, v10, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-ne v1, v2, :cond_19

    .line 398
    .line 399
    const/4 v1, 0x5

    .line 400
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 401
    .line 402
    add-int/lit8 v2, v6, 0x3

    .line 403
    .line 404
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 405
    .line 406
    add-int/lit8 v5, v6, 0x4

    .line 407
    .line 408
    add-int/2addr v3, v2

    .line 409
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-eqz v9, :cond_15

    .line 414
    .line 415
    if-ne v2, v7, :cond_15

    .line 416
    .line 417
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 418
    .line 419
    add-int/2addr v6, v1

    .line 420
    add-int/2addr v2, v5

    .line 421
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    move v5, v6

    .line 426
    :cond_15
    :goto_a
    if-ne v2, v14, :cond_16

    .line 427
    .line 428
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 429
    .line 430
    add-int/2addr v2, v5

    .line 431
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 432
    .line 433
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 438
    .line 439
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 440
    .line 441
    const/16 v3, 0x10

    .line 442
    .line 443
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 444
    .line 445
    return-object v4

    .line 446
    :cond_16
    const/16 v3, 0x10

    .line 447
    .line 448
    const/16 v6, 0x7d

    .line 449
    .line 450
    if-ne v2, v6, :cond_17

    .line 451
    .line 452
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 453
    .line 454
    add-int/2addr v2, v5

    .line 455
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 456
    .line 457
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 462
    .line 463
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 464
    .line 465
    const/16 v7, 0xd

    .line 466
    .line 467
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 468
    .line 469
    return-object v4

    .line 470
    :cond_17
    const/16 v7, 0xd

    .line 471
    .line 472
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-eqz v2, :cond_18

    .line 477
    .line 478
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 479
    .line 480
    add-int/lit8 v8, v5, 0x1

    .line 481
    .line 482
    add-int/2addr v2, v5

    .line 483
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    move v5, v8

    .line 488
    goto :goto_a

    .line 489
    :cond_18
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 490
    .line 491
    return-object v4

    .line 492
    :cond_19
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 493
    .line 494
    return-object v4
.end method

.method public final scanFieldDouble([C)D
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    const/4 v1, -0x2

    .line 17
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 18
    .line 19
    return-wide v4

    .line 20
    :cond_0
    array-length v3, v1

    .line 21
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 22
    .line 23
    add-int/lit8 v7, v3, 0x1

    .line 24
    .line 25
    add-int/2addr v6, v3

    .line 26
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/16 v8, 0x22

    .line 31
    .line 32
    if-ne v6, v8, :cond_1

    .line 33
    .line 34
    const/4 v10, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v10, 0x0

    .line 37
    :goto_0
    const/4 v11, 0x2

    .line 38
    if-eqz v10, :cond_2

    .line 39
    .line 40
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 41
    .line 42
    add-int/2addr v3, v11

    .line 43
    add-int/2addr v6, v7

    .line 44
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    move v7, v3

    .line 49
    :cond_2
    const/16 v3, 0x2d

    .line 50
    .line 51
    if-ne v6, v3, :cond_3

    .line 52
    .line 53
    const/4 v12, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 v12, 0x0

    .line 56
    :goto_1
    if-eqz v12, :cond_4

    .line 57
    .line 58
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 59
    .line 60
    add-int/lit8 v13, v7, 0x1

    .line 61
    .line 62
    add-int/2addr v6, v7

    .line 63
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    move v7, v13

    .line 68
    :cond_4
    const/4 v13, -0x1

    .line 69
    const/16 v14, 0x30

    .line 70
    .line 71
    if-lt v6, v14, :cond_18

    .line 72
    .line 73
    const/16 v15, 0x39

    .line 74
    .line 75
    if-gt v6, v15, :cond_18

    .line 76
    .line 77
    sub-int/2addr v6, v14

    .line 78
    int-to-long v8, v6

    .line 79
    :goto_2
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 80
    .line 81
    add-int/lit8 v16, v7, 0x1

    .line 82
    .line 83
    add-int/2addr v6, v7

    .line 84
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const-wide/16 v17, 0xa

    .line 89
    .line 90
    if-lt v6, v14, :cond_5

    .line 91
    .line 92
    if-gt v6, v15, :cond_5

    .line 93
    .line 94
    mul-long v8, v8, v17

    .line 95
    .line 96
    add-int/lit8 v6, v6, -0x30

    .line 97
    .line 98
    int-to-long v6, v6

    .line 99
    add-long/2addr v8, v6

    .line 100
    move/from16 v7, v16

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    const/16 v2, 0x2e

    .line 104
    .line 105
    if-ne v6, v2, :cond_7

    .line 106
    .line 107
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 108
    .line 109
    add-int/2addr v7, v11

    .line 110
    add-int v2, v2, v16

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-lt v2, v14, :cond_6

    .line 117
    .line 118
    if-gt v2, v15, :cond_6

    .line 119
    .line 120
    mul-long v8, v8, v17

    .line 121
    .line 122
    sub-int/2addr v2, v14

    .line 123
    move/from16 v19, v12

    .line 124
    .line 125
    int-to-long v11, v2

    .line 126
    add-long/2addr v8, v11

    .line 127
    move-wide/from16 v11, v17

    .line 128
    .line 129
    :goto_3
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 130
    .line 131
    add-int/lit8 v16, v7, 0x1

    .line 132
    .line 133
    add-int/2addr v2, v7

    .line 134
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-lt v6, v14, :cond_8

    .line 139
    .line 140
    if-gt v6, v15, :cond_8

    .line 141
    .line 142
    mul-long v8, v8, v17

    .line 143
    .line 144
    add-int/lit8 v6, v6, -0x30

    .line 145
    .line 146
    int-to-long v6, v6

    .line 147
    add-long/2addr v8, v6

    .line 148
    mul-long v11, v11, v17

    .line 149
    .line 150
    move/from16 v7, v16

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 154
    .line 155
    return-wide v4

    .line 156
    :cond_7
    move/from16 v19, v12

    .line 157
    .line 158
    const-wide/16 v11, 0x1

    .line 159
    .line 160
    :cond_8
    const/16 v2, 0x65

    .line 161
    .line 162
    if-eq v6, v2, :cond_a

    .line 163
    .line 164
    const/16 v2, 0x45

    .line 165
    .line 166
    if-ne v6, v2, :cond_9

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_9
    const/4 v2, 0x0

    .line 170
    goto :goto_5

    .line 171
    :cond_a
    :goto_4
    const/4 v2, 0x1

    .line 172
    :goto_5
    if-eqz v2, :cond_d

    .line 173
    .line 174
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 175
    .line 176
    add-int/lit8 v7, v16, 0x1

    .line 177
    .line 178
    add-int v6, v6, v16

    .line 179
    .line 180
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    const/16 v4, 0x2b

    .line 185
    .line 186
    if-eq v6, v4, :cond_c

    .line 187
    .line 188
    if-ne v6, v3, :cond_b

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_b
    move/from16 v16, v7

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_c
    :goto_6
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 195
    .line 196
    add-int/lit8 v16, v16, 0x2

    .line 197
    .line 198
    add-int/2addr v3, v7

    .line 199
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    move v6, v3

    .line 204
    :goto_7
    if-lt v6, v14, :cond_d

    .line 205
    .line 206
    if-gt v6, v15, :cond_d

    .line 207
    .line 208
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 209
    .line 210
    add-int/lit8 v4, v16, 0x1

    .line 211
    .line 212
    add-int v3, v3, v16

    .line 213
    .line 214
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    move/from16 v16, v4

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_d
    move/from16 v3, v16

    .line 222
    .line 223
    if-eqz v10, :cond_f

    .line 224
    .line 225
    const/16 v4, 0x22

    .line 226
    .line 227
    if-eq v6, v4, :cond_e

    .line 228
    .line 229
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 230
    .line 231
    const-wide/16 v1, 0x0

    .line 232
    .line 233
    return-wide v1

    .line 234
    :cond_e
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 235
    .line 236
    add-int/lit8 v5, v3, 0x1

    .line 237
    .line 238
    add-int/2addr v4, v3

    .line 239
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 244
    .line 245
    array-length v1, v1

    .line 246
    add-int/2addr v1, v3

    .line 247
    const/4 v4, 0x1

    .line 248
    add-int/2addr v1, v4

    .line 249
    const/4 v4, 0x2

    .line 250
    invoke-static {v3, v5, v1, v4}, La/e;->g(IIII)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    goto :goto_8

    .line 255
    :cond_f
    const/4 v4, 0x1

    .line 256
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 257
    .line 258
    array-length v1, v1

    .line 259
    add-int/2addr v1, v5

    .line 260
    invoke-static {v5, v3, v1, v4}, La/e;->g(IIII)I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    move v5, v3

    .line 265
    move v3, v4

    .line 266
    :goto_8
    if-nez v2, :cond_11

    .line 267
    .line 268
    const/16 v2, 0x11

    .line 269
    .line 270
    if-ge v3, v2, :cond_11

    .line 271
    .line 272
    long-to-double v1, v8

    .line 273
    long-to-double v3, v11

    .line 274
    div-double/2addr v1, v3

    .line 275
    if-eqz v19, :cond_10

    .line 276
    .line 277
    neg-double v1, v1

    .line 278
    :cond_10
    :goto_9
    const/16 v3, 0x2c

    .line 279
    .line 280
    goto :goto_a

    .line 281
    :cond_11
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 286
    .line 287
    .line 288
    move-result-wide v1

    .line 289
    goto :goto_9

    .line 290
    :goto_a
    if-ne v6, v3, :cond_12

    .line 291
    .line 292
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 293
    .line 294
    add-int/2addr v3, v5

    .line 295
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 296
    .line 297
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 302
    .line 303
    const/4 v3, 0x3

    .line 304
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 305
    .line 306
    const/16 v3, 0x10

    .line 307
    .line 308
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 309
    .line 310
    return-wide v1

    .line 311
    :cond_12
    const/16 v3, 0x10

    .line 312
    .line 313
    const/16 v4, 0x7d

    .line 314
    .line 315
    if-ne v6, v4, :cond_17

    .line 316
    .line 317
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 318
    .line 319
    add-int/lit8 v6, v5, 0x1

    .line 320
    .line 321
    add-int/2addr v4, v5

    .line 322
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    const/16 v7, 0x2c

    .line 327
    .line 328
    if-ne v4, v7, :cond_13

    .line 329
    .line 330
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 331
    .line 332
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 333
    .line 334
    add-int/2addr v3, v6

    .line 335
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 336
    .line 337
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 342
    .line 343
    goto :goto_b

    .line 344
    :cond_13
    const/16 v3, 0x5d

    .line 345
    .line 346
    if-ne v4, v3, :cond_14

    .line 347
    .line 348
    const/16 v3, 0xf

    .line 349
    .line 350
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 351
    .line 352
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 353
    .line 354
    add-int/2addr v3, v6

    .line 355
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 356
    .line 357
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_14
    const/16 v3, 0x7d

    .line 365
    .line 366
    if-ne v4, v3, :cond_15

    .line 367
    .line 368
    const/16 v3, 0xd

    .line 369
    .line 370
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 371
    .line 372
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 373
    .line 374
    add-int/2addr v3, v6

    .line 375
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 376
    .line 377
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 382
    .line 383
    goto :goto_b

    .line 384
    :cond_15
    const/16 v3, 0x1a

    .line 385
    .line 386
    if-ne v4, v3, :cond_16

    .line 387
    .line 388
    const/16 v4, 0x14

    .line 389
    .line 390
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 391
    .line 392
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 393
    .line 394
    add-int/2addr v4, v5

    .line 395
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 396
    .line 397
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 398
    .line 399
    :goto_b
    const/4 v3, 0x4

    .line 400
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 401
    .line 402
    return-wide v1

    .line 403
    :cond_16
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 404
    .line 405
    const-wide/16 v1, 0x0

    .line 406
    .line 407
    return-wide v1

    .line 408
    :cond_17
    const-wide/16 v1, 0x0

    .line 409
    .line 410
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 411
    .line 412
    return-wide v1

    .line 413
    :cond_18
    const/16 v1, 0x6e

    .line 414
    .line 415
    if-ne v6, v1, :cond_1d

    .line 416
    .line 417
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 418
    .line 419
    add-int/2addr v1, v7

    .line 420
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    const/16 v2, 0x75

    .line 425
    .line 426
    if-ne v1, v2, :cond_1d

    .line 427
    .line 428
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 429
    .line 430
    const/4 v2, 0x1

    .line 431
    invoke-static {v1, v7, v2, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    const/16 v2, 0x6c

    .line 436
    .line 437
    if-ne v1, v2, :cond_1d

    .line 438
    .line 439
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 440
    .line 441
    const/4 v3, 0x2

    .line 442
    invoke-static {v1, v7, v3, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    if-ne v1, v2, :cond_1d

    .line 447
    .line 448
    const/4 v1, 0x5

    .line 449
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 450
    .line 451
    add-int/lit8 v2, v7, 0x3

    .line 452
    .line 453
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 454
    .line 455
    add-int/lit8 v4, v7, 0x4

    .line 456
    .line 457
    add-int/2addr v3, v2

    .line 458
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    if-eqz v10, :cond_19

    .line 463
    .line 464
    const/16 v3, 0x22

    .line 465
    .line 466
    if-ne v2, v3, :cond_19

    .line 467
    .line 468
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 469
    .line 470
    add-int/2addr v7, v1

    .line 471
    add-int/2addr v2, v4

    .line 472
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    move v4, v7

    .line 477
    :cond_19
    const/16 v3, 0x2c

    .line 478
    .line 479
    :goto_c
    if-ne v2, v3, :cond_1a

    .line 480
    .line 481
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 482
    .line 483
    add-int/2addr v2, v4

    .line 484
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 485
    .line 486
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 491
    .line 492
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 493
    .line 494
    const/16 v5, 0x10

    .line 495
    .line 496
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 497
    .line 498
    const-wide/16 v6, 0x0

    .line 499
    .line 500
    return-wide v6

    .line 501
    :cond_1a
    const/16 v5, 0x10

    .line 502
    .line 503
    const-wide/16 v6, 0x0

    .line 504
    .line 505
    const/16 v8, 0x7d

    .line 506
    .line 507
    if-ne v2, v8, :cond_1b

    .line 508
    .line 509
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 510
    .line 511
    add-int/2addr v2, v4

    .line 512
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 513
    .line 514
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 519
    .line 520
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 521
    .line 522
    const/16 v9, 0xd

    .line 523
    .line 524
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 525
    .line 526
    return-wide v6

    .line 527
    :cond_1b
    const/16 v9, 0xd

    .line 528
    .line 529
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_1c

    .line 534
    .line 535
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 536
    .line 537
    add-int/lit8 v10, v4, 0x1

    .line 538
    .line 539
    add-int/2addr v2, v4

    .line 540
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    move v4, v10

    .line 545
    goto :goto_c

    .line 546
    :cond_1c
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 547
    .line 548
    return-wide v6

    .line 549
    :cond_1d
    const-wide/16 v6, 0x0

    .line 550
    .line 551
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 552
    .line 553
    return-wide v6
.end method

.method public final scanFieldFloat([C)F
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    const/4 v1, -0x2

    .line 16
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 17
    .line 18
    return v4

    .line 19
    :cond_0
    array-length v3, v1

    .line 20
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 21
    .line 22
    add-int/lit8 v6, v3, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v3

    .line 25
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x22

    .line 30
    .line 31
    if-ne v5, v7, :cond_1

    .line 32
    .line 33
    const/4 v9, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v9, 0x0

    .line 36
    :goto_0
    const/4 v10, 0x2

    .line 37
    if-eqz v9, :cond_2

    .line 38
    .line 39
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 40
    .line 41
    add-int/2addr v3, v10

    .line 42
    add-int/2addr v5, v6

    .line 43
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    move v6, v3

    .line 48
    :cond_2
    const/16 v3, 0x2d

    .line 49
    .line 50
    if-ne v5, v3, :cond_3

    .line 51
    .line 52
    const/4 v11, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 v11, 0x0

    .line 55
    :goto_1
    if-eqz v11, :cond_4

    .line 56
    .line 57
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 58
    .line 59
    add-int/lit8 v12, v6, 0x1

    .line 60
    .line 61
    add-int/2addr v5, v6

    .line 62
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    move v6, v12

    .line 67
    :cond_4
    const/4 v2, -0x1

    .line 68
    const/16 v12, 0x30

    .line 69
    .line 70
    if-lt v5, v12, :cond_18

    .line 71
    .line 72
    const/16 v13, 0x39

    .line 73
    .line 74
    if-gt v5, v13, :cond_18

    .line 75
    .line 76
    sub-int/2addr v5, v12

    .line 77
    int-to-long v14, v5

    .line 78
    :goto_2
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 79
    .line 80
    add-int/lit8 v17, v6, 0x1

    .line 81
    .line 82
    add-int/2addr v5, v6

    .line 83
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const-wide/16 v18, 0xa

    .line 88
    .line 89
    if-lt v5, v12, :cond_5

    .line 90
    .line 91
    if-gt v5, v13, :cond_5

    .line 92
    .line 93
    mul-long v14, v14, v18

    .line 94
    .line 95
    add-int/lit8 v5, v5, -0x30

    .line 96
    .line 97
    int-to-long v5, v5

    .line 98
    add-long/2addr v14, v5

    .line 99
    move/from16 v6, v17

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    const/16 v8, 0x2e

    .line 103
    .line 104
    if-ne v5, v8, :cond_7

    .line 105
    .line 106
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 107
    .line 108
    add-int/2addr v6, v10

    .line 109
    add-int v5, v5, v17

    .line 110
    .line 111
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-lt v5, v12, :cond_6

    .line 116
    .line 117
    if-gt v5, v13, :cond_6

    .line 118
    .line 119
    mul-long v14, v14, v18

    .line 120
    .line 121
    sub-int/2addr v5, v12

    .line 122
    move/from16 v20, v11

    .line 123
    .line 124
    int-to-long v10, v5

    .line 125
    add-long/2addr v14, v10

    .line 126
    move-wide/from16 v10, v18

    .line 127
    .line 128
    :goto_3
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 129
    .line 130
    add-int/lit8 v17, v6, 0x1

    .line 131
    .line 132
    add-int/2addr v5, v6

    .line 133
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-lt v5, v12, :cond_8

    .line 138
    .line 139
    if-gt v5, v13, :cond_8

    .line 140
    .line 141
    mul-long v14, v14, v18

    .line 142
    .line 143
    add-int/lit8 v5, v5, -0x30

    .line 144
    .line 145
    int-to-long v5, v5

    .line 146
    add-long/2addr v14, v5

    .line 147
    mul-long v10, v10, v18

    .line 148
    .line 149
    move/from16 v6, v17

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_6
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 153
    .line 154
    return v4

    .line 155
    :cond_7
    move/from16 v20, v11

    .line 156
    .line 157
    const-wide/16 v10, 0x1

    .line 158
    .line 159
    :cond_8
    const/16 v6, 0x65

    .line 160
    .line 161
    if-eq v5, v6, :cond_a

    .line 162
    .line 163
    const/16 v6, 0x45

    .line 164
    .line 165
    if-ne v5, v6, :cond_9

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_9
    const/16 v16, 0x0

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_a
    :goto_4
    const/16 v16, 0x1

    .line 172
    .line 173
    :goto_5
    if-eqz v16, :cond_d

    .line 174
    .line 175
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 176
    .line 177
    add-int/lit8 v6, v17, 0x1

    .line 178
    .line 179
    add-int v5, v5, v17

    .line 180
    .line 181
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    const/16 v8, 0x2b

    .line 186
    .line 187
    if-eq v5, v8, :cond_c

    .line 188
    .line 189
    if-ne v5, v3, :cond_b

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_b
    move/from16 v17, v6

    .line 193
    .line 194
    goto :goto_8

    .line 195
    :cond_c
    :goto_6
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 196
    .line 197
    add-int/lit8 v17, v17, 0x2

    .line 198
    .line 199
    add-int/2addr v3, v6

    .line 200
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    :goto_7
    move v5, v3

    .line 205
    :goto_8
    if-lt v5, v12, :cond_d

    .line 206
    .line 207
    if-gt v5, v13, :cond_d

    .line 208
    .line 209
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 210
    .line 211
    add-int/lit8 v5, v17, 0x1

    .line 212
    .line 213
    add-int v3, v3, v17

    .line 214
    .line 215
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    move/from16 v17, v5

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_d
    move/from16 v3, v17

    .line 223
    .line 224
    if-eqz v9, :cond_f

    .line 225
    .line 226
    if-eq v5, v7, :cond_e

    .line 227
    .line 228
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 229
    .line 230
    return v4

    .line 231
    :cond_e
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 232
    .line 233
    add-int/lit8 v6, v3, 0x1

    .line 234
    .line 235
    add-int/2addr v5, v3

    .line 236
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 241
    .line 242
    array-length v1, v1

    .line 243
    add-int/2addr v1, v3

    .line 244
    const/4 v7, 0x1

    .line 245
    add-int/2addr v1, v7

    .line 246
    const/4 v7, 0x2

    .line 247
    invoke-static {v3, v6, v1, v7}, La/e;->g(IIII)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    goto :goto_9

    .line 252
    :cond_f
    const/4 v7, 0x1

    .line 253
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 254
    .line 255
    array-length v1, v1

    .line 256
    add-int/2addr v1, v6

    .line 257
    invoke-static {v6, v3, v1, v7}, La/e;->g(IIII)I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    move/from16 v21, v6

    .line 262
    .line 263
    move v6, v3

    .line 264
    move/from16 v3, v21

    .line 265
    .line 266
    :goto_9
    if-nez v16, :cond_11

    .line 267
    .line 268
    const/16 v7, 0x11

    .line 269
    .line 270
    if-ge v3, v7, :cond_11

    .line 271
    .line 272
    long-to-double v7, v14

    .line 273
    long-to-double v9, v10

    .line 274
    div-double/2addr v7, v9

    .line 275
    double-to-float v1, v7

    .line 276
    if-eqz v20, :cond_10

    .line 277
    .line 278
    neg-float v1, v1

    .line 279
    :cond_10
    :goto_a
    const/16 v3, 0x2c

    .line 280
    .line 281
    goto :goto_b

    .line 282
    :cond_11
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    goto :goto_a

    .line 291
    :goto_b
    if-ne v5, v3, :cond_12

    .line 292
    .line 293
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 294
    .line 295
    add-int/2addr v2, v6

    .line 296
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 297
    .line 298
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 303
    .line 304
    const/4 v2, 0x3

    .line 305
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 306
    .line 307
    const/16 v3, 0x10

    .line 308
    .line 309
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 310
    .line 311
    return v1

    .line 312
    :cond_12
    const/16 v3, 0x10

    .line 313
    .line 314
    const/16 v7, 0x7d

    .line 315
    .line 316
    if-ne v5, v7, :cond_17

    .line 317
    .line 318
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 319
    .line 320
    add-int/lit8 v7, v6, 0x1

    .line 321
    .line 322
    add-int/2addr v5, v6

    .line 323
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    const/16 v8, 0x2c

    .line 328
    .line 329
    if-ne v5, v8, :cond_13

    .line 330
    .line 331
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 332
    .line 333
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 334
    .line 335
    add-int/2addr v2, v7

    .line 336
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 337
    .line 338
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 343
    .line 344
    goto :goto_c

    .line 345
    :cond_13
    const/16 v3, 0x5d

    .line 346
    .line 347
    if-ne v5, v3, :cond_14

    .line 348
    .line 349
    const/16 v2, 0xf

    .line 350
    .line 351
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 352
    .line 353
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 354
    .line 355
    add-int/2addr v2, v7

    .line 356
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 357
    .line 358
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_14
    const/16 v3, 0x7d

    .line 366
    .line 367
    if-ne v5, v3, :cond_15

    .line 368
    .line 369
    const/16 v3, 0xd

    .line 370
    .line 371
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 372
    .line 373
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 374
    .line 375
    add-int/2addr v2, v7

    .line 376
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 377
    .line 378
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_15
    const/16 v3, 0x1a

    .line 386
    .line 387
    if-ne v5, v3, :cond_16

    .line 388
    .line 389
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 390
    .line 391
    add-int/2addr v2, v6

    .line 392
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 393
    .line 394
    const/16 v2, 0x14

    .line 395
    .line 396
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 397
    .line 398
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 399
    .line 400
    :goto_c
    const/4 v2, 0x4

    .line 401
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 402
    .line 403
    return v1

    .line 404
    :cond_16
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 405
    .line 406
    return v4

    .line 407
    :cond_17
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 408
    .line 409
    return v4

    .line 410
    :cond_18
    const/16 v1, 0x6e

    .line 411
    .line 412
    if-ne v5, v1, :cond_1d

    .line 413
    .line 414
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 415
    .line 416
    add-int/2addr v1, v6

    .line 417
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    const/16 v3, 0x75

    .line 422
    .line 423
    if-ne v1, v3, :cond_1d

    .line 424
    .line 425
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 426
    .line 427
    const/4 v3, 0x1

    .line 428
    invoke-static {v1, v6, v3, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    const/16 v3, 0x6c

    .line 433
    .line 434
    if-ne v1, v3, :cond_1d

    .line 435
    .line 436
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 437
    .line 438
    const/4 v5, 0x2

    .line 439
    invoke-static {v1, v6, v5, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-ne v1, v3, :cond_1d

    .line 444
    .line 445
    const/4 v1, 0x5

    .line 446
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 447
    .line 448
    add-int/lit8 v3, v6, 0x3

    .line 449
    .line 450
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 451
    .line 452
    add-int/lit8 v8, v6, 0x4

    .line 453
    .line 454
    add-int/2addr v5, v3

    .line 455
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    if-eqz v9, :cond_19

    .line 460
    .line 461
    if-ne v3, v7, :cond_19

    .line 462
    .line 463
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 464
    .line 465
    add-int/2addr v6, v1

    .line 466
    add-int/2addr v3, v8

    .line 467
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    move v8, v6

    .line 472
    :cond_19
    const/16 v5, 0x2c

    .line 473
    .line 474
    :goto_d
    if-ne v3, v5, :cond_1a

    .line 475
    .line 476
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 477
    .line 478
    add-int/2addr v2, v8

    .line 479
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 480
    .line 481
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 486
    .line 487
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 488
    .line 489
    const/16 v6, 0x10

    .line 490
    .line 491
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 492
    .line 493
    return v4

    .line 494
    :cond_1a
    const/16 v6, 0x10

    .line 495
    .line 496
    const/16 v7, 0x7d

    .line 497
    .line 498
    if-ne v3, v7, :cond_1b

    .line 499
    .line 500
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 501
    .line 502
    add-int/2addr v2, v8

    .line 503
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 504
    .line 505
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 510
    .line 511
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 512
    .line 513
    const/16 v9, 0xd

    .line 514
    .line 515
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 516
    .line 517
    return v4

    .line 518
    :cond_1b
    const/16 v9, 0xd

    .line 519
    .line 520
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    if-eqz v3, :cond_1c

    .line 525
    .line 526
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 527
    .line 528
    add-int/lit8 v10, v8, 0x1

    .line 529
    .line 530
    add-int/2addr v3, v8

    .line 531
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    move v8, v10

    .line 536
    goto :goto_d

    .line 537
    :cond_1c
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 538
    .line 539
    return v4

    .line 540
    :cond_1d
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 541
    .line 542
    return v4
.end method

.method public final scanFieldFloatArray([C)[F
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, -0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 15
    .line 16
    return-object v4

    .line 17
    :cond_0
    move-object/from16 v2, p1

    .line 18
    .line 19
    array-length v2, v2

    .line 20
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 21
    .line 22
    add-int/lit8 v6, v2, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v2

    .line 25
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x5b

    .line 30
    .line 31
    if-eq v5, v7, :cond_1

    .line 32
    .line 33
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 34
    .line 35
    return-object v4

    .line 36
    :cond_1
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x2

    .line 39
    .line 40
    add-int/2addr v3, v6

    .line 41
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/16 v5, 0x10

    .line 46
    .line 47
    new-array v6, v5, [F

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    :goto_0
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 51
    .line 52
    add-int v9, v8, v2

    .line 53
    .line 54
    const/4 v10, 0x1

    .line 55
    sub-int/2addr v9, v10

    .line 56
    const/16 v11, 0x2d

    .line 57
    .line 58
    if-ne v3, v11, :cond_2

    .line 59
    .line 60
    const/4 v12, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v12, 0x0

    .line 63
    :goto_1
    if-eqz v12, :cond_3

    .line 64
    .line 65
    add-int/lit8 v3, v2, 0x1

    .line 66
    .line 67
    add-int/2addr v8, v2

    .line 68
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    move/from16 v18, v3

    .line 73
    .line 74
    move v3, v2

    .line 75
    move/from16 v2, v18

    .line 76
    .line 77
    :cond_3
    const/4 v8, -0x1

    .line 78
    const/16 v13, 0x30

    .line 79
    .line 80
    if-lt v3, v13, :cond_19

    .line 81
    .line 82
    const/16 v14, 0x39

    .line 83
    .line 84
    if-gt v3, v14, :cond_19

    .line 85
    .line 86
    add-int/lit8 v3, v3, -0x30

    .line 87
    .line 88
    :goto_2
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 89
    .line 90
    add-int/lit8 v16, v2, 0x1

    .line 91
    .line 92
    add-int/2addr v15, v2

    .line 93
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v15

    .line 97
    if-lt v15, v13, :cond_4

    .line 98
    .line 99
    if-gt v15, v14, :cond_4

    .line 100
    .line 101
    mul-int/lit8 v3, v3, 0xa

    .line 102
    .line 103
    add-int/lit8 v15, v15, -0x30

    .line 104
    .line 105
    add-int/2addr v3, v15

    .line 106
    move/from16 v2, v16

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    const/16 v5, 0x2e

    .line 110
    .line 111
    const/16 v1, 0xa

    .line 112
    .line 113
    if-ne v15, v5, :cond_6

    .line 114
    .line 115
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x2

    .line 118
    .line 119
    add-int v5, v5, v16

    .line 120
    .line 121
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-lt v5, v13, :cond_5

    .line 126
    .line 127
    if-gt v5, v14, :cond_5

    .line 128
    .line 129
    mul-int/lit8 v3, v3, 0xa

    .line 130
    .line 131
    add-int/lit8 v5, v5, -0x30

    .line 132
    .line 133
    add-int/2addr v5, v3

    .line 134
    move v3, v5

    .line 135
    const/16 v5, 0xa

    .line 136
    .line 137
    :goto_3
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 138
    .line 139
    add-int/lit8 v16, v2, 0x1

    .line 140
    .line 141
    add-int/2addr v15, v2

    .line 142
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    if-lt v15, v13, :cond_7

    .line 147
    .line 148
    if-gt v15, v14, :cond_7

    .line 149
    .line 150
    mul-int/lit8 v3, v3, 0xa

    .line 151
    .line 152
    add-int/lit8 v15, v15, -0x30

    .line 153
    .line 154
    add-int/2addr v3, v15

    .line 155
    mul-int/lit8 v5, v5, 0xa

    .line 156
    .line 157
    move/from16 v2, v16

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 161
    .line 162
    return-object v4

    .line 163
    :cond_6
    const/4 v5, 0x1

    .line 164
    :cond_7
    const/16 v2, 0x65

    .line 165
    .line 166
    if-eq v15, v2, :cond_9

    .line 167
    .line 168
    const/16 v2, 0x45

    .line 169
    .line 170
    if-ne v15, v2, :cond_8

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_8
    const/4 v2, 0x0

    .line 174
    goto :goto_5

    .line 175
    :cond_9
    :goto_4
    const/4 v2, 0x1

    .line 176
    :goto_5
    if-eqz v2, :cond_c

    .line 177
    .line 178
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 179
    .line 180
    add-int/lit8 v17, v16, 0x1

    .line 181
    .line 182
    add-int v15, v15, v16

    .line 183
    .line 184
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    const/16 v4, 0x2b

    .line 189
    .line 190
    if-eq v15, v4, :cond_b

    .line 191
    .line 192
    if-ne v15, v11, :cond_a

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_a
    move/from16 v16, v17

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_b
    :goto_6
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 199
    .line 200
    add-int/lit8 v16, v16, 0x2

    .line 201
    .line 202
    add-int v4, v4, v17

    .line 203
    .line 204
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    move v15, v4

    .line 209
    :goto_7
    if-lt v15, v13, :cond_c

    .line 210
    .line 211
    if-gt v15, v14, :cond_c

    .line 212
    .line 213
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 214
    .line 215
    add-int/lit8 v11, v16, 0x1

    .line 216
    .line 217
    add-int v4, v4, v16

    .line 218
    .line 219
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 220
    .line 221
    .line 222
    move-result v15

    .line 223
    move/from16 v16, v11

    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_c
    move/from16 v4, v16

    .line 227
    .line 228
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 229
    .line 230
    invoke-static {v11, v4, v9, v10}, La/e;->g(IIII)I

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    if-nez v2, :cond_d

    .line 235
    .line 236
    if-ge v11, v1, :cond_d

    .line 237
    .line 238
    int-to-float v1, v3

    .line 239
    int-to-float v2, v5

    .line 240
    div-float/2addr v1, v2

    .line 241
    if-eqz v12, :cond_e

    .line 242
    .line 243
    neg-float v1, v1

    .line 244
    goto :goto_8

    .line 245
    :cond_d
    invoke-virtual {v0, v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    :cond_e
    :goto_8
    array-length v2, v6

    .line 254
    const/4 v3, 0x3

    .line 255
    if-lt v7, v2, :cond_f

    .line 256
    .line 257
    array-length v2, v6

    .line 258
    mul-int/lit8 v2, v2, 0x3

    .line 259
    .line 260
    div-int/lit8 v2, v2, 0x2

    .line 261
    .line 262
    new-array v2, v2, [F

    .line 263
    .line 264
    const/4 v5, 0x0

    .line 265
    invoke-static {v6, v5, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    .line 267
    .line 268
    move-object v6, v2

    .line 269
    :cond_f
    add-int/lit8 v5, v7, 0x1

    .line 270
    .line 271
    aput v1, v6, v7

    .line 272
    .line 273
    const/16 v1, 0x2c

    .line 274
    .line 275
    if-ne v15, v1, :cond_10

    .line 276
    .line 277
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 278
    .line 279
    add-int/lit8 v2, v4, 0x1

    .line 280
    .line 281
    add-int/2addr v1, v4

    .line 282
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    move v15, v1

    .line 287
    const/4 v1, 0x0

    .line 288
    const/16 v3, 0x10

    .line 289
    .line 290
    const/4 v12, 0x0

    .line 291
    goto/16 :goto_a

    .line 292
    .line 293
    :cond_10
    const/16 v2, 0x5d

    .line 294
    .line 295
    if-ne v15, v2, :cond_18

    .line 296
    .line 297
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 298
    .line 299
    add-int/lit8 v9, v4, 0x1

    .line 300
    .line 301
    add-int/2addr v7, v4

    .line 302
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    array-length v11, v6

    .line 307
    if-eq v5, v11, :cond_11

    .line 308
    .line 309
    new-array v11, v5, [F

    .line 310
    .line 311
    const/4 v12, 0x0

    .line 312
    invoke-static {v6, v12, v11, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    .line 314
    .line 315
    move-object v6, v11

    .line 316
    :cond_11
    if-ne v7, v1, :cond_12

    .line 317
    .line 318
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 319
    .line 320
    add-int/2addr v1, v4

    .line 321
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 322
    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 324
    .line 325
    .line 326
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 327
    .line 328
    const/16 v3, 0x10

    .line 329
    .line 330
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 331
    .line 332
    return-object v6

    .line 333
    :cond_12
    const/16 v3, 0x10

    .line 334
    .line 335
    const/16 v5, 0x7d

    .line 336
    .line 337
    if-ne v7, v5, :cond_17

    .line 338
    .line 339
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 340
    .line 341
    add-int/2addr v7, v9

    .line 342
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-ne v7, v1, :cond_13

    .line 347
    .line 348
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 349
    .line 350
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 351
    .line 352
    add-int/2addr v4, v10

    .line 353
    add-int/2addr v4, v1

    .line 354
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 355
    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 357
    .line 358
    .line 359
    goto :goto_9

    .line 360
    :cond_13
    if-ne v7, v2, :cond_14

    .line 361
    .line 362
    const/16 v1, 0xf

    .line 363
    .line 364
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 365
    .line 366
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 367
    .line 368
    add-int/2addr v4, v10

    .line 369
    add-int/2addr v4, v1

    .line 370
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 371
    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 373
    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_14
    if-ne v7, v5, :cond_15

    .line 377
    .line 378
    const/16 v1, 0xd

    .line 379
    .line 380
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 381
    .line 382
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 383
    .line 384
    add-int/2addr v4, v10

    .line 385
    add-int/2addr v4, v1

    .line 386
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 387
    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 389
    .line 390
    .line 391
    goto :goto_9

    .line 392
    :cond_15
    const/16 v1, 0x1a

    .line 393
    .line 394
    if-ne v7, v1, :cond_16

    .line 395
    .line 396
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 397
    .line 398
    add-int/2addr v4, v10

    .line 399
    add-int/2addr v4, v2

    .line 400
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 401
    .line 402
    const/16 v2, 0x14

    .line 403
    .line 404
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 405
    .line 406
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 407
    .line 408
    :goto_9
    const/4 v1, 0x4

    .line 409
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 410
    .line 411
    return-object v6

    .line 412
    :cond_16
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 413
    .line 414
    const/4 v1, 0x0

    .line 415
    return-object v1

    .line 416
    :cond_17
    const/4 v1, 0x0

    .line 417
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 418
    .line 419
    return-object v1

    .line 420
    :cond_18
    const/4 v1, 0x0

    .line 421
    const/16 v3, 0x10

    .line 422
    .line 423
    const/4 v12, 0x0

    .line 424
    move v2, v4

    .line 425
    :goto_a
    move-object v4, v1

    .line 426
    move v7, v5

    .line 427
    move v3, v15

    .line 428
    const/4 v1, 0x0

    .line 429
    const/16 v5, 0x10

    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :cond_19
    move-object v1, v4

    .line 434
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 435
    .line 436
    return-object v1
.end method

.method public final scanFieldFloatArray2([C)[[F
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, -0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 15
    .line 16
    return-object v4

    .line 17
    :cond_0
    move-object/from16 v2, p1

    .line 18
    .line 19
    array-length v2, v2

    .line 20
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 21
    .line 22
    add-int/lit8 v6, v2, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v2

    .line 25
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x5b

    .line 30
    .line 31
    if-eq v5, v7, :cond_1

    .line 32
    .line 33
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 34
    .line 35
    return-object v4

    .line 36
    :cond_1
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x2

    .line 39
    .line 40
    add-int/2addr v3, v6

    .line 41
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/16 v5, 0x10

    .line 46
    .line 47
    new-array v6, v5, [[F

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    :goto_0
    const/4 v12, -0x1

    .line 51
    const/4 v13, 0x1

    .line 52
    if-ne v3, v7, :cond_17

    .line 53
    .line 54
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 55
    .line 56
    add-int/lit8 v14, v2, 0x1

    .line 57
    .line 58
    add-int/2addr v3, v2

    .line 59
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    new-array v3, v5, [F

    .line 64
    .line 65
    const/4 v15, 0x0

    .line 66
    :goto_1
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 67
    .line 68
    add-int v16, v7, v14

    .line 69
    .line 70
    add-int/lit8 v5, v16, -0x1

    .line 71
    .line 72
    const/16 v9, 0x2d

    .line 73
    .line 74
    if-ne v2, v9, :cond_2

    .line 75
    .line 76
    const/16 v17, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const/16 v17, 0x0

    .line 80
    .line 81
    :goto_2
    if-eqz v17, :cond_3

    .line 82
    .line 83
    add-int/lit8 v2, v14, 0x1

    .line 84
    .line 85
    add-int/2addr v7, v14

    .line 86
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    move v14, v2

    .line 91
    move v2, v7

    .line 92
    :cond_3
    const/16 v7, 0x30

    .line 93
    .line 94
    if-lt v2, v7, :cond_16

    .line 95
    .line 96
    const/16 v11, 0x39

    .line 97
    .line 98
    if-gt v2, v11, :cond_16

    .line 99
    .line 100
    add-int/lit8 v2, v2, -0x30

    .line 101
    .line 102
    :goto_3
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 103
    .line 104
    add-int/lit8 v18, v14, 0x1

    .line 105
    .line 106
    add-int/2addr v1, v14

    .line 107
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-lt v1, v7, :cond_4

    .line 112
    .line 113
    if-gt v1, v11, :cond_4

    .line 114
    .line 115
    mul-int/lit8 v2, v2, 0xa

    .line 116
    .line 117
    add-int/lit8 v1, v1, -0x30

    .line 118
    .line 119
    add-int/2addr v2, v1

    .line 120
    move/from16 v14, v18

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    const/16 v10, 0x2e

    .line 124
    .line 125
    const/16 v13, 0xa

    .line 126
    .line 127
    if-ne v1, v10, :cond_7

    .line 128
    .line 129
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 130
    .line 131
    add-int/lit8 v14, v14, 0x2

    .line 132
    .line 133
    add-int v1, v1, v18

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-lt v1, v7, :cond_6

    .line 140
    .line 141
    if-gt v1, v11, :cond_6

    .line 142
    .line 143
    mul-int/lit8 v2, v2, 0xa

    .line 144
    .line 145
    add-int/lit8 v1, v1, -0x30

    .line 146
    .line 147
    add-int/2addr v1, v2

    .line 148
    move v2, v1

    .line 149
    const/16 v1, 0xa

    .line 150
    .line 151
    :goto_4
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 152
    .line 153
    add-int/lit8 v18, v14, 0x1

    .line 154
    .line 155
    add-int/2addr v10, v14

    .line 156
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-lt v10, v7, :cond_5

    .line 161
    .line 162
    if-gt v10, v11, :cond_5

    .line 163
    .line 164
    mul-int/lit8 v2, v2, 0xa

    .line 165
    .line 166
    add-int/lit8 v10, v10, -0x30

    .line 167
    .line 168
    add-int/2addr v2, v10

    .line 169
    mul-int/lit8 v1, v1, 0xa

    .line 170
    .line 171
    move/from16 v14, v18

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_5
    move/from16 v20, v2

    .line 175
    .line 176
    move v2, v1

    .line 177
    move v1, v10

    .line 178
    move/from16 v10, v20

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_6
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 182
    .line 183
    return-object v4

    .line 184
    :cond_7
    move v10, v2

    .line 185
    const/4 v2, 0x1

    .line 186
    :goto_5
    const/16 v14, 0x65

    .line 187
    .line 188
    if-eq v1, v14, :cond_9

    .line 189
    .line 190
    const/16 v14, 0x45

    .line 191
    .line 192
    if-ne v1, v14, :cond_8

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_8
    const/4 v14, 0x0

    .line 196
    goto :goto_7

    .line 197
    :cond_9
    :goto_6
    const/4 v14, 0x1

    .line 198
    :goto_7
    if-eqz v14, :cond_c

    .line 199
    .line 200
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 201
    .line 202
    add-int/lit8 v19, v18, 0x1

    .line 203
    .line 204
    add-int v1, v1, v18

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    const/16 v4, 0x2b

    .line 211
    .line 212
    if-eq v1, v4, :cond_b

    .line 213
    .line 214
    if-ne v1, v9, :cond_a

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_a
    move/from16 v18, v19

    .line 218
    .line 219
    goto :goto_9

    .line 220
    :cond_b
    :goto_8
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 221
    .line 222
    add-int/lit8 v18, v18, 0x2

    .line 223
    .line 224
    add-int v1, v1, v19

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    :goto_9
    if-lt v1, v7, :cond_c

    .line 231
    .line 232
    if-gt v1, v11, :cond_c

    .line 233
    .line 234
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 235
    .line 236
    add-int/lit8 v4, v18, 0x1

    .line 237
    .line 238
    add-int v1, v1, v18

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    move/from16 v18, v4

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_c
    move/from16 v4, v18

    .line 248
    .line 249
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 250
    .line 251
    const/4 v9, 0x1

    .line 252
    invoke-static {v7, v4, v5, v9}, La/e;->g(IIII)I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    if-nez v14, :cond_d

    .line 257
    .line 258
    if-ge v7, v13, :cond_d

    .line 259
    .line 260
    int-to-float v5, v10

    .line 261
    int-to-float v2, v2

    .line 262
    div-float/2addr v5, v2

    .line 263
    if-eqz v17, :cond_e

    .line 264
    .line 265
    neg-float v5, v5

    .line 266
    goto :goto_a

    .line 267
    :cond_d
    invoke-virtual {v0, v5, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    :cond_e
    :goto_a
    array-length v2, v3

    .line 276
    if-lt v15, v2, :cond_f

    .line 277
    .line 278
    array-length v2, v3

    .line 279
    const/4 v7, 0x3

    .line 280
    mul-int/lit8 v2, v2, 0x3

    .line 281
    .line 282
    div-int/lit8 v2, v2, 0x2

    .line 283
    .line 284
    new-array v2, v2, [F

    .line 285
    .line 286
    const/4 v7, 0x0

    .line 287
    invoke-static {v3, v7, v2, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    .line 289
    .line 290
    move-object v3, v2

    .line 291
    :cond_f
    add-int/lit8 v2, v15, 0x1

    .line 292
    .line 293
    aput v5, v3, v15

    .line 294
    .line 295
    const/16 v5, 0x2c

    .line 296
    .line 297
    if-ne v1, v5, :cond_10

    .line 298
    .line 299
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 300
    .line 301
    add-int/lit8 v5, v4, 0x1

    .line 302
    .line 303
    add-int/2addr v1, v4

    .line 304
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    move v14, v5

    .line 309
    goto :goto_d

    .line 310
    :cond_10
    const/16 v5, 0x5d

    .line 311
    .line 312
    if-ne v1, v5, :cond_15

    .line 313
    .line 314
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 315
    .line 316
    add-int/lit8 v5, v4, 0x1

    .line 317
    .line 318
    add-int/2addr v1, v4

    .line 319
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    array-length v7, v3

    .line 324
    if-eq v2, v7, :cond_11

    .line 325
    .line 326
    new-array v7, v2, [F

    .line 327
    .line 328
    const/4 v9, 0x0

    .line 329
    invoke-static {v3, v9, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    .line 331
    .line 332
    move-object v3, v7

    .line 333
    goto :goto_b

    .line 334
    :cond_11
    const/4 v9, 0x0

    .line 335
    :goto_b
    array-length v7, v6

    .line 336
    if-lt v8, v7, :cond_12

    .line 337
    .line 338
    array-length v6, v6

    .line 339
    const/4 v7, 0x3

    .line 340
    mul-int/lit8 v6, v6, 0x3

    .line 341
    .line 342
    div-int/lit8 v6, v6, 0x2

    .line 343
    .line 344
    new-array v6, v6, [[F

    .line 345
    .line 346
    invoke-static {v3, v9, v6, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    .line 348
    .line 349
    :cond_12
    add-int/lit8 v7, v8, 0x1

    .line 350
    .line 351
    aput-object v3, v6, v8

    .line 352
    .line 353
    const/16 v2, 0x2c

    .line 354
    .line 355
    if-ne v1, v2, :cond_13

    .line 356
    .line 357
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 358
    .line 359
    add-int/lit8 v4, v4, 0x2

    .line 360
    .line 361
    add-int/2addr v1, v5

    .line 362
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    move v3, v1

    .line 367
    move v2, v4

    .line 368
    goto :goto_c

    .line 369
    :cond_13
    const/16 v2, 0x5d

    .line 370
    .line 371
    if-ne v1, v2, :cond_14

    .line 372
    .line 373
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 374
    .line 375
    add-int/lit8 v2, v4, 0x2

    .line 376
    .line 377
    add-int/2addr v1, v5

    .line 378
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    move v8, v7

    .line 383
    goto :goto_e

    .line 384
    :cond_14
    move v3, v1

    .line 385
    move v2, v5

    .line 386
    :goto_c
    move v8, v7

    .line 387
    const/4 v1, 0x0

    .line 388
    const/4 v4, 0x0

    .line 389
    const/16 v5, 0x10

    .line 390
    .line 391
    const/16 v7, 0x5b

    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :cond_15
    move v14, v4

    .line 396
    :goto_d
    move v15, v2

    .line 397
    const/4 v4, 0x0

    .line 398
    const/16 v5, 0x10

    .line 399
    .line 400
    const/4 v13, 0x1

    .line 401
    move v2, v1

    .line 402
    const/4 v1, 0x0

    .line 403
    goto/16 :goto_1

    .line 404
    .line 405
    :cond_16
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 406
    .line 407
    const/4 v1, 0x0

    .line 408
    return-object v1

    .line 409
    :cond_17
    :goto_e
    array-length v1, v6

    .line 410
    if-eq v8, v1, :cond_18

    .line 411
    .line 412
    new-array v1, v8, [[F

    .line 413
    .line 414
    const/4 v4, 0x0

    .line 415
    invoke-static {v6, v4, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    .line 417
    .line 418
    move-object v6, v1

    .line 419
    :cond_18
    const/16 v1, 0x2c

    .line 420
    .line 421
    if-ne v3, v1, :cond_19

    .line 422
    .line 423
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 424
    .line 425
    const/4 v3, 0x1

    .line 426
    sub-int/2addr v2, v3

    .line 427
    add-int/2addr v2, v1

    .line 428
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 429
    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 431
    .line 432
    .line 433
    const/4 v1, 0x3

    .line 434
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 435
    .line 436
    const/16 v1, 0x10

    .line 437
    .line 438
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 439
    .line 440
    return-object v6

    .line 441
    :cond_19
    const/16 v1, 0x10

    .line 442
    .line 443
    const/16 v4, 0x7d

    .line 444
    .line 445
    if-ne v3, v4, :cond_1e

    .line 446
    .line 447
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 448
    .line 449
    add-int/2addr v3, v2

    .line 450
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    const/16 v5, 0x2c

    .line 455
    .line 456
    if-ne v3, v5, :cond_1a

    .line 457
    .line 458
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 459
    .line 460
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 461
    .line 462
    add-int/2addr v1, v2

    .line 463
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 464
    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 466
    .line 467
    .line 468
    goto :goto_f

    .line 469
    :cond_1a
    const/16 v1, 0x5d

    .line 470
    .line 471
    if-ne v3, v1, :cond_1b

    .line 472
    .line 473
    const/16 v1, 0xf

    .line 474
    .line 475
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 476
    .line 477
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 478
    .line 479
    add-int/2addr v1, v2

    .line 480
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 481
    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 483
    .line 484
    .line 485
    goto :goto_f

    .line 486
    :cond_1b
    if-ne v3, v4, :cond_1c

    .line 487
    .line 488
    const/16 v1, 0xd

    .line 489
    .line 490
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 491
    .line 492
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 493
    .line 494
    add-int/2addr v1, v2

    .line 495
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 496
    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 498
    .line 499
    .line 500
    goto :goto_f

    .line 501
    :cond_1c
    const/16 v1, 0x1a

    .line 502
    .line 503
    if-ne v3, v1, :cond_1d

    .line 504
    .line 505
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 506
    .line 507
    add-int/2addr v3, v2

    .line 508
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 509
    .line 510
    const/16 v2, 0x14

    .line 511
    .line 512
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 513
    .line 514
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 515
    .line 516
    :goto_f
    const/4 v1, 0x4

    .line 517
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 518
    .line 519
    return-object v6

    .line 520
    :cond_1d
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 521
    .line 522
    const/4 v1, 0x0

    .line 523
    return-object v1

    .line 524
    :cond_1e
    const/4 v1, 0x0

    .line 525
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 526
    .line 527
    return-object v1
.end method

.method public scanFieldInt([C)I
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x2

    .line 11
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    array-length v1, p1

    .line 15
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 16
    .line 17
    add-int/lit8 v3, v1, 0x1

    .line 18
    .line 19
    add-int/2addr v2, v1

    .line 20
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v4, 0x2d

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    if-ne v2, v4, :cond_1

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_0
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x2

    .line 37
    .line 38
    add-int/2addr v2, v3

    .line 39
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    move v3, v1

    .line 44
    :cond_2
    const/16 v1, 0x30

    .line 45
    .line 46
    const/4 v6, -0x1

    .line 47
    if-lt v2, v1, :cond_10

    .line 48
    .line 49
    const/16 v7, 0x39

    .line 50
    .line 51
    if-gt v2, v7, :cond_10

    .line 52
    .line 53
    sub-int/2addr v2, v1

    .line 54
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 55
    .line 56
    add-int/lit8 v9, v3, 0x1

    .line 57
    .line 58
    add-int/2addr v8, v3

    .line 59
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-lt v8, v1, :cond_3

    .line 64
    .line 65
    if-gt v8, v7, :cond_3

    .line 66
    .line 67
    mul-int/lit8 v2, v2, 0xa

    .line 68
    .line 69
    add-int/lit8 v8, v8, -0x30

    .line 70
    .line 71
    add-int/2addr v2, v8

    .line 72
    move v3, v9

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/16 v1, 0x2e

    .line 75
    .line 76
    if-ne v8, v1, :cond_4

    .line 77
    .line 78
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 79
    .line 80
    return v0

    .line 81
    :cond_4
    if-ltz v2, :cond_5

    .line 82
    .line 83
    array-length p1, p1

    .line 84
    add-int/lit8 p1, p1, 0xe

    .line 85
    .line 86
    if-le v9, p1, :cond_6

    .line 87
    .line 88
    :cond_5
    const/high16 p1, -0x80000000

    .line 89
    .line 90
    if-ne v2, p1, :cond_f

    .line 91
    .line 92
    const/16 p1, 0x11

    .line 93
    .line 94
    if-ne v9, p1, :cond_f

    .line 95
    .line 96
    if-nez v4, :cond_6

    .line 97
    .line 98
    goto/16 :goto_3

    .line 99
    .line 100
    :cond_6
    const/16 p1, 0x10

    .line 101
    .line 102
    const/16 v1, 0x2c

    .line 103
    .line 104
    if-ne v8, v1, :cond_8

    .line 105
    .line 106
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 107
    .line 108
    add-int/2addr v0, v9

    .line 109
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 116
    .line 117
    const/4 v0, 0x3

    .line 118
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 119
    .line 120
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 121
    .line 122
    if-eqz v4, :cond_7

    .line 123
    .line 124
    neg-int v2, v2

    .line 125
    :cond_7
    return v2

    .line 126
    :cond_8
    const/16 v7, 0x7d

    .line 127
    .line 128
    if-ne v8, v7, :cond_e

    .line 129
    .line 130
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 131
    .line 132
    add-int/lit8 v10, v3, 0x2

    .line 133
    .line 134
    add-int/2addr v8, v9

    .line 135
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-ne v8, v1, :cond_9

    .line 140
    .line 141
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 142
    .line 143
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 144
    .line 145
    add-int/2addr p1, v10

    .line 146
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_9
    const/16 p1, 0x5d

    .line 156
    .line 157
    if-ne v8, p1, :cond_a

    .line 158
    .line 159
    const/16 p1, 0xf

    .line 160
    .line 161
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 162
    .line 163
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 164
    .line 165
    add-int/2addr p1, v10

    .line 166
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_a
    if-ne v8, v7, :cond_b

    .line 176
    .line 177
    const/16 p1, 0xd

    .line 178
    .line 179
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 180
    .line 181
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 182
    .line 183
    add-int/2addr p1, v10

    .line 184
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 185
    .line 186
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_b
    const/16 p1, 0x1a

    .line 194
    .line 195
    if-ne v8, p1, :cond_d

    .line 196
    .line 197
    const/16 v0, 0x14

    .line 198
    .line 199
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 200
    .line 201
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 202
    .line 203
    add-int/2addr v3, v5

    .line 204
    add-int/2addr v3, v0

    .line 205
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 206
    .line 207
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 208
    .line 209
    :goto_2
    const/4 p1, 0x4

    .line 210
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 211
    .line 212
    if-eqz v4, :cond_c

    .line 213
    .line 214
    neg-int v2, v2

    .line 215
    :cond_c
    return v2

    .line 216
    :cond_d
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 217
    .line 218
    return v0

    .line 219
    :cond_e
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 220
    .line 221
    return v0

    .line 222
    :cond_f
    :goto_3
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 223
    .line 224
    return v0

    .line 225
    :cond_10
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 226
    .line 227
    return v0
.end method

.method public final scanFieldIntArray([C)[I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, -0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 15
    .line 16
    return-object v4

    .line 17
    :cond_0
    move-object/from16 v2, p1

    .line 18
    .line 19
    array-length v2, v2

    .line 20
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 21
    .line 22
    add-int/lit8 v6, v2, 0x1

    .line 23
    .line 24
    add-int/2addr v5, v2

    .line 25
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v7, 0x5b

    .line 30
    .line 31
    if-eq v5, v7, :cond_1

    .line 32
    .line 33
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 34
    .line 35
    return-object v4

    .line 36
    :cond_1
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 37
    .line 38
    add-int/lit8 v5, v2, 0x2

    .line 39
    .line 40
    add-int/2addr v3, v6

    .line 41
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/16 v6, 0x10

    .line 46
    .line 47
    new-array v7, v6, [I

    .line 48
    .line 49
    const/4 v8, -0x1

    .line 50
    const/16 v9, 0x2c

    .line 51
    .line 52
    const/4 v10, 0x3

    .line 53
    const/16 v11, 0x5d

    .line 54
    .line 55
    const/4 v12, 0x1

    .line 56
    if-ne v3, v11, :cond_2

    .line 57
    .line 58
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 59
    .line 60
    add-int/2addr v2, v10

    .line 61
    add-int/2addr v3, v5

    .line 62
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const/4 v14, 0x0

    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_2
    const/4 v2, 0x0

    .line 70
    :goto_0
    const/16 v13, 0x2d

    .line 71
    .line 72
    if-ne v3, v13, :cond_3

    .line 73
    .line 74
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 75
    .line 76
    add-int/lit8 v13, v5, 0x1

    .line 77
    .line 78
    add-int/2addr v3, v5

    .line 79
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    move v5, v13

    .line 84
    const/4 v13, 0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const/4 v13, 0x0

    .line 87
    :goto_1
    const/16 v14, 0x30

    .line 88
    .line 89
    if-lt v3, v14, :cond_10

    .line 90
    .line 91
    const/16 v15, 0x39

    .line 92
    .line 93
    if-gt v3, v15, :cond_10

    .line 94
    .line 95
    add-int/lit8 v3, v3, -0x30

    .line 96
    .line 97
    :goto_2
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 98
    .line 99
    add-int/lit8 v16, v5, 0x1

    .line 100
    .line 101
    add-int/2addr v4, v5

    .line 102
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-lt v4, v14, :cond_4

    .line 107
    .line 108
    if-gt v4, v15, :cond_4

    .line 109
    .line 110
    mul-int/lit8 v3, v3, 0xa

    .line 111
    .line 112
    add-int/lit8 v4, v4, -0x30

    .line 113
    .line 114
    add-int/2addr v3, v4

    .line 115
    move/from16 v5, v16

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    array-length v14, v7

    .line 119
    if-lt v2, v14, :cond_5

    .line 120
    .line 121
    array-length v14, v7

    .line 122
    mul-int/lit8 v14, v14, 0x3

    .line 123
    .line 124
    div-int/lit8 v14, v14, 0x2

    .line 125
    .line 126
    new-array v14, v14, [I

    .line 127
    .line 128
    invoke-static {v7, v1, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    .line 130
    .line 131
    move-object v7, v14

    .line 132
    :cond_5
    add-int/lit8 v14, v2, 0x1

    .line 133
    .line 134
    if-eqz v13, :cond_6

    .line 135
    .line 136
    neg-int v3, v3

    .line 137
    :cond_6
    aput v3, v7, v2

    .line 138
    .line 139
    if-ne v4, v9, :cond_7

    .line 140
    .line 141
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 142
    .line 143
    add-int/lit8 v5, v5, 0x2

    .line 144
    .line 145
    add-int v2, v2, v16

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    move v3, v2

    .line 152
    const/4 v2, 0x0

    .line 153
    goto/16 :goto_5

    .line 154
    .line 155
    :cond_7
    if-ne v4, v11, :cond_f

    .line 156
    .line 157
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 158
    .line 159
    add-int/lit8 v3, v5, 0x2

    .line 160
    .line 161
    add-int v2, v2, v16

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    move/from16 v17, v3

    .line 168
    .line 169
    move v3, v2

    .line 170
    move/from16 v2, v17

    .line 171
    .line 172
    :goto_3
    array-length v4, v7

    .line 173
    if-eq v14, v4, :cond_8

    .line 174
    .line 175
    new-array v4, v14, [I

    .line 176
    .line 177
    invoke-static {v7, v1, v4, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    .line 179
    .line 180
    move-object v7, v4

    .line 181
    :cond_8
    if-ne v3, v9, :cond_9

    .line 182
    .line 183
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 184
    .line 185
    sub-int/2addr v2, v12

    .line 186
    add-int/2addr v2, v1

    .line 187
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 188
    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 190
    .line 191
    .line 192
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 193
    .line 194
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 195
    .line 196
    return-object v7

    .line 197
    :cond_9
    const/16 v1, 0x7d

    .line 198
    .line 199
    if-ne v3, v1, :cond_e

    .line 200
    .line 201
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 202
    .line 203
    add-int/2addr v3, v2

    .line 204
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-ne v3, v9, :cond_a

    .line 209
    .line 210
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 211
    .line 212
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 213
    .line 214
    add-int/2addr v1, v2

    .line 215
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 216
    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_a
    if-ne v3, v11, :cond_b

    .line 222
    .line 223
    const/16 v1, 0xf

    .line 224
    .line 225
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 226
    .line 227
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 228
    .line 229
    add-int/2addr v1, v2

    .line 230
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 231
    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_b
    if-ne v3, v1, :cond_c

    .line 237
    .line 238
    const/16 v1, 0xd

    .line 239
    .line 240
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 241
    .line 242
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 243
    .line 244
    add-int/2addr v1, v2

    .line 245
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 246
    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_c
    const/16 v1, 0x1a

    .line 252
    .line 253
    if-ne v3, v1, :cond_d

    .line 254
    .line 255
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 256
    .line 257
    add-int/2addr v3, v2

    .line 258
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 259
    .line 260
    const/16 v2, 0x14

    .line 261
    .line 262
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 263
    .line 264
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 265
    .line 266
    :goto_4
    const/4 v1, 0x4

    .line 267
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 268
    .line 269
    return-object v7

    .line 270
    :cond_d
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 271
    .line 272
    const/4 v2, 0x0

    .line 273
    return-object v2

    .line 274
    :cond_e
    const/4 v2, 0x0

    .line 275
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 276
    .line 277
    return-object v2

    .line 278
    :cond_f
    const/4 v2, 0x0

    .line 279
    move v3, v4

    .line 280
    move/from16 v5, v16

    .line 281
    .line 282
    :goto_5
    move-object v4, v2

    .line 283
    move v2, v14

    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_10
    move-object v2, v4

    .line 287
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 288
    .line 289
    return-object v2
.end method

.method public scanFieldLong([C)J
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 p1, -0x2

    .line 13
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 14
    .line 15
    return-wide v2

    .line 16
    :cond_0
    array-length v1, p1

    .line 17
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 18
    .line 19
    add-int/lit8 v5, v1, 0x1

    .line 20
    .line 21
    add-int/2addr v4, v1

    .line 22
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/16 v6, 0x2d

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    if-ne v4, v6, :cond_1

    .line 30
    .line 31
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x2

    .line 34
    .line 35
    add-int/2addr v0, v5

    .line 36
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    move v5, v1

    .line 41
    const/4 v0, 0x1

    .line 42
    :cond_1
    const/16 v1, 0x30

    .line 43
    .line 44
    const/4 v6, -0x1

    .line 45
    if-lt v4, v1, :cond_e

    .line 46
    .line 47
    const/16 v8, 0x39

    .line 48
    .line 49
    if-gt v4, v8, :cond_e

    .line 50
    .line 51
    sub-int/2addr v4, v1

    .line 52
    int-to-long v9, v4

    .line 53
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 54
    .line 55
    add-int/lit8 v11, v5, 0x1

    .line 56
    .line 57
    add-int/2addr v4, v5

    .line 58
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-lt v4, v1, :cond_2

    .line 63
    .line 64
    if-gt v4, v8, :cond_2

    .line 65
    .line 66
    const-wide/16 v12, 0xa

    .line 67
    .line 68
    mul-long v9, v9, v12

    .line 69
    .line 70
    add-int/lit8 v4, v4, -0x30

    .line 71
    .line 72
    int-to-long v4, v4

    .line 73
    add-long/2addr v9, v4

    .line 74
    move v5, v11

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/16 v1, 0x2e

    .line 77
    .line 78
    if-ne v4, v1, :cond_3

    .line 79
    .line 80
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 81
    .line 82
    return-wide v2

    .line 83
    :cond_3
    array-length p1, p1

    .line 84
    sub-int p1, v11, p1

    .line 85
    .line 86
    const/16 v1, 0x15

    .line 87
    .line 88
    if-ge p1, v1, :cond_d

    .line 89
    .line 90
    cmp-long p1, v9, v2

    .line 91
    .line 92
    if-gez p1, :cond_4

    .line 93
    .line 94
    const-wide/high16 v12, -0x8000000000000000L

    .line 95
    .line 96
    cmp-long p1, v9, v12

    .line 97
    .line 98
    if-nez p1, :cond_d

    .line 99
    .line 100
    if-eqz v0, :cond_d

    .line 101
    .line 102
    :cond_4
    const/16 p1, 0x10

    .line 103
    .line 104
    const/16 v1, 0x2c

    .line 105
    .line 106
    if-ne v4, v1, :cond_6

    .line 107
    .line 108
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 109
    .line 110
    add-int/2addr v1, v11

    .line 111
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 118
    .line 119
    const/4 v1, 0x3

    .line 120
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 121
    .line 122
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 123
    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    neg-long v9, v9

    .line 127
    :cond_5
    return-wide v9

    .line 128
    :cond_6
    const/16 v8, 0x7d

    .line 129
    .line 130
    if-ne v4, v8, :cond_c

    .line 131
    .line 132
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 133
    .line 134
    add-int/lit8 v12, v5, 0x2

    .line 135
    .line 136
    add-int/2addr v4, v11

    .line 137
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-ne v4, v1, :cond_7

    .line 142
    .line 143
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 144
    .line 145
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 146
    .line 147
    add-int/2addr p1, v12

    .line 148
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_7
    const/16 p1, 0x5d

    .line 158
    .line 159
    if-ne v4, p1, :cond_8

    .line 160
    .line 161
    const/16 p1, 0xf

    .line 162
    .line 163
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 164
    .line 165
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 166
    .line 167
    add-int/2addr p1, v12

    .line 168
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_8
    if-ne v4, v8, :cond_9

    .line 178
    .line 179
    const/16 p1, 0xd

    .line 180
    .line 181
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 182
    .line 183
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 184
    .line 185
    add-int/2addr p1, v12

    .line 186
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_9
    const/16 p1, 0x1a

    .line 196
    .line 197
    if-ne v4, p1, :cond_b

    .line 198
    .line 199
    const/16 v1, 0x14

    .line 200
    .line 201
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 202
    .line 203
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 204
    .line 205
    add-int/2addr v5, v7

    .line 206
    add-int/2addr v5, v1

    .line 207
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 208
    .line 209
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 210
    .line 211
    :goto_1
    const/4 p1, 0x4

    .line 212
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 213
    .line 214
    if-eqz v0, :cond_a

    .line 215
    .line 216
    neg-long v9, v9

    .line 217
    :cond_a
    return-wide v9

    .line 218
    :cond_b
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 219
    .line 220
    return-wide v2

    .line 221
    :cond_c
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 222
    .line 223
    return-wide v2

    .line 224
    :cond_d
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 225
    .line 226
    return-wide v2

    .line 227
    :cond_e
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 228
    .line 229
    return-wide v2
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x2

    .line 11
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    array-length v1, p1

    .line 19
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 20
    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    add-int/2addr v2, v1

    .line 24
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x22

    .line 29
    .line 30
    const/4 v4, -0x1

    .line 31
    if-eq v1, v2, :cond_1

    .line 32
    .line 33
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 41
    .line 42
    array-length v5, p1

    .line 43
    add-int/2addr v1, v5

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eq v1, v4, :cond_b

    .line 51
    .line 52
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 53
    .line 54
    array-length v6, p1

    .line 55
    add-int/2addr v5, v6

    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    sub-int v6, v1, v5

    .line 59
    .line 60
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const/16 v6, 0x5c

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eq v7, v4, :cond_4

    .line 71
    .line 72
    :goto_0
    add-int/lit8 v5, v1, -0x1

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    :goto_1
    if-ltz v5, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-ne v8, v6, :cond_2

    .line 82
    .line 83
    add-int/lit8 v7, v7, 0x1

    .line 84
    .line 85
    add-int/lit8 v5, v5, -0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    rem-int/lit8 v7, v7, 0x2

    .line 89
    .line 90
    if-nez v7, :cond_3

    .line 91
    .line 92
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 93
    .line 94
    array-length v2, p1

    .line 95
    add-int/2addr v2, v0

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    sub-int v2, v1, v2

    .line 99
    .line 100
    array-length v5, p1

    .line 101
    add-int/2addr v0, v5

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    goto :goto_0

    .line 120
    :cond_4
    :goto_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 121
    .line 122
    array-length p1, p1

    .line 123
    add-int/2addr p1, v0

    .line 124
    add-int/lit8 p1, p1, 0x1

    .line 125
    .line 126
    sub-int/2addr v1, p1

    .line 127
    add-int/lit8 v1, v1, 0x1

    .line 128
    .line 129
    add-int/2addr v1, v3

    .line 130
    add-int/lit8 p1, v1, 0x1

    .line 131
    .line 132
    add-int/2addr v0, v1

    .line 133
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const/16 v2, 0x2c

    .line 138
    .line 139
    if-ne v0, v2, :cond_5

    .line 140
    .line 141
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 142
    .line 143
    add-int/2addr v0, p1

    .line 144
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 151
    .line 152
    const/4 p1, 0x3

    .line 153
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 154
    .line 155
    return-object v5

    .line 156
    :cond_5
    const/16 v3, 0x7d

    .line 157
    .line 158
    if-ne v0, v3, :cond_a

    .line 159
    .line 160
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 161
    .line 162
    add-int/lit8 v6, v1, 0x2

    .line 163
    .line 164
    add-int/2addr v0, p1

    .line 165
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-ne p1, v2, :cond_6

    .line 170
    .line 171
    const/16 p1, 0x10

    .line 172
    .line 173
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 174
    .line 175
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 176
    .line 177
    add-int/2addr p1, v6

    .line 178
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    const/16 v0, 0x5d

    .line 188
    .line 189
    if-ne p1, v0, :cond_7

    .line 190
    .line 191
    const/16 p1, 0xf

    .line 192
    .line 193
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 194
    .line 195
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 196
    .line 197
    add-int/2addr p1, v6

    .line 198
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_7
    if-ne p1, v3, :cond_8

    .line 208
    .line 209
    const/16 p1, 0xd

    .line 210
    .line 211
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 212
    .line 213
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 214
    .line 215
    add-int/2addr p1, v6

    .line 216
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 217
    .line 218
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_8
    const/16 v0, 0x1a

    .line 226
    .line 227
    if-ne p1, v0, :cond_9

    .line 228
    .line 229
    const/16 p1, 0x14

    .line 230
    .line 231
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 232
    .line 233
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 234
    .line 235
    add-int/lit8 v1, v1, 0x1

    .line 236
    .line 237
    add-int/2addr v1, p1

    .line 238
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 239
    .line 240
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 241
    .line 242
    :goto_3
    const/4 p1, 0x4

    .line 243
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 244
    .line 245
    return-object v5

    .line 246
    :cond_9
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    return-object p1

    .line 253
    :cond_a
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    return-object p1

    .line 260
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 261
    .line 262
    const-string v0, "unclosed str"

    .line 263
    .line 264
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 p1, -0x2

    .line 3
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p2

    .line 5
    array-length p1, p1

    .line 6
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v4, 0x5b

    const/4 v5, -0x1

    if-eq v1, v4, :cond_1

    .line 7
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 8
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v4, 0x2

    add-int/2addr p1, v4

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    :goto_0
    const/16 v3, 0x5d

    const/16 v6, 0x2c

    const/16 v7, 0x22

    const/4 v8, 0x1

    if-ne v1, v7, :cond_6

    .line 9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, p1

    .line 10
    invoke-virtual {p0, v7, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    if-eq v1, v5, :cond_5

    .line 11
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, p1

    sub-int v10, v1, v9

    .line 12
    invoke-virtual {p0, v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5c

    .line 13
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v5, :cond_4

    :goto_1
    add-int/lit8 v9, v1, -0x1

    const/4 v11, 0x0

    :goto_2
    if-ltz v9, :cond_2

    .line 14
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_2

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 15
    :cond_2
    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_3

    .line 16
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v9, v7, p1

    sub-int v9, v1, v9

    add-int/2addr v7, p1

    .line 17
    invoke-virtual {p0, v7, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v7

    .line 18
    invoke-static {v7, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 19
    invoke-virtual {p0, v7, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    goto :goto_1

    .line 20
    :cond_4
    :goto_3
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v10, v7, p1

    sub-int/2addr v1, v10

    add-int/2addr v1, v8

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    add-int/2addr v7, v1

    .line 21
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 22
    invoke-interface {p2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 23
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "unclosed str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/16 v7, 0x6e

    if-ne v1, v7, :cond_9

    .line 24
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, p1

    .line 25
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v9, 0x75

    if-ne v7, v9, :cond_9

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 26
    invoke-static {v7, p1, v8, p0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    move-result v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_9

    .line 27
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 28
    invoke-static {v7, p1, v4, p0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    move-result v7

    if-ne v7, v8, :cond_9

    add-int/lit8 v1, p1, 0x3

    .line 29
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x4

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 30
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_4
    if-ne v1, v6, :cond_7

    .line 31
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move p1, v3

    goto/16 :goto_0

    :cond_7
    if-ne v1, v3, :cond_8

    .line 32
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    goto :goto_5

    .line 33
    :cond_8
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_9
    if-ne v1, v3, :cond_10

    .line 34
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 35
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    :goto_5
    if-ne p1, v6, :cond_a

    .line 36
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 38
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p2

    :cond_a
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_f

    .line 39
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v6, :cond_b

    const/16 p1, 0x10

    .line 40
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 41
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_b
    if-ne p1, v3, :cond_c

    const/16 p1, 0xf

    .line 43
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 44
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_c
    if-ne p1, v0, :cond_d

    const/16 p1, 0xd

    .line 46
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 47
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 48
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    :cond_d
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_e

    .line 49
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 p1, 0x14

    .line 50
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 51
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_6
    const/4 p1, 0x4

    .line 52
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p2

    .line 53
    :cond_e
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 54
    :cond_f
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 55
    :cond_10
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "illega str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .locals 0

    .line 58
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public scanFieldSymbol([C)J
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p1, -0x2

    .line 13
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 14
    .line 15
    return-wide v1

    .line 16
    :cond_0
    array-length p1, p1

    .line 17
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 18
    .line 19
    add-int/lit8 v3, p1, 0x1

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/16 v0, 0x22

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 32
    .line 33
    return-wide v1

    .line 34
    :cond_1
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :goto_0
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 40
    .line 41
    add-int/lit8 v7, v3, 0x1

    .line 42
    .line 43
    add-int/2addr p1, v3

    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-ne p1, v0, :cond_8

    .line 49
    .line 50
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 51
    .line 52
    add-int/lit8 v0, v3, 0x2

    .line 53
    .line 54
    add-int/2addr p1, v7

    .line 55
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/16 v7, 0x2c

    .line 60
    .line 61
    if-ne p1, v7, :cond_2

    .line 62
    .line 63
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 64
    .line 65
    add-int/2addr p1, v0

    .line 66
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 73
    .line 74
    const/4 p1, 0x3

    .line 75
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 76
    .line 77
    return-wide v5

    .line 78
    :cond_2
    const/16 v8, 0x7d

    .line 79
    .line 80
    if-ne p1, v8, :cond_7

    .line 81
    .line 82
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 83
    .line 84
    add-int/lit8 v9, v3, 0x3

    .line 85
    .line 86
    add-int/2addr p1, v0

    .line 87
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-ne p1, v7, :cond_3

    .line 92
    .line 93
    const/16 p1, 0x10

    .line 94
    .line 95
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 96
    .line 97
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 98
    .line 99
    add-int/2addr p1, v9

    .line 100
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/16 v0, 0x5d

    .line 110
    .line 111
    if-ne p1, v0, :cond_4

    .line 112
    .line 113
    const/16 p1, 0xf

    .line 114
    .line 115
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 116
    .line 117
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 118
    .line 119
    add-int/2addr p1, v9

    .line 120
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    if-ne p1, v8, :cond_5

    .line 130
    .line 131
    const/16 p1, 0xd

    .line 132
    .line 133
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 134
    .line 135
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 136
    .line 137
    add-int/2addr p1, v9

    .line 138
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    const/16 v0, 0x1a

    .line 148
    .line 149
    if-ne p1, v0, :cond_6

    .line 150
    .line 151
    const/16 p1, 0x14

    .line 152
    .line 153
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 154
    .line 155
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 156
    .line 157
    add-int/lit8 v3, v3, 0x2

    .line 158
    .line 159
    add-int/2addr v3, p1

    .line 160
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 161
    .line 162
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 163
    .line 164
    :goto_1
    const/4 p1, 0x4

    .line 165
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 166
    .line 167
    return-wide v5

    .line 168
    :cond_6
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 169
    .line 170
    return-wide v1

    .line 171
    :cond_7
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 172
    .line 173
    return-wide v1

    .line 174
    :cond_8
    int-to-long v8, p1

    .line 175
    xor-long/2addr v5, v8

    .line 176
    const-wide v8, 0x100000001b3L

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    mul-long v5, v5, v8

    .line 182
    .line 183
    const/16 v3, 0x5c

    .line 184
    .line 185
    if-ne p1, v3, :cond_9

    .line 186
    .line 187
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 188
    .line 189
    return-wide v1

    .line 190
    :cond_9
    move v3, v7

    .line 191
    goto/16 :goto_0
.end method

.method public scanFieldUUID([C)Ljava/util/UUID;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, -0x2

    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 17
    .line 18
    return-object v5

    .line 19
    :cond_0
    array-length v3, v1

    .line 20
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 21
    .line 22
    add-int/lit8 v7, v3, 0x1

    .line 23
    .line 24
    add-int/2addr v6, v3

    .line 25
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/16 v9, 0x22

    .line 30
    .line 31
    const/4 v11, -0x1

    .line 32
    const/4 v12, 0x4

    .line 33
    if-ne v6, v9, :cond_20

    .line 34
    .line 35
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 36
    .line 37
    array-length v6, v1

    .line 38
    add-int/2addr v3, v6

    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    invoke-virtual {v0, v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eq v3, v11, :cond_1f

    .line 46
    .line 47
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 48
    .line 49
    array-length v9, v1

    .line 50
    add-int/2addr v6, v9

    .line 51
    add-int/lit8 v6, v6, 0x1

    .line 52
    .line 53
    sub-int v9, v3, v6

    .line 54
    .line 55
    const/16 v13, 0x24

    .line 56
    .line 57
    const/16 v2, 0x46

    .line 58
    .line 59
    const/16 v14, 0x41

    .line 60
    .line 61
    const/16 v15, 0x66

    .line 62
    .line 63
    const/16 v11, 0x61

    .line 64
    .line 65
    const/16 v10, 0x39

    .line 66
    .line 67
    const/16 v8, 0x30

    .line 68
    .line 69
    if-ne v9, v13, :cond_15

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    const-wide/16 v19, 0x0

    .line 73
    .line 74
    :goto_0
    const/16 v13, 0x8

    .line 75
    .line 76
    if-ge v9, v13, :cond_4

    .line 77
    .line 78
    add-int v13, v6, v9

    .line 79
    .line 80
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    if-lt v13, v8, :cond_1

    .line 85
    .line 86
    if-gt v13, v10, :cond_1

    .line 87
    .line 88
    add-int/lit8 v13, v13, -0x30

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    if-lt v13, v11, :cond_2

    .line 92
    .line 93
    if-gt v13, v15, :cond_2

    .line 94
    .line 95
    add-int/lit8 v13, v13, -0x57

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    if-lt v13, v14, :cond_3

    .line 99
    .line 100
    if-gt v13, v2, :cond_3

    .line 101
    .line 102
    add-int/lit8 v13, v13, -0x37

    .line 103
    .line 104
    :goto_1
    shl-long v19, v19, v12

    .line 105
    .line 106
    int-to-long v12, v13

    .line 107
    or-long v19, v19, v12

    .line 108
    .line 109
    add-int/lit8 v9, v9, 0x1

    .line 110
    .line 111
    const/4 v12, 0x4

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 114
    .line 115
    return-object v5

    .line 116
    :cond_4
    const/16 v9, 0x9

    .line 117
    .line 118
    :goto_2
    const/16 v12, 0xd

    .line 119
    .line 120
    if-ge v9, v12, :cond_8

    .line 121
    .line 122
    add-int v12, v6, v9

    .line 123
    .line 124
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-lt v12, v8, :cond_5

    .line 129
    .line 130
    if-gt v12, v10, :cond_5

    .line 131
    .line 132
    add-int/lit8 v12, v12, -0x30

    .line 133
    .line 134
    :goto_3
    const/4 v13, 0x4

    .line 135
    goto :goto_4

    .line 136
    :cond_5
    if-lt v12, v11, :cond_6

    .line 137
    .line 138
    if-gt v12, v15, :cond_6

    .line 139
    .line 140
    add-int/lit8 v12, v12, -0x57

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_6
    if-lt v12, v14, :cond_7

    .line 144
    .line 145
    if-gt v12, v2, :cond_7

    .line 146
    .line 147
    add-int/lit8 v12, v12, -0x37

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :goto_4
    shl-long v19, v19, v13

    .line 151
    .line 152
    int-to-long v12, v12

    .line 153
    or-long v19, v19, v12

    .line 154
    .line 155
    add-int/lit8 v9, v9, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_7
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 159
    .line 160
    return-object v5

    .line 161
    :cond_8
    const/16 v9, 0xe

    .line 162
    .line 163
    move-wide/from16 v12, v19

    .line 164
    .line 165
    :goto_5
    const/16 v5, 0x12

    .line 166
    .line 167
    if-ge v9, v5, :cond_c

    .line 168
    .line 169
    add-int v5, v6, v9

    .line 170
    .line 171
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-lt v5, v8, :cond_9

    .line 176
    .line 177
    if-gt v5, v10, :cond_9

    .line 178
    .line 179
    add-int/lit8 v5, v5, -0x30

    .line 180
    .line 181
    :goto_6
    const/16 v16, 0x4

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_9
    if-lt v5, v11, :cond_a

    .line 185
    .line 186
    if-gt v5, v15, :cond_a

    .line 187
    .line 188
    add-int/lit8 v5, v5, -0x57

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_a
    if-lt v5, v14, :cond_b

    .line 192
    .line 193
    if-gt v5, v2, :cond_b

    .line 194
    .line 195
    add-int/lit8 v5, v5, -0x37

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :goto_7
    shl-long v12, v12, v16

    .line 199
    .line 200
    move/from16 v20, v3

    .line 201
    .line 202
    int-to-long v2, v5

    .line 203
    or-long/2addr v12, v2

    .line 204
    add-int/lit8 v9, v9, 0x1

    .line 205
    .line 206
    move/from16 v3, v20

    .line 207
    .line 208
    const/16 v2, 0x46

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_b
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 212
    .line 213
    :goto_8
    const/4 v1, 0x0

    .line 214
    return-object v1

    .line 215
    :cond_c
    move/from16 v20, v3

    .line 216
    .line 217
    const/16 v2, 0x13

    .line 218
    .line 219
    const-wide/16 v17, 0x0

    .line 220
    .line 221
    :goto_9
    const/16 v3, 0x17

    .line 222
    .line 223
    if-ge v2, v3, :cond_10

    .line 224
    .line 225
    add-int v3, v6, v2

    .line 226
    .line 227
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-lt v3, v8, :cond_d

    .line 232
    .line 233
    if-gt v3, v10, :cond_d

    .line 234
    .line 235
    add-int/lit8 v3, v3, -0x30

    .line 236
    .line 237
    :goto_a
    const/4 v5, 0x4

    .line 238
    goto :goto_b

    .line 239
    :cond_d
    if-lt v3, v11, :cond_e

    .line 240
    .line 241
    if-gt v3, v15, :cond_e

    .line 242
    .line 243
    add-int/lit8 v3, v3, -0x57

    .line 244
    .line 245
    goto :goto_a

    .line 246
    :cond_e
    if-lt v3, v14, :cond_f

    .line 247
    .line 248
    const/16 v5, 0x46

    .line 249
    .line 250
    if-gt v3, v5, :cond_f

    .line 251
    .line 252
    add-int/lit8 v3, v3, -0x37

    .line 253
    .line 254
    goto :goto_a

    .line 255
    :goto_b
    shl-long v16, v17, v5

    .line 256
    .line 257
    int-to-long v14, v3

    .line 258
    or-long v17, v16, v14

    .line 259
    .line 260
    add-int/lit8 v2, v2, 0x1

    .line 261
    .line 262
    const/16 v14, 0x41

    .line 263
    .line 264
    const/16 v15, 0x66

    .line 265
    .line 266
    goto :goto_9

    .line 267
    :cond_f
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_10
    const/16 v2, 0x18

    .line 271
    .line 272
    move-wide/from16 v14, v17

    .line 273
    .line 274
    const/16 v3, 0x24

    .line 275
    .line 276
    :goto_c
    if-ge v2, v3, :cond_14

    .line 277
    .line 278
    add-int v9, v6, v2

    .line 279
    .line 280
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    if-lt v9, v8, :cond_11

    .line 285
    .line 286
    if-gt v9, v10, :cond_11

    .line 287
    .line 288
    add-int/lit8 v9, v9, -0x30

    .line 289
    .line 290
    :goto_d
    const/4 v3, 0x4

    .line 291
    goto :goto_e

    .line 292
    :cond_11
    if-lt v9, v11, :cond_12

    .line 293
    .line 294
    const/16 v3, 0x66

    .line 295
    .line 296
    if-gt v9, v3, :cond_12

    .line 297
    .line 298
    add-int/lit8 v9, v9, -0x57

    .line 299
    .line 300
    goto :goto_d

    .line 301
    :cond_12
    const/16 v3, 0x41

    .line 302
    .line 303
    if-lt v9, v3, :cond_13

    .line 304
    .line 305
    const/16 v3, 0x46

    .line 306
    .line 307
    if-gt v9, v3, :cond_13

    .line 308
    .line 309
    add-int/lit8 v9, v9, -0x37

    .line 310
    .line 311
    goto :goto_d

    .line 312
    :goto_e
    shl-long/2addr v14, v3

    .line 313
    int-to-long v10, v9

    .line 314
    or-long/2addr v14, v10

    .line 315
    add-int/lit8 v2, v2, 0x1

    .line 316
    .line 317
    const/16 v3, 0x24

    .line 318
    .line 319
    const/16 v10, 0x39

    .line 320
    .line 321
    const/16 v11, 0x61

    .line 322
    .line 323
    goto :goto_c

    .line 324
    :cond_13
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_14
    new-instance v2, Ljava/util/UUID;

    .line 328
    .line 329
    invoke-direct {v2, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    .line 330
    .line 331
    .line 332
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 333
    .line 334
    array-length v1, v1

    .line 335
    add-int/2addr v1, v3

    .line 336
    add-int/lit8 v1, v1, 0x1

    .line 337
    .line 338
    sub-int v1, v20, v1

    .line 339
    .line 340
    add-int/lit8 v1, v1, 0x1

    .line 341
    .line 342
    add-int/2addr v1, v7

    .line 343
    add-int/lit8 v4, v1, 0x1

    .line 344
    .line 345
    add-int/2addr v3, v1

    .line 346
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    goto/16 :goto_16

    .line 351
    .line 352
    :cond_15
    move/from16 v20, v3

    .line 353
    .line 354
    const/16 v2, 0x20

    .line 355
    .line 356
    if-ne v9, v2, :cond_1e

    .line 357
    .line 358
    const/4 v9, 0x0

    .line 359
    const/16 v10, 0x10

    .line 360
    .line 361
    const-wide/16 v11, 0x0

    .line 362
    .line 363
    :goto_f
    if-ge v9, v10, :cond_19

    .line 364
    .line 365
    add-int v10, v6, v9

    .line 366
    .line 367
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 368
    .line 369
    .line 370
    move-result v10

    .line 371
    if-lt v10, v8, :cond_16

    .line 372
    .line 373
    const/16 v13, 0x39

    .line 374
    .line 375
    if-gt v10, v13, :cond_16

    .line 376
    .line 377
    add-int/lit8 v10, v10, -0x30

    .line 378
    .line 379
    :goto_10
    const/4 v13, 0x4

    .line 380
    goto :goto_11

    .line 381
    :cond_16
    const/16 v3, 0x61

    .line 382
    .line 383
    if-lt v10, v3, :cond_17

    .line 384
    .line 385
    const/16 v13, 0x66

    .line 386
    .line 387
    if-gt v10, v13, :cond_17

    .line 388
    .line 389
    add-int/lit8 v10, v10, -0x57

    .line 390
    .line 391
    goto :goto_10

    .line 392
    :cond_17
    const/16 v5, 0x41

    .line 393
    .line 394
    if-lt v10, v5, :cond_18

    .line 395
    .line 396
    const/16 v13, 0x46

    .line 397
    .line 398
    if-gt v10, v13, :cond_18

    .line 399
    .line 400
    add-int/lit8 v10, v10, -0x37

    .line 401
    .line 402
    goto :goto_10

    .line 403
    :goto_11
    shl-long/2addr v11, v13

    .line 404
    int-to-long v13, v10

    .line 405
    or-long/2addr v11, v13

    .line 406
    add-int/lit8 v9, v9, 0x1

    .line 407
    .line 408
    const/16 v10, 0x10

    .line 409
    .line 410
    goto :goto_f

    .line 411
    :cond_18
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 412
    .line 413
    goto/16 :goto_8

    .line 414
    .line 415
    :cond_19
    const/16 v10, 0x10

    .line 416
    .line 417
    const-wide/16 v14, 0x0

    .line 418
    .line 419
    :goto_12
    if-ge v10, v2, :cond_1d

    .line 420
    .line 421
    add-int v9, v6, v10

    .line 422
    .line 423
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 424
    .line 425
    .line 426
    move-result v9

    .line 427
    const/16 v13, 0x39

    .line 428
    .line 429
    if-lt v9, v8, :cond_1a

    .line 430
    .line 431
    if-gt v9, v13, :cond_1a

    .line 432
    .line 433
    add-int/lit8 v9, v9, -0x30

    .line 434
    .line 435
    const/16 v2, 0x46

    .line 436
    .line 437
    const/16 v3, 0x61

    .line 438
    .line 439
    :goto_13
    const/16 v5, 0x41

    .line 440
    .line 441
    :goto_14
    const/16 v17, 0x4

    .line 442
    .line 443
    goto :goto_15

    .line 444
    :cond_1a
    const/16 v3, 0x61

    .line 445
    .line 446
    const/16 v2, 0x66

    .line 447
    .line 448
    if-lt v9, v3, :cond_1b

    .line 449
    .line 450
    if-gt v9, v2, :cond_1b

    .line 451
    .line 452
    add-int/lit8 v9, v9, -0x57

    .line 453
    .line 454
    const/16 v2, 0x46

    .line 455
    .line 456
    goto :goto_13

    .line 457
    :cond_1b
    const/16 v5, 0x41

    .line 458
    .line 459
    if-lt v9, v5, :cond_1c

    .line 460
    .line 461
    const/16 v2, 0x46

    .line 462
    .line 463
    if-gt v9, v2, :cond_1c

    .line 464
    .line 465
    add-int/lit8 v9, v9, -0x37

    .line 466
    .line 467
    goto :goto_14

    .line 468
    :goto_15
    shl-long v14, v14, v17

    .line 469
    .line 470
    int-to-long v2, v9

    .line 471
    or-long/2addr v14, v2

    .line 472
    add-int/lit8 v10, v10, 0x1

    .line 473
    .line 474
    const/16 v2, 0x20

    .line 475
    .line 476
    goto :goto_12

    .line 477
    :cond_1c
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 478
    .line 479
    goto/16 :goto_8

    .line 480
    .line 481
    :cond_1d
    new-instance v2, Ljava/util/UUID;

    .line 482
    .line 483
    invoke-direct {v2, v11, v12, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    .line 484
    .line 485
    .line 486
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 487
    .line 488
    array-length v1, v1

    .line 489
    add-int/2addr v1, v3

    .line 490
    add-int/lit8 v1, v1, 0x1

    .line 491
    .line 492
    sub-int v1, v20, v1

    .line 493
    .line 494
    add-int/lit8 v1, v1, 0x1

    .line 495
    .line 496
    add-int/2addr v1, v7

    .line 497
    add-int/lit8 v4, v1, 0x1

    .line 498
    .line 499
    add-int/2addr v3, v1

    .line 500
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    goto :goto_16

    .line 505
    :cond_1e
    const/4 v1, -0x1

    .line 506
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 507
    .line 508
    goto/16 :goto_8

    .line 509
    .line 510
    :cond_1f
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 511
    .line 512
    const-string v2, "unclosed str"

    .line 513
    .line 514
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    throw v1

    .line 518
    :cond_20
    const/16 v1, 0x6e

    .line 519
    .line 520
    if-ne v6, v1, :cond_27

    .line 521
    .line 522
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 523
    .line 524
    add-int/lit8 v2, v3, 0x2

    .line 525
    .line 526
    add-int/2addr v1, v7

    .line 527
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    const/16 v4, 0x75

    .line 532
    .line 533
    if-ne v1, v4, :cond_27

    .line 534
    .line 535
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 536
    .line 537
    add-int/lit8 v4, v3, 0x3

    .line 538
    .line 539
    add-int/2addr v1, v2

    .line 540
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    const/16 v2, 0x6c

    .line 545
    .line 546
    if-ne v1, v2, :cond_27

    .line 547
    .line 548
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 549
    .line 550
    add-int/lit8 v5, v3, 0x4

    .line 551
    .line 552
    add-int/2addr v1, v4

    .line 553
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    if-ne v1, v2, :cond_27

    .line 558
    .line 559
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 560
    .line 561
    add-int/lit8 v4, v3, 0x5

    .line 562
    .line 563
    add-int/2addr v1, v5

    .line 564
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    const/4 v2, 0x0

    .line 569
    :goto_16
    const/16 v3, 0x2c

    .line 570
    .line 571
    if-ne v1, v3, :cond_21

    .line 572
    .line 573
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 574
    .line 575
    add-int/2addr v1, v4

    .line 576
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 577
    .line 578
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 583
    .line 584
    const/4 v1, 0x3

    .line 585
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 586
    .line 587
    return-object v2

    .line 588
    :cond_21
    const/16 v3, 0x7d

    .line 589
    .line 590
    if-ne v1, v3, :cond_26

    .line 591
    .line 592
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 593
    .line 594
    add-int/lit8 v3, v4, 0x1

    .line 595
    .line 596
    add-int/2addr v1, v4

    .line 597
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    const/16 v5, 0x2c

    .line 602
    .line 603
    if-ne v1, v5, :cond_22

    .line 604
    .line 605
    const/16 v5, 0x10

    .line 606
    .line 607
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 608
    .line 609
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 610
    .line 611
    add-int/2addr v1, v3

    .line 612
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 613
    .line 614
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 619
    .line 620
    :goto_17
    const/4 v1, 0x4

    .line 621
    goto :goto_18

    .line 622
    :cond_22
    const/16 v5, 0x5d

    .line 623
    .line 624
    if-ne v1, v5, :cond_23

    .line 625
    .line 626
    const/16 v1, 0xf

    .line 627
    .line 628
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 629
    .line 630
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 631
    .line 632
    add-int/2addr v1, v3

    .line 633
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 634
    .line 635
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 640
    .line 641
    goto :goto_17

    .line 642
    :cond_23
    const/16 v5, 0x7d

    .line 643
    .line 644
    if-ne v1, v5, :cond_24

    .line 645
    .line 646
    const/16 v5, 0xd

    .line 647
    .line 648
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 649
    .line 650
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 651
    .line 652
    add-int/2addr v1, v3

    .line 653
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 654
    .line 655
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 660
    .line 661
    goto :goto_17

    .line 662
    :cond_24
    const/16 v3, 0x1a

    .line 663
    .line 664
    if-ne v1, v3, :cond_25

    .line 665
    .line 666
    const/16 v1, 0x14

    .line 667
    .line 668
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 669
    .line 670
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 671
    .line 672
    add-int/2addr v1, v4

    .line 673
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 674
    .line 675
    const/16 v1, 0x1a

    .line 676
    .line 677
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 678
    .line 679
    goto :goto_17

    .line 680
    :goto_18
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 681
    .line 682
    return-object v2

    .line 683
    :cond_25
    const/4 v1, -0x1

    .line 684
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 685
    .line 686
    const/4 v2, 0x0

    .line 687
    return-object v2

    .line 688
    :cond_26
    const/4 v1, -0x1

    .line 689
    const/4 v2, 0x0

    .line 690
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 691
    .line 692
    return-object v2

    .line 693
    :cond_27
    const/4 v1, -0x1

    .line 694
    const/4 v2, 0x0

    .line 695
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 696
    .line 697
    return-object v2
.end method

.method public final scanFloat(C)F
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/16 v4, 0x22

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v5, 0x0

    .line 20
    :goto_0
    const/4 v6, 0x2

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v7, 0x2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v7, 0x1

    .line 33
    :goto_1
    const/16 v8, 0x2d

    .line 34
    .line 35
    if-ne v2, v8, :cond_2

    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 v9, 0x0

    .line 40
    :goto_2
    if-eqz v9, :cond_3

    .line 41
    .line 42
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 43
    .line 44
    add-int/lit8 v10, v7, 0x1

    .line 45
    .line 46
    add-int/2addr v2, v7

    .line 47
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    move v7, v10

    .line 52
    :cond_3
    const/16 v10, 0x10

    .line 53
    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, -0x1

    .line 56
    const/16 v13, 0x30

    .line 57
    .line 58
    if-lt v2, v13, :cond_12

    .line 59
    .line 60
    const/16 v14, 0x39

    .line 61
    .line 62
    if-gt v2, v14, :cond_12

    .line 63
    .line 64
    sub-int/2addr v2, v13

    .line 65
    int-to-long v1, v2

    .line 66
    :goto_3
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 67
    .line 68
    add-int/lit8 v17, v7, 0x1

    .line 69
    .line 70
    add-int/2addr v15, v7

    .line 71
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v15

    .line 75
    const-wide/16 v18, 0xa

    .line 76
    .line 77
    if-lt v15, v13, :cond_4

    .line 78
    .line 79
    if-gt v15, v14, :cond_4

    .line 80
    .line 81
    mul-long v1, v1, v18

    .line 82
    .line 83
    add-int/lit8 v15, v15, -0x30

    .line 84
    .line 85
    int-to-long v3, v15

    .line 86
    add-long/2addr v1, v3

    .line 87
    move/from16 v7, v17

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    const/16 v4, 0x22

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const/16 v3, 0x2e

    .line 94
    .line 95
    if-ne v15, v3, :cond_6

    .line 96
    .line 97
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 98
    .line 99
    add-int/2addr v7, v6

    .line 100
    add-int v3, v3, v17

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-lt v3, v13, :cond_5

    .line 107
    .line 108
    if-gt v3, v14, :cond_5

    .line 109
    .line 110
    mul-long v1, v1, v18

    .line 111
    .line 112
    sub-int/2addr v3, v13

    .line 113
    int-to-long v3, v3

    .line 114
    add-long/2addr v1, v3

    .line 115
    move-wide/from16 v3, v18

    .line 116
    .line 117
    :goto_4
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 118
    .line 119
    add-int/lit8 v17, v7, 0x1

    .line 120
    .line 121
    add-int/2addr v15, v7

    .line 122
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    if-lt v15, v13, :cond_7

    .line 127
    .line 128
    if-gt v15, v14, :cond_7

    .line 129
    .line 130
    mul-long v1, v1, v18

    .line 131
    .line 132
    add-int/lit8 v15, v15, -0x30

    .line 133
    .line 134
    int-to-long v6, v15

    .line 135
    add-long/2addr v1, v6

    .line 136
    mul-long v3, v3, v18

    .line 137
    .line 138
    move/from16 v7, v17

    .line 139
    .line 140
    const/4 v6, 0x2

    .line 141
    goto :goto_4

    .line 142
    :cond_5
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 143
    .line 144
    return v11

    .line 145
    :cond_6
    const-wide/16 v3, 0x1

    .line 146
    .line 147
    :cond_7
    const/16 v6, 0x65

    .line 148
    .line 149
    if-eq v15, v6, :cond_9

    .line 150
    .line 151
    const/16 v6, 0x45

    .line 152
    .line 153
    if-ne v15, v6, :cond_8

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_8
    const/16 v16, 0x0

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_9
    :goto_5
    const/16 v16, 0x1

    .line 160
    .line 161
    :goto_6
    if-eqz v16, :cond_c

    .line 162
    .line 163
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 164
    .line 165
    add-int/lit8 v7, v17, 0x1

    .line 166
    .line 167
    add-int v6, v6, v17

    .line 168
    .line 169
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    const/16 v15, 0x2b

    .line 174
    .line 175
    if-eq v6, v15, :cond_b

    .line 176
    .line 177
    if-ne v6, v8, :cond_a

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_a
    move v15, v6

    .line 181
    :goto_7
    move/from16 v17, v7

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_b
    :goto_8
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 185
    .line 186
    add-int/lit8 v17, v17, 0x2

    .line 187
    .line 188
    add-int/2addr v6, v7

    .line 189
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    move v15, v6

    .line 194
    :goto_9
    if-lt v15, v13, :cond_c

    .line 195
    .line 196
    if-gt v15, v14, :cond_c

    .line 197
    .line 198
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 199
    .line 200
    add-int/lit8 v7, v17, 0x1

    .line 201
    .line 202
    add-int v6, v6, v17

    .line 203
    .line 204
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 205
    .line 206
    .line 207
    move-result v15

    .line 208
    goto :goto_7

    .line 209
    :cond_c
    move/from16 v6, v17

    .line 210
    .line 211
    if-eqz v5, :cond_e

    .line 212
    .line 213
    const/16 v5, 0x22

    .line 214
    .line 215
    if-eq v15, v5, :cond_d

    .line 216
    .line 217
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 218
    .line 219
    return v11

    .line 220
    :cond_d
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 221
    .line 222
    add-int/lit8 v7, v6, 0x1

    .line 223
    .line 224
    add-int/2addr v5, v6

    .line 225
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 226
    .line 227
    .line 228
    move-result v15

    .line 229
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 230
    .line 231
    add-int/lit8 v6, v5, 0x1

    .line 232
    .line 233
    const/4 v8, 0x2

    .line 234
    invoke-static {v5, v7, v6, v8}, La/e;->g(IIII)I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    goto :goto_a

    .line 239
    :cond_e
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 240
    .line 241
    const/4 v7, 0x1

    .line 242
    invoke-static {v5, v6, v5, v7}, La/e;->g(IIII)I

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    move/from16 v20, v6

    .line 247
    .line 248
    move v6, v5

    .line 249
    move v5, v7

    .line 250
    move/from16 v7, v20

    .line 251
    .line 252
    :goto_a
    if-nez v16, :cond_10

    .line 253
    .line 254
    const/16 v8, 0x11

    .line 255
    .line 256
    if-ge v5, v8, :cond_10

    .line 257
    .line 258
    long-to-double v1, v1

    .line 259
    long-to-double v3, v3

    .line 260
    div-double/2addr v1, v3

    .line 261
    double-to-float v1, v1

    .line 262
    if-eqz v9, :cond_f

    .line 263
    .line 264
    neg-float v1, v1

    .line 265
    :cond_f
    :goto_b
    move/from16 v2, p1

    .line 266
    .line 267
    goto :goto_c

    .line 268
    :cond_10
    invoke-virtual {v0, v6, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    goto :goto_b

    .line 277
    :goto_c
    if-ne v15, v2, :cond_11

    .line 278
    .line 279
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 280
    .line 281
    add-int/2addr v2, v7

    .line 282
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 283
    .line 284
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 289
    .line 290
    const/4 v2, 0x3

    .line 291
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 292
    .line 293
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 294
    .line 295
    return v1

    .line 296
    :cond_11
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 297
    .line 298
    return v1

    .line 299
    :cond_12
    const/16 v1, 0x6e

    .line 300
    .line 301
    if-ne v2, v1, :cond_17

    .line 302
    .line 303
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 304
    .line 305
    add-int/2addr v1, v7

    .line 306
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    const/16 v2, 0x75

    .line 311
    .line 312
    if-ne v1, v2, :cond_17

    .line 313
    .line 314
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 315
    .line 316
    const/4 v2, 0x1

    .line 317
    invoke-static {v1, v7, v2, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    const/16 v2, 0x6c

    .line 322
    .line 323
    if-ne v1, v2, :cond_17

    .line 324
    .line 325
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 326
    .line 327
    const/4 v3, 0x2

    .line 328
    invoke-static {v1, v7, v3, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-ne v1, v2, :cond_17

    .line 333
    .line 334
    const/4 v1, 0x5

    .line 335
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 336
    .line 337
    add-int/lit8 v2, v7, 0x3

    .line 338
    .line 339
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 340
    .line 341
    add-int/lit8 v4, v7, 0x4

    .line 342
    .line 343
    add-int/2addr v3, v2

    .line 344
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v5, :cond_13

    .line 349
    .line 350
    const/16 v3, 0x22

    .line 351
    .line 352
    if-ne v2, v3, :cond_13

    .line 353
    .line 354
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 355
    .line 356
    add-int/2addr v7, v1

    .line 357
    add-int/2addr v2, v4

    .line 358
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    move v4, v7

    .line 363
    :cond_13
    :goto_d
    const/16 v3, 0x2c

    .line 364
    .line 365
    if-ne v2, v3, :cond_14

    .line 366
    .line 367
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 368
    .line 369
    add-int/2addr v2, v4

    .line 370
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 371
    .line 372
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 377
    .line 378
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 379
    .line 380
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 381
    .line 382
    return v11

    .line 383
    :cond_14
    const/16 v3, 0x5d

    .line 384
    .line 385
    if-ne v2, v3, :cond_15

    .line 386
    .line 387
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 388
    .line 389
    add-int/2addr v2, v4

    .line 390
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 391
    .line 392
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 397
    .line 398
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 399
    .line 400
    const/16 v1, 0xf

    .line 401
    .line 402
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 403
    .line 404
    return v11

    .line 405
    :cond_15
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_16

    .line 410
    .line 411
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 412
    .line 413
    add-int/lit8 v3, v4, 0x1

    .line 414
    .line 415
    add-int/2addr v2, v4

    .line 416
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    move v4, v3

    .line 421
    goto :goto_d

    .line 422
    :cond_16
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 423
    .line 424
    return v11

    .line 425
    :cond_17
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 426
    .line 427
    return v11
.end method

.method public final scanHex()V
    .locals 5

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2
    .line 3
    const/16 v1, 0x78

    .line 4
    .line 5
    const-string v2, "illegal state. "

    .line 6
    .line 7
    if-ne v0, v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 10
    .line 11
    .line 12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 13
    .line 14
    const/16 v1, 0x27

    .line 15
    .line 16
    if-ne v0, v1, :cond_5

    .line 17
    .line 18
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 19
    .line 20
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 23
    .line 24
    .line 25
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 26
    .line 27
    const/16 v3, 0x1a

    .line 28
    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 32
    .line 33
    .line 34
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/16 v4, 0x30

    .line 42
    .line 43
    if-lt v0, v4, :cond_1

    .line 44
    .line 45
    const/16 v4, 0x39

    .line 46
    .line 47
    if-le v0, v4, :cond_2

    .line 48
    .line 49
    :cond_1
    const/16 v4, 0x41

    .line 50
    .line 51
    if-lt v0, v4, :cond_3

    .line 52
    .line 53
    const/16 v4, 0x46

    .line 54
    .line 55
    if-gt v0, v4, :cond_3

    .line 56
    .line 57
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    if-ne v0, v1, :cond_4

    .line 65
    .line 66
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 73
    .line 74
    .line 75
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0
.end method

.method public final scanIdent()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 9
    .line 10
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 17
    .line 18
    .line 19
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "null"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const/16 v0, 0x8

    .line 41
    .line 42
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string v1, "new"

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const/16 v0, 0x9

    .line 54
    .line 55
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const-string v1, "true"

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    const/4 v0, 0x6

    .line 67
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const-string v1, "false"

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    const/4 v0, 0x7

    .line 79
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    const-string v1, "undefined"

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    const/16 v0, 0x17

    .line 91
    .line 92
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    const-string v1, "Set"

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    const/16 v0, 0x15

    .line 104
    .line 105
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    const-string v1, "TreeSet"

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    const/16 v0, 0x16

    .line 117
    .line 118
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    const/16 v0, 0x12

    .line 122
    .line 123
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 124
    .line 125
    :goto_1
    return-void
.end method

.method public scanInt(C)I
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const/16 v3, 0x22

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v4, 0x0

    .line 18
    :goto_0
    const/4 v5, 0x2

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 22
    .line 23
    add-int/2addr v1, v2

    .line 24
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v6, 0x2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v6, 0x1

    .line 31
    :goto_1
    const/16 v7, 0x2d

    .line 32
    .line 33
    if-ne v1, v7, :cond_2

    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/4 v7, 0x0

    .line 38
    :goto_2
    if-eqz v7, :cond_3

    .line 39
    .line 40
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 41
    .line 42
    add-int/lit8 v8, v6, 0x1

    .line 43
    .line 44
    add-int/2addr v1, v6

    .line 45
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    move v6, v8

    .line 50
    :cond_3
    const/16 v8, 0x10

    .line 51
    .line 52
    const/16 v9, 0x30

    .line 53
    .line 54
    const/4 v10, -0x1

    .line 55
    if-lt v1, v9, :cond_b

    .line 56
    .line 57
    const/16 v11, 0x39

    .line 58
    .line 59
    if-gt v1, v11, :cond_b

    .line 60
    .line 61
    sub-int/2addr v1, v9

    .line 62
    :goto_3
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 63
    .line 64
    add-int/lit8 v3, v6, 0x1

    .line 65
    .line 66
    add-int/2addr v2, v6

    .line 67
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-lt v2, v9, :cond_4

    .line 72
    .line 73
    if-gt v2, v11, :cond_4

    .line 74
    .line 75
    mul-int/lit8 v1, v1, 0xa

    .line 76
    .line 77
    add-int/lit8 v2, v2, -0x30

    .line 78
    .line 79
    add-int/2addr v1, v2

    .line 80
    move v6, v3

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    const/16 v4, 0x2e

    .line 83
    .line 84
    if-ne v2, v4, :cond_5

    .line 85
    .line 86
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 87
    .line 88
    return v0

    .line 89
    :cond_5
    if-gez v1, :cond_6

    .line 90
    .line 91
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 92
    .line 93
    return v0

    .line 94
    :cond_6
    :goto_4
    if-ne v2, p1, :cond_8

    .line 95
    .line 96
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 97
    .line 98
    add-int/2addr p1, v3

    .line 99
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 106
    .line 107
    const/4 p1, 0x3

    .line 108
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 109
    .line 110
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 111
    .line 112
    if-eqz v7, :cond_7

    .line 113
    .line 114
    neg-int v1, v1

    .line 115
    :cond_7
    return v1

    .line 116
    :cond_8
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_9

    .line 121
    .line 122
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 123
    .line 124
    add-int/lit8 v2, v3, 0x1

    .line 125
    .line 126
    add-int/2addr v0, v3

    .line 127
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    move v3, v2

    .line 132
    move v2, v0

    .line 133
    goto :goto_4

    .line 134
    :cond_9
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 135
    .line 136
    if-eqz v7, :cond_a

    .line 137
    .line 138
    neg-int v1, v1

    .line 139
    :cond_a
    return v1

    .line 140
    :cond_b
    const/16 p1, 0x6e

    .line 141
    .line 142
    if-ne v1, p1, :cond_10

    .line 143
    .line 144
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 145
    .line 146
    add-int/2addr p1, v6

    .line 147
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    const/16 v1, 0x75

    .line 152
    .line 153
    if-ne p1, v1, :cond_10

    .line 154
    .line 155
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 156
    .line 157
    invoke-static {p1, v6, v2, p0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    const/16 v1, 0x6c

    .line 162
    .line 163
    if-ne p1, v1, :cond_10

    .line 164
    .line 165
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 166
    .line 167
    invoke-static {p1, v6, v5, p0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-ne p1, v1, :cond_10

    .line 172
    .line 173
    const/4 p1, 0x5

    .line 174
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 175
    .line 176
    add-int/lit8 v1, v6, 0x3

    .line 177
    .line 178
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 179
    .line 180
    add-int/lit8 v5, v6, 0x4

    .line 181
    .line 182
    add-int/2addr v2, v1

    .line 183
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v4, :cond_c

    .line 188
    .line 189
    if-ne v1, v3, :cond_c

    .line 190
    .line 191
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 192
    .line 193
    add-int/2addr v6, p1

    .line 194
    add-int/2addr v1, v5

    .line 195
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    move v5, v6

    .line 200
    :cond_c
    :goto_5
    const/16 v2, 0x2c

    .line 201
    .line 202
    if-ne v1, v2, :cond_d

    .line 203
    .line 204
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 205
    .line 206
    add-int/2addr v1, v5

    .line 207
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 208
    .line 209
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 214
    .line 215
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 216
    .line 217
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 218
    .line 219
    return v0

    .line 220
    :cond_d
    const/16 v2, 0x5d

    .line 221
    .line 222
    if-ne v1, v2, :cond_e

    .line 223
    .line 224
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 225
    .line 226
    add-int/2addr v1, v5

    .line 227
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 228
    .line 229
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 234
    .line 235
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 236
    .line 237
    const/16 p1, 0xf

    .line 238
    .line 239
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 240
    .line 241
    return v0

    .line 242
    :cond_e
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_f

    .line 247
    .line 248
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 249
    .line 250
    add-int/lit8 v2, v5, 0x1

    .line 251
    .line 252
    add-int/2addr v1, v5

    .line 253
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    move v5, v2

    .line 258
    goto :goto_5

    .line 259
    :cond_f
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 260
    .line 261
    return v0

    .line 262
    :cond_10
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 263
    .line 264
    return v0
.end method

.method public scanLong(C)J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/16 v4, 0x22

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v5, 0x0

    .line 20
    :goto_0
    const/4 v6, 0x2

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v7, 0x2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v7, 0x1

    .line 33
    :goto_1
    const/16 v8, 0x2d

    .line 34
    .line 35
    if-ne v2, v8, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_2
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 41
    .line 42
    add-int/lit8 v8, v7, 0x1

    .line 43
    .line 44
    add-int/2addr v2, v7

    .line 45
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    move v7, v8

    .line 50
    :cond_3
    const/16 v8, 0x10

    .line 51
    .line 52
    const/16 v9, 0x30

    .line 53
    .line 54
    const/4 v10, -0x1

    .line 55
    const-wide/16 v11, 0x0

    .line 56
    .line 57
    if-lt v2, v9, :cond_d

    .line 58
    .line 59
    const/16 v13, 0x39

    .line 60
    .line 61
    if-gt v2, v13, :cond_d

    .line 62
    .line 63
    sub-int/2addr v2, v9

    .line 64
    int-to-long v2, v2

    .line 65
    :goto_2
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 66
    .line 67
    add-int/lit8 v15, v7, 0x1

    .line 68
    .line 69
    add-int/2addr v14, v7

    .line 70
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    if-lt v14, v9, :cond_4

    .line 75
    .line 76
    if-gt v14, v13, :cond_4

    .line 77
    .line 78
    const-wide/16 v16, 0xa

    .line 79
    .line 80
    mul-long v2, v2, v16

    .line 81
    .line 82
    add-int/lit8 v14, v14, -0x30

    .line 83
    .line 84
    int-to-long v13, v14

    .line 85
    add-long/2addr v2, v13

    .line 86
    move v7, v15

    .line 87
    const/16 v13, 0x39

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    const/16 v9, 0x2e

    .line 91
    .line 92
    if-ne v14, v9, :cond_5

    .line 93
    .line 94
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 95
    .line 96
    return-wide v11

    .line 97
    :cond_5
    cmp-long v9, v2, v11

    .line 98
    .line 99
    if-gez v9, :cond_7

    .line 100
    .line 101
    const-wide/high16 v16, -0x8000000000000000L

    .line 102
    .line 103
    cmp-long v9, v2, v16

    .line 104
    .line 105
    if-nez v9, :cond_6

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 111
    .line 112
    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 117
    .line 118
    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v2

    .line 122
    :cond_7
    :goto_3
    if-eqz v5, :cond_9

    .line 123
    .line 124
    if-eq v14, v4, :cond_8

    .line 125
    .line 126
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 127
    .line 128
    return-wide v11

    .line 129
    :cond_8
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 130
    .line 131
    add-int/2addr v7, v6

    .line 132
    add-int/2addr v4, v15

    .line 133
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    move/from16 v4, p1

    .line 138
    .line 139
    move v15, v7

    .line 140
    goto :goto_4

    .line 141
    :cond_9
    move/from16 v4, p1

    .line 142
    .line 143
    :goto_4
    if-ne v14, v4, :cond_b

    .line 144
    .line 145
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 146
    .line 147
    add-int/2addr v4, v15

    .line 148
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 149
    .line 150
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 155
    .line 156
    const/4 v4, 0x3

    .line 157
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 158
    .line 159
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 160
    .line 161
    if-eqz v1, :cond_a

    .line 162
    .line 163
    neg-long v2, v2

    .line 164
    :cond_a
    return-wide v2

    .line 165
    :cond_b
    invoke-static {v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_c

    .line 170
    .line 171
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 172
    .line 173
    add-int/lit8 v6, v15, 0x1

    .line 174
    .line 175
    add-int/2addr v5, v15

    .line 176
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    move v15, v6

    .line 181
    goto :goto_4

    .line 182
    :cond_c
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 183
    .line 184
    return-wide v2

    .line 185
    :cond_d
    const/16 v1, 0x6e

    .line 186
    .line 187
    if-ne v2, v1, :cond_12

    .line 188
    .line 189
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 190
    .line 191
    add-int/2addr v1, v7

    .line 192
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    const/16 v2, 0x75

    .line 197
    .line 198
    if-ne v1, v2, :cond_12

    .line 199
    .line 200
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 201
    .line 202
    invoke-static {v1, v7, v3, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    const/16 v2, 0x6c

    .line 207
    .line 208
    if-ne v1, v2, :cond_12

    .line 209
    .line 210
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 211
    .line 212
    invoke-static {v1, v7, v6, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-ne v1, v2, :cond_12

    .line 217
    .line 218
    const/4 v1, 0x5

    .line 219
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 220
    .line 221
    add-int/lit8 v2, v7, 0x3

    .line 222
    .line 223
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 224
    .line 225
    add-int/lit8 v6, v7, 0x4

    .line 226
    .line 227
    add-int/2addr v3, v2

    .line 228
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v5, :cond_e

    .line 233
    .line 234
    if-ne v2, v4, :cond_e

    .line 235
    .line 236
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 237
    .line 238
    add-int/2addr v7, v1

    .line 239
    add-int/2addr v2, v6

    .line 240
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    move v6, v7

    .line 245
    :cond_e
    :goto_5
    const/16 v3, 0x2c

    .line 246
    .line 247
    if-ne v2, v3, :cond_f

    .line 248
    .line 249
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 250
    .line 251
    add-int/2addr v2, v6

    .line 252
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 253
    .line 254
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 259
    .line 260
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 261
    .line 262
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 263
    .line 264
    return-wide v11

    .line 265
    :cond_f
    const/16 v3, 0x5d

    .line 266
    .line 267
    if-ne v2, v3, :cond_10

    .line 268
    .line 269
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 270
    .line 271
    add-int/2addr v2, v6

    .line 272
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 279
    .line 280
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 281
    .line 282
    const/16 v1, 0xf

    .line 283
    .line 284
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 285
    .line 286
    return-wide v11

    .line 287
    :cond_10
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_11

    .line 292
    .line 293
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 294
    .line 295
    add-int/lit8 v3, v6, 0x1

    .line 296
    .line 297
    add-int/2addr v2, v6

    .line 298
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    move v6, v3

    .line 303
    goto :goto_5

    .line 304
    :cond_11
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 305
    .line 306
    return-wide v11

    .line 307
    :cond_12
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 308
    .line 309
    return-wide v11
.end method

.method public final scanNullOrNew()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew(Z)V

    return-void
.end method

.method public final scanNullOrNew(Z)V
    .locals 13

    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_a

    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    const/16 v2, 0xc

    const/16 v3, 0x1a

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x5d

    const/16 v7, 0x7d

    const/16 v8, 0x2c

    const/16 v9, 0x20

    const/16 v10, 0x8

    const/16 v11, 0x9

    if-ne v0, v1, :cond_5

    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "error parse null"

    const/16 v12, 0x6c

    if-ne v0, v12, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v12, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 10
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v9, :cond_2

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v11, :cond_2

    if-eq v0, v3, :cond_2

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-eq v0, v2, :cond_2

    if-ne v0, v10, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "scan null error"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    :goto_0
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 13
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/16 p1, 0x65

    .line 15
    const-string v1, "error parse new"

    if-ne v0, p1, :cond_9

    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 17
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x77

    if-ne p1, v0, :cond_8

    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 19
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq p1, v9, :cond_7

    if-eq p1, v8, :cond_7

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v11, :cond_7

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_7

    if-ne p1, v10, :cond_6

    goto :goto_1

    .line 20
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "scan new error"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_7
    :goto_1
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 22
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "error parse null or new"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scanNumber()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2
    .line 3
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4
    .line 5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/16 v2, 0x2d

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 21
    .line 22
    const/16 v3, 0x39

    .line 23
    .line 24
    const/16 v4, 0x30

    .line 25
    .line 26
    if-lt v0, v4, :cond_1

    .line 27
    .line 28
    if-gt v0, v3, :cond_1

    .line 29
    .line 30
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 v5, 0x2e

    .line 40
    .line 41
    if-ne v0, v5, :cond_3

    .line 42
    .line 43
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 44
    .line 45
    add-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 49
    .line 50
    .line 51
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 52
    .line 53
    if-lt v0, v4, :cond_2

    .line 54
    .line 55
    if-gt v0, v3, :cond_2

    .line 56
    .line 57
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 58
    .line 59
    add-int/2addr v0, v1

    .line 60
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v0, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    const/4 v0, 0x0

    .line 69
    :goto_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 70
    .line 71
    const v6, 0xffff

    .line 72
    .line 73
    .line 74
    if-gt v5, v6, :cond_11

    .line 75
    .line 76
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 77
    .line 78
    const/16 v7, 0x4c

    .line 79
    .line 80
    if-ne v6, v7, :cond_4

    .line 81
    .line 82
    add-int/2addr v5, v1

    .line 83
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    const/16 v7, 0x53

    .line 90
    .line 91
    if-ne v6, v7, :cond_5

    .line 92
    .line 93
    add-int/2addr v5, v1

    .line 94
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    const/16 v7, 0x42

    .line 101
    .line 102
    if-ne v6, v7, :cond_6

    .line 103
    .line 104
    add-int/2addr v5, v1

    .line 105
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    const/16 v7, 0x46

    .line 112
    .line 113
    if-ne v6, v7, :cond_7

    .line 114
    .line 115
    add-int/2addr v5, v1

    .line 116
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 119
    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_7
    const/16 v8, 0x44

    .line 123
    .line 124
    if-ne v6, v8, :cond_8

    .line 125
    .line 126
    add-int/2addr v5, v1

    .line 127
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 130
    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_8
    const/16 v9, 0x65

    .line 134
    .line 135
    if-eq v6, v9, :cond_a

    .line 136
    .line 137
    const/16 v9, 0x45

    .line 138
    .line 139
    if-ne v6, v9, :cond_9

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    :goto_3
    move v1, v0

    .line 143
    goto :goto_6

    .line 144
    :cond_a
    :goto_4
    add-int/2addr v5, v1

    .line 145
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 148
    .line 149
    .line 150
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 151
    .line 152
    const/16 v5, 0x2b

    .line 153
    .line 154
    if-eq v0, v5, :cond_b

    .line 155
    .line 156
    if-ne v0, v2, :cond_c

    .line 157
    .line 158
    :cond_b
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 159
    .line 160
    add-int/2addr v0, v1

    .line 161
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 164
    .line 165
    .line 166
    :cond_c
    :goto_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 167
    .line 168
    if-lt v0, v4, :cond_d

    .line 169
    .line 170
    if-gt v0, v3, :cond_d

    .line 171
    .line 172
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 173
    .line 174
    add-int/2addr v0, v1

    .line 175
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_d
    if-eq v0, v8, :cond_e

    .line 182
    .line 183
    if-ne v0, v7, :cond_f

    .line 184
    .line 185
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 186
    .line 187
    add-int/2addr v0, v1

    .line 188
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 191
    .line 192
    .line 193
    :cond_f
    :goto_6
    if-eqz v1, :cond_10

    .line 194
    .line 195
    const/4 v0, 0x3

    .line 196
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_10
    const/4 v0, 0x2

    .line 200
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 201
    .line 202
    :goto_7
    return-void

    .line 203
    :cond_11
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 204
    .line 205
    const-string v1, "scanNumber overflow"

    .line 206
    .line 207
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0
.end method

.method public scanString(C)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 56
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v1, v2, :cond_2

    .line 57
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 58
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    .line 59
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 60
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 61
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 62
    :cond_0
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 63
    :cond_1
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_2
    const/4 v2, 0x1

    :goto_0
    const/16 v6, 0x22

    if-ne v1, v6, :cond_a

    .line 64
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    .line 65
    invoke-virtual {p0, v6, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v7

    if-eq v7, v4, :cond_9

    .line 66
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v2

    sub-int v9, v7, v1

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x5c

    .line 67
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v4, :cond_5

    :goto_1
    add-int/lit8 v8, v7, -0x1

    const/4 v10, 0x0

    :goto_2
    if-ltz v8, :cond_3

    .line 68
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_3

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 69
    :cond_3
    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_4

    sub-int v0, v7, v1

    .line 70
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v5

    invoke-virtual {p0, v6, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v6

    .line 71
    invoke-static {v6, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 72
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v7

    goto :goto_1

    :cond_5
    :goto_3
    sub-int/2addr v7, v1

    add-int/2addr v7, v5

    add-int/2addr v7, v2

    .line 73
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v7, 0x1

    add-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    :goto_4
    if-ne v0, p1, :cond_6

    .line 74
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 75
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 76
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 p1, 0x10

    .line 77
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v8

    .line 78
    :cond_6
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 79
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    goto :goto_4

    :cond_7
    const/16 p1, 0x5d

    if-ne v0, p1, :cond_8

    .line 80
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 81
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 82
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    :cond_8
    return-object v8

    .line 83
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_a
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 85
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v2, v6

    goto/16 :goto_0

    .line 86
    :cond_b
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final scanString()V
    .locals 15

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v4, 0x0

    .line 2
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_0

    .line 4
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return-void

    .line 6
    :cond_0
    const-string v7, "unclosed string : "

    const/16 v8, 0x1a

    if-ne v5, v8, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v8, 0x5c

    if-ne v5, v8, :cond_17

    .line 10
    iget-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v5, :cond_5

    .line 11
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 12
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v10, v9

    if-lt v5, v10, :cond_4

    .line 13
    array-length v10, v9

    mul-int/lit8 v10, v10, 0x2

    if-le v5, v10, :cond_3

    goto :goto_1

    :cond_3
    move v5, v10

    .line 14
    :goto_1
    new-array v5, v5, [C

    .line 15
    array-length v10, v9

    invoke-static {v9, v4, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iput-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 17
    :cond_4
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v5, v3

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v5, v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    if-eq v5, v6, :cond_16

    const/16 v6, 0x27

    if-eq v5, v6, :cond_15

    const/16 v6, 0x46

    if-eq v5, v6, :cond_14

    if-eq v5, v8, :cond_13

    const/16 v8, 0x62

    if-eq v5, v8, :cond_12

    const/16 v8, 0x66

    if-eq v5, v8, :cond_14

    const/16 v9, 0x6e

    if-eq v5, v9, :cond_11

    const/16 v9, 0x72

    if-eq v5, v9, :cond_10

    const/16 v9, 0x78

    const/16 v10, 0x10

    if-eq v5, v9, :cond_6

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    .line 19
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 20
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v5, 0xb

    .line 21
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 22
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v6

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v8

    .line 26
    new-instance v9, Ljava/lang/String;

    new-array v11, v2, [C

    aput-char v5, v11, v4

    aput-char v6, v11, v3

    aput-char v7, v11, v1

    aput-char v8, v11, v0

    invoke-direct {v9, v11}, Ljava/lang/String;-><init>([C)V

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    .line 27
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v5, 0x9

    .line 28
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v5, 0x7

    .line 29
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v5, 0x6

    .line 30
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v5, 0x5

    .line 31
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 32
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 33
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 34
    :pswitch_8
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 35
    :pswitch_9
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 36
    :pswitch_a
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_b
    const/16 v5, 0x2f

    .line 37
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 38
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    const/16 v9, 0x41

    const/16 v11, 0x61

    const/16 v12, 0x39

    const/16 v13, 0x30

    if-lt v5, v13, :cond_7

    if-le v5, v12, :cond_9

    :cond_7
    if-lt v5, v11, :cond_8

    if-le v5, v8, :cond_9

    :cond_8
    if-lt v5, v9, :cond_a

    if-gt v5, v6, :cond_a

    :cond_9
    const/4 v14, 0x1

    goto :goto_2

    :cond_a
    const/4 v14, 0x0

    :goto_2
    if-lt v7, v13, :cond_b

    if-le v7, v12, :cond_d

    :cond_b
    if-lt v7, v11, :cond_c

    if-le v7, v8, :cond_d

    :cond_c
    if-lt v7, v9, :cond_e

    if-gt v7, v6, :cond_e

    :cond_d
    const/4 v6, 0x1

    goto :goto_3

    :cond_e
    const/4 v6, 0x0

    :goto_3
    if-eqz v14, :cond_f

    if-eqz v6, :cond_f

    .line 40
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v5, v6, v5

    mul-int/lit8 v5, v5, 0x10

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 41
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 42
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid escape character \\x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/16 v5, 0xd

    .line 43
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_11
    const/16 v5, 0xa

    .line 44
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0x8

    .line 45
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 46
    :cond_13
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_14
    const/16 v5, 0xc

    .line 47
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 48
    :cond_15
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 49
    :cond_16
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 50
    :cond_17
    iget-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v6, :cond_18

    .line 51
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 52
    :cond_18
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v8, v7

    if-ne v6, v8, :cond_19

    .line 53
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_19
    add-int/lit8 v8, v6, 0x1

    .line 54
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v5, v7, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scanStringArray(Ljava/util/Collection;C)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 9
    .line 10
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/16 v5, 0x75

    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    const/16 v7, 0x6c

    .line 20
    .line 21
    const/4 v8, 0x2

    .line 22
    const/4 v9, 0x1

    .line 23
    const/16 v10, 0x6e

    .line 24
    .line 25
    if-ne v4, v10, :cond_0

    .line 26
    .line 27
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 28
    .line 29
    add-int/2addr v11, v9

    .line 30
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    if-ne v11, v5, :cond_0

    .line 35
    .line 36
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 37
    .line 38
    add-int/2addr v11, v8

    .line 39
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    if-ne v11, v7, :cond_0

    .line 44
    .line 45
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 46
    .line 47
    add-int/2addr v11, v6

    .line 48
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    if-ne v11, v7, :cond_0

    .line 53
    .line 54
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 55
    .line 56
    add-int/lit8 v11, v11, 0x4

    .line 57
    .line 58
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-ne v11, v2, :cond_0

    .line 63
    .line 64
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 65
    .line 66
    const/4 v2, 0x5

    .line 67
    add-int/2addr v1, v2

    .line 68
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 75
    .line 76
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    const/16 v11, 0x5b

    .line 80
    .line 81
    const/4 v12, -0x1

    .line 82
    if-eq v4, v11, :cond_1

    .line 83
    .line 84
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 88
    .line 89
    add-int/2addr v4, v9

    .line 90
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    const/4 v11, 0x2

    .line 95
    :goto_0
    const/16 v13, 0x5d

    .line 96
    .line 97
    if-ne v4, v10, :cond_2

    .line 98
    .line 99
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 100
    .line 101
    add-int/2addr v14, v11

    .line 102
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    if-ne v14, v5, :cond_2

    .line 107
    .line 108
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 109
    .line 110
    invoke-static {v14, v11, v9, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    if-ne v14, v7, :cond_2

    .line 115
    .line 116
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 117
    .line 118
    invoke-static {v14, v11, v8, v0}, La/e;->d(IIILcom/alibaba/fastjson/parser/JSONLexerBase;)C

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    if-ne v14, v7, :cond_2

    .line 123
    .line 124
    add-int/lit8 v4, v11, 0x3

    .line 125
    .line 126
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 127
    .line 128
    add-int/lit8 v11, v11, 0x4

    .line 129
    .line 130
    add-int/2addr v14, v4

    .line 131
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    const/4 v14, 0x0

    .line 136
    invoke-interface {v1, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto/16 :goto_4

    .line 140
    .line 141
    :cond_2
    if-ne v4, v13, :cond_3

    .line 142
    .line 143
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    if-nez v14, :cond_3

    .line 148
    .line 149
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 150
    .line 151
    add-int/lit8 v3, v11, 0x1

    .line 152
    .line 153
    add-int/2addr v1, v11

    .line 154
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    goto/16 :goto_5

    .line 159
    .line 160
    :cond_3
    const/16 v14, 0x22

    .line 161
    .line 162
    if-eq v4, v14, :cond_4

    .line 163
    .line 164
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 165
    .line 166
    return-void

    .line 167
    :cond_4
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 168
    .line 169
    add-int/2addr v4, v11

    .line 170
    invoke-virtual {v0, v14, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    if-eq v15, v12, :cond_b

    .line 175
    .line 176
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 177
    .line 178
    add-int/2addr v3, v11

    .line 179
    sub-int v5, v15, v4

    .line 180
    .line 181
    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    const/16 v5, 0x5c

    .line 186
    .line 187
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-eq v7, v12, :cond_7

    .line 192
    .line 193
    :goto_1
    add-int/lit8 v3, v15, -0x1

    .line 194
    .line 195
    const/4 v7, 0x0

    .line 196
    :goto_2
    if-ltz v3, :cond_5

    .line 197
    .line 198
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-ne v8, v5, :cond_5

    .line 203
    .line 204
    add-int/lit8 v7, v7, 0x1

    .line 205
    .line 206
    add-int/lit8 v3, v3, -0x1

    .line 207
    .line 208
    const/4 v8, 0x2

    .line 209
    goto :goto_2

    .line 210
    :cond_5
    rem-int/lit8 v7, v7, 0x2

    .line 211
    .line 212
    if-nez v7, :cond_6

    .line 213
    .line 214
    sub-int v3, v15, v4

    .line 215
    .line 216
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 217
    .line 218
    add-int/2addr v4, v11

    .line 219
    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-static {v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    goto :goto_3

    .line 228
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 229
    .line 230
    invoke-virtual {v0, v14, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    .line 231
    .line 232
    .line 233
    move-result v15

    .line 234
    const/4 v8, 0x2

    .line 235
    goto :goto_1

    .line 236
    :cond_7
    :goto_3
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 237
    .line 238
    add-int v5, v4, v11

    .line 239
    .line 240
    sub-int/2addr v15, v5

    .line 241
    add-int/2addr v15, v9

    .line 242
    add-int/2addr v15, v11

    .line 243
    add-int/lit8 v11, v15, 0x1

    .line 244
    .line 245
    add-int/2addr v4, v15

    .line 246
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    :goto_4
    const/16 v3, 0x2c

    .line 254
    .line 255
    if-ne v4, v3, :cond_8

    .line 256
    .line 257
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 258
    .line 259
    add-int/lit8 v4, v11, 0x1

    .line 260
    .line 261
    add-int/2addr v3, v11

    .line 262
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    move v11, v4

    .line 267
    const/16 v5, 0x75

    .line 268
    .line 269
    const/16 v7, 0x6c

    .line 270
    .line 271
    const/4 v8, 0x2

    .line 272
    move v4, v3

    .line 273
    const/4 v3, 0x0

    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_8
    if-ne v4, v13, :cond_a

    .line 277
    .line 278
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 279
    .line 280
    add-int/lit8 v3, v11, 0x1

    .line 281
    .line 282
    add-int/2addr v1, v11

    .line 283
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    :goto_5
    if-ne v1, v2, :cond_9

    .line 288
    .line 289
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 290
    .line 291
    add-int/2addr v1, v3

    .line 292
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 299
    .line 300
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 301
    .line 302
    return-void

    .line 303
    :cond_9
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 304
    .line 305
    return-void

    .line 306
    :cond_a
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 307
    .line 308
    return-void

    .line 309
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 310
    .line 311
    const-string v2, "unclosed str"

    .line 312
    .line 313
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v1
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-string v1, "syntax error"

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    .line 5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xd

    .line 9
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    :cond_3
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0x10

    .line 11
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    :cond_4
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_5

    const/16 p1, 0x14

    .line 12
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    .line 13
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    .line 16
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v6, 0x0

    .line 17
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 18
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move/from16 v10, p2

    if-ne v9, v10, :cond_2

    .line 19
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-nez v7, :cond_1

    .line 20
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v5

    .line 21
    :goto_1
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {v0, v2, v3, v8, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 22
    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {v1, v2, v6, v3, v8}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v1

    .line 23
    :goto_2
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-object v1

    :cond_2
    const/16 v11, 0x1a

    if-eq v9, v11, :cond_11

    const/16 v11, 0x5c

    if-ne v9, v11, :cond_e

    if-nez v7, :cond_5

    .line 25
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v12, v9

    if-lt v7, v12, :cond_4

    .line 26
    array-length v12, v9

    mul-int/lit8 v12, v12, 0x2

    if-le v7, v12, :cond_3

    goto :goto_3

    :cond_3
    move v7, v12

    .line 27
    :goto_3
    new-array v7, v7, [C

    .line 28
    array-length v12, v9

    invoke-static {v9, v6, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iput-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 30
    :cond_4
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v7, v5

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {v0, v7, v9, v6, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    const/4 v7, 0x1

    .line 31
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    const/16 v12, 0x22

    if-eq v9, v12, :cond_d

    const/16 v12, 0x27

    if-eq v9, v12, :cond_c

    const/16 v12, 0x46

    if-eq v9, v12, :cond_b

    if-eq v9, v11, :cond_a

    const/16 v11, 0x62

    if-eq v9, v11, :cond_9

    const/16 v11, 0x66

    if-eq v9, v11, :cond_b

    const/16 v11, 0x6e

    if-eq v9, v11, :cond_8

    const/16 v11, 0x72

    if-eq v9, v11, :cond_7

    const/16 v11, 0x78

    if-eq v9, v11, :cond_6

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    .line 32
    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 33
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed.str.lit"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    mul-int/lit8 v8, v8, 0x1f

    const/16 v9, 0xb

    add-int/2addr v8, v9

    .line 34
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 35
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v11

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v14

    .line 39
    new-instance v15, Ljava/lang/String;

    new-array v12, v4, [C

    aput-char v9, v12, v6

    aput-char v11, v12, v5

    aput-char v13, v12, v3

    aput-char v14, v12, v2

    invoke-direct {v15, v12}, Ljava/lang/String;-><init>([C)V

    const/16 v9, 0x10

    invoke-static {v15, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    int-to-char v9, v9

    .line 40
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_2
    mul-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x9

    add-int/2addr v8, v9

    .line 41
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_3
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    const/4 v9, 0x7

    .line 42
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_4
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    const/4 v9, 0x6

    .line 43
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_5
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    const/4 v9, 0x5

    .line 44
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_6
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    .line 45
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_7
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    .line 46
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_8
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    .line 47
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_9
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    .line 48
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_a
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    .line 49
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :pswitch_b
    mul-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x2f

    add-int/2addr v8, v9

    .line 50
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 51
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v11

    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 53
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v9, v12, v9

    const/16 v13, 0x10

    mul-int/lit8 v9, v9, 0x10

    aget v11, v12, v11

    add-int/2addr v9, v11

    int-to-char v9, v9

    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    .line 54
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_7
    mul-int/lit8 v8, v8, 0x1f

    const/16 v9, 0xd

    add-int/2addr v8, v9

    .line 55
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_8
    mul-int/lit8 v8, v8, 0x1f

    const/16 v9, 0xa

    add-int/2addr v8, v9

    .line 56
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_9
    mul-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    add-int/2addr v8, v9

    .line 57
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_a
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v11

    .line 58
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_b
    mul-int/lit8 v8, v8, 0x1f

    const/16 v9, 0xc

    add-int/2addr v8, v9

    .line 59
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_c
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v12

    .line 60
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_d
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v12

    .line 61
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_e
    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    if-nez v7, :cond_f

    .line 62
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v9, v5

    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 63
    :cond_f
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v13, v12

    if-ne v11, v13, :cond_10

    .line 64
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v13, v11, 0x1

    .line 65
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v9, v12, v11

    goto/16 :goto_0

    .line 66
    :cond_11
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "unclosed.str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 18
    .line 19
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 20
    .line 21
    array-length v3, v0

    .line 22
    if-ge v2, v3, :cond_2

    .line 23
    .line 24
    aget-boolean v0, v0, v2

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "illegal identifier : "

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 59
    .line 60
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 61
    .line 62
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 63
    .line 64
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 65
    .line 66
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    array-length v4, v0

    .line 71
    if-ge v3, v4, :cond_5

    .line 72
    .line 73
    aget-boolean v4, v0, v3

    .line 74
    .line 75
    if-nez v4, :cond_5

    .line 76
    .line 77
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 84
    .line 85
    const/16 v0, 0x12

    .line 86
    .line 87
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 88
    .line 89
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 90
    .line 91
    const/4 v3, 0x4

    .line 92
    if-ne v0, v3, :cond_3

    .line 93
    .line 94
    const v0, 0x33c587

    .line 95
    .line 96
    .line 97
    if-ne v2, v0, :cond_3

    .line 98
    .line 99
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    const/16 v3, 0x6e

    .line 106
    .line 107
    if-ne v0, v3, :cond_3

    .line 108
    .line 109
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 110
    .line 111
    add-int/2addr v0, v1

    .line 112
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const/16 v1, 0x75

    .line 117
    .line 118
    if-ne v0, v1, :cond_3

    .line 119
    .line 120
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 121
    .line 122
    add-int/lit8 v0, v0, 0x2

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    const/16 v1, 0x6c

    .line 129
    .line 130
    if-ne v0, v1, :cond_3

    .line 131
    .line 132
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 133
    .line 134
    add-int/lit8 v0, v0, 0x3

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-ne v0, v1, :cond_3

    .line 141
    .line 142
    const/4 p1, 0x0

    .line 143
    return-object p1

    .line 144
    :cond_3
    if-nez p1, :cond_4

    .line 145
    .line 146
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 147
    .line 148
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 149
    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    return-object p1

    .line 155
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 156
    .line 157
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 158
    .line 159
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    return-object p1

    .line 164
    :cond_5
    mul-int/lit8 v2, v2, 0x1f

    .line 165
    .line 166
    add-int/2addr v2, v3

    .line 167
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 168
    .line 169
    add-int/2addr v3, v1

    .line 170
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 171
    .line 172
    goto :goto_1
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x6e

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, -0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x1

    .line 16
    if-ne v1, v2, :cond_2

    .line 17
    .line 18
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 19
    .line 20
    add-int/2addr p1, v6

    .line 21
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/16 v0, 0x75

    .line 26
    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x2

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/16 v0, 0x6c

    .line 38
    .line 39
    if-ne p1, v0, :cond_1

    .line 40
    .line 41
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 42
    .line 43
    add-int/2addr p1, v3

    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x4

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-ne p1, p2, :cond_0

    .line 59
    .line 60
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x5

    .line 63
    .line 64
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 71
    .line 72
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 73
    .line 74
    return-object v5

    .line 75
    :cond_0
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 76
    .line 77
    return-object v5

    .line 78
    :cond_1
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 79
    .line 80
    return-object v5

    .line 81
    :cond_2
    const/16 v2, 0x22

    .line 82
    .line 83
    if-eq v1, v2, :cond_3

    .line 84
    .line 85
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 86
    .line 87
    return-object v5

    .line 88
    :cond_3
    const/4 v1, 0x1

    .line 89
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 90
    .line 91
    add-int/lit8 v8, v1, 0x1

    .line 92
    .line 93
    add-int/2addr v7, v1

    .line 94
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-ne v7, v2, :cond_6

    .line 99
    .line 100
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 101
    .line 102
    add-int/lit8 v5, v2, 0x1

    .line 103
    .line 104
    invoke-static {v2, v8, v5, v6}, La/e;->g(IIII)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {p0, v5, v2, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x2

    .line 115
    .line 116
    add-int/2addr v0, v8

    .line 117
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    :goto_1
    if-ne v0, p2, :cond_4

    .line 122
    .line 123
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 124
    .line 125
    add-int/2addr p2, v1

    .line 126
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 127
    .line 128
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 133
    .line 134
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 135
    .line 136
    return-object p1

    .line 137
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 144
    .line 145
    add-int/lit8 v2, v1, 0x1

    .line 146
    .line 147
    add-int/2addr v0, v1

    .line 148
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    move v1, v2

    .line 153
    goto :goto_1

    .line 154
    :cond_5
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 155
    .line 156
    return-object p1

    .line 157
    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    .line 158
    .line 159
    add-int/2addr v0, v7

    .line 160
    const/16 v1, 0x5c

    .line 161
    .line 162
    if-ne v7, v1, :cond_7

    .line 163
    .line 164
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 165
    .line 166
    return-object v5

    .line 167
    :cond_7
    move v1, v8

    .line 168
    goto :goto_0
.end method

.method public final scanTrue()V
    .locals 3

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2
    .line 3
    const/16 v1, 0x74

    .line 4
    .line 5
    const-string v2, "error parse true"

    .line 6
    .line 7
    if-ne v0, v1, :cond_5

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 10
    .line 11
    .line 12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 13
    .line 14
    const/16 v1, 0x72

    .line 15
    .line 16
    if-ne v0, v1, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 19
    .line 20
    .line 21
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 22
    .line 23
    const/16 v1, 0x75

    .line 24
    .line 25
    if-ne v0, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 28
    .line 29
    .line 30
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 31
    .line 32
    const/16 v1, 0x65

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 37
    .line 38
    .line 39
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 40
    .line 41
    const/16 v1, 0x20

    .line 42
    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    .line 45
    const/16 v1, 0x2c

    .line 46
    .line 47
    if-eq v0, v1, :cond_1

    .line 48
    .line 49
    const/16 v1, 0x7d

    .line 50
    .line 51
    if-eq v0, v1, :cond_1

    .line 52
    .line 53
    const/16 v1, 0x5d

    .line 54
    .line 55
    if-eq v0, v1, :cond_1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    if-eq v0, v1, :cond_1

    .line 60
    .line 61
    const/16 v1, 0xd

    .line 62
    .line 63
    if-eq v0, v1, :cond_1

    .line 64
    .line 65
    const/16 v1, 0x9

    .line 66
    .line 67
    if-eq v0, v1, :cond_1

    .line 68
    .line 69
    const/16 v1, 0x1a

    .line 70
    .line 71
    if-eq v0, v1, :cond_1

    .line 72
    .line 73
    const/16 v1, 0xc

    .line 74
    .line 75
    if-eq v0, v1, :cond_1

    .line 76
    .line 77
    const/16 v1, 0x8

    .line 78
    .line 79
    if-eq v0, v1, :cond_1

    .line 80
    .line 81
    const/16 v1, 0x3a

    .line 82
    .line 83
    if-eq v0, v1, :cond_1

    .line 84
    .line 85
    const/16 v1, 0x2f

    .line 86
    .line 87
    if-ne v0, v1, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 91
    .line 92
    const-string v1, "scan true error"

    .line 93
    .line 94
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_1
    :goto_0
    const/4 v0, 0x6

    .line 99
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 103
    .line 104
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 109
    .line 110
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 115
    .line 116
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 121
    .line 122
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3
    .line 4
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 p1, -0x2

    .line 13
    return p1

    .line 14
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 15
    .line 16
    array-length v1, v1

    .line 17
    add-int/2addr v2, v1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    const/4 v3, -0x1

    .line 23
    if-ge v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    add-int v5, v2, v0

    .line 30
    .line 31
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eq v4, v5, :cond_1

    .line 36
    .line 37
    return v3

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    add-int/2addr v2, v1

    .line 42
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/16 v0, 0x22

    .line 47
    .line 48
    if-eq p1, v0, :cond_3

    .line 49
    .line 50
    return v3

    .line 51
    :cond_3
    add-int/lit8 p1, v2, 0x1

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 58
    .line 59
    const/16 v1, 0x10

    .line 60
    .line 61
    const/16 v4, 0x2c

    .line 62
    .line 63
    const/4 v5, 0x3

    .line 64
    if-ne v0, v4, :cond_4

    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x2

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 73
    .line 74
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 75
    .line 76
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 77
    .line 78
    return v5

    .line 79
    :cond_4
    const/16 v6, 0x7d

    .line 80
    .line 81
    if-ne v0, v6, :cond_9

    .line 82
    .line 83
    add-int/lit8 p1, v2, 0x2

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 90
    .line 91
    if-ne v0, v4, :cond_5

    .line 92
    .line 93
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 94
    .line 95
    add-int/2addr v2, v5

    .line 96
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 101
    .line 102
    :goto_1
    move p1, v2

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    const/16 v1, 0x5d

    .line 105
    .line 106
    if-ne v0, v1, :cond_6

    .line 107
    .line 108
    const/16 p1, 0xf

    .line 109
    .line 110
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 111
    .line 112
    add-int/2addr v2, v5

    .line 113
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    if-ne v0, v6, :cond_7

    .line 121
    .line 122
    const/16 p1, 0xd

    .line 123
    .line 124
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 125
    .line 126
    add-int/2addr v2, v5

    .line 127
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_7
    const/16 v1, 0x1a

    .line 135
    .line 136
    if-ne v0, v1, :cond_8

    .line 137
    .line 138
    const/16 v0, 0x14

    .line 139
    .line 140
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 141
    .line 142
    :goto_2
    const/4 v0, 0x4

    .line 143
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_8
    return v3

    .line 147
    :cond_9
    :goto_3
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 148
    .line 149
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 150
    .line 151
    return p1
.end method

.method public scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public scanUUID(C)Ljava/util/UUID;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 5
    .line 6
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0xd

    .line 13
    .line 14
    const/4 v6, -0x1

    .line 15
    const/4 v7, 0x4

    .line 16
    const/4 v8, 0x0

    .line 17
    const/16 v9, 0x22

    .line 18
    .line 19
    if-ne v2, v9, :cond_1f

    .line 20
    .line 21
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    invoke-virtual {v0, v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eq v2, v6, :cond_1e

    .line 30
    .line 31
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 32
    .line 33
    add-int/lit8 v9, v9, 0x1

    .line 34
    .line 35
    sub-int v10, v2, v9

    .line 36
    .line 37
    const/16 v11, 0x24

    .line 38
    .line 39
    const/4 v14, -0x2

    .line 40
    const/16 v15, 0x46

    .line 41
    .line 42
    const/16 v1, 0x41

    .line 43
    .line 44
    const/16 v12, 0x66

    .line 45
    .line 46
    const/16 v13, 0x61

    .line 47
    .line 48
    const/16 v6, 0x39

    .line 49
    .line 50
    const/16 v4, 0x30

    .line 51
    .line 52
    if-ne v10, v11, :cond_14

    .line 53
    .line 54
    const/4 v10, 0x0

    .line 55
    const-wide/16 v18, 0x0

    .line 56
    .line 57
    :goto_0
    const/16 v5, 0x8

    .line 58
    .line 59
    if-ge v10, v5, :cond_3

    .line 60
    .line 61
    add-int v5, v9, v10

    .line 62
    .line 63
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-lt v5, v4, :cond_0

    .line 68
    .line 69
    if-gt v5, v6, :cond_0

    .line 70
    .line 71
    add-int/lit8 v5, v5, -0x30

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    if-lt v5, v13, :cond_1

    .line 75
    .line 76
    if-gt v5, v12, :cond_1

    .line 77
    .line 78
    add-int/lit8 v5, v5, -0x57

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    if-lt v5, v1, :cond_2

    .line 82
    .line 83
    if-gt v5, v15, :cond_2

    .line 84
    .line 85
    add-int/lit8 v5, v5, -0x37

    .line 86
    .line 87
    :goto_1
    shl-long v18, v18, v7

    .line 88
    .line 89
    move/from16 v20, v2

    .line 90
    .line 91
    int-to-long v1, v5

    .line 92
    or-long v18, v18, v1

    .line 93
    .line 94
    add-int/lit8 v10, v10, 0x1

    .line 95
    .line 96
    move/from16 v2, v20

    .line 97
    .line 98
    const/16 v1, 0x41

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 102
    .line 103
    return-object v8

    .line 104
    :cond_3
    move/from16 v20, v2

    .line 105
    .line 106
    const/16 v1, 0x9

    .line 107
    .line 108
    :goto_2
    if-ge v1, v3, :cond_7

    .line 109
    .line 110
    add-int v2, v9, v1

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-lt v2, v4, :cond_4

    .line 117
    .line 118
    if-gt v2, v6, :cond_4

    .line 119
    .line 120
    add-int/lit8 v2, v2, -0x30

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    if-lt v2, v13, :cond_5

    .line 124
    .line 125
    if-gt v2, v12, :cond_5

    .line 126
    .line 127
    add-int/lit8 v2, v2, -0x57

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    const/16 v5, 0x41

    .line 131
    .line 132
    if-lt v2, v5, :cond_6

    .line 133
    .line 134
    if-gt v2, v15, :cond_6

    .line 135
    .line 136
    add-int/lit8 v2, v2, -0x37

    .line 137
    .line 138
    :goto_3
    shl-long v18, v18, v7

    .line 139
    .line 140
    int-to-long v11, v2

    .line 141
    or-long v18, v18, v11

    .line 142
    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 144
    .line 145
    const/16 v11, 0x24

    .line 146
    .line 147
    const/16 v12, 0x66

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 151
    .line 152
    return-object v8

    .line 153
    :cond_7
    const/16 v1, 0xe

    .line 154
    .line 155
    move-wide/from16 v10, v18

    .line 156
    .line 157
    :goto_4
    const/16 v2, 0x12

    .line 158
    .line 159
    if-ge v1, v2, :cond_b

    .line 160
    .line 161
    add-int v2, v9, v1

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-lt v2, v4, :cond_8

    .line 168
    .line 169
    if-gt v2, v6, :cond_8

    .line 170
    .line 171
    add-int/lit8 v2, v2, -0x30

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_8
    if-lt v2, v13, :cond_9

    .line 175
    .line 176
    const/16 v12, 0x66

    .line 177
    .line 178
    if-gt v2, v12, :cond_9

    .line 179
    .line 180
    add-int/lit8 v2, v2, -0x57

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_9
    const/16 v12, 0x41

    .line 184
    .line 185
    if-lt v2, v12, :cond_a

    .line 186
    .line 187
    if-gt v2, v15, :cond_a

    .line 188
    .line 189
    add-int/lit8 v2, v2, -0x37

    .line 190
    .line 191
    :goto_5
    shl-long/2addr v10, v7

    .line 192
    int-to-long v5, v2

    .line 193
    or-long/2addr v10, v5

    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 195
    .line 196
    const/16 v6, 0x39

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_a
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 200
    .line 201
    return-object v8

    .line 202
    :cond_b
    const/16 v1, 0x13

    .line 203
    .line 204
    const-wide/16 v16, 0x0

    .line 205
    .line 206
    :goto_6
    const/16 v2, 0x17

    .line 207
    .line 208
    if-ge v1, v2, :cond_f

    .line 209
    .line 210
    add-int v2, v9, v1

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-lt v2, v4, :cond_c

    .line 217
    .line 218
    const/16 v5, 0x39

    .line 219
    .line 220
    if-gt v2, v5, :cond_c

    .line 221
    .line 222
    add-int/lit8 v2, v2, -0x30

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_c
    if-lt v2, v13, :cond_d

    .line 226
    .line 227
    const/16 v5, 0x66

    .line 228
    .line 229
    if-gt v2, v5, :cond_d

    .line 230
    .line 231
    add-int/lit8 v2, v2, -0x57

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_d
    const/16 v5, 0x41

    .line 235
    .line 236
    if-lt v2, v5, :cond_e

    .line 237
    .line 238
    if-gt v2, v15, :cond_e

    .line 239
    .line 240
    add-int/lit8 v2, v2, -0x37

    .line 241
    .line 242
    :goto_7
    shl-long v5, v16, v7

    .line 243
    .line 244
    int-to-long v12, v2

    .line 245
    or-long v16, v5, v12

    .line 246
    .line 247
    add-int/lit8 v1, v1, 0x1

    .line 248
    .line 249
    const/16 v13, 0x61

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_e
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 253
    .line 254
    return-object v8

    .line 255
    :cond_f
    const/16 v1, 0x18

    .line 256
    .line 257
    move-wide/from16 v5, v16

    .line 258
    .line 259
    :goto_8
    const/16 v2, 0x24

    .line 260
    .line 261
    if-ge v1, v2, :cond_13

    .line 262
    .line 263
    add-int v12, v9, v1

    .line 264
    .line 265
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 266
    .line 267
    .line 268
    move-result v13

    .line 269
    if-lt v13, v4, :cond_10

    .line 270
    .line 271
    const/16 v12, 0x39

    .line 272
    .line 273
    if-gt v13, v12, :cond_10

    .line 274
    .line 275
    add-int/lit8 v13, v13, -0x30

    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_10
    const/16 v2, 0x61

    .line 279
    .line 280
    if-lt v13, v2, :cond_11

    .line 281
    .line 282
    const/16 v2, 0x66

    .line 283
    .line 284
    if-gt v13, v2, :cond_11

    .line 285
    .line 286
    add-int/lit8 v13, v13, -0x57

    .line 287
    .line 288
    goto :goto_9

    .line 289
    :cond_11
    const/16 v2, 0x41

    .line 290
    .line 291
    if-lt v13, v2, :cond_12

    .line 292
    .line 293
    if-gt v13, v15, :cond_12

    .line 294
    .line 295
    add-int/lit8 v13, v13, -0x37

    .line 296
    .line 297
    :goto_9
    shl-long/2addr v5, v7

    .line 298
    int-to-long v12, v13

    .line 299
    or-long/2addr v5, v12

    .line 300
    add-int/lit8 v1, v1, 0x1

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_12
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 304
    .line 305
    return-object v8

    .line 306
    :cond_13
    new-instance v1, Ljava/util/UUID;

    .line 307
    .line 308
    invoke-direct {v1, v10, v11, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    .line 309
    .line 310
    .line 311
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 312
    .line 313
    add-int/lit8 v4, v2, 0x1

    .line 314
    .line 315
    sub-int v4, v20, v4

    .line 316
    .line 317
    add-int/lit8 v5, v4, 0x2

    .line 318
    .line 319
    const/4 v6, 0x3

    .line 320
    add-int/2addr v4, v6

    .line 321
    add-int/2addr v2, v5

    .line 322
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    goto/16 :goto_f

    .line 327
    .line 328
    :cond_14
    move/from16 v20, v2

    .line 329
    .line 330
    const/16 v1, 0x20

    .line 331
    .line 332
    if-ne v10, v1, :cond_1d

    .line 333
    .line 334
    const/4 v2, 0x0

    .line 335
    const/16 v5, 0x10

    .line 336
    .line 337
    const-wide/16 v10, 0x0

    .line 338
    .line 339
    :goto_a
    if-ge v2, v5, :cond_18

    .line 340
    .line 341
    add-int v5, v9, v2

    .line 342
    .line 343
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    if-lt v5, v4, :cond_15

    .line 348
    .line 349
    const/16 v6, 0x39

    .line 350
    .line 351
    if-gt v5, v6, :cond_15

    .line 352
    .line 353
    add-int/lit8 v5, v5, -0x30

    .line 354
    .line 355
    goto :goto_b

    .line 356
    :cond_15
    const/16 v6, 0x61

    .line 357
    .line 358
    if-lt v5, v6, :cond_16

    .line 359
    .line 360
    const/16 v6, 0x66

    .line 361
    .line 362
    if-gt v5, v6, :cond_16

    .line 363
    .line 364
    add-int/lit8 v5, v5, -0x57

    .line 365
    .line 366
    goto :goto_b

    .line 367
    :cond_16
    const/16 v6, 0x41

    .line 368
    .line 369
    if-lt v5, v6, :cond_17

    .line 370
    .line 371
    if-gt v5, v15, :cond_17

    .line 372
    .line 373
    add-int/lit8 v5, v5, -0x37

    .line 374
    .line 375
    :goto_b
    shl-long/2addr v10, v7

    .line 376
    int-to-long v5, v5

    .line 377
    or-long/2addr v10, v5

    .line 378
    add-int/lit8 v2, v2, 0x1

    .line 379
    .line 380
    const/16 v5, 0x10

    .line 381
    .line 382
    goto :goto_a

    .line 383
    :cond_17
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 384
    .line 385
    return-object v8

    .line 386
    :cond_18
    const/16 v5, 0x10

    .line 387
    .line 388
    const-wide/16 v12, 0x0

    .line 389
    .line 390
    :goto_c
    if-ge v5, v1, :cond_1c

    .line 391
    .line 392
    add-int v2, v9, v5

    .line 393
    .line 394
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    const/16 v6, 0x39

    .line 399
    .line 400
    if-lt v2, v4, :cond_19

    .line 401
    .line 402
    if-gt v2, v6, :cond_19

    .line 403
    .line 404
    add-int/lit8 v2, v2, -0x30

    .line 405
    .line 406
    :goto_d
    const/16 v1, 0x41

    .line 407
    .line 408
    goto :goto_e

    .line 409
    :cond_19
    const/16 v1, 0x61

    .line 410
    .line 411
    if-lt v2, v1, :cond_1a

    .line 412
    .line 413
    const/16 v1, 0x66

    .line 414
    .line 415
    if-gt v2, v1, :cond_1a

    .line 416
    .line 417
    add-int/lit8 v2, v2, -0x57

    .line 418
    .line 419
    goto :goto_d

    .line 420
    :cond_1a
    const/16 v1, 0x41

    .line 421
    .line 422
    if-lt v2, v1, :cond_1b

    .line 423
    .line 424
    if-gt v2, v15, :cond_1b

    .line 425
    .line 426
    add-int/lit8 v2, v2, -0x37

    .line 427
    .line 428
    :goto_e
    shl-long/2addr v12, v7

    .line 429
    int-to-long v1, v2

    .line 430
    or-long/2addr v12, v1

    .line 431
    add-int/lit8 v5, v5, 0x1

    .line 432
    .line 433
    const/16 v1, 0x20

    .line 434
    .line 435
    goto :goto_c

    .line 436
    :cond_1b
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 437
    .line 438
    return-object v8

    .line 439
    :cond_1c
    new-instance v1, Ljava/util/UUID;

    .line 440
    .line 441
    invoke-direct {v1, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    .line 442
    .line 443
    .line 444
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 445
    .line 446
    add-int/lit8 v4, v2, 0x1

    .line 447
    .line 448
    sub-int v4, v20, v4

    .line 449
    .line 450
    add-int/lit8 v5, v4, 0x2

    .line 451
    .line 452
    const/4 v6, 0x3

    .line 453
    add-int/2addr v4, v6

    .line 454
    add-int/2addr v2, v5

    .line 455
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    goto :goto_f

    .line 460
    :cond_1d
    const/4 v1, -0x1

    .line 461
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 462
    .line 463
    return-object v8

    .line 464
    :cond_1e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 465
    .line 466
    const-string v2, "unclosed str"

    .line 467
    .line 468
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    throw v1

    .line 472
    :cond_1f
    const/16 v1, 0x6e

    .line 473
    .line 474
    if-ne v2, v1, :cond_26

    .line 475
    .line 476
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 477
    .line 478
    add-int/lit8 v1, v1, 0x1

    .line 479
    .line 480
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    const/16 v2, 0x75

    .line 485
    .line 486
    if-ne v1, v2, :cond_26

    .line 487
    .line 488
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 489
    .line 490
    add-int/lit8 v1, v1, 0x2

    .line 491
    .line 492
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    const/16 v2, 0x6c

    .line 497
    .line 498
    if-ne v1, v2, :cond_26

    .line 499
    .line 500
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 501
    .line 502
    const/4 v2, 0x3

    .line 503
    add-int/2addr v1, v2

    .line 504
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    const/16 v2, 0x6c

    .line 509
    .line 510
    if-ne v1, v2, :cond_26

    .line 511
    .line 512
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 513
    .line 514
    add-int/2addr v1, v7

    .line 515
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    const/4 v4, 0x5

    .line 520
    move-object v1, v8

    .line 521
    :goto_f
    const/16 v5, 0x2c

    .line 522
    .line 523
    if-ne v2, v5, :cond_20

    .line 524
    .line 525
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 526
    .line 527
    add-int/2addr v2, v4

    .line 528
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 529
    .line 530
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 535
    .line 536
    const/4 v2, 0x3

    .line 537
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 538
    .line 539
    return-object v1

    .line 540
    :cond_20
    const/16 v5, 0x5d

    .line 541
    .line 542
    if-ne v2, v5, :cond_25

    .line 543
    .line 544
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 545
    .line 546
    add-int/lit8 v5, v4, 0x1

    .line 547
    .line 548
    add-int/2addr v2, v4

    .line 549
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    const/16 v6, 0x2c

    .line 554
    .line 555
    if-ne v2, v6, :cond_21

    .line 556
    .line 557
    const/16 v6, 0x10

    .line 558
    .line 559
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 560
    .line 561
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 562
    .line 563
    add-int/2addr v2, v5

    .line 564
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 565
    .line 566
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 571
    .line 572
    goto :goto_10

    .line 573
    :cond_21
    const/16 v6, 0x5d

    .line 574
    .line 575
    if-ne v2, v6, :cond_22

    .line 576
    .line 577
    const/16 v2, 0xf

    .line 578
    .line 579
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 580
    .line 581
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 582
    .line 583
    add-int/2addr v2, v5

    .line 584
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 585
    .line 586
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 591
    .line 592
    goto :goto_10

    .line 593
    :cond_22
    const/16 v6, 0x7d

    .line 594
    .line 595
    if-ne v2, v6, :cond_23

    .line 596
    .line 597
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 598
    .line 599
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 600
    .line 601
    add-int/2addr v2, v5

    .line 602
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 603
    .line 604
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 609
    .line 610
    goto :goto_10

    .line 611
    :cond_23
    const/16 v3, 0x1a

    .line 612
    .line 613
    if-ne v2, v3, :cond_24

    .line 614
    .line 615
    const/16 v2, 0x14

    .line 616
    .line 617
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 618
    .line 619
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 620
    .line 621
    add-int/2addr v2, v4

    .line 622
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 623
    .line 624
    const/16 v2, 0x1a

    .line 625
    .line 626
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 627
    .line 628
    :goto_10
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 629
    .line 630
    return-object v1

    .line 631
    :cond_24
    const/4 v1, -0x1

    .line 632
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 633
    .line 634
    return-object v8

    .line 635
    :cond_25
    const/4 v1, -0x1

    .line 636
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 637
    .line 638
    return-object v8

    .line 639
    :cond_26
    const/4 v1, -0x1

    .line 640
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 641
    .line 642
    return-object v8
.end method

.method public seekArrayToItem(I)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public seekObjectToField(JZ)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public seekObjectToField([J)I
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public seekObjectToFieldDeepScan(J)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public setFeatures(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 2
    .line 3
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 2
    .line 3
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 2
    .line 3
    return-void
.end method

.method public setToken(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2
    .line 3
    return-void
.end method

.method public skipArray()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public skipComment()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2
    .line 3
    .line 4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    const/16 v2, 0x2f

    .line 9
    .line 10
    if-ne v0, v2, :cond_2

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 13
    .line 14
    .line 15
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    const/16 v3, 0x2a

    .line 29
    .line 30
    if-ne v0, v3, :cond_6

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 33
    .line 34
    .line 35
    :cond_3
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 36
    .line 37
    if-eq v0, v1, :cond_5

    .line 38
    .line 39
    if-ne v0, v3, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 42
    .line 43
    .line 44
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 45
    .line 46
    if-ne v0, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    return-void

    .line 57
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 58
    .line 59
    const-string v1, "invalid comment"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0
.end method

.method public skipObject()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skipObject(Z)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final skipWhitespace()V
    .locals 3

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2
    .line 3
    const/16 v1, 0x2f

    .line 4
    .line 5
    if-gt v0, v1, :cond_2

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    const/16 v2, 0xd

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x9

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    const/16 v2, 0xc

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    if-ne v0, v2, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method public abstract sub_chars(II)[C
.end method

.method public final token()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2
    .line 3
    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
