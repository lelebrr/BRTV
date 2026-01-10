.class final Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/vobsub/VobsubParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;
    }
.end annotation


# static fields
.field private static final CMD_ALPHA:I = 0x4

.field private static final CMD_AREA:I = 0x5

.field private static final CMD_COLORS:I = 0x3

.field private static final CMD_END:I = 0xff

.field private static final CMD_FORCE_START:I = 0x0

.field private static final CMD_OFFSETS:I = 0x6

.field private static final CMD_START:I = 0x1

.field private static final CMD_STOP:I = 0x2


# instance fields
.field private boundingBox:Landroid/graphics/Rect;

.field private final colors:[I

.field private dataOffset0:I

.field private dataOffset1:I

.field private hasColors:Z

.field private hasPlane:Z

.field private palette:[I

.field private planeHeight:I

.field private planeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    .line 13
    .line 14
    return-void
.end method

.method private static getColor([II)I
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    aget p0, p0, p1

    .line 11
    .line 12
    :goto_0
    return p0
.end method

.method private static parseColor(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method private parseControl([ILandroidx/media3/common/util/ParsableByteArray;I)V
    .locals 1

    .line 1
    :cond_0
    :pswitch_0
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge v0, p3, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_1
    invoke-direct {p0, p2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlOffsets(Landroidx/media3/common/util/ParsableByteArray;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_2
    invoke-direct {p0, p2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlArea(Landroidx/media3/common/util/ParsableByteArray;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_3
    invoke-direct {p0, p2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlAlpha(Landroidx/media3/common/util/ParsableByteArray;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_4
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlColors([ILandroidx/media3/common/util/ParsableByteArray;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    :cond_1
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseControlAlpha(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    if-lt v0, v2, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    aget v5, v3, v4

    .line 26
    .line 27
    shr-int/lit8 v6, v0, 0x4

    .line 28
    .line 29
    invoke-static {v5, v6}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    aput v5, v3, v4

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    .line 36
    .line 37
    aget v4, v3, v2

    .line 38
    .line 39
    and-int/lit8 v0, v0, 0xf

    .line 40
    .line 41
    invoke-static {v4, v0}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    aput v0, v3, v2

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    aget v3, v0, v2

    .line 51
    .line 52
    shr-int/lit8 v4, p1, 0x4

    .line 53
    .line 54
    invoke-static {v3, v4}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    aput v3, v0, v2

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    .line 61
    .line 62
    aget v3, v0, v1

    .line 63
    .line 64
    and-int/lit8 p1, p1, 0xf

    .line 65
    .line 66
    invoke-static {v3, p1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    aput p1, v0, v1

    .line 71
    .line 72
    return v2

    .line 73
    :cond_1
    :goto_0
    return v1
.end method

.method private parseControlArea(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    shl-int/lit8 v0, v0, 0x4

    .line 23
    .line 24
    shr-int/lit8 v3, v1, 0x4

    .line 25
    .line 26
    or-int/2addr v0, v3

    .line 27
    and-int/lit8 v1, v1, 0xf

    .line 28
    .line 29
    shl-int/lit8 v1, v1, 0x8

    .line 30
    .line 31
    or-int/2addr v1, v2

    .line 32
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    shl-int/lit8 v2, v2, 0x4

    .line 45
    .line 46
    shr-int/lit8 v4, v3, 0x4

    .line 47
    .line 48
    or-int/2addr v2, v4

    .line 49
    and-int/lit8 v3, v3, 0xf

    .line 50
    .line 51
    shl-int/lit8 v3, v3, 0x8

    .line 52
    .line 53
    or-int/2addr p1, v3

    .line 54
    new-instance v3, Landroid/graphics/Rect;

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    add-int/2addr v1, v4

    .line 58
    add-int/2addr p1, v4

    .line 59
    invoke-direct {v3, v0, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    .line 61
    .line 62
    iput-object v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 63
    .line 64
    return v4
.end method

.method private parseControlColors([ILandroidx/media3/common/util/ParsableByteArray;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iget-object v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    .line 19
    .line 20
    shr-int/lit8 v4, v0, 0x4

    .line 21
    .line 22
    invoke-static {p1, v4}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x3

    .line 27
    aput v4, v3, v5

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    .line 30
    .line 31
    and-int/lit8 v0, v0, 0xf

    .line 32
    .line 33
    invoke-static {p1, v0}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    aput v0, v3, v2

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    .line 40
    .line 41
    shr-int/lit8 v2, p2, 0x4

    .line 42
    .line 43
    invoke-static {p1, v2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x1

    .line 48
    aput v2, v0, v3

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    .line 51
    .line 52
    and-int/lit8 p2, p2, 0xf

    .line 53
    .line 54
    invoke-static {p1, p2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    aput p1, v0, v1

    .line 59
    .line 60
    iput-boolean v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    .line 61
    .line 62
    return v3
.end method

.method private parseControlOffsets(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method private parseRleData(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    xor-int/lit8 p2, p2, 0x1

    .line 10
    .line 11
    mul-int v1, p2, v0

    .line 12
    .line 13
    new-instance v2, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v3}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;-><init>(Landroidx/media3/extractor/text/vobsub/VobsubParser$1;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    const/4 v4, 0x0

    .line 21
    :cond_0
    invoke-static {p1, v0, v2}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseRun(Landroidx/media3/common/util/ParsableBitArray;ILandroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;)V

    .line 22
    .line 23
    .line 24
    iget v5, v2, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->length:I

    .line 25
    .line 26
    sub-int v6, v0, v4

    .line 27
    .line 28
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-lez v5, :cond_1

    .line 33
    .line 34
    add-int v6, v1, v5

    .line 35
    .line 36
    iget-object v7, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    .line 37
    .line 38
    iget v8, v2, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->colorIndex:I

    .line 39
    .line 40
    aget v7, v7, v8

    .line 41
    .line 42
    invoke-static {p4, v1, v6, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 43
    .line 44
    .line 45
    add-int/2addr v4, v5

    .line 46
    move v1, v6

    .line 47
    :cond_1
    if-lt v4, v0, :cond_0

    .line 48
    .line 49
    add-int/lit8 p2, p2, 0x2

    .line 50
    .line 51
    if-lt p2, p3, :cond_2

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    mul-int v1, p2, v0

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->byteAlign()V

    .line 57
    .line 58
    .line 59
    goto :goto_0
.end method

.method private static parseRun(Landroidx/media3/common/util/ParsableBitArray;ILandroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/4 v3, 0x4

    .line 5
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    const/16 v4, 0x40

    .line 8
    .line 9
    if-gt v1, v4, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v4, v3, :cond_0

    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    iput p0, p2, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->colorIndex:I

    .line 19
    .line 20
    iput v0, p2, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->length:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    shl-int/lit8 v2, v2, 0x4

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    or-int/2addr v2, v3

    .line 30
    shl-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    and-int/lit8 p0, v2, 0x3

    .line 34
    .line 35
    iput p0, p2, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->colorIndex:I

    .line 36
    .line 37
    if-ge v2, v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    shr-int/lit8 p1, v2, 0x2

    .line 41
    .line 42
    :goto_1
    iput p1, p2, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->length:I

    .line 43
    .line 44
    return-void
.end method

.method private static setAlpha(II)I
    .locals 1

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    mul-int/lit8 p1, p1, 0x11

    .line 6
    .line 7
    shl-int/lit8 p1, p1, 0x18

    .line 8
    .line 9
    or-int/2addr p0, p1

    .line 10
    return p0
.end method


# virtual methods
.method public build(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/text/Cue;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v1, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    iget v1, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    .line 23
    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x2

    .line 31
    if-lt v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ge v0, v1, :cond_0

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    mul-int v2, v2, v1

    .line 54
    .line 55
    new-array v1, v2, [I

    .line 56
    .line 57
    new-instance v2, Landroidx/media3/common/util/ParsableBitArray;

    .line 58
    .line 59
    invoke-direct {v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    .line 60
    .line 61
    .line 62
    iget v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 68
    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseRleData(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    .line 72
    .line 73
    .line 74
    iget v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableBitArray;->reset(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    invoke-direct {p0, v2, p1, v0, v1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseRleData(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 95
    .line 96
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    new-instance v2, Landroidx/media3/common/text/Cue$Builder;

    .line 101
    .line 102
    invoke-direct {v2}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v1}, Landroidx/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 110
    .line 111
    int-to-float v2, v2

    .line 112
    iget v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    .line 113
    .line 114
    int-to-float v3, v3

    .line 115
    div-float/2addr v2, v3

    .line 116
    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1, p1}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 125
    .line 126
    int-to-float v2, v2

    .line 127
    iget v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    .line 128
    .line 129
    int-to-float v3, v3

    .line 130
    div-float/2addr v2, v3

    .line 131
    invoke-virtual {v1, v2, p1}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1, p1}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    int-to-float v1, v1

    .line 144
    iget v2, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    .line 145
    .line 146
    int-to-float v2, v2

    .line 147
    div-float/2addr v1, v2

    .line 148
    invoke-virtual {p1, v1}, Landroidx/media3/common/text/Cue$Builder;->setSize(F)Landroidx/media3/common/text/Cue$Builder;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    int-to-float v0, v0

    .line 157
    iget v1, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    .line 158
    .line 159
    int-to-float v1, v1

    .line 160
    div-float/2addr v0, v1

    .line 161
    invoke-virtual {p1, v0}, Landroidx/media3/common/text/Cue$Builder;->setBitmapHeight(F)Landroidx/media3/common/text/Cue$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    return-object p1

    .line 170
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 171
    return-object p1
.end method

.method public parseIdx(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "\\r?\\n"

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_2

    .line 15
    .line 16
    aget-object v3, p1, v2

    .line 17
    .line 18
    const-string v4, "palette: "

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    const/16 v4, 0x9

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, ","

    .line 33
    .line 34
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    array-length v4, v3

    .line 39
    new-array v4, v4, [I

    .line 40
    .line 41
    iput-object v4, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    :goto_1
    array-length v5, v3

    .line 45
    if-ge v4, v5, :cond_1

    .line 46
    .line 47
    iget-object v5, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    .line 48
    .line 49
    aget-object v6, v3, v4

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v6}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseColor(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    aput v6, v5, v4

    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    const-string v4, "size: "

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    const/4 v4, 0x6

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v4, "x"

    .line 82
    .line 83
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    array-length v4, v3

    .line 88
    const/4 v5, 0x2

    .line 89
    if-ne v4, v5, :cond_1

    .line 90
    .line 91
    :try_start_0
    aget-object v4, v3, v1

    .line 92
    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    iput v4, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    aget-object v3, v3, v4

    .line 101
    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    iput v3, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    .line 107
    .line 108
    iput-boolean v4, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_0
    move-exception v3

    .line 112
    const-string v4, "VobsubParser"

    .line 113
    .line 114
    const-string v5, "Parsing IDX failed"

    .line 115
    .line 116
    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    return-void
.end method

.method public parseSpu(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x2

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControl([ILandroidx/media3/common/util/ParsableByteArray;I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    .line 11
    .line 12
    return-void
.end method
