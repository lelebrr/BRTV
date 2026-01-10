.class final Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field private static final MAX_OBU_COUNT_FOR_PARTIAL_SKIP:I = 0x8


# instance fields
.field private sequenceHeader:Landroidx/media3/container/ObuParser$SequenceHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private canSkipObu(Landroidx/media3/container/ObuParser$Obu;Z)Z
    .locals 4

    .line 1
    iget v0, p1, Landroidx/media3/container/ObuParser$Obu;->type:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_5

    .line 6
    .line 7
    const/16 v1, 0xf

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x3

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    return v3

    .line 19
    :cond_1
    const/4 p2, 0x6

    .line 20
    if-eq v0, p2, :cond_2

    .line 21
    .line 22
    if-ne v0, v1, :cond_4

    .line 23
    .line 24
    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Landroidx/media3/container/ObuParser$SequenceHeader;

    .line 25
    .line 26
    if-eqz p2, :cond_4

    .line 27
    .line 28
    invoke-static {p2, p1}, Landroidx/media3/container/ObuParser$FrameHeader;->parse(Landroidx/media3/container/ObuParser$SequenceHeader;Landroidx/media3/container/ObuParser$Obu;)Landroidx/media3/container/ObuParser$FrameHeader;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/media3/container/ObuParser$FrameHeader;->isDependedOn()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const/4 v2, 0x0

    .line 42
    :goto_0
    return v2

    .line 43
    :cond_4
    return v3

    .line 44
    :cond_5
    :goto_1
    return v2
.end method

.method private updateSequenceHeaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/container/ObuParser$Obu;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/media3/container/ObuParser$Obu;

    .line 13
    .line 14
    iget v1, v1, Landroidx/media3/container/ObuParser$Obu;->type:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/media3/container/ObuParser$Obu;

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/media3/container/ObuParser$SequenceHeader;->parse(Landroidx/media3/container/ObuParser$Obu;)Landroidx/media3/container/ObuParser$SequenceHeader;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Landroidx/media3/container/ObuParser$SequenceHeader;

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public queueInputBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/container/ObuParser;->split(Ljava/nio/ByteBuffer;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->updateSequenceHeaders(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->sequenceHeader:Landroidx/media3/container/ObuParser$SequenceHeader;

    .line 3
    .line 4
    return-void
.end method

.method public sampleLimitAfterSkippingNonReferenceFrame(Ljava/nio/ByteBuffer;Z)I
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/media3/container/ObuParser;->split(Ljava/nio/ByteBuffer;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->updateSequenceHeaders(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    sub-int/2addr v1, v2

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ltz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Landroidx/media3/container/ObuParser$Obu;

    .line 22
    .line 23
    invoke-direct {p0, v4, p2}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->canSkipObu(Landroidx/media3/container/ObuParser$Obu;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Landroidx/media3/container/ObuParser$Obu;

    .line 34
    .line 35
    iget v4, v4, Landroidx/media3/container/ObuParser$Obu;->type:I

    .line 36
    .line 37
    const/4 v5, 0x6

    .line 38
    if-eq v4, v5, :cond_0

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroidx/media3/container/ObuParser$Obu;

    .line 45
    .line 46
    iget v4, v4, Landroidx/media3/container/ObuParser$Obu;->type:I

    .line 47
    .line 48
    const/4 v5, 0x3

    .line 49
    if-ne v4, v5, :cond_1

    .line 50
    .line 51
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    if-gt v3, v2, :cond_5

    .line 57
    .line 58
    add-int/lit8 p2, v1, 0x1

    .line 59
    .line 60
    const/16 v2, 0x8

    .line 61
    .line 62
    if-lt p2, v2, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    if-ltz v1, :cond_4

    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroidx/media3/container/ObuParser$Obu;

    .line 72
    .line 73
    iget-object p1, p1, Landroidx/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    return p1

    .line 80
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    return p1

    .line 85
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    return p1
.end method
