.class public final Landroidx/media3/extractor/HevcConfig;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field public final bitdepthChroma:I

.field public final bitdepthLuma:I

.field public final codecs:Ljava/lang/String;

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final maxNumReorderPics:I

.field public final maxSubLayers:I

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final stereoMode:I

.field public final vpsData:Landroidx/media3/container/NalUnitUtil$H265VpsData;

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Landroidx/media3/container/NalUnitUtil$H265VpsData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIIIIIIIIFI",
            "Ljava/lang/String;",
            "Landroidx/media3/container/NalUnitUtil$H265VpsData;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/extractor/HevcConfig;->maxSubLayers:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/extractor/HevcConfig;->width:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/media3/extractor/HevcConfig;->height:I

    .line 13
    .line 14
    iput p6, p0, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    .line 15
    .line 16
    iput p7, p0, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    .line 17
    .line 18
    iput p8, p0, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    .line 19
    .line 20
    iput p9, p0, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    .line 21
    .line 22
    iput p10, p0, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    .line 23
    .line 24
    iput p11, p0, Landroidx/media3/extractor/HevcConfig;->stereoMode:I

    .line 25
    .line 26
    iput p12, p0, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    .line 27
    .line 28
    iput p13, p0, Landroidx/media3/extractor/HevcConfig;->maxNumReorderPics:I

    .line 29
    .line 30
    iput-object p14, p0, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p15, p0, Landroidx/media3/extractor/HevcConfig;->vpsData:Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 33
    .line 34
    return-void
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/HevcConfig;->parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    const/16 v2, 0x15

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    and-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    :goto_1
    const/4 v8, 0x1

    .line 36
    if-ge v6, v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    const/4 v9, 0x0

    .line 46
    :goto_2
    if-ge v9, v8, :cond_1

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    add-int/lit8 v11, v10, 0x4

    .line 53
    .line 54
    add-int/2addr v7, v11

    .line 55
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v9, v9, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 65
    .line 66
    .line 67
    new-array v4, v7, [B

    .line 68
    .line 69
    const/4 v6, -0x1

    .line 70
    const/high16 v9, 0x3f800000    # 1.0f

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    move-object/from16 v26, p2

    .line 74
    .line 75
    move-object/from16 v25, v10

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    const/4 v9, 0x0

    .line 79
    const/4 v14, -0x1

    .line 80
    const/4 v15, -0x1

    .line 81
    const/16 v16, -0x1

    .line 82
    .line 83
    const/16 v17, -0x1

    .line 84
    .line 85
    const/16 v18, -0x1

    .line 86
    .line 87
    const/16 v19, -0x1

    .line 88
    .line 89
    const/16 v20, -0x1

    .line 90
    .line 91
    const/16 v21, -0x1

    .line 92
    .line 93
    const/16 v22, -0x1

    .line 94
    .line 95
    const/high16 v23, 0x3f800000    # 1.0f

    .line 96
    .line 97
    const/16 v24, -0x1

    .line 98
    .line 99
    :goto_3
    if-ge v6, v3, :cond_9

    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    and-int/lit8 v10, v10, 0x3f

    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    move-object/from16 v12, v26

    .line 112
    .line 113
    const/4 v13, 0x0

    .line 114
    :goto_4
    if-ge v13, v11, :cond_8

    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    sget-object v8, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    .line 121
    .line 122
    move/from16 v27, v3

    .line 123
    .line 124
    array-length v3, v8

    .line 125
    invoke-static {v8, v5, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    .line 127
    .line 128
    array-length v3, v8

    .line 129
    add-int/2addr v9, v3

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-static {v3, v8, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    .line 140
    .line 141
    const/16 v3, 0x20

    .line 142
    .line 143
    if-ne v10, v3, :cond_4

    .line 144
    .line 145
    if-nez v13, :cond_4

    .line 146
    .line 147
    add-int v3, v9, v1

    .line 148
    .line 149
    invoke-static {v4, v9, v3}, Landroidx/media3/container/NalUnitUtil;->parseH265VpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    move/from16 v34, v11

    .line 154
    .line 155
    :cond_3
    const/4 v8, 0x0

    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :cond_4
    const/16 v3, 0x21

    .line 159
    .line 160
    if-ne v10, v3, :cond_6

    .line 161
    .line 162
    if-nez v13, :cond_6

    .line 163
    .line 164
    add-int v3, v9, v1

    .line 165
    .line 166
    invoke-static {v4, v9, v3, v12}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnit([BIILandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    iget v8, v3, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxSubLayersMinus1:I

    .line 171
    .line 172
    const/4 v14, 0x1

    .line 173
    add-int/2addr v8, v14

    .line 174
    iget v15, v3, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    .line 175
    .line 176
    iget v14, v3, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    .line 177
    .line 178
    iget v5, v3, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    .line 179
    .line 180
    add-int/lit8 v17, v5, 0x8

    .line 181
    .line 182
    iget v5, v3, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    .line 183
    .line 184
    add-int/lit8 v18, v5, 0x8

    .line 185
    .line 186
    iget v5, v3, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    .line 187
    .line 188
    move/from16 v16, v5

    .line 189
    .line 190
    iget v5, v3, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    .line 191
    .line 192
    move/from16 v19, v5

    .line 193
    .line 194
    iget v5, v3, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    .line 195
    .line 196
    move/from16 v20, v5

    .line 197
    .line 198
    iget v5, v3, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 199
    .line 200
    move/from16 v21, v5

    .line 201
    .line 202
    iget v5, v3, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    .line 203
    .line 204
    iget-object v3, v3, Landroidx/media3/container/NalUnitUtil$H265SpsData;->profileTierLevel:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 205
    .line 206
    if-eqz v3, :cond_5

    .line 207
    .line 208
    move/from16 v23, v5

    .line 209
    .line 210
    iget v5, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileSpace:I

    .line 211
    .line 212
    move/from16 p2, v8

    .line 213
    .line 214
    iget-boolean v8, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalTierFlag:Z

    .line 215
    .line 216
    move/from16 v34, v11

    .line 217
    .line 218
    iget v11, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileIdc:I

    .line 219
    .line 220
    move/from16 v24, v14

    .line 221
    .line 222
    iget v14, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalProfileCompatibilityFlags:I

    .line 223
    .line 224
    move/from16 v26, v15

    .line 225
    .line 226
    iget-object v15, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->constraintBytes:[I

    .line 227
    .line 228
    iget v3, v3, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->generalLevelIdc:I

    .line 229
    .line 230
    move/from16 v28, v5

    .line 231
    .line 232
    move/from16 v29, v8

    .line 233
    .line 234
    move/from16 v30, v11

    .line 235
    .line 236
    move/from16 v31, v14

    .line 237
    .line 238
    move-object/from16 v32, v15

    .line 239
    .line 240
    move/from16 v33, v3

    .line 241
    .line 242
    invoke-static/range {v28 .. v33}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v25

    .line 246
    goto :goto_5

    .line 247
    :cond_5
    move/from16 v23, v5

    .line 248
    .line 249
    move/from16 p2, v8

    .line 250
    .line 251
    move/from16 v34, v11

    .line 252
    .line 253
    move/from16 v24, v14

    .line 254
    .line 255
    move/from16 v26, v15

    .line 256
    .line 257
    :goto_5
    move/from16 v14, p2

    .line 258
    .line 259
    move/from16 v15, v26

    .line 260
    .line 261
    const/4 v8, 0x0

    .line 262
    move/from16 v35, v19

    .line 263
    .line 264
    move/from16 v19, v16

    .line 265
    .line 266
    move/from16 v16, v24

    .line 267
    .line 268
    move/from16 v24, v23

    .line 269
    .line 270
    move/from16 v23, v21

    .line 271
    .line 272
    move/from16 v21, v20

    .line 273
    .line 274
    move/from16 v20, v35

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_6
    move/from16 v34, v11

    .line 278
    .line 279
    const/16 v3, 0x27

    .line 280
    .line 281
    if-ne v10, v3, :cond_3

    .line 282
    .line 283
    if-nez v13, :cond_3

    .line 284
    .line 285
    add-int v3, v9, v1

    .line 286
    .line 287
    invoke-static {v4, v9, v3}, Landroidx/media3/container/NalUnitUtil;->parseH265Sei3dRefDisplayInfo([BII)Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    if-eqz v3, :cond_3

    .line 292
    .line 293
    if-eqz v12, :cond_3

    .line 294
    .line 295
    iget v3, v3, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->leftViewId:I

    .line 296
    .line 297
    iget-object v5, v12, Landroidx/media3/container/NalUnitUtil$H265VpsData;->layerInfos:Ld7/u1;

    .line 298
    .line 299
    const/4 v8, 0x0

    .line 300
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    check-cast v5, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    .line 305
    .line 306
    iget v5, v5, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->viewId:I

    .line 307
    .line 308
    if-ne v3, v5, :cond_7

    .line 309
    .line 310
    const/16 v22, 0x4

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_7
    const/4 v3, 0x5

    .line 314
    const/16 v22, 0x5

    .line 315
    .line 316
    :goto_6
    add-int/2addr v9, v1

    .line 317
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 318
    .line 319
    .line 320
    add-int/lit8 v13, v13, 0x1

    .line 321
    .line 322
    move/from16 v3, v27

    .line 323
    .line 324
    move/from16 v11, v34

    .line 325
    .line 326
    const/4 v1, 0x4

    .line 327
    const/4 v5, 0x0

    .line 328
    const/4 v8, 0x1

    .line 329
    goto/16 :goto_4

    .line 330
    .line 331
    :cond_8
    move/from16 v27, v3

    .line 332
    .line 333
    const/4 v8, 0x0

    .line 334
    add-int/lit8 v6, v6, 0x1

    .line 335
    .line 336
    move-object/from16 v26, v12

    .line 337
    .line 338
    const/4 v1, 0x4

    .line 339
    const/4 v5, 0x0

    .line 340
    const/4 v8, 0x1

    .line 341
    goto/16 :goto_3

    .line 342
    .line 343
    :cond_9
    if-nez v7, :cond_a

    .line 344
    .line 345
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    :goto_7
    move-object v12, v0

    .line 350
    goto :goto_8

    .line 351
    :cond_a
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    goto :goto_7

    .line 356
    :goto_8
    new-instance v0, Landroidx/media3/extractor/HevcConfig;

    .line 357
    .line 358
    const/4 v1, 0x1

    .line 359
    add-int/lit8 v13, v2, 0x1

    .line 360
    .line 361
    move-object v11, v0

    .line 362
    invoke-direct/range {v11 .. v26}, Landroidx/media3/extractor/HevcConfig;-><init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Landroidx/media3/container/NalUnitUtil$H265VpsData;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .line 364
    .line 365
    return-object v0

    .line 366
    :goto_9
    if-eqz p1, :cond_b

    .line 367
    .line 368
    const-string v1, "L-HEVC config"

    .line 369
    .line 370
    goto :goto_a

    .line 371
    :cond_b
    const-string v1, "HEVC config"

    .line 372
    .line 373
    :goto_a
    const-string v2, "Error parsing"

    .line 374
    .line 375
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    throw v0
.end method

.method public static parseLayered(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1}, Landroidx/media3/extractor/HevcConfig;->parseImpl(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
