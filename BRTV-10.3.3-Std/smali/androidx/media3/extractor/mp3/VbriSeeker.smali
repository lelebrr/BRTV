.class final Landroidx/media3/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "VbriSeeker"


# instance fields
.field private final bitrate:I

.field private final dataEndPosition:J

.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->durationUs:J

    .line 9
    .line 10
    iput-wide p5, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    .line 11
    .line 12
    iput p7, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->bitrate:I

    .line 13
    .line 14
    return-void
.end method

.method public static create(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/VbriSeeker;
    .locals 20

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    const/4 v4, 0x6

    .line 8
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget v5, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    .line 16
    .line 17
    int-to-long v5, v5

    .line 18
    add-long v5, p2, v5

    .line 19
    .line 20
    int-to-long v7, v4

    .line 21
    add-long/2addr v5, v7

    .line 22
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v7, 0x0

    .line 27
    if-gtz v4, :cond_0

    .line 28
    .line 29
    return-object v7

    .line 30
    :cond_0
    iget v8, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 31
    .line 32
    int-to-long v9, v4

    .line 33
    iget v4, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    .line 34
    .line 35
    int-to-long v11, v4

    .line 36
    mul-long v9, v9, v11

    .line 37
    .line 38
    const-wide/16 v11, 0x1

    .line 39
    .line 40
    sub-long/2addr v9, v11

    .line 41
    invoke-static {v9, v10, v8}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    .line 42
    .line 43
    .line 44
    move-result-wide v14

    .line 45
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const/4 v10, 0x2

    .line 58
    invoke-virtual {v3, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 59
    .line 60
    .line 61
    iget v11, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    .line 62
    .line 63
    int-to-long v11, v11

    .line 64
    add-long v11, p2, v11

    .line 65
    .line 66
    new-array v13, v4, [J

    .line 67
    .line 68
    new-array v7, v4, [J

    .line 69
    .line 70
    const/16 v17, 0x0

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    :goto_0
    if-ge v10, v4, :cond_5

    .line 74
    .line 75
    int-to-long v2, v10

    .line 76
    mul-long v2, v2, v14

    .line 77
    .line 78
    move-wide/from16 v18, v14

    .line 79
    .line 80
    int-to-long v14, v4

    .line 81
    div-long/2addr v2, v14

    .line 82
    aput-wide v2, v13, v10

    .line 83
    .line 84
    aput-wide v11, v7, v10

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    if-eq v9, v2, :cond_4

    .line 88
    .line 89
    const/4 v2, 0x2

    .line 90
    if-eq v9, v2, :cond_3

    .line 91
    .line 92
    const/4 v3, 0x3

    .line 93
    if-eq v9, v3, :cond_2

    .line 94
    .line 95
    const/4 v3, 0x4

    .line 96
    if-eq v9, v3, :cond_1

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    return-object v3

    .line 100
    :cond_1
    const/4 v3, 0x0

    .line 101
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const/4 v3, 0x0

    .line 107
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    .line 108
    .line 109
    .line 110
    move-result v14

    .line 111
    goto :goto_1

    .line 112
    :cond_3
    const/4 v3, 0x0

    .line 113
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    const/4 v2, 0x2

    .line 119
    const/4 v3, 0x0

    .line 120
    invoke-virtual/range {p5 .. p5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    :goto_1
    int-to-long v14, v14

    .line 125
    int-to-long v2, v8

    .line 126
    mul-long v14, v14, v2

    .line 127
    .line 128
    add-long/2addr v11, v14

    .line 129
    add-int/lit8 v10, v10, 0x1

    .line 130
    .line 131
    move-object/from16 v2, p4

    .line 132
    .line 133
    move-object/from16 v3, p5

    .line 134
    .line 135
    move-wide/from16 v14, v18

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_5
    move-wide/from16 v18, v14

    .line 139
    .line 140
    const-wide/16 v2, -0x1

    .line 141
    .line 142
    const-string v4, ", "

    .line 143
    .line 144
    const-string v8, "VbriSeeker"

    .line 145
    .line 146
    cmp-long v9, v0, v2

    .line 147
    .line 148
    if-eqz v9, :cond_6

    .line 149
    .line 150
    cmp-long v2, v0, v5

    .line 151
    .line 152
    if-eqz v2, :cond_6

    .line 153
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v3, "VBRI data size mismatch: "

    .line 157
    .line 158
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_6
    cmp-long v0, v5, v11

    .line 178
    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v1, "VBRI bytes and ToC mismatch (using max): "

    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, "\nSeeking will be inaccurate."

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 210
    .line 211
    .line 212
    move-result-wide v5

    .line 213
    :cond_7
    move-wide/from16 v16, v5

    .line 214
    .line 215
    new-instance v0, Landroidx/media3/extractor/mp3/VbriSeeker;

    .line 216
    .line 217
    move-object/from16 v1, p4

    .line 218
    .line 219
    iget v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    .line 220
    .line 221
    move-object v11, v0

    .line 222
    move-object v12, v13

    .line 223
    move-object v13, v7

    .line 224
    move-wide/from16 v14, v18

    .line 225
    .line 226
    move/from16 v18, v1

    .line 227
    .line 228
    invoke-direct/range {v11 .. v18}, Landroidx/media3/extractor/mp3/VbriSeeker;-><init>([J[JJJI)V

    .line 229
    .line 230
    .line 231
    return-object v0
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->bitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->durationUs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 11
    .line 12
    aget-wide v4, v3, v0

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    .line 15
    .line 16
    aget-wide v6, v3, v0

    .line 17
    .line 18
    invoke-direct {v2, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 19
    .line 20
    .line 21
    iget-wide v3, v2, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    .line 22
    .line 23
    cmp-long v5, v3, p1

    .line 24
    .line 25
    if-gez v5, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 28
    .line 29
    array-length p1, p1

    .line 30
    sub-int/2addr p1, v1

    .line 31
    if-ne v0, p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Landroidx/media3/extractor/SeekPoint;

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 37
    .line 38
    add-int/2addr v0, v1

    .line 39
    aget-wide v3, p2, v0

    .line 40
    .line 41
    iget-object p2, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    .line 42
    .line 43
    aget-wide v0, p2, v0

    .line 44
    .line 45
    invoke-direct {p1, v3, v4, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 49
    .line 50
    invoke-direct {p2, v2, p1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 51
    .line 52
    .line 53
    return-object p2

    .line 54
    :cond_1
    :goto_0
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 55
    .line 56
    invoke-direct {p1, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v1, p1, p2, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-wide p1, v0, p1

    .line 11
    .line 12
    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
