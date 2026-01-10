.class public final Landroidx/media3/extractor/text/CuesWithTimingSubtitle;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final CUES_BY_START_TIME_ASCENDING:Ld7/b5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/b5;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CuesWithTimingSubtitle"


# instance fields
.field private final eventCues:Ld7/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/u1;"
        }
    .end annotation
.end field

.field private final eventTimesUs:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ld7/a5;->a:Ld7/a5;

    .line 2
    .line 3
    new-instance v1, Landroidx/media3/common/g;

    .line 4
    .line 5
    const/16 v2, 0x12

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroidx/media3/common/g;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v2, Ld7/c0;

    .line 14
    .line 15
    invoke-direct {v2, v1, v0}, Ld7/c0;-><init>(Lb7/i;Ld7/b5;)V

    .line 16
    .line 17
    .line 18
    sput-object v2, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->CUES_BY_START_TIME_ASCENDING:Ld7/b5;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x1

    .line 13
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-ne v3, v4, :cond_4

    .line 19
    .line 20
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    if-nez v8, :cond_1

    .line 33
    .line 34
    check-cast v7, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 35
    .line 36
    iget-wide v8, v7, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 37
    .line 38
    invoke-static {v8, v9}, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->normalizeUnsetStartTimeToZero(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v8

    .line 42
    iget-wide v10, v7, Landroidx/media3/extractor/text/CuesWithTiming;->durationUs:J

    .line 43
    .line 44
    cmp-long v3, v10, v5

    .line 45
    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    iget-object v1, v7, Landroidx/media3/extractor/text/CuesWithTiming;->cues:Ld7/u1;

    .line 49
    .line 50
    invoke-static {v1}, Ld7/u1;->r(Ljava/lang/Object;)Ld7/c5;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Ld7/u1;

    .line 55
    .line 56
    new-array v1, v4, [J

    .line 57
    .line 58
    aput-wide v8, v1, v2

    .line 59
    .line 60
    iput-object v1, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v3, v7, Landroidx/media3/extractor/text/CuesWithTiming;->cues:Ld7/u1;

    .line 64
    .line 65
    invoke-static {}, Ld7/u1;->q()Ld7/c5;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v3, v5}, Ld7/u1;->s(Ljava/lang/Object;Ljava/lang/Object;)Ld7/c5;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iput-object v3, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Ld7/u1;

    .line 74
    .line 75
    iget-wide v5, v7, Landroidx/media3/extractor/text/CuesWithTiming;->durationUs:J

    .line 76
    .line 77
    add-long/2addr v5, v8

    .line 78
    new-array v1, v1, [J

    .line 79
    .line 80
    aput-wide v8, v1, v2

    .line 81
    .line 82
    aput-wide v5, v1, v4

    .line 83
    .line 84
    iput-object v1, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v5, "expected one element but was: <"

    .line 90
    .line 91
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :goto_1
    const/4 v5, 0x4

    .line 98
    if-ge v2, v5, :cond_2

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_2

    .line 105
    .line 106
    const-string v5, ", "

    .line 107
    .line 108
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    add-int/2addr v2, v4

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_3

    .line 125
    .line 126
    const-string v2, ", ..."

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    :cond_3
    const/16 v2, 0x3e

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v2

    .line 146
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    mul-int/lit8 v3, v3, 0x2

    .line 151
    .line 152
    new-array v1, v3, [J

    .line 153
    .line 154
    iput-object v1, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    .line 155
    .line 156
    const-wide v7, 0x7fffffffffffffffL

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    invoke-static {v1, v7, v8}, Ljava/util/Arrays;->fill([JJ)V

    .line 162
    .line 163
    .line 164
    new-instance v1, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    sget-object v3, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->CUES_BY_START_TIME_ASCENDING:Ld7/b5;

    .line 170
    .line 171
    move-object/from16 v7, p1

    .line 172
    .line 173
    invoke-static {v3, v7}, Ld7/u1;->v(Ld7/b5;Ljava/util/List;)Ld7/c5;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const/4 v7, 0x0

    .line 178
    :goto_2
    invoke-virtual {v3}, Ld7/c5;->size()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-ge v2, v8, :cond_9

    .line 183
    .line 184
    invoke-virtual {v3, v2}, Ld7/c5;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    check-cast v8, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 189
    .line 190
    iget-wide v9, v8, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 191
    .line 192
    invoke-static {v9, v10}, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->normalizeUnsetStartTimeToZero(J)J

    .line 193
    .line 194
    .line 195
    move-result-wide v9

    .line 196
    iget-wide v11, v8, Landroidx/media3/extractor/text/CuesWithTiming;->durationUs:J

    .line 197
    .line 198
    add-long/2addr v11, v9

    .line 199
    if-eqz v7, :cond_7

    .line 200
    .line 201
    iget-object v13, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    .line 202
    .line 203
    add-int/lit8 v14, v7, -0x1

    .line 204
    .line 205
    aget-wide v15, v13, v14

    .line 206
    .line 207
    cmp-long v13, v15, v9

    .line 208
    .line 209
    if-gez v13, :cond_5

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_5
    if-nez v13, :cond_6

    .line 213
    .line 214
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v13

    .line 218
    check-cast v13, Ld7/u1;

    .line 219
    .line 220
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    if-eqz v13, :cond_6

    .line 225
    .line 226
    iget-object v9, v8, Landroidx/media3/extractor/text/CuesWithTiming;->cues:Ld7/u1;

    .line 227
    .line 228
    invoke-virtual {v1, v14, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_6
    const-string v13, "CuesWithTimingSubtitle"

    .line 233
    .line 234
    const-string v15, "Truncating unsupported overlapping cues."

    .line 235
    .line 236
    invoke-static {v13, v15}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v13, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    .line 240
    .line 241
    aput-wide v9, v13, v14

    .line 242
    .line 243
    iget-object v9, v8, Landroidx/media3/extractor/text/CuesWithTiming;->cues:Ld7/u1;

    .line 244
    .line 245
    invoke-virtual {v1, v14, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_7
    :goto_3
    iget-object v13, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    .line 250
    .line 251
    add-int/lit8 v14, v7, 0x1

    .line 252
    .line 253
    aput-wide v9, v13, v7

    .line 254
    .line 255
    iget-object v7, v8, Landroidx/media3/extractor/text/CuesWithTiming;->cues:Ld7/u1;

    .line 256
    .line 257
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move v7, v14

    .line 261
    :goto_4
    iget-wide v8, v8, Landroidx/media3/extractor/text/CuesWithTiming;->durationUs:J

    .line 262
    .line 263
    cmp-long v10, v8, v5

    .line 264
    .line 265
    if-eqz v10, :cond_8

    .line 266
    .line 267
    iget-object v8, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    .line 268
    .line 269
    add-int/lit8 v9, v7, 0x1

    .line 270
    .line 271
    aput-wide v11, v8, v7

    .line 272
    .line 273
    invoke-static {}, Ld7/u1;->q()Ld7/c5;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move v7, v9

    .line 281
    :cond_8
    add-int/2addr v2, v4

    .line 282
    goto :goto_2

    .line 283
    :cond_9
    invoke-static {v1}, Ld7/u1;->n(Ljava/util/Collection;)Ld7/u1;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    iput-object v1, v0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Ld7/u1;

    .line 288
    .line 289
    return-void
.end method

.method public static synthetic a(Landroidx/media3/extractor/text/CuesWithTiming;)Ljava/lang/Comparable;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->lambda$static$0(Landroidx/media3/extractor/text/CuesWithTiming;)Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroidx/media3/extractor/text/CuesWithTiming;)Ljava/lang/Comparable;
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->normalizeUnsetStartTimeToZero(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static normalizeUnsetStartTimeToZero(J)J
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p0, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-wide/16 p0, 0x0

    .line 11
    .line 12
    :cond_0
    return-wide p0
.end method


# virtual methods
.method public getCues(J)Ld7/u1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ld7/u1;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, p1, p2, v1, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 4
    invoke-static {}, Ld7/u1;->q()Ld7/c5;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Ld7/u1;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld7/u1;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getCues(J)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->getCues(J)Ld7/u1;

    move-result-object p1

    return-object p1
.end method

.method public getEventTime(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Ld7/u1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    .line 16
    .line 17
    aget-wide v1, v0, p1

    .line 18
    .line 19
    return-wide v1
.end method

.method public getEventTimeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Ld7/u1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object p2, p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Ld7/u1;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-ge p1, p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, -0x1

    .line 18
    :goto_0
    return p1
.end method
