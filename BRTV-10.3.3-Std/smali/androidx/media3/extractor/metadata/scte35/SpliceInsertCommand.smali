.class public final Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;
.super Landroidx/media3/extractor/metadata/scte35/SpliceCommand;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    }
.end annotation


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDurationUs:J

.field public final componentSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final programSplicePlaybackPositionUs:J

.field public final programSplicePts:J

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final spliceImmediateFlag:Z

.field public final uniqueProgramId:I


# direct methods
.method private constructor <init>(JZZZZJJLjava/util/List;ZJIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJJ",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;ZJIII)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 3
    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    iput-wide v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 7
    .line 8
    move v1, p3

    .line 9
    iput-boolean v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 10
    .line 11
    move v1, p4

    .line 12
    iput-boolean v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 13
    .line 14
    move v1, p5

    .line 15
    iput-boolean v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 16
    .line 17
    move v1, p6

    .line 18
    iput-boolean v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 19
    .line 20
    move-wide v1, p7

    .line 21
    iput-wide v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 22
    .line 23
    move-wide v1, p9

    .line 24
    iput-wide v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 25
    .line 26
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 31
    .line 32
    move v1, p12

    .line 33
    iput-boolean v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 34
    .line 35
    move-wide/from16 v1, p13

    .line 36
    .line 37
    iput-wide v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    .line 38
    .line 39
    move/from16 v1, p15

    .line 40
    .line 41
    iput v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 42
    .line 43
    move/from16 v1, p16

    .line 44
    .line 45
    iput v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 46
    .line 47
    move/from16 v1, p17

    .line 48
    .line 49
    iput v1, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 50
    .line 51
    return-void
.end method

.method public static parseFromSection(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;
    .locals 27

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    and-int/lit16 v1, v1, 0x80

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v6, 0x0

    .line 18
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v6, :cond_b

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    and-int/lit16 v10, v9, 0x80

    .line 29
    .line 30
    if-eqz v10, :cond_1

    .line 31
    .line 32
    const/4 v10, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v10, 0x0

    .line 35
    :goto_1
    and-int/lit8 v11, v9, 0x40

    .line 36
    .line 37
    if-eqz v11, :cond_2

    .line 38
    .line 39
    const/4 v11, 0x1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/4 v11, 0x0

    .line 42
    :goto_2
    and-int/lit8 v12, v9, 0x20

    .line 43
    .line 44
    if-eqz v12, :cond_3

    .line 45
    .line 46
    const/4 v12, 0x1

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    const/4 v12, 0x0

    .line 49
    :goto_3
    and-int/lit8 v9, v9, 0x10

    .line 50
    .line 51
    if-eqz v9, :cond_4

    .line 52
    .line 53
    const/4 v9, 0x1

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    const/4 v9, 0x0

    .line 56
    :goto_4
    if-eqz v11, :cond_5

    .line 57
    .line 58
    if-nez v9, :cond_5

    .line 59
    .line 60
    invoke-static/range {p0 .. p2}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Landroidx/media3/common/util/ParsableByteArray;J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v13

    .line 64
    goto :goto_5

    .line 65
    :cond_5
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    :goto_5
    if-nez v11, :cond_8

    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    new-instance v15, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    :goto_6
    if-ge v4, v1, :cond_7

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 85
    .line 86
    .line 87
    move-result v18

    .line 88
    if-nez v9, :cond_6

    .line 89
    .line 90
    invoke-static/range {p0 .. p2}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Landroidx/media3/common/util/ParsableByteArray;J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v19

    .line 94
    move-wide/from16 v7, v19

    .line 95
    .line 96
    goto :goto_7

    .line 97
    :cond_6
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    :goto_7
    new-instance v5, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    .line 103
    .line 104
    invoke-virtual {v0, v7, v8}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v21

    .line 108
    const/16 v23, 0x0

    .line 109
    .line 110
    move-object/from16 v17, v5

    .line 111
    .line 112
    move-wide/from16 v19, v7

    .line 113
    .line 114
    invoke-direct/range {v17 .. v23}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJLandroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$1;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_7
    move-object v1, v15

    .line 124
    :cond_8
    if-eqz v12, :cond_a

    .line 125
    .line 126
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    int-to-long v4, v4

    .line 131
    const-wide/16 v7, 0x80

    .line 132
    .line 133
    and-long/2addr v7, v4

    .line 134
    const-wide/16 v17, 0x0

    .line 135
    .line 136
    cmp-long v12, v7, v17

    .line 137
    .line 138
    if-eqz v12, :cond_9

    .line 139
    .line 140
    const/16 v16, 0x1

    .line 141
    .line 142
    goto :goto_8

    .line 143
    :cond_9
    const/16 v16, 0x0

    .line 144
    .line 145
    :goto_8
    const-wide/16 v7, 0x1

    .line 146
    .line 147
    and-long/2addr v4, v7

    .line 148
    const/16 v7, 0x20

    .line 149
    .line 150
    shl-long/2addr v4, v7

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 152
    .line 153
    .line 154
    move-result-wide v7

    .line 155
    or-long/2addr v4, v7

    .line 156
    const-wide/16 v7, 0x3e8

    .line 157
    .line 158
    mul-long v4, v4, v7

    .line 159
    .line 160
    const-wide/16 v7, 0x5a

    .line 161
    .line 162
    div-long v7, v4, v7

    .line 163
    .line 164
    move/from16 v5, v16

    .line 165
    .line 166
    goto :goto_9

    .line 167
    :cond_a
    const/4 v5, 0x0

    .line 168
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 182
    .line 183
    .line 184
    move-result v15

    .line 185
    move/from16 v16, v4

    .line 186
    .line 187
    move/from16 v24, v11

    .line 188
    .line 189
    move/from16 v17, v12

    .line 190
    .line 191
    move/from16 v18, v15

    .line 192
    .line 193
    move-object v12, v1

    .line 194
    move-wide/from16 v25, v13

    .line 195
    .line 196
    move v13, v5

    .line 197
    move-wide v14, v7

    .line 198
    move v7, v9

    .line 199
    move v5, v10

    .line 200
    move-wide/from16 v8, v25

    .line 201
    .line 202
    goto :goto_a

    .line 203
    :cond_b
    move-object v12, v1

    .line 204
    const/4 v5, 0x0

    .line 205
    const/4 v7, 0x0

    .line 206
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    const/4 v13, 0x0

    .line 212
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    const/16 v16, 0x0

    .line 218
    .line 219
    const/16 v17, 0x0

    .line 220
    .line 221
    const/16 v18, 0x0

    .line 222
    .line 223
    const/16 v24, 0x0

    .line 224
    .line 225
    :goto_a
    new-instance v19, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    .line 226
    .line 227
    move-object/from16 v1, v19

    .line 228
    .line 229
    invoke-virtual {v0, v8, v9}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 230
    .line 231
    .line 232
    move-result-wide v10

    .line 233
    move v4, v6

    .line 234
    move/from16 v6, v24

    .line 235
    .line 236
    invoke-direct/range {v1 .. v18}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    .line 237
    .line 238
    .line 239
    return-object v19
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SCTE-35 SpliceInsertCommand { programSplicePts="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", programSplicePlaybackPositionUs= "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 19
    .line 20
    const-string v3, " }"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, La/e;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
