.class public final synthetic Landroidx/media3/exoplayer/d1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZZI)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/media3/exoplayer/d1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/d1;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p2, p0, Landroidx/media3/exoplayer/d1;->b:Z

    .line 6
    .line 7
    iput-boolean p3, p0, Landroidx/media3/exoplayer/d1;->c:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/d1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/media3/exoplayer/d1;->c:Z

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/d1;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroidx/media3/exoplayer/WifiLockManager;

    .line 11
    .line 12
    iget-boolean v2, p0, Landroidx/media3/exoplayer/d1;->b:Z

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/WifiLockManager;->a(Landroidx/media3/exoplayer/WifiLockManager;ZZ)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/d1;->c:Z

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/media3/exoplayer/d1;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Landroidx/media3/exoplayer/WakeLockManager;

    .line 23
    .line 24
    iget-boolean v2, p0, Landroidx/media3/exoplayer/d1;->b:Z

    .line 25
    .line 26
    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/WakeLockManager;->a(Landroidx/media3/exoplayer/WakeLockManager;ZZ)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
