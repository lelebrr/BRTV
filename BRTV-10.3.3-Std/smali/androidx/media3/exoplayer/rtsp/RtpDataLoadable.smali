.class final Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/RtpDataLoadable$EventListener;
    }
.end annotation


# instance fields
.field private dataChannel:Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

.field private final eventListener:Landroidx/media3/exoplayer/rtsp/RtpDataLoadable$EventListener;

.field private extractor:Landroidx/media3/exoplayer/rtsp/RtpExtractor;

.field private extractorInput:Landroidx/media3/extractor/DefaultExtractorInput;

.field private volatile loadCancelled:Z

.field private volatile nextRtpTimestamp:J

.field private final output:Landroidx/media3/extractor/ExtractorOutput;

.field private volatile pendingSeekPositionUs:J

.field private final playbackThreadHandler:Landroid/os/Handler;

.field private final rtpDataChannelFactory:Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

.field public final rtspMediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

.field public final trackId:I


# direct methods
.method public constructor <init>(ILandroidx/media3/exoplayer/rtsp/RtspMediaTrack;Landroidx/media3/exoplayer/rtsp/RtpDataLoadable$EventListener;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->trackId:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->rtspMediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->eventListener:Landroidx/media3/exoplayer/rtsp/RtpDataLoadable$EventListener;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 11
    .line 12
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->playbackThreadHandler:Landroid/os/Handler;

    .line 17
    .line 18
    iput-object p5, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->rtpDataChannelFactory:Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    .line 19
    .line 20
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->pendingSeekPositionUs:J

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->lambda$load$0(Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$load$0(Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->eventListener:Landroidx/media3/exoplayer/rtsp/RtpDataLoadable$EventListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable$EventListener;->onTransportReady(Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->loadCancelled:Z

    .line 3
    .line 4
    return-void
.end method

.method public load()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->loadCancelled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->loadCancelled:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->dataChannel:Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->rtpDataChannelFactory:Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;

    .line 14
    .line 15
    iget v3, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->trackId:I

    .line 16
    .line 17
    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/rtsp/RtpDataChannel$Factory;->createAndOpenDataChannel(I)Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->dataChannel:Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 22
    .line 23
    invoke-interface {v2}, Landroidx/media3/exoplayer/rtsp/RtpDataChannel;->getTransport()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->dataChannel:Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 28
    .line 29
    iget-object v4, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->playbackThreadHandler:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v5, Landroidx/media3/exoplayer/rtsp/b;

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-direct {v5, p0, v2, v3, v6}, Landroidx/media3/exoplayer/rtsp/b;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    new-instance v2, Landroidx/media3/extractor/DefaultExtractorInput;

    .line 41
    .line 42
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->dataChannel:Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 43
    .line 44
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    move-object v8, v3

    .line 49
    check-cast v8, Landroidx/media3/common/DataReader;

    .line 50
    .line 51
    const-wide/16 v9, 0x0

    .line 52
    .line 53
    const-wide/16 v11, -0x1

    .line 54
    .line 55
    move-object v7, v2

    .line 56
    invoke-direct/range {v7 .. v12}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->extractorInput:Landroidx/media3/extractor/DefaultExtractorInput;

    .line 60
    .line 61
    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 62
    .line 63
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->rtspMediaTrack:Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;

    .line 64
    .line 65
    iget-object v3, v3, Landroidx/media3/exoplayer/rtsp/RtspMediaTrack;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 66
    .line 67
    iget v4, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->trackId:I

    .line 68
    .line 69
    invoke-direct {v2, v3, v4}, Landroidx/media3/exoplayer/rtsp/RtpExtractor;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;I)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->extractor:Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 73
    .line 74
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->loadCancelled:Z

    .line 83
    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    iget-wide v2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->pendingSeekPositionUs:J

    .line 87
    .line 88
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    cmp-long v6, v2, v4

    .line 94
    .line 95
    if-eqz v6, :cond_2

    .line 96
    .line 97
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->extractor:Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 98
    .line 99
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 104
    .line 105
    iget-wide v6, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->nextRtpTimestamp:J

    .line 106
    .line 107
    iget-wide v8, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->pendingSeekPositionUs:J

    .line 108
    .line 109
    invoke-virtual {v2, v6, v7, v8, v9}, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->seek(JJ)V

    .line 110
    .line 111
    .line 112
    iput-wide v4, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->pendingSeekPositionUs:J

    .line 113
    .line 114
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->extractor:Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 115
    .line 116
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 121
    .line 122
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->extractorInput:Landroidx/media3/extractor/DefaultExtractorInput;

    .line 123
    .line 124
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Landroidx/media3/extractor/ExtractorInput;

    .line 129
    .line 130
    new-instance v4, Landroidx/media3/extractor/PositionHolder;

    .line 131
    .line 132
    invoke-direct {v4}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3, v4}, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    const/4 v3, -0x1

    .line 140
    if-ne v2, v3, :cond_1

    .line 141
    .line 142
    :cond_3
    iput-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->loadCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->dataChannel:Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 145
    .line 146
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 151
    .line 152
    invoke-interface {v1}, Landroidx/media3/exoplayer/rtsp/RtpDataChannel;->needsClosingOnLoadCompletion()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_4

    .line 157
    .line 158
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->dataChannel:Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 159
    .line 160
    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->dataChannel:Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 164
    .line 165
    :cond_4
    return-void

    .line 166
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->dataChannel:Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 167
    .line 168
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 173
    .line 174
    invoke-interface {v2}, Landroidx/media3/exoplayer/rtsp/RtpDataChannel;->needsClosingOnLoadCompletion()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_5

    .line 179
    .line 180
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->dataChannel:Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 181
    .line 182
    invoke-static {v2}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 183
    .line 184
    .line 185
    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->dataChannel:Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 186
    .line 187
    :cond_5
    throw v1
.end method

.method public resetForSeek()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->extractor:Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->preSeek()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public seekToUs(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->pendingSeekPositionUs:J

    .line 2
    .line 3
    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->nextRtpTimestamp:J

    .line 4
    .line 5
    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->extractor:Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->hasReadFirstRtpPacket()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->extractor:Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->setFirstSequenceNumber(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setTimestamp(J)V
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->extractor:Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->hasReadFirstRtpPacket()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->extractor:Landroidx/media3/exoplayer/rtsp/RtpExtractor;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/rtsp/RtpExtractor;->setFirstTimestamp(J)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
