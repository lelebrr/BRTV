.class public final synthetic Landroidx/media3/exoplayer/drm/n;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;

.field public final synthetic b:Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/n;->a:Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/drm/n;->b:Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/n;->a:Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/n;->b:Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->d(Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm;[BLjava/util/List;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
