.class final Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final MEDIA_CLOCK_FREQUENCY:I = 0xbb80

.field private static final TAG:Ljava/lang/String; = "RtpOpusReader"


# instance fields
.field private firstReceivedTimestamp:J

.field private foundOpusCommentHeader:Z

.field private foundOpusIDHeader:Z

.field private final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private startTimeOffsetUs:J

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->firstReceivedTimestamp:J

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->previousSequenceNumber:I

    .line 12
    .line 13
    return-void
.end method

.method private static validateOpusIdHeader(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x12

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-le v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    const-string v2, "ID Header has insufficient data"

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "OpusHead"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const-string v2, "ID Header missing"

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ne v1, v4, :cond_1

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    :cond_1
    const-string v1, "version number must always be 1"

    .line 48
    .line 49
    invoke-static {v3, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 9
    .line 10
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-boolean v4, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->foundOpusIDHeader:Z

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->validateOpusIdHeader(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroidx/media3/extractor/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v3, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 30
    .line 31
    iget-object v3, v3, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3, v1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v1, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 47
    .line 48
    .line 49
    iput-boolean v5, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->foundOpusIDHeader:Z

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-boolean v4, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->foundOpusCommentHeader:Z

    .line 53
    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/16 v6, 0x8

    .line 61
    .line 62
    if-lt v4, v6, :cond_1

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    :cond_1
    const-string v4, "Comment Header has insufficient data"

    .line 66
    .line 67
    invoke-static {v3, v4}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v3, "OpusTags"

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const-string v3, "Comment Header should follow ID Header"

    .line 81
    .line 82
    invoke-static {v1, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iput-boolean v5, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->foundOpusCommentHeader:Z

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget v4, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->previousSequenceNumber:I

    .line 89
    .line 90
    invoke-static {v4}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eq v2, v4, :cond_3

    .line 95
    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const/4 v7, 0x2

    .line 105
    new-array v7, v7, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object v4, v7, v3

    .line 108
    .line 109
    aput-object v6, v7, v5

    .line 110
    .line 111
    const-string v3, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d."

    .line 112
    .line 113
    invoke-static {v3, v7}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const-string v4, "RtpOpusReader"

    .line 118
    .line 119
    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    iget-object v3, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 127
    .line 128
    invoke-interface {v3, v1, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 129
    .line 130
    .line 131
    iget-wide v10, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->startTimeOffsetUs:J

    .line 132
    .line 133
    iget-wide v14, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->firstReceivedTimestamp:J

    .line 134
    .line 135
    const v16, 0xbb80

    .line 136
    .line 137
    .line 138
    move-wide/from16 v12, p2

    .line 139
    .line 140
    invoke-static/range {v10 .. v16}, Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;->toSampleTimeUs(JJJI)J

    .line 141
    .line 142
    .line 143
    move-result-wide v6

    .line 144
    iget-object v5, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 145
    .line 146
    const/4 v10, 0x0

    .line 147
    const/4 v11, 0x0

    .line 148
    const/4 v8, 0x1

    .line 149
    invoke-interface/range {v5 .. v11}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 150
    .line 151
    .line 152
    :goto_0
    iput v2, v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->previousSequenceNumber:I

    .line 153
    .line 154
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

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
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->firstReceivedTimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->firstReceivedTimestamp:J

    .line 2
    .line 3
    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;->startTimeOffsetUs:J

    .line 4
    .line 5
    return-void
.end method
