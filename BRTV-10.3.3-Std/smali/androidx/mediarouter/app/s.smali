.class public final Landroidx/mediarouter/app/s;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final a:Landroidx/mediarouter/app/i;

.field public final synthetic b:Landroidx/mediarouter/app/u;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/s;->b:Landroidx/mediarouter/app/u;

    .line 5
    .line 6
    new-instance p1, Landroidx/mediarouter/app/i;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0, p0}, Landroidx/mediarouter/app/i;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/mediarouter/app/s;->a:Landroidx/mediarouter/app/i;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

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
    sget p3, Landroidx/mediarouter/app/u;->p0:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lq1/s0;->j(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/s;->b:Landroidx/mediarouter/app/u;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/u;->L:Lq1/s0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/mediarouter/app/u;->J:Landroid/widget/SeekBar;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/mediarouter/app/s;->a:Landroidx/mediarouter/app/i;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lq1/s0;

    .line 19
    .line 20
    iput-object p1, v0, Landroidx/mediarouter/app/u;->L:Lq1/s0;

    .line 21
    .line 22
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/s;->b:Landroidx/mediarouter/app/u;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/mediarouter/app/u;->J:Landroid/widget/SeekBar;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/mediarouter/app/s;->a:Landroidx/mediarouter/app/i;

    .line 6
    .line 7
    const-wide/16 v1, 0x1f4

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
