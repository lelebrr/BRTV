.class public final synthetic Landroidx/media3/exoplayer/rtsp/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    .line 2
    .line 3
    check-cast p2, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue;->a(Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;Landroidx/media3/exoplayer/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
