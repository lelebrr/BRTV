.class public final La7/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/transition/Transition;Lp/e;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, La7/d;->a:I

    .line 2
    iput-object p1, p0, La7/d;->c:Ljava/lang/Object;

    iput-object p2, p0, La7/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, La7/d;->a:I

    iput-object p1, p0, La7/d;->b:Ljava/lang/Object;

    iput-object p3, p0, La7/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, La7/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, La7/d;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Ln0/b1;

    .line 13
    .line 14
    invoke-interface {p1}, Ln0/b1;->b()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, La7/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La7/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lp/e;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, La7/d;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/transition/Transition;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/transition/Transition;->m:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p1, p0, La7/d;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Ln0/b1;

    .line 26
    .line 27
    invoke-interface {p1}, Ln0/b1;->a()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    iget-object p1, p0, La7/d;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lf6/e;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-interface {p1, v0}, Lf6/e;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, La7/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La7/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/transition/Transition;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/transition/Transition;->m:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, p0, La7/d;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ln0/b1;

    .line 19
    .line 20
    invoke-interface {p1}, Ln0/b1;->c()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object p1, p0, La7/d;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lf6/e;

    .line 27
    .line 28
    iget-object v0, p0, La7/d;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    invoke-interface {p1, v0}, Lf6/e;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
