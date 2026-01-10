.class public final synthetic Landroidx/media3/exoplayer/c1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/c1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/exoplayer/c1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/media3/exoplayer/c1;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/c1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/c1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/WifiLockManager;

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/media3/exoplayer/c1;->b:Z

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/WifiLockManager;->b(Landroidx/media3/exoplayer/WifiLockManager;Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/c1;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroidx/media3/exoplayer/WakeLockManager;

    .line 19
    .line 20
    iget-boolean v1, p0, Landroidx/media3/exoplayer/c1;->b:Z

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/WakeLockManager;->b(Landroidx/media3/exoplayer/WakeLockManager;Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
