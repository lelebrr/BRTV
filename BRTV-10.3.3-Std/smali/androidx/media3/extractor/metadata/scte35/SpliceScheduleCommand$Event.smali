.class public final Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
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
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final uniqueProgramId:I

.field public final utcSpliceTime:J


# direct methods
.method private constructor <init>(JZZZLjava/util/List;JZJIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;JZJIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    .line 5
    .line 6
    iput-boolean p3, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    .line 7
    .line 8
    iput-boolean p4, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    .line 9
    .line 10
    iput-boolean p5, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    .line 11
    .line 12
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    .line 17
    .line 18
    iput-wide p7, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    .line 19
    .line 20
    iput-boolean p9, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    .line 21
    .line 22
    iput-wide p10, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    .line 23
    .line 24
    iput p12, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    .line 25
    .line 26
    iput p13, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    .line 27
    .line 28
    iput p14, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic access$100(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->parseFromSection(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static parseFromSection(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 21

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    and-int/lit16 v0, v0, 0x80

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v5, 0x0

    .line 16
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    if-nez v5, :cond_9

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    and-int/lit16 v9, v8, 0x80

    .line 28
    .line 29
    if-eqz v9, :cond_1

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v9, 0x0

    .line 34
    :goto_1
    and-int/lit8 v10, v8, 0x40

    .line 35
    .line 36
    if-eqz v10, :cond_2

    .line 37
    .line 38
    const/4 v10, 0x1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v10, 0x0

    .line 41
    :goto_2
    const/16 v11, 0x20

    .line 42
    .line 43
    and-int/2addr v8, v11

    .line 44
    if-eqz v8, :cond_3

    .line 45
    .line 46
    const/4 v8, 0x1

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    const/4 v8, 0x0

    .line 49
    :goto_3
    if-eqz v10, :cond_4

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 52
    .line 53
    .line 54
    move-result-wide v12

    .line 55
    goto :goto_4

    .line 56
    :cond_4
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :goto_4
    if-nez v10, :cond_6

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    new-instance v14, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    const/4 v15, 0x0

    .line 73
    :goto_5
    if-ge v15, v0, :cond_5

    .line 74
    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    new-instance v4, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    .line 84
    .line 85
    const/4 v11, 0x0

    .line 86
    invoke-direct {v4, v3, v6, v7, v11}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJLandroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$1;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v15, v15, 0x1

    .line 93
    .line 94
    const/16 v11, 0x20

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_5
    move-object v0, v14

    .line 98
    :cond_6
    if-eqz v8, :cond_8

    .line 99
    .line 100
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    int-to-long v3, v3

    .line 105
    const-wide/16 v6, 0x80

    .line 106
    .line 107
    and-long/2addr v6, v3

    .line 108
    const-wide/16 v14, 0x0

    .line 109
    .line 110
    cmp-long v8, v6, v14

    .line 111
    .line 112
    if-eqz v8, :cond_7

    .line 113
    .line 114
    const/16 v16, 0x1

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_7
    const/16 v16, 0x0

    .line 118
    .line 119
    :goto_6
    const-wide/16 v6, 0x1

    .line 120
    .line 121
    and-long/2addr v3, v6

    .line 122
    const/16 v6, 0x20

    .line 123
    .line 124
    shl-long/2addr v3, v6

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 126
    .line 127
    .line 128
    move-result-wide v6

    .line 129
    or-long/2addr v3, v6

    .line 130
    const-wide/16 v6, 0x3e8

    .line 131
    .line 132
    mul-long v3, v3, v6

    .line 133
    .line 134
    const-wide/16 v6, 0x5a

    .line 135
    .line 136
    div-long v6, v3, v6

    .line 137
    .line 138
    move/from16 v4, v16

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_8
    const/4 v4, 0x0

    .line 142
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    move/from16 v17, v10

    .line 160
    .line 161
    move v14, v11

    .line 162
    move-wide v10, v6

    .line 163
    move-object v6, v0

    .line 164
    move-wide/from16 v18, v12

    .line 165
    .line 166
    move v12, v3

    .line 167
    move v13, v8

    .line 168
    move-wide/from16 v7, v18

    .line 169
    .line 170
    move/from16 v20, v9

    .line 171
    .line 172
    move v9, v4

    .line 173
    move/from16 v4, v20

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_9
    move-object v6, v0

    .line 177
    const/4 v4, 0x0

    .line 178
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    const/4 v9, 0x0

    .line 184
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    const/4 v12, 0x0

    .line 190
    const/4 v13, 0x0

    .line 191
    const/4 v14, 0x0

    .line 192
    const/16 v17, 0x0

    .line 193
    .line 194
    :goto_8
    new-instance v15, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    .line 195
    .line 196
    move-object v0, v15

    .line 197
    move v3, v5

    .line 198
    move/from16 v5, v17

    .line 199
    .line 200
    invoke-direct/range {v0 .. v14}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;-><init>(JZZZLjava/util/List;JZJIII)V

    .line 201
    .line 202
    .line 203
    return-object v15
.end method
