.class final Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final I_VOP:I = 0x0

.field private static final MEDIA_CLOCK_FREQUENCY:I = 0x15f90

.field private static final PICTURE_START_CODE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "RtpH263Reader"


# instance fields
.field private firstReceivedTimestamp:J

.field private fragmentedSampleSizeBytes:I

.field private fragmentedSampleTimeUs:J

.field private gotFirstPacketOfH263Frame:Z

.field private height:I

.field private isKeyFrame:Z

.field private isOutputFormatSet:Z

.field private final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

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
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->previousSequenceNumber:I

    .line 15
    .line 16
    return-void
.end method

.method private outputSampleMetadataForFragmentedPackets()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

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
    iget-wide v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleTimeUs:J

    .line 11
    .line 12
    iget-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    .line 13
    .line 14
    iget v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

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
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    .line 23
    .line 24
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iput-wide v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleTimeUs:J

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->gotFirstPacketOfH263Frame:Z

    .line 34
    .line 35
    return-void
.end method

.method private parseVopHeader(Landroidx/media3/common/util/ParsableByteArray;Z)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    shr-long/2addr v1, v3

    .line 12
    const-wide/16 v3, 0x3f

    .line 13
    .line 14
    and-long/2addr v1, v3

    .line 15
    const-wide/16 v3, 0x20

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    cmp-long v6, v1, v3

    .line 19
    .line 20
    if-nez v6, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    shr-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    and-int/2addr v2, v3

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    shr-int/lit8 p2, v1, 0x2

    .line 35
    .line 36
    and-int/lit8 p2, p2, 0x7

    .line 37
    .line 38
    if-ne p2, v3, :cond_0

    .line 39
    .line 40
    const/16 p2, 0x80

    .line 41
    .line 42
    iput p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->width:I

    .line 43
    .line 44
    const/16 p2, 0x60

    .line 45
    .line 46
    iput p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->height:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    add-int/lit8 p2, p2, -0x2

    .line 50
    .line 51
    const/16 v1, 0xb0

    .line 52
    .line 53
    shl-int/2addr v1, p2

    .line 54
    iput v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->width:I

    .line 55
    .line 56
    const/16 v1, 0x90

    .line 57
    .line 58
    shl-int p2, v1, p2

    .line 59
    .line 60
    iput p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->height:I

    .line 61
    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 63
    .line 64
    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    :cond_2
    iput-boolean v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 72
    .line 73
    .line 74
    iput-boolean v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    and-int/lit16 v2, v1, 0x400

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    and-int/lit16 v5, v1, 0x200

    .line 24
    .line 25
    const-string v6, "RtpH263Reader"

    .line 26
    .line 27
    if-nez v5, :cond_b

    .line 28
    .line 29
    and-int/lit16 v5, v1, 0x1f8

    .line 30
    .line 31
    if-nez v5, :cond_b

    .line 32
    .line 33
    and-int/lit8 v1, v1, 0x7

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    if-eqz v2, :cond_4

    .line 40
    .line 41
    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->gotFirstPacketOfH263Frame:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    .line 46
    .line 47
    if-lez v1, :cond_2

    .line 48
    .line 49
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->outputSampleMetadataForFragmentedPackets()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iput-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->gotFirstPacketOfH263Frame:Z

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    and-int/lit16 v1, v1, 0xfc

    .line 59
    .line 60
    const/16 v2, 0x80

    .line 61
    .line 62
    if-ge v1, v2, :cond_3

    .line 63
    .line 64
    const-string p1, "Picture start Code (PSC) missing, dropping packet."

    .line 65
    .line 66
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    aput-byte v3, v1, v0

    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    add-int/lit8 v2, v0, 0x1

    .line 81
    .line 82
    aput-byte v3, v1, v2

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->gotFirstPacketOfH263Frame:Z

    .line 89
    .line 90
    if-eqz v0, :cond_a

    .line 91
    .line 92
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->previousSequenceNumber:I

    .line 93
    .line 94
    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-ge p4, v0, :cond_5

    .line 99
    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const/4 p3, 0x2

    .line 109
    new-array p3, p3, [Ljava/lang/Object;

    .line 110
    .line 111
    aput-object p1, p3, v3

    .line 112
    .line 113
    aput-object p2, p3, v4

    .line 114
    .line 115
    const-string p1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 116
    .line 117
    invoke-static {p1, p3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    :goto_1
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    .line 126
    .line 127
    if-nez v0, :cond_8

    .line 128
    .line 129
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isOutputFormatSet:Z

    .line 130
    .line 131
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->parseVopHeader(Landroidx/media3/common/util/ParsableByteArray;Z)V

    .line 132
    .line 133
    .line 134
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isOutputFormatSet:Z

    .line 135
    .line 136
    if-nez v0, :cond_8

    .line 137
    .line 138
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    .line 139
    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->width:I

    .line 143
    .line 144
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 145
    .line 146
    iget-object v1, v1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    .line 147
    .line 148
    iget v2, v1, Landroidx/media3/common/Format;->width:I

    .line 149
    .line 150
    if-ne v0, v2, :cond_6

    .line 151
    .line 152
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->height:I

    .line 153
    .line 154
    iget v2, v1, Landroidx/media3/common/Format;->height:I

    .line 155
    .line 156
    if-eq v0, v2, :cond_7

    .line 157
    .line 158
    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 159
    .line 160
    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iget v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->width:I

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->height:I

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 181
    .line 182
    .line 183
    :cond_7
    iput-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isOutputFormatSet:Z

    .line 184
    .line 185
    :cond_8
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 190
    .line 191
    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 192
    .line 193
    .line 194
    iget p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    .line 195
    .line 196
    add-int/2addr p1, v0

    .line 197
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    .line 198
    .line 199
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->startTimeOffsetUs:J

    .line 200
    .line 201
    iget-wide v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    .line 202
    .line 203
    const v6, 0x15f90

    .line 204
    .line 205
    .line 206
    move-wide v2, p2

    .line 207
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;->toSampleTimeUs(JJJI)J

    .line 208
    .line 209
    .line 210
    move-result-wide p1

    .line 211
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleTimeUs:J

    .line 212
    .line 213
    if-eqz p5, :cond_9

    .line 214
    .line 215
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->outputSampleMetadataForFragmentedPackets()V

    .line 216
    .line 217
    .line 218
    :cond_9
    iput p4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->previousSequenceNumber:I

    .line 219
    .line 220
    return-void

    .line 221
    :cond_a
    const-string p1, "First payload octet of the H263 packet is not the beginning of a new H263 partition, Dropping current packet."

    .line 222
    .line 223
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_b
    :goto_2
    const-string p1, "Dropping packet: video reduncancy coding is not supported, packet header VRC, or PLEN or PEBIT is non-zero"

    .line 228
    .line 229
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
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
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

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
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

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
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    .line 19
    .line 20
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->startTimeOffsetUs:J

    .line 7
    .line 8
    return-void
.end method
