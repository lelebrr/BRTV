.class public final Landroidx/media3/extractor/mp4/SmtaAtomUtil;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final CAMCORDER_FRC_SUPERSLOW_MOTION:I = 0x9

.field private static final CAMCORDER_FRC_SUPERSLOW_MOTION_HEVC:I = 0x16

.field private static final CAMCORDER_NORMAL:I = 0x0

.field private static final CAMCORDER_QFRC_SUPERSLOW_MOTION:I = 0x17

.field private static final CAMCORDER_SINGLE_SUPERSLOW_MOTION:I = 0x7

.field private static final CAMCORDER_SLOW_MOTION_V2:I = 0xc

.field private static final CAMCORDER_SLOW_MOTION_V2_120:I = 0xd

.field private static final CAMCORDER_SLOW_MOTION_V2_HEVC:I = 0x15

.field private static final NO_VALUE:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getCaptureFrameRate(ILandroidx/media3/common/util/ParsableByteArray;I)I
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0xf0

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/16 v1, 0xd

    .line 9
    .line 10
    if-ne p0, v1, :cond_1

    .line 11
    .line 12
    const/16 p0, 0x78

    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    const/16 v1, 0x15

    .line 16
    .line 17
    const v2, -0x7fffffff

    .line 18
    .line 19
    .line 20
    if-eq p0, v1, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    if-lt p0, v1, :cond_5

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    add-int/2addr p0, v1

    .line 36
    if-le p0, p2, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-lt p0, v0, :cond_5

    .line 48
    .line 49
    const p0, 0x73726672

    .line 50
    .line 51
    .line 52
    if-eq p2, p0, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_5
    :goto_0
    return v2
.end method

.method public static parseSmta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0xc

    .line 4
    .line 5
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ge v2, p1, :cond_6

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const v6, 0x73617574

    .line 28
    .line 29
    .line 30
    if-ne v5, v6, :cond_5

    .line 31
    .line 32
    const/16 v2, 0x10

    .line 33
    .line 34
    if-ge v4, v2, :cond_0

    .line 35
    .line 36
    return-object v3

    .line 37
    :cond_0
    const/4 v2, 0x4

    .line 38
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 39
    .line 40
    .line 41
    const/4 v2, -0x1

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    :goto_1
    const/4 v6, 0x2

    .line 45
    if-ge v4, v6, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v6, :cond_1

    .line 56
    .line 57
    move v2, v7

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    if-ne v6, v1, :cond_2

    .line 60
    .line 61
    move v5, v7

    .line 62
    :cond_2
    :goto_2
    add-int/2addr v4, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-static {v2, p0, p1}, Landroidx/media3/extractor/mp4/SmtaAtomUtil;->getCaptureFrameRate(ILandroidx/media3/common/util/ParsableByteArray;I)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const p1, -0x7fffffff

    .line 69
    .line 70
    .line 71
    if-ne p0, p1, :cond_4

    .line 72
    .line 73
    return-object v3

    .line 74
    :cond_4
    new-instance p1, Landroidx/media3/common/Metadata;

    .line 75
    .line 76
    new-instance v2, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    .line 77
    .line 78
    int-to-float p0, p0

    .line 79
    invoke-direct {v2, p0, v5}, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    .line 80
    .line 81
    .line 82
    new-array p0, v1, [Landroidx/media3/common/Metadata$Entry;

    .line 83
    .line 84
    aput-object v2, p0, v0

    .line 85
    .line 86
    invoke-direct {p1, p0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_5
    add-int/2addr v2, v4

    .line 91
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    return-object v3
.end method
