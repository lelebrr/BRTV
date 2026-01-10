.class public final synthetic Landroidx/media3/common/p;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/common/p;->a:I

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/media3/common/p;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Landroidx/media3/common/p;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/p;->a:I

    .line 2
    .line 3
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/common/p;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$State;

    .line 11
    .line 12
    iget v1, p0, Landroidx/media3/common/p;->b:I

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Landroidx/media3/common/SimpleBasePlayer;->V(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Player$Listener;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/common/p;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroidx/media3/common/MediaItem;

    .line 21
    .line 22
    iget v1, p0, Landroidx/media3/common/p;->b:I

    .line 23
    .line 24
    invoke-static {v0, v1, p1}, Landroidx/media3/common/SimpleBasePlayer;->A(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
