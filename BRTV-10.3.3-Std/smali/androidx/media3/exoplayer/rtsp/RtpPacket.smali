.class public final Landroidx/media3/exoplayer/rtsp/RtpPacket;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;
    }
.end annotation


# static fields
.field public static final CSRC_SIZE:I = 0x4

.field private static final EMPTY:[B

.field public static final MAX_SEQUENCE_NUMBER:I = 0xffff

.field public static final MAX_SIZE:I = 0xffe3

.field public static final MIN_HEADER_SIZE:I = 0xc

.field public static final MIN_SEQUENCE_NUMBER:I = 0x0

.field public static final RTP_VERSION:I = 0x2


# instance fields
.field public final csrc:[B

.field public final csrcCount:B

.field public final extension:Z

.field public final marker:Z

.field public final padding:Z

.field public final payloadData:[B

.field public final payloadType:B

.field public final sequenceNumber:I

.field public final ssrc:I

.field public final timestamp:J

.field public final version:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->EMPTY:[B

    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput-byte v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->version:B

    .line 4
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$200(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->padding:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->extension:Z

    .line 6
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$300(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    .line 7
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$400(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)B

    move-result v0

    iput-byte v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    .line 8
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$500(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    .line 9
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$600(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    .line 10
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$700(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    .line 11
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$800(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->csrc:[B

    .line 12
    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->csrcCount:B

    .line 13
    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->access$900(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadData:[B

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;Landroidx/media3/exoplayer/rtsp/RtpPacket$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/rtsp/RtpPacket;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;)V

    return-void
.end method

.method public static synthetic access$000()[B
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->EMPTY:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public static getNextSequenceNumber(I)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, 0x1

    .line 2
    .line 3
    invoke-static {p0}, Lu7/d;->v(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static getPreviousSequenceNumber(I)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    invoke-static {p0}, Lu7/d;->v(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/rtsp/RtpPacket;
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shr-int/lit8 v1, v0, 0x6

    int-to-byte v1, v1

    shr-int/lit8 v3, v0, 0x5

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v6, v0, 0xf

    int-to-byte v6, v6

    const/4 v7, 0x4

    shr-int/2addr v0, v7

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v8, 0x2

    if-eq v1, v8, :cond_3

    return-object v2

    .line 3
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    shr-int/lit8 v2, v1, 0x7

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    .line 4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    if-lez v6, :cond_5

    mul-int/lit8 v12, v6, 0x4

    .line 7
    new-array v12, v12, [B

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v6, :cond_6

    mul-int/lit8 v14, v13, 0x4

    .line 8
    invoke-virtual {p0, v12, v14, v7}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 9
    :cond_5
    sget-object v12, Landroidx/media3/exoplayer/rtsp/RtpPacket;->EMPTY:[B

    :cond_6
    if-eqz v0, :cond_7

    .line 10
    invoke-virtual {p0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 11
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v0

    if-eqz v0, :cond_7

    mul-int/lit8 v0, v0, 0x4

    .line 12
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 13
    :cond_7
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    new-array v0, v0, [B

    .line 14
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    invoke-virtual {p0, v0, v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 15
    new-instance p0, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;-><init>()V

    .line 16
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setPadding(Z)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setMarker(Z)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object p0

    .line 18
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setPayloadType(B)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object p0

    .line 19
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setSequenceNumber(I)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object p0

    .line 20
    invoke-virtual {p0, v9, v10}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setTimestamp(J)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object p0

    .line 21
    invoke-virtual {p0, v11}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setSsrc(I)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object p0

    .line 22
    invoke-virtual {p0, v12}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setCsrc([B)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object p0

    .line 23
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->setPayloadData([B)Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/RtpPacket$Builder;->build()Landroidx/media3/exoplayer/rtsp/RtpPacket;

    move-result-object p0

    return-object p0
.end method

.method public static parse([BI)Landroidx/media3/exoplayer/rtsp/RtpPacket;
    .locals 1

    .line 25
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/rtsp/RtpPacket;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Landroidx/media3/exoplayer/rtsp/RtpPacket;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtpPacket;

    .line 18
    .line 19
    iget-byte v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    .line 20
    .line 21
    iget-byte v3, p1, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    .line 26
    .line 27
    iget v3, p1, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget-wide v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    .line 38
    .line 39
    iget-wide v4, p1, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    .line 40
    .line 41
    cmp-long v6, v2, v4

    .line 42
    .line 43
    if-nez v6, :cond_2

    .line 44
    .line 45
    iget v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    .line 46
    .line 47
    iget p1, p1, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    .line 48
    .line 49
    if-ne v2, p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    .line 54
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget-byte v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    .line 19
    .line 20
    const/16 v3, 0x20

    .line 21
    .line 22
    ushr-long v3, v1, v3

    .line 23
    .line 24
    xor-long/2addr v1, v3

    .line 25
    long-to-int v2, v1

    .line 26
    add-int/2addr v0, v2

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-byte v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    .line 26
    .line 27
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v5, 0x5

    .line 32
    new-array v5, v5, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    aput-object v0, v5, v6

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    aput-object v1, v5, v0

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    aput-object v2, v5, v0

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    aput-object v3, v5, v0

    .line 45
    .line 46
    const/4 v0, 0x4

    .line 47
    aput-object v4, v5, v0

    .line 48
    .line 49
    const-string v0, "RtpPacket(payloadType=%d, seq=%d, timestamp=%d, ssrc=%x, marker=%b)"

    .line 50
    .line 51
    invoke-static {v0, v5}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public writeToBuffer([BII)I
    .locals 2

    .line 1
    iget-byte v0, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->csrcCount:B

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0xc

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadData:[B

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    add-int/2addr v0, v1

    .line 11
    if-lt p3, v0, :cond_1

    .line 12
    .line 13
    array-length v1, p1

    .line 14
    sub-int/2addr v1, p2

    .line 15
    if-ge v1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-boolean p2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->padding:Z

    .line 23
    .line 24
    shl-int/lit8 p2, p2, 0x5

    .line 25
    .line 26
    or-int/lit16 p2, p2, 0x80

    .line 27
    .line 28
    iget-boolean p3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->extension:Z

    .line 29
    .line 30
    shl-int/lit8 p3, p3, 0x4

    .line 31
    .line 32
    or-int/2addr p2, p3

    .line 33
    iget-byte p3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->csrcCount:B

    .line 34
    .line 35
    and-int/lit8 p3, p3, 0xf

    .line 36
    .line 37
    or-int/2addr p2, p3

    .line 38
    int-to-byte p2, p2

    .line 39
    iget-boolean p3, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->marker:Z

    .line 40
    .line 41
    shl-int/lit8 p3, p3, 0x7

    .line 42
    .line 43
    iget-byte v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadType:B

    .line 44
    .line 45
    and-int/lit8 v1, v1, 0x7f

    .line 46
    .line 47
    or-int/2addr p3, v1

    .line 48
    int-to-byte p3, p3

    .line 49
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget p2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->sequenceNumber:I

    .line 58
    .line 59
    int-to-short p2, p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-wide p2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->timestamp:J

    .line 65
    .line 66
    long-to-int p3, p2

    .line 67
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget p2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->ssrc:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->csrc:[B

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/RtpPacket;->payloadData:[B

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    .line 88
    return v0

    .line 89
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 90
    return p1
.end method
