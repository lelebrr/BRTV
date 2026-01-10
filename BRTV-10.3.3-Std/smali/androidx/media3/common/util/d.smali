.class public final synthetic Landroidx/media3/common/util/d;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/common/util/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/util/d;->d:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/common/util/d;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/media3/common/util/d;->a:I

    iput-object p1, p0, Landroidx/media3/common/util/d;->c:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/common/util/d;->b:I

    iput-object p3, p0, Landroidx/media3/common/util/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/common/util/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/common/util/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lt1/a;

    .line 9
    .line 10
    iget-object v0, v0, Lt1/a;->b:Lt1/c;

    .line 11
    .line 12
    iget v1, p0, Landroidx/media3/common/util/d;->b:I

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/common/util/d;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/io/Serializable;

    .line 17
    .line 18
    invoke-interface {v0, v1, v2}, Lt1/c;->b(ILjava/io/Serializable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget v0, p0, Landroidx/media3/common/util/d;->b:I

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/common/util/d;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/media3/common/util/d;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->c(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    iget-object v0, p0, Landroidx/media3/common/util/d;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 39
    .line 40
    iget v1, p0, Landroidx/media3/common/util/d;->b:I

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/media3/common/util/d;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Landroidx/media3/common/util/ListenerSet$Event;

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
