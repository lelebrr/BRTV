.class public final synthetic Landroidx/media3/ui/s;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/media3/ui/TrackSelectionDialogBuilder;

.field public final synthetic b:Landroidx/media3/ui/TrackSelectionView;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/TrackSelectionDialogBuilder;Landroidx/media3/ui/TrackSelectionView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/ui/s;->a:Landroidx/media3/ui/TrackSelectionDialogBuilder;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/ui/s;->b:Landroidx/media3/ui/TrackSelectionView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/s;->b:Landroidx/media3/ui/TrackSelectionView;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/s;->a:Landroidx/media3/ui/TrackSelectionDialogBuilder;

    .line 4
    .line 5
    invoke-static {v1, v0, p1, p2}, Landroidx/media3/ui/TrackSelectionDialogBuilder;->b(Landroidx/media3/ui/TrackSelectionDialogBuilder;Landroidx/media3/ui/TrackSelectionView;Landroid/content/DialogInterface;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
