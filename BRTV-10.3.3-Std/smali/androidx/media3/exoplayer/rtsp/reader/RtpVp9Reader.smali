.class final Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final MEDIA_CLOCK_FREQUENCY:I = 0x15f90

.field private static final SCALABILITY_STRUCTURE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RtpVp9Reader"


# instance fields
.field private firstReceivedTimestamp:J

.field private fragmentedSampleSizeBytes:I

.field private fragmentedSampleTimeUs:J

.field private gotFirstPacketOfVp9Frame:Z

.field private height:I

.field private isKeyFrame:Z

.field private final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private reportedOutputFormat:Z

.field private startTimeOffsetUs:J

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;

.field private width:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->firstReceivedTimestamp:J

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 15
    .line 16
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleTimeUs:J

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->startTimeOffsetUs:J

    .line 21
    .line 22
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->previousSequenceNumber:I

    .line 23
    .line 24
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->width:I

    .line 25
    .line 26
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->height:I

    .line 27
    .line 28
    return-void
.end method

.method private outputSampleMetadataForFragmentedPackets()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/media3/extractor/TrackOutput;

    .line 9
    .line 10
    iget-wide v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleTimeUs:J

    .line 11
    .line 12
    iget-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->isKeyFrame:Z

    .line 13
    .line 14
    iget v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 23
    .line 24
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleTimeUs:J

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->gotFirstPacketOfVp9Frame:Z

    .line 33
    .line 34
    return-void
.end method

.method private validateVp9Descriptor(Landroidx/media3/common/util/ParsableByteArray;I)Z
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    and-int/lit8 v3, v1, 0x8

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    if-ne v3, v2, :cond_1

    .line 13
    .line 14
    iget-boolean p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->gotFirstPacketOfVp9Frame:Z

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 19
    .line 20
    if-lez p2, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->outputSampleMetadataForFragmentedPackets()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-boolean v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->gotFirstPacketOfVp9Frame:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-boolean v3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->gotFirstPacketOfVp9Frame:Z

    .line 29
    .line 30
    const-string v6, "RtpVp9Reader"

    .line 31
    .line 32
    if-eqz v3, :cond_c

    .line 33
    .line 34
    iget v3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->previousSequenceNumber:I

    .line 35
    .line 36
    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ge p2, v3, :cond_2

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p1, v0, v4

    .line 53
    .line 54
    aput-object p2, v0, v5

    .line 55
    .line 56
    const-string p1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 57
    .line 58
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v4

    .line 66
    :cond_2
    :goto_0
    and-int/lit16 p2, v1, 0x80

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    and-int/lit16 p2, p2, 0x80

    .line 75
    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-ge p2, v5, :cond_3

    .line 83
    .line 84
    return v4

    .line 85
    :cond_3
    and-int/lit8 p2, v1, 0x10

    .line 86
    .line 87
    if-nez p2, :cond_4

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    const/4 v3, 0x0

    .line 92
    :goto_1
    const-string v6, "VP9 flexible mode is not supported."

    .line 93
    .line 94
    invoke-static {v3, v6}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    and-int/lit8 v3, v1, 0x20

    .line 98
    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-ge v3, v5, :cond_5

    .line 109
    .line 110
    return v4

    .line 111
    :cond_5
    if-nez p2, :cond_6

    .line 112
    .line 113
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 114
    .line 115
    .line 116
    :cond_6
    and-int/lit8 p2, v1, 0x2

    .line 117
    .line 118
    if-eqz p2, :cond_b

    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    shr-int/lit8 v1, p2, 0x5

    .line 125
    .line 126
    and-int/lit8 v1, v1, 0x7

    .line 127
    .line 128
    and-int/lit8 v3, p2, 0x10

    .line 129
    .line 130
    if-eqz v3, :cond_8

    .line 131
    .line 132
    add-int/2addr v1, v5

    .line 133
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    mul-int/lit8 v6, v1, 0x4

    .line 138
    .line 139
    if-ge v3, v6, :cond_7

    .line 140
    .line 141
    return v4

    .line 142
    :cond_7
    const/4 v3, 0x0

    .line 143
    :goto_2
    if-ge v3, v1, :cond_8

    .line 144
    .line 145
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    iput v6, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->width:I

    .line 150
    .line 151
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    iput v6, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->height:I

    .line 156
    .line 157
    add-int/2addr v3, v5

    .line 158
    goto :goto_2

    .line 159
    :cond_8
    and-int/2addr p2, v2

    .line 160
    if-eqz p2, :cond_b

    .line 161
    .line 162
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-ge v1, p2, :cond_9

    .line 171
    .line 172
    return v4

    .line 173
    :cond_9
    const/4 v1, 0x0

    .line 174
    :goto_3
    if-ge v1, p2, :cond_b

    .line 175
    .line 176
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    and-int/lit8 v2, v2, 0xc

    .line 181
    .line 182
    shr-int/2addr v2, v0

    .line 183
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-ge v3, v2, :cond_a

    .line 188
    .line 189
    return v4

    .line 190
    :cond_a
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 191
    .line 192
    .line 193
    add-int/2addr v1, v5

    .line 194
    goto :goto_3

    .line 195
    :cond_b
    return v5

    .line 196
    :cond_c
    const-string p1, "First payload octet of the RTP packet is not the beginning of a new VP9 partition, Dropping current packet."

    .line 197
    .line 198
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return v4
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p4}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->validateVp9Descriptor(Landroidx/media3/common/util/ParsableByteArray;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->gotFirstPacketOfVp9Frame:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    and-int/lit8 v0, v0, 0x4

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->isKeyFrame:Z

    .line 34
    .line 35
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->reportedOutputFormat:Z

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->width:I

    .line 40
    .line 41
    if-eq v0, v2, :cond_4

    .line 42
    .line 43
    iget v3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->height:I

    .line 44
    .line 45
    if-eq v3, v2, :cond_4

    .line 46
    .line 47
    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 48
    .line 49
    iget-object v4, v4, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    .line 50
    .line 51
    iget v5, v4, Landroidx/media3/common/Format;->width:I

    .line 52
    .line 53
    if-ne v0, v5, :cond_2

    .line 54
    .line 55
    iget v0, v4, Landroidx/media3/common/Format;->height:I

    .line 56
    .line 57
    if-eq v3, v0, :cond_3

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->width:I

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->height:I

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v0, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    iput-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->reportedOutputFormat:Z

    .line 85
    .line 86
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 91
    .line 92
    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 93
    .line 94
    .line 95
    iget p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 96
    .line 97
    if-ne p1, v2, :cond_5

    .line 98
    .line 99
    iput v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    add-int/2addr p1, v0

    .line 103
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 104
    .line 105
    :goto_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->startTimeOffsetUs:J

    .line 106
    .line 107
    iget-wide v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->firstReceivedTimestamp:J

    .line 108
    .line 109
    const v6, 0x15f90

    .line 110
    .line 111
    .line 112
    move-wide v2, p2

    .line 113
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;->toSampleTimeUs(JJJI)J

    .line 114
    .line 115
    .line 116
    move-result-wide p1

    .line 117
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleTimeUs:J

    .line 118
    .line 119
    if-eqz p5, :cond_6

    .line 120
    .line 121
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->outputSampleMetadataForFragmentedPackets()V

    .line 122
    .line 123
    .line 124
    :cond_6
    iput p4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->previousSequenceNumber:I

    .line 125
    .line 126
    :cond_7
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 9
    .line 10
    iget-object p2, p2, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    .line 11
    .line 12
    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->firstReceivedTimestamp:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long p3, v0, v2

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    const/4 p3, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p3, 0x0

    .line 15
    :goto_0
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 16
    .line 17
    .line 18
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->firstReceivedTimestamp:J

    .line 19
    .line 20
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->firstReceivedTimestamp:J

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->startTimeOffsetUs:J

    .line 7
    .line 8
    return-void
.end method
