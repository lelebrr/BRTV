.class final Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final rtpTimestamp:J

.field public final sequenceNumber:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(JILandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->rtpTimestamp:J

    .line 5
    .line 6
    iput p3, p0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->sequenceNumber:I

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->uri:Landroid/net/Uri;

    .line 9
    .line 10
    return-void
.end method

.method public static parseTrackTiming(Ljava/lang/String;Landroid/net/Uri;)Ld7/u1;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Ld7/u1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "initialCapacity"

    .line 3
    .line 4
    invoke-static {v0, v1}, Ld7/d0;->d(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const-string v1, ","

    .line 10
    .line 11
    move-object/from16 v2, p0

    .line 12
    .line 13
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    :goto_0
    if-ge v4, v2, :cond_b

    .line 22
    .line 23
    aget-object v6, v1, v4

    .line 24
    .line 25
    const-string v7, ";"

    .line 26
    .line 27
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    array-length v8, v7

    .line 32
    const/4 v13, 0x0

    .line 33
    const/4 v14, 0x0

    .line 34
    const/4 v15, -0x1

    .line 35
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    :goto_1
    if-ge v13, v8, :cond_7

    .line 41
    .line 42
    aget-object v9, v7, v13

    .line 43
    .line 44
    :try_start_0
    const-string v10, "="

    .line 45
    .line 46
    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    aget-object v12, v10, v3

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    aget-object v10, v10, v3

    .line 54
    .line 55
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    const v3, 0x1bc5f

    .line 60
    .line 61
    .line 62
    move-object/from16 v18, v1

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    if-eq v11, v3, :cond_2

    .line 66
    .line 67
    const v3, 0x1c56f

    .line 68
    .line 69
    .line 70
    if-eq v11, v3, :cond_1

    .line 71
    .line 72
    const v3, 0x5ad9263b

    .line 73
    .line 74
    .line 75
    if-eq v11, v3, :cond_0

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_0
    const-string v3, "rtptime"

    .line 79
    .line 80
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    const/4 v3, 0x2

    .line 87
    goto :goto_3

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto :goto_6

    .line 90
    :cond_1
    const-string v3, "url"

    .line 91
    .line 92
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    goto :goto_3

    .line 100
    :cond_2
    const-string v3, "seq"

    .line 101
    .line 102
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    const/4 v3, 0x1

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    :goto_2
    const/4 v3, -0x1

    .line 111
    :goto_3
    if-eqz v3, :cond_6

    .line 112
    .line 113
    const/4 v11, 0x1

    .line 114
    if-eq v3, v11, :cond_5

    .line 115
    .line 116
    if-ne v3, v1, :cond_4

    .line 117
    .line 118
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v16

    .line 122
    :goto_4
    move-object/from16 v1, p1

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_4
    const/4 v0, 0x0

    .line 126
    invoke-static {v12, v0}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    throw v0

    .line 131
    :cond_5
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    goto :goto_4

    .line 136
    :cond_6
    move-object/from16 v1, p1

    .line 137
    .line 138
    invoke-static {v10, v1}, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;->resolveUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 143
    .line 144
    move-object/from16 v1, v18

    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    goto :goto_1

    .line 148
    :goto_6
    invoke-static {v9, v0}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    throw v0

    .line 153
    :cond_7
    move-object/from16 v18, v1

    .line 154
    .line 155
    move-object/from16 v1, p1

    .line 156
    .line 157
    if-eqz v14, :cond_8

    .line 158
    .line 159
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-eqz v3, :cond_8

    .line 164
    .line 165
    const/4 v3, -0x1

    .line 166
    move-wide/from16 v9, v16

    .line 167
    .line 168
    if-ne v15, v3, :cond_9

    .line 169
    .line 170
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    cmp-long v3, v9, v7

    .line 176
    .line 177
    if-eqz v3, :cond_8

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_8
    const/4 v0, 0x0

    .line 181
    goto :goto_9

    .line 182
    :cond_9
    :goto_7
    new-instance v3, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;

    .line 183
    .line 184
    invoke-direct {v3, v9, v10, v15, v14}, Landroidx/media3/exoplayer/rtsp/RtspTrackTiming;-><init>(JILandroid/net/Uri;)V

    .line 185
    .line 186
    .line 187
    array-length v6, v0

    .line 188
    add-int/lit8 v7, v5, 0x1

    .line 189
    .line 190
    invoke-static {v6, v7}, Ld7/p1;->f(II)I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    array-length v8, v0

    .line 195
    if-gt v6, v8, :cond_a

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_a
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    :goto_8
    aput-object v3, v0, v5

    .line 203
    .line 204
    add-int/lit8 v4, v4, 0x1

    .line 205
    .line 206
    move v5, v7

    .line 207
    move-object/from16 v1, v18

    .line 208
    .line 209
    const/4 v3, 0x0

    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :goto_9
    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    throw v0

    .line 217
    :cond_b
    invoke-static {v0, v5}, Ld7/u1;->j([Ljava/lang/Object;I)Ld7/c5;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    return-object v0
.end method

.method public static resolveUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "rtsp"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "rtsp://"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_1
    const-string p1, "/"

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-static {v1, p0}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1, p0}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :goto_0
    return-object p0
.end method
