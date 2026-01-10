.class public final Landroidx/mediarouter/app/o;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/mediarouter/app/o;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/mediarouter/app/o;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final e(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget p1, p0, Landroidx/mediarouter/app/o;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/mediarouter/app/o;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/mediarouter/app/o0;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p1, Landroidx/mediarouter/app/q0;->x:Z

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/mediarouter/app/q0;->q()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object p1, p0, Landroidx/mediarouter/app/o;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Landroidx/mediarouter/app/u;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/u;->m(Z)V

    .line 25
    .line 26
    .line 27
    :pswitch_1
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/mediarouter/app/o;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 5

    .line 1
    iget p1, p0, Landroidx/mediarouter/app/o;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/mediarouter/app/o;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/mediarouter/app/o0;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/mediarouter/app/o0;->j:Landroidx/mediarouter/app/q0;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Landroidx/mediarouter/app/q0;->x:Z

    .line 14
    .line 15
    :pswitch_0
    return-void

    .line 16
    :pswitch_1
    iget-object p1, p0, Landroidx/mediarouter/app/o;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Landroidx/mediarouter/app/u;

    .line 19
    .line 20
    iget-object v0, p1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/mediarouter/app/OverlayListView;->a:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroidx/mediarouter/app/r0;

    .line 39
    .line 40
    iget-boolean v3, v2, Landroidx/mediarouter/app/r0;->j:Z

    .line 41
    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    iput-wide v3, v2, Landroidx/mediarouter/app/r0;->i:J

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    iput-boolean v3, v2, Landroidx/mediarouter/app/r0;->j:Z

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 55
    .line 56
    iget-object v1, p1, Landroidx/mediarouter/app/u;->o0:Landroidx/mediarouter/app/i;

    .line 57
    .line 58
    iget p1, p1, Landroidx/mediarouter/app/u;->h0:I

    .line 59
    .line 60
    int-to-long v2, p1

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
