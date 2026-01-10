.class public final La6/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La6/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, La6/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, La6/a;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :sswitch_0
    iget-object p1, p0, La6/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Ll6/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Ll6/b;->d()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :sswitch_1
    const/4 p1, 0x0

    .line 19
    iget-object v0, p0, La6/a;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 22
    .line 23
    iput-object p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/view/ViewPropertyAnimator;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    .line 27
    .line 28
    return-void

    .line 29
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, La6/a;->b:Ljava/lang/Object;

    .line 3
    .line 4
    iget v2, p0, La6/a;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_1
    check-cast v1, Landroidx/transition/Transition;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/transition/Transition;->l()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_2
    sget-object p1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 23
    .line 24
    check-cast v1, Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    check-cast v1, Ll6/b;

    .line 31
    .line 32
    invoke-virtual {v1}, Ll6/b;->e()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    check-cast v1, Lcom/google/android/material/textfield/m;

    .line 37
    .line 38
    iget-object p1, v1, Lcom/google/android/material/textfield/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 39
    .line 40
    iget-boolean v0, v1, Lcom/google/android/material/textfield/m;->m:Z

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v1, Lcom/google/android/material/textfield/m;->s:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_5
    check-cast v1, La1/b;

    .line 52
    .line 53
    iget-object v2, v1, La1/b;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    if-ne v2, p1, :cond_0

    .line 58
    .line 59
    iput-object v0, v1, La1/b;->c:Ljava/lang/Object;

    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    :pswitch_6
    check-cast v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 63
    .line 64
    iput-object v0, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/view/ViewPropertyAnimator;

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-boolean p1, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_7
    check-cast v1, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    .line 71
    .line 72
    iput-object v0, v1, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->b:Landroid/animation/AnimatorSet;

    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_8
    check-cast v1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    .line 76
    .line 77
    iput-object v0, v1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->d:Landroid/view/ViewPropertyAnimator;

    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget v0, p0, La6/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, La6/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lq6/q;

    .line 16
    .line 17
    iget v0, p1, Lq6/q;->g:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget-object v2, p1, Lq6/q;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 22
    .line 23
    iget-object v2, v2, Lq6/e;->c:[I

    .line 24
    .line 25
    array-length v2, v2

    .line 26
    rem-int/2addr v0, v2

    .line 27
    iput v0, p1, Lq6/q;->g:I

    .line 28
    .line 29
    iput-boolean v1, p1, Lq6/q;->h:Z

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, La6/a;->a:I

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
    iget-object v0, p0, La6/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ll6/b;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ll6/b;->f(Landroid/animation/Animator;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
