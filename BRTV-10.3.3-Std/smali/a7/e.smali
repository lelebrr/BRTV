.class public final La7/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf6/e;


# direct methods
.method public synthetic constructor <init>(Lf6/e;I)V
    .locals 0

    .line 1
    iput p2, p0, La7/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La7/e;->b:Lf6/e;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, La7/e;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, La7/e;->b:Lf6/e;

    .line 7
    .line 8
    invoke-interface {p1}, Lf6/e;->c()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p1, p0, La7/e;->b:Lf6/e;

    .line 13
    .line 14
    invoke-interface {p1}, Lf6/e;->getRevealInfo()Lf6/d;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 19
    .line 20
    .line 21
    iput v1, v0, Lf6/d;->c:F

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lf6/e;->setRevealInfo(Lf6/d;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, La7/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, La7/e;->b:Lf6/e;

    .line 11
    .line 12
    invoke-interface {p1}, Lf6/e;->e()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
