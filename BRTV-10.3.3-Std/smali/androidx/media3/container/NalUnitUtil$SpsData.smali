.class public final Landroidx/media3/container/NalUnitUtil$SpsData;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpsData"
.end annotation


# instance fields
.field public final bitDepthChromaMinus8:I

.field public final bitDepthLumaMinus8:I

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final constraintsFlagsAndReservedZero2Bits:I

.field public final deltaPicOrderAlwaysZeroFlag:Z

.field public final frameMbsOnlyFlag:Z

.field public final frameNumLength:I

.field public final height:I

.field public final levelIdc:I

.field public final maxNumRefFrames:I

.field public final maxNumReorderFrames:I

.field public final picOrderCntLsbLength:I

.field public final picOrderCountType:I

.field public final pixelWidthHeightRatio:F

.field public final profileIdc:I

.field public final separateColorPlaneFlag:Z

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIIIFIIZZIIIZIIII)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move v1, p1

    .line 6
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    .line 7
    .line 8
    move v1, p2

    .line 9
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    .line 10
    .line 11
    move v1, p3

    .line 12
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    .line 13
    .line 14
    move v1, p4

    .line 15
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->seqParameterSetId:I

    .line 16
    .line 17
    move v1, p5

    .line 18
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->maxNumRefFrames:I

    .line 19
    .line 20
    move v1, p6

    .line 21
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    .line 22
    .line 23
    move v1, p7

    .line 24
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    .line 25
    .line 26
    move v1, p8

    .line 27
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 28
    .line 29
    move v1, p9

    .line 30
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthLumaMinus8:I

    .line 31
    .line 32
    move v1, p10

    .line 33
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->bitDepthChromaMinus8:I

    .line 34
    .line 35
    move v1, p11

    .line 36
    iput-boolean v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    .line 37
    .line 38
    move v1, p12

    .line 39
    iput-boolean v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    .line 40
    .line 41
    move v1, p13

    .line 42
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    .line 43
    .line 44
    move/from16 v1, p14

    .line 45
    .line 46
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    .line 47
    .line 48
    move/from16 v1, p15

    .line 49
    .line 50
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    .line 51
    .line 52
    move/from16 v1, p16

    .line 53
    .line 54
    iput-boolean v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    .line 55
    .line 56
    move/from16 v1, p17

    .line 57
    .line 58
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorSpace:I

    .line 59
    .line 60
    move/from16 v1, p18

    .line 61
    .line 62
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorRange:I

    .line 63
    .line 64
    move/from16 v1, p19

    .line 65
    .line 66
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorTransfer:I

    .line 67
    .line 68
    move/from16 v1, p20

    .line 69
    .line 70
    iput v1, v0, Landroidx/media3/container/NalUnitUtil$SpsData;->maxNumReorderFrames:I

    .line 71
    .line 72
    return-void
.end method
