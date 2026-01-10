.class public final Landroidx/recyclerview/widget/m;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/m;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/recyclerview/widget/m;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/m;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget v3, p0, Landroidx/recyclerview/widget/m;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e()Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v2, Landroidx/recyclerview/widget/p;

    .line 17
    .line 18
    iget v3, v2, Landroidx/recyclerview/widget/p;->A:I

    .line 19
    .line 20
    iget-object v4, v2, Landroidx/recyclerview/widget/p;->z:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eq v3, v1, :cond_0

    .line 23
    .line 24
    if-eq v3, v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    .line 30
    :cond_1
    const/4 v3, 0x3

    .line 31
    iput v3, v2, Landroidx/recyclerview/widget/p;->A:I

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/Float;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    new-array v0, v0, [F

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    aput v2, v0, v3

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    aput v2, v0, v1

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x1f4

    .line 55
    .line 56
    int-to-long v0, v0

    .line 57
    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
