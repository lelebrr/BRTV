.class public final synthetic Landroidx/media3/common/n;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lj4/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/media3/common/n;->b:I

    iput-object p1, p0, Landroidx/media3/common/n;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/n;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/media3/common/n;->a:I

    iput-object p1, p0, Landroidx/media3/common/n;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/n;->d:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/common/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/common/n;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/common/n;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lh4/i;

    .line 8
    .line 9
    iget-object v1, v1, Lh4/i;->d:Lh4/d;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, p0, Landroidx/media3/common/n;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, La4/j;

    .line 15
    .line 16
    invoke-virtual {v1, v3, v0, v2}, Lh4/d;->a(La4/j;IZ)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/common/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/common/n;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/common/n;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroidx/media3/common/MediaItem;

    .line 15
    .line 16
    iget v2, p0, Landroidx/media3/common/n;->b:I

    .line 17
    .line 18
    invoke-static {v0, v1, v2, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->n0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 23
    .line 24
    iget v0, p0, Landroidx/media3/common/n;->b:I

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/media3/common/n;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroidx/media3/common/Player$PositionInfo;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/media3/common/n;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Landroidx/media3/common/Player$PositionInfo;

    .line 33
    .line 34
    invoke-static {v0, v1, v2, p1}, Landroidx/media3/common/SimpleBasePlayer;->F(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
