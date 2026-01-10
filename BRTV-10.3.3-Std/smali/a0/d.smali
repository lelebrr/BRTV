.class public final La0/d;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La0/d;->a:I

    .line 2
    .line 3
    iput-object p2, p0, La0/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, La0/d;->b:Ljava/lang/Object;

    .line 3
    .line 4
    iget v2, p0, La0/d;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v2, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    check-cast v1, Ly1/o;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 14
    .line 15
    .line 16
    iget-object v2, v1, Ly1/o;->a:Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v3, v1, Ly1/o;->b:Landroid/view/View;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v1, Ly1/o;->a:Landroid/view/ViewGroup;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    iput-object v2, v1, Ly1/o;->a:Landroid/view/ViewGroup;

    .line 34
    .line 35
    iput-object v2, v1, Ly1/o;->b:Landroid/view/View;

    .line 36
    .line 37
    :cond_0
    return v0

    .line 38
    :pswitch_0
    check-cast v1, Ll6/q;

    .line 39
    .line 40
    iget-object v2, v1, Ll6/q;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget v3, v1, Ll6/q;->o:F

    .line 47
    .line 48
    cmpl-float v3, v3, v2

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    iput v2, v1, Ll6/q;->o:F

    .line 53
    .line 54
    invoke-virtual {v1}, Ll6/q;->q()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return v0

    .line 58
    :pswitch_1
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u(I)V

    .line 62
    .line 63
    .line 64
    return v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
