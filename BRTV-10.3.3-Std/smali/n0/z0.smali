.class public final synthetic Ln0/z0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:La0/b;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(La0/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln0/z0;->a:La0/b;

    .line 5
    .line 6
    iput-object p2, p0, Ln0/z0;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln0/z0;->a:La0/b;

    .line 2
    .line 3
    iget-object p1, p1, La0/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/appcompat/app/x0;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/appcompat/app/x0;->u:Landroidx/appcompat/widget/ActionBarContainer;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
