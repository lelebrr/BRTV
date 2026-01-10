.class public final Landroidx/media3/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final BRAND_HEIC:I = 0x68656963

.field public static final BRAND_QUICKTIME:I = 0x71742020

.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/media3/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static isCompatibleBrand(IZ)Z
    .locals 5

    .line 1
    ushr-int/lit8 v0, p0, 0x8

    .line 2
    .line 3
    const v1, 0x336770

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    const v0, 0x68656963

    .line 11
    .line 12
    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    sget-object p1, Landroidx/media3/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    .line 19
    .line 20
    array-length v0, p1

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v0, :cond_3

    .line 24
    .line 25
    aget v4, p1, v3

    .line 26
    .line 27
    if-ne v4, p0, :cond_2

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    return v1
.end method

.method public static sniffFragmented(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/SniffFailure;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/extractor/SniffFailure;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/extractor/SniffFailure;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, 0x1000

    .line 10
    .line 11
    const-wide/16 v6, -0x1

    .line 12
    .line 13
    cmp-long v8, v2, v6

    .line 14
    .line 15
    if-eqz v8, :cond_1

    .line 16
    .line 17
    cmp-long v9, v2, v4

    .line 18
    .line 19
    if-lez v9, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-wide v4, v2

    .line 23
    :cond_1
    :goto_0
    long-to-int v5, v4

    .line 24
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    .line 25
    .line 26
    const/16 v9, 0x40

    .line 27
    .line 28
    invoke-direct {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    :goto_1
    if-ge v10, v5, :cond_2

    .line 35
    .line 36
    const/16 v13, 0x8

    .line 37
    .line 38
    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 42
    .line 43
    .line 44
    move-result-object v14

    .line 45
    const/4 v15, 0x1

    .line 46
    invoke-interface {v0, v14, v9, v13, v15}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    if-nez v14, :cond_3

    .line 51
    .line 52
    :cond_2
    const/4 v6, 0x0

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_3
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 56
    .line 57
    .line 58
    move-result-wide v16

    .line 59
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    const-wide/16 v18, 0x1

    .line 64
    .line 65
    cmp-long v20, v16, v18

    .line 66
    .line 67
    if-nez v20, :cond_4

    .line 68
    .line 69
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    invoke-interface {v0, v15, v13, v13}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 74
    .line 75
    .line 76
    const/16 v15, 0x10

    .line 77
    .line 78
    invoke-virtual {v4, v15}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    .line 82
    .line 83
    .line 84
    move-result-wide v16

    .line 85
    move-wide/from16 v6, v16

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const-wide/16 v19, 0x0

    .line 89
    .line 90
    cmp-long v15, v16, v19

    .line 91
    .line 92
    if-nez v15, :cond_5

    .line 93
    .line 94
    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    .line 95
    .line 96
    .line 97
    move-result-wide v19

    .line 98
    cmp-long v15, v19, v6

    .line 99
    .line 100
    if-eqz v15, :cond_5

    .line 101
    .line 102
    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    .line 103
    .line 104
    .line 105
    move-result-wide v15

    .line 106
    sub-long v19, v19, v15

    .line 107
    .line 108
    int-to-long v6, v13

    .line 109
    add-long v16, v19, v6

    .line 110
    .line 111
    :cond_5
    move-wide/from16 v6, v16

    .line 112
    .line 113
    const/16 v15, 0x8

    .line 114
    .line 115
    :goto_2
    int-to-long v12, v15

    .line 116
    cmp-long v19, v6, v12

    .line 117
    .line 118
    if-gez v19, :cond_6

    .line 119
    .line 120
    new-instance v0, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;

    .line 121
    .line 122
    invoke-direct {v0, v14, v6, v7, v15}, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;-><init>(IJI)V

    .line 123
    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_6
    add-int/2addr v10, v15

    .line 127
    const v15, 0x6d6f6f76

    .line 128
    .line 129
    .line 130
    if-ne v14, v15, :cond_8

    .line 131
    .line 132
    long-to-int v7, v6

    .line 133
    add-int/2addr v5, v7

    .line 134
    if-eqz v8, :cond_7

    .line 135
    .line 136
    int-to-long v6, v5

    .line 137
    cmp-long v12, v6, v2

    .line 138
    .line 139
    if-lez v12, :cond_7

    .line 140
    .line 141
    long-to-int v5, v2

    .line 142
    :cond_7
    const-wide/16 v6, -0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_8
    const v15, 0x6d6f6f66

    .line 146
    .line 147
    .line 148
    if-eq v14, v15, :cond_14

    .line 149
    .line 150
    const v15, 0x6d766578

    .line 151
    .line 152
    .line 153
    if-ne v14, v15, :cond_9

    .line 154
    .line 155
    goto/16 :goto_7

    .line 156
    .line 157
    :cond_9
    const v15, 0x6d646174

    .line 158
    .line 159
    .line 160
    move-wide/from16 v19, v2

    .line 161
    .line 162
    if-ne v14, v15, :cond_a

    .line 163
    .line 164
    const/4 v11, 0x1

    .line 165
    :cond_a
    int-to-long v2, v10

    .line 166
    add-long/2addr v2, v6

    .line 167
    sub-long/2addr v2, v12

    .line 168
    move/from16 v21, v10

    .line 169
    .line 170
    int-to-long v9, v5

    .line 171
    cmp-long v22, v2, v9

    .line 172
    .line 173
    if-ltz v22, :cond_b

    .line 174
    .line 175
    :goto_3
    const/4 v9, 0x0

    .line 176
    goto/16 :goto_8

    .line 177
    .line 178
    :cond_b
    sub-long/2addr v6, v12

    .line 179
    long-to-int v2, v6

    .line 180
    add-int v10, v21, v2

    .line 181
    .line 182
    const v3, 0x66747970

    .line 183
    .line 184
    .line 185
    if-ne v14, v3, :cond_12

    .line 186
    .line 187
    const/16 v3, 0x8

    .line 188
    .line 189
    if-ge v2, v3, :cond_c

    .line 190
    .line 191
    new-instance v0, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;

    .line 192
    .line 193
    int-to-long v1, v2

    .line 194
    invoke-direct {v0, v14, v1, v2, v3}, Landroidx/media3/extractor/mp4/AtomSizeTooSmallSniffFailure;-><init>(IJI)V

    .line 195
    .line 196
    .line 197
    return-object v0

    .line 198
    :cond_c
    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    const/4 v6, 0x0

    .line 206
    invoke-interface {v0, v3, v6, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-static {v2, v1}, Landroidx/media3/extractor/mp4/Sniffer;->isCompatibleBrand(IZ)Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_d

    .line 218
    .line 219
    const/4 v11, 0x1

    .line 220
    :cond_d
    const/4 v3, 0x4

    .line 221
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    div-int/2addr v7, v3

    .line 229
    if-nez v11, :cond_10

    .line 230
    .line 231
    if-lez v7, :cond_10

    .line 232
    .line 233
    new-array v12, v7, [I

    .line 234
    .line 235
    const/4 v3, 0x0

    .line 236
    :goto_4
    if-ge v3, v7, :cond_f

    .line 237
    .line 238
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    aput v9, v12, v3

    .line 243
    .line 244
    invoke-static {v9, v1}, Landroidx/media3/extractor/mp4/Sniffer;->isCompatibleBrand(IZ)Z

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-eqz v9, :cond_e

    .line 249
    .line 250
    const/4 v15, 0x1

    .line 251
    goto :goto_5

    .line 252
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_f
    move v15, v11

    .line 256
    goto :goto_5

    .line 257
    :cond_10
    move v15, v11

    .line 258
    const/4 v12, 0x0

    .line 259
    :goto_5
    if-nez v15, :cond_11

    .line 260
    .line 261
    new-instance v0, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;

    .line 262
    .line 263
    invoke-direct {v0, v2, v12}, Landroidx/media3/extractor/mp4/UnsupportedBrandsSniffFailure;-><init>(I[I)V

    .line 264
    .line 265
    .line 266
    return-object v0

    .line 267
    :cond_11
    move v11, v15

    .line 268
    goto :goto_6

    .line 269
    :cond_12
    const/4 v6, 0x0

    .line 270
    if-eqz v2, :cond_13

    .line 271
    .line 272
    invoke-interface {v0, v2}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 273
    .line 274
    .line 275
    :cond_13
    :goto_6
    move-wide/from16 v2, v19

    .line 276
    .line 277
    const-wide/16 v6, -0x1

    .line 278
    .line 279
    const/4 v9, 0x0

    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :cond_14
    :goto_7
    const/4 v9, 0x1

    .line 283
    :goto_8
    if-nez v11, :cond_15

    .line 284
    .line 285
    sget-object v0, Landroidx/media3/extractor/mp4/NoDeclaredBrandSniffFailure;->INSTANCE:Landroidx/media3/extractor/mp4/NoDeclaredBrandSniffFailure;

    .line 286
    .line 287
    return-object v0

    .line 288
    :cond_15
    move/from16 v0, p1

    .line 289
    .line 290
    if-eq v0, v9, :cond_17

    .line 291
    .line 292
    if-eqz v9, :cond_16

    .line 293
    .line 294
    sget-object v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->FILE_FRAGMENTED:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    .line 295
    .line 296
    goto :goto_9

    .line 297
    :cond_16
    sget-object v0, Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;->FILE_NOT_FRAGMENTED:Landroidx/media3/extractor/mp4/IncorrectFragmentationSniffFailure;

    .line 298
    .line 299
    :goto_9
    return-object v0

    .line 300
    :cond_17
    const/4 v0, 0x0

    .line 301
    return-object v0
.end method

.method public static sniffUnfragmented(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/SniffFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/extractor/SniffFailure;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
