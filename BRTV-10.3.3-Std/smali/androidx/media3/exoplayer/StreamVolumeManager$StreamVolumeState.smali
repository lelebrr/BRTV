.class final Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/StreamVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamVolumeState"
.end annotation


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final muted:Z

.field public final streamType:I

.field public final volume:I


# direct methods
.method public constructor <init>(IIZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    .line 13
    .line 14
    return-void
.end method
