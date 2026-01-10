.class Landroidx/media3/common/VideoCompositorSettings$1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/VideoCompositorSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/VideoCompositorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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


# virtual methods
.method public getOutputSize(Ljava/util/List;)Landroidx/media3/common/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/util/Size;",
            ">;)",
            "Landroidx/media3/common/util/Size;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Landroidx/media3/common/util/Size;

    .line 7
    .line 8
    return-object p1
.end method

.method public getOverlaySettings(IJ)Landroidx/media3/common/OverlaySettings;
    .locals 0

    .line 1
    new-instance p1, Landroidx/media3/common/VideoCompositorSettings$1$1;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Landroidx/media3/common/VideoCompositorSettings$1$1;-><init>(Landroidx/media3/common/VideoCompositorSettings$1;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
