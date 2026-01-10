.class public final synthetic Landroidx/media3/exoplayer/rtsp/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/media3/exoplayer/rtsp/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/rtsp/b;->c:Ljava/io/Serializable;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/media3/exoplayer/rtsp/b;->d:Ljava/lang/Object;

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
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/b;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/b;->c:Ljava/io/Serializable;

    .line 15
    .line 16
    check-cast v2, [B

    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;->a(Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$Sender;[BLjava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/b;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroidx/media3/exoplayer/rtsp/RtpDataChannel;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/b;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/b;->c:Ljava/io/Serializable;

    .line 31
    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v2, v0}, Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;->a(Landroidx/media3/exoplayer/rtsp/RtpDataLoadable;Ljava/lang/String;Landroidx/media3/exoplayer/rtsp/RtpDataChannel;)V

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
