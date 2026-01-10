.class final Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# static fields
.field private static final MAX_SAMPLE_SIZE:I = 0x2000


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

.method public static rechunk(I[J[IJ)Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const/16 v1, 0x2000

    .line 4
    .line 5
    div-int v1, v1, p0

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    :goto_0
    if-ge v4, v2, :cond_0

    .line 12
    .line 13
    aget v6, v0, v4

    .line 14
    .line 15
    invoke-static {v6, v1}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    add-int/2addr v5, v6

    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-array v7, v5, [J

    .line 24
    .line 25
    new-array v8, v5, [I

    .line 26
    .line 27
    new-array v10, v5, [J

    .line 28
    .line 29
    new-array v11, v5, [I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    :goto_1
    array-length v6, v0

    .line 36
    if-ge v3, v6, :cond_2

    .line 37
    .line 38
    aget v6, v0, v3

    .line 39
    .line 40
    aget-wide v12, p1, v3

    .line 41
    .line 42
    :goto_2
    if-lez v6, :cond_1

    .line 43
    .line 44
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v14

    .line 48
    aput-wide v12, v7, v5

    .line 49
    .line 50
    mul-int v15, p0, v14

    .line 51
    .line 52
    aput v15, v8, v5

    .line 53
    .line 54
    add-int/2addr v4, v15

    .line 55
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    move v15, v1

    .line 60
    int-to-long v0, v2

    .line 61
    mul-long v0, v0, p3

    .line 62
    .line 63
    aput-wide v0, v10, v5

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    aput v0, v11, v5

    .line 67
    .line 68
    aget v0, v8, v5

    .line 69
    .line 70
    int-to-long v0, v0

    .line 71
    add-long/2addr v12, v0

    .line 72
    add-int/2addr v2, v14

    .line 73
    sub-int/2addr v6, v14

    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    move-object/from16 v0, p2

    .line 77
    .line 78
    move v1, v15

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    move v15, v1

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    move-object/from16 v0, p2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    int-to-long v0, v2

    .line 87
    mul-long v12, p3, v0

    .line 88
    .line 89
    new-instance v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;

    .line 90
    .line 91
    int-to-long v14, v4

    .line 92
    const/16 v16, 0x0

    .line 93
    .line 94
    move-object v6, v0

    .line 95
    invoke-direct/range {v6 .. v16}, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJJLandroidx/media3/extractor/mp4/FixedSampleSizeRechunker$1;)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method
