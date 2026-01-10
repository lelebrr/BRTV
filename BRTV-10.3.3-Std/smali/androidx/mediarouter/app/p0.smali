.class public final Landroidx/mediarouter/app/p0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/q0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/p0;->a:Landroidx/mediarouter/app/q0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lq1/s0;

    .line 8
    .line 9
    iget-object p3, p0, Landroidx/mediarouter/app/p0;->a:Landroidx/mediarouter/app/q0;

    .line 10
    .line 11
    iget-object p3, p3, Landroidx/mediarouter/app/q0;->u:Ljava/util/HashMap;

    .line 12
    .line 13
    iget-object v0, p1, Lq1/s0;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Landroidx/mediarouter/app/h0;

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p3, v0}, Landroidx/mediarouter/app/h0;->c(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1, p2}, Lq1/s0;->j(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/p0;->a:Landroidx/mediarouter/app/q0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/q0;->v:Lq1/s0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/mediarouter/app/q0;->q:Landroidx/mediarouter/app/c;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lq1/s0;

    .line 18
    .line 19
    iput-object p1, v0, Landroidx/mediarouter/app/q0;->v:Lq1/s0;

    .line 20
    .line 21
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/p0;->a:Landroidx/mediarouter/app/q0;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/mediarouter/app/q0;->q:Landroidx/mediarouter/app/c;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    const-wide/16 v1, 0x1f4

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
