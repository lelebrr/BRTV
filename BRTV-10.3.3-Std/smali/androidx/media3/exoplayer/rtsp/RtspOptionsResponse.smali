.class final Landroidx/media3/exoplayer/rtsp/RtspOptionsResponse;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final status:I

.field public final supportedMethods:Ld7/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/u1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/RtspOptionsResponse;->status:I

    .line 5
    .line 6
    invoke-static {p2}, Ld7/u1;->n(Ljava/util/Collection;)Ld7/u1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtspOptionsResponse;->supportedMethods:Ld7/u1;

    .line 11
    .line 12
    return-void
.end method
