.class public final Lcom/tencent/mars/xlog/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/tencent/mars/xlog/Log$LogImp;


# instance fields
.field public a:Landroid/os/Handler;


# virtual methods
.method public final appenderClose()V
    .locals 0

    .line 1
    return-void
.end method

.method public final appenderFlush(JZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getLogLevel(J)I
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final getXlogInstance(Ljava/lang/String;)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final logD(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-gt p1, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p3, p12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final logE(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x4

    .line 6
    if-gt p1, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p3, p12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final logF(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x5

    .line 6
    if-le p1, p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p3, p12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/tencent/mars/xlog/Log;->toastSupportContext:Landroid/content/Context;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/tencent/mars/xlog/a;->a:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance p2, La/f;

    .line 19
    .line 20
    const/16 p3, 0x8

    .line 21
    .line 22
    invoke-direct {p2, p3, p12}, La/f;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final logI(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x2

    .line 6
    if-gt p1, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p3, p12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final logV(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-gtz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p3, p12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final logW(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->access$000()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x3

    .line 6
    if-gt p1, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p3, p12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final openLogInstance(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 0

    .line 1
    const-wide/16 p1, 0x0

    .line 2
    .line 3
    return-wide p1
.end method

.method public final releaseXlogInstance(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setAppenderMode(JI)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setConsoleLogOpen(JZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setMaxAliveTime(JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setMaxFileSize(JJ)V
    .locals 0

    .line 1
    return-void
.end method
