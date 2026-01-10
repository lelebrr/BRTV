.class Landroidx/media3/common/VideoCompositorSettings$1$1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/OverlaySettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/common/VideoCompositorSettings$1;->getOverlaySettings(IJ)Landroidx/media3/common/OverlaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/common/VideoCompositorSettings$1;


# direct methods
.method public constructor <init>(Landroidx/media3/common/VideoCompositorSettings$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/VideoCompositorSettings$1$1;->this$0:Landroidx/media3/common/VideoCompositorSettings$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic getAlphaScale()F
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/j;->a(Landroidx/media3/common/OverlaySettings;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final synthetic getBackgroundFrameAnchor()Landroid/util/Pair;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/j;->b(Landroidx/media3/common/OverlaySettings;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final synthetic getHdrLuminanceMultiplier()F
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/j;->c(Landroidx/media3/common/OverlaySettings;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final synthetic getOverlayFrameAnchor()Landroid/util/Pair;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/j;->d(Landroidx/media3/common/OverlaySettings;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final synthetic getRotationDegrees()F
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/j;->e(Landroidx/media3/common/OverlaySettings;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final synthetic getScale()Landroid/util/Pair;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/j;->f(Landroidx/media3/common/OverlaySettings;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
