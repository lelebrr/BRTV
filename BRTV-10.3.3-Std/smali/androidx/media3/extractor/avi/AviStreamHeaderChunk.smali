.class final Landroidx/media3/extractor/avi/AviStreamHeaderChunk;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/extractor/avi/AviChunk;


# static fields
.field private static final TAG:Ljava/lang/String; = "AviStreamHeaderChunk"


# instance fields
.field public final initialFrames:I

.field public final length:I

.field public final rate:I

.field public final sampleSize:I

.field public final scale:I

.field public final streamType:I

.field public final suggestedBufferSize:I


# direct methods
.method private constructor <init>(IIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->streamType:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->initialFrames:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->scale:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->rate:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->length:I

    .line 13
    .line 14
    iput p6, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->suggestedBufferSize:I

    .line 15
    .line 16
    iput p7, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->sampleSize:I

    .line 17
    .line 18
    return-void
.end method

.method public static parseFrom(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviStreamHeaderChunk;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    new-instance p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    .line 42
    .line 43
    move-object v0, p0

    .line 44
    invoke-direct/range {v0 .. v7}, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;-><init>(IIIIIII)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 7

    .line 1
    iget v0, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->length:I

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    iget v0, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->scale:I

    .line 5
    .line 6
    int-to-long v3, v0

    .line 7
    const-wide/32 v5, 0xf4240

    .line 8
    .line 9
    .line 10
    mul-long v3, v3, v5

    .line 11
    .line 12
    iget v0, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->rate:I

    .line 13
    .line 14
    int-to-long v5, v0

    .line 15
    invoke-static/range {v1 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public getFrameRate()F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->rate:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->scale:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    return v0
.end method

.method public getTrackType()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->streamType:I

    .line 2
    .line 3
    const v1, 0x73646976

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const v1, 0x73647561

    .line 9
    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const v1, 0x73747874

    .line 14
    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Found unsupported streamType fourCC: "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->streamType:I

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "AviStreamHeaderChunk"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, -0x1

    .line 44
    return v0

    .line 45
    :cond_0
    const/4 v0, 0x3

    .line 46
    return v0

    .line 47
    :cond_1
    const/4 v0, 0x1

    .line 48
    return v0

    .line 49
    :cond_2
    const/4 v0, 0x2

    .line 50
    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    const v0, 0x68727473

    .line 2
    .line 3
    .line 4
    return v0
.end method
