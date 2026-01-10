.class public final synthetic Landroidx/media3/ui/e;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;

.field public final synthetic b:Landroidx/media3/common/Player;

.field public final synthetic c:Landroidx/media3/common/TrackGroup;

.field public final synthetic d:Landroidx/media3/ui/PlayerControlView$TrackInformation;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/ui/e;->a:Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/ui/e;->b:Landroidx/media3/common/Player;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/ui/e;->c:Landroidx/media3/common/TrackGroup;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/ui/e;->d:Landroidx/media3/ui/PlayerControlView$TrackInformation;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/e;->d:Landroidx/media3/ui/PlayerControlView$TrackInformation;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/e;->b:Landroidx/media3/common/Player;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/ui/e;->a:Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media3/ui/e;->c:Landroidx/media3/common/TrackGroup;

    .line 8
    .line 9
    invoke-static {v2, v1, v3, v0, p1}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->a(Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
