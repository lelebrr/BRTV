.class final Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsdsData"
.end annotation


# instance fields
.field private final bitrate:J

.field private final initializationData:[B

.field private final mimeType:Ljava/lang/String;

.field private final peakBitrate:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:[B

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    .line 9
    .line 10
    iput-wide p5, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic access$1000(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->initializationData:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->peakBitrate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$1500(Landroidx/media3/extractor/mp4/BoxParser$EsdsData;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->bitrate:J

    .line 2
    .line 3
    return-wide v0
.end method
