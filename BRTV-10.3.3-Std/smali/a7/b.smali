.class public final La7/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ll6/q;ZLl6/h;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, La7/b;->a:I

    .line 2
    iput-object p1, p0, La7/b;->d:Ljava/lang/Object;

    iput-boolean p2, p0, La7/b;->b:Z

    iput-object p3, p0, La7/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLandroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La7/b;->a:I

    .line 1
    iput-boolean p1, p0, La7/b;->b:Z

    iput-object p2, p0, La7/b;->c:Ljava/lang/Object;

    iput-object p3, p0, La7/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, La7/b;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, La7/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Ll6/q;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p1, Ll6/q;->r:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p1, Ll6/q;->l:Landroid/animation/Animator;

    .line 15
    .line 16
    iget-object p1, p0, La7/b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ll6/h;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Ll6/h;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lo9/e;

    .line 25
    .line 26
    invoke-virtual {p1}, Lo9/e;->E()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    iget-boolean p1, p0, La7/b;->b:Z

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, La7/b;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Landroid/view/View;

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    const/high16 p1, 0x3f800000    # 1.0f

    .line 43
    .line 44
    iget-object v0, p0, La7/b;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget v0, p0, La7/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La7/b;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ll6/q;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iget-boolean v2, p0, La7/b;->b:Z

    .line 12
    .line 13
    iget-object v3, v0, Ll6/q;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 14
    .line 15
    invoke-virtual {v3, v1, v2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->a(IZ)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    iput v1, v0, Ll6/q;->r:I

    .line 20
    .line 21
    iput-object p1, v0, Ll6/q;->l:Landroid/animation/Animator;

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-boolean p1, p0, La7/b;->b:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, La7/b;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Landroid/view/View;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iget-object v0, p0, La7/b;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x4

    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
