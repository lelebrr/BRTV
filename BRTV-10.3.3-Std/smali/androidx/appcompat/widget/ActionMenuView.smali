.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "MyApplication"

# interfaces
.implements Lk/k;
.implements Lk/a0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    }
.end annotation


# instance fields
.field public A:Landroidx/appcompat/widget/n;

.field public p:Lk/l;

.field public q:Landroid/content/Context;

.field public r:I

.field public s:Z

.field public t:Landroidx/appcompat/widget/k;

.field public u:Landroidx/appcompat/app/r0;

.field public v:Lk/j;

.field public w:Z

.field public x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    const/high16 v1, 0x42600000    # 56.0f

    .line 19
    .line 20
    mul-float v1, v1, v0

    .line 21
    .line 22
    float-to-int v1, v1

    .line 23
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->y:I

    .line 24
    .line 25
    const/high16 v1, 0x40800000    # 4.0f

    .line 26
    .line 27
    mul-float v0, v0, v1

    .line 28
    .line 29
    float-to-int v0, v0

    .line 30
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->z:I

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroid/content/Context;

    .line 33
    .line 34
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->r:I

    .line 35
    .line 36
    return-void
.end method

.method public static l()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    .line 9
    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 13
    .line 14
    return-object v0
.end method

.method public static m(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    instance-of v0, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 8
    .line 9
    check-cast p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    .line 13
    .line 14
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    .line 15
    .line 16
    iput-boolean p0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget p0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 25
    .line 26
    if-gtz p0, :cond_1

    .line 27
    .line 28
    const/16 p0, 0x10

    .line 29
    .line 30
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 31
    .line 32
    :cond_1
    return-object v0

    .line 33
    :cond_2
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->l()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method


# virtual methods
.method public final a(Lk/n;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->p:Lk/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lk/l;->q(Landroid/view/MenuItem;Lk/y;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method public final d(Lk/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->p:Lk/l;

    .line 2
    .line 3
    return-void
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->l()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->m(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->p:Lk/l;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lk/l;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lk/l;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->p:Lk/l;

    .line 15
    .line 16
    new-instance v2, La0/b;

    .line 17
    .line 18
    const/4 v3, 0x5

    .line 19
    invoke-direct {v2, v3, p0}, La0/b;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object v2, v1, Lk/l;->e:Lk/j;

    .line 23
    .line 24
    new-instance v1, Landroidx/appcompat/widget/k;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/k;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, v1, Landroidx/appcompat/widget/k;->m:Z

    .line 33
    .line 34
    iput-boolean v0, v1, Landroidx/appcompat/widget/k;->n:Z

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/app/r0;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/m;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    :goto_0
    iput-object v0, v1, Lk/c;->e:Lk/x;

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->p:Lk/l;

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lk/l;->b(Lk/y;Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/k;

    .line 56
    .line 57
    iput-object p0, v0, Lk/c;->h:Lk/a0;

    .line 58
    .line 59
    iget-object v0, v0, Lk/c;->c:Lk/l;

    .line 60
    .line 61
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->p:Lk/l;

    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->p:Lk/l;

    .line 64
    .line 65
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/k;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/appcompat/widget/k;->j:Landroidx/appcompat/widget/i;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v1, v0, Landroidx/appcompat/widget/k;->l:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/appcompat/widget/k;->k:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final bridge synthetic h()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->l()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final i(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final bridge synthetic j(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->m(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final n(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge p1, v3, :cond_1

    .line 20
    .line 21
    instance-of v3, v1, Landroidx/appcompat/widget/l;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    check-cast v1, Landroidx/appcompat/widget/l;

    .line 26
    .line 27
    invoke-interface {v1}, Landroidx/appcompat/widget/l;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_1
    if-lez p1, :cond_2

    .line 32
    .line 33
    instance-of p1, v2, Landroidx/appcompat/widget/l;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    check-cast v2, Landroidx/appcompat/widget/l;

    .line 38
    .line 39
    invoke-interface {v2}, Landroidx/appcompat/widget/l;->b()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    or-int/2addr v0, p1

    .line 44
    :cond_2
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/k;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/k;->j(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/k;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/widget/k;->h()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/k;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/appcompat/widget/k;->c()Z

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/k;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/widget/k;->n()Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/k;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/k;->c()Z

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/k;->u:Landroidx/appcompat/widget/e;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lk/w;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, Lk/w;->i:Lk/t;

    .line 22
    .line 23
    invoke-interface {v0}, Lk/c0;->dismiss()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int v2, p5, p3

    .line 16
    .line 17
    div-int/lit8 v2, v2, 0x2

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerWidth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sub-int v4, p4, p2

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    sub-int v5, v4, v5

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    sub-int/2addr v5, v6

    .line 36
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/c4;->a(Landroid/view/View;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    :goto_0
    const/4 v11, 0x1

    .line 44
    const/16 v12, 0x8

    .line 45
    .line 46
    if-ge v8, v1, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    if-ne v14, v12, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    check-cast v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 64
    .line 65
    iget-boolean v14, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    .line 66
    .line 67
    if-eqz v14, :cond_4

    .line 68
    .line 69
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->n(I)Z

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    if-eqz v14, :cond_2

    .line 78
    .line 79
    add-int/2addr v9, v3

    .line 80
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    if-eqz v6, :cond_3

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 91
    .line 92
    add-int/2addr v15, v12

    .line 93
    add-int v12, v15, v9

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 101
    .line 102
    .line 103
    move-result v16

    .line 104
    sub-int v15, v15, v16

    .line 105
    .line 106
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 107
    .line 108
    sub-int v12, v15, v12

    .line 109
    .line 110
    sub-int v15, v12, v9

    .line 111
    .line 112
    :goto_1
    div-int/lit8 v16, v14, 0x2

    .line 113
    .line 114
    sub-int v7, v2, v16

    .line 115
    .line 116
    add-int/2addr v14, v7

    .line 117
    invoke-virtual {v13, v15, v7, v12, v14}, Landroid/view/View;->layout(IIII)V

    .line 118
    .line 119
    .line 120
    sub-int/2addr v5, v9

    .line 121
    const/4 v9, 0x1

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    iget v11, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 128
    .line 129
    add-int/2addr v7, v11

    .line 130
    iget v11, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 131
    .line 132
    add-int/2addr v7, v11

    .line 133
    sub-int/2addr v5, v7

    .line 134
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->n(I)Z

    .line 135
    .line 136
    .line 137
    add-int/lit8 v10, v10, 0x1

    .line 138
    .line 139
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    if-ne v1, v11, :cond_6

    .line 143
    .line 144
    if-nez v9, :cond_6

    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    div-int/lit8 v4, v4, 0x2

    .line 160
    .line 161
    div-int/lit8 v6, v3, 0x2

    .line 162
    .line 163
    sub-int/2addr v4, v6

    .line 164
    div-int/lit8 v6, v5, 0x2

    .line 165
    .line 166
    sub-int/2addr v2, v6

    .line 167
    add-int/2addr v3, v4

    .line 168
    add-int/2addr v5, v2

    .line 169
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_6
    xor-int/lit8 v3, v9, 0x1

    .line 174
    .line 175
    sub-int/2addr v10, v3

    .line 176
    if-lez v10, :cond_7

    .line 177
    .line 178
    div-int v3, v5, v10

    .line 179
    .line 180
    :goto_3
    const/4 v4, 0x0

    .line 181
    goto :goto_4

    .line 182
    :cond_7
    const/4 v3, 0x0

    .line 183
    goto :goto_3

    .line 184
    :goto_4
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v6, :cond_a

    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    sub-int/2addr v5, v6

    .line 199
    const/4 v7, 0x0

    .line 200
    :goto_5
    if-ge v7, v1, :cond_d

    .line 201
    .line 202
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 211
    .line 212
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-eq v8, v12, :cond_9

    .line 217
    .line 218
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    .line 219
    .line 220
    if-eqz v8, :cond_8

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_8
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 224
    .line 225
    sub-int/2addr v5, v8

    .line 226
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    div-int/lit8 v10, v9, 0x2

    .line 235
    .line 236
    sub-int v10, v2, v10

    .line 237
    .line 238
    sub-int v11, v5, v8

    .line 239
    .line 240
    add-int/2addr v9, v10

    .line 241
    invoke-virtual {v4, v11, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 242
    .line 243
    .line 244
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 245
    .line 246
    add-int/2addr v8, v4

    .line 247
    add-int/2addr v8, v3

    .line 248
    sub-int/2addr v5, v8

    .line 249
    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    const/4 v7, 0x0

    .line 257
    :goto_7
    if-ge v7, v1, :cond_d

    .line 258
    .line 259
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 268
    .line 269
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    if-eq v8, v12, :cond_c

    .line 274
    .line 275
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    .line 276
    .line 277
    if-eqz v8, :cond_b

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_b
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 281
    .line 282
    add-int/2addr v5, v8

    .line 283
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    div-int/lit8 v10, v9, 0x2

    .line 292
    .line 293
    sub-int v10, v2, v10

    .line 294
    .line 295
    add-int v11, v5, v8

    .line 296
    .line 297
    add-int/2addr v9, v10

    .line 298
    invoke-virtual {v4, v5, v10, v11, v9}, Landroid/view/View;->layout(IIII)V

    .line 299
    .line 300
    .line 301
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 302
    .line 303
    add-int/2addr v8, v4

    .line 304
    add-int/2addr v8, v3

    .line 305
    add-int/2addr v8, v5

    .line 306
    move v5, v8

    .line 307
    :cond_c
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_d
    return-void
.end method

.method public final onMeasure(II)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Z

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const/high16 v5, 0x40000000    # 2.0f

    .line 12
    .line 13
    if-ne v2, v5, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Z

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView;->x:I

    .line 23
    .line 24
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->p:Lk/l;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->x:I

    .line 37
    .line 38
    if-eq v1, v6, :cond_2

    .line 39
    .line 40
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView;->x:I

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Lk/l;->p(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Z

    .line 50
    .line 51
    if-eqz v2, :cond_2f

    .line 52
    .line 53
    if-lez v1, :cond_2f

    .line 54
    .line 55
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    add-int/2addr v8, v7

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    add-int/2addr v9, v7

    .line 85
    const/4 v7, -0x2

    .line 86
    move/from16 v10, p2

    .line 87
    .line 88
    invoke-static {v10, v9, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    sub-int/2addr v2, v8

    .line 93
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->y:I

    .line 94
    .line 95
    div-int v10, v2, v8

    .line 96
    .line 97
    rem-int v11, v2, v8

    .line 98
    .line 99
    if-nez v10, :cond_3

    .line 100
    .line 101
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_1f

    .line 105
    .line 106
    :cond_3
    div-int/2addr v11, v10

    .line 107
    add-int/2addr v11, v8

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    const/4 v4, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v14, 0x0

    .line 116
    const/4 v15, 0x0

    .line 117
    const-wide/16 v16, 0x0

    .line 118
    .line 119
    const/16 v18, 0x0

    .line 120
    .line 121
    :goto_1
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuView;->z:I

    .line 122
    .line 123
    if-ge v14, v8, :cond_12

    .line 124
    .line 125
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    move/from16 v19, v6

    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    move/from16 v20, v2

    .line 136
    .line 137
    const/16 v2, 0x8

    .line 138
    .line 139
    if-ne v6, v2, :cond_4

    .line 140
    .line 141
    move/from16 v23, v1

    .line 142
    .line 143
    move/from16 v21, v9

    .line 144
    .line 145
    goto/16 :goto_8

    .line 146
    .line 147
    :cond_4
    instance-of v2, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 148
    .line 149
    add-int/lit8 v12, v12, 0x1

    .line 150
    .line 151
    const/4 v6, 0x0

    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    invoke-virtual {v3, v5, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 155
    .line 156
    .line 157
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 162
    .line 163
    iput-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->f:Z

    .line 164
    .line 165
    iput v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->c:I

    .line 166
    .line 167
    iput v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    .line 168
    .line 169
    iput-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->d:Z

    .line 170
    .line 171
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 172
    .line 173
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 174
    .line 175
    if-eqz v2, :cond_6

    .line 176
    .line 177
    move-object v6, v3

    .line 178
    check-cast v6, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 179
    .line 180
    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-nez v6, :cond_6

    .line 189
    .line 190
    const/4 v6, 0x1

    .line 191
    goto :goto_2

    .line 192
    :cond_6
    const/4 v6, 0x0

    .line 193
    :goto_2
    iput-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->e:Z

    .line 194
    .line 195
    iget-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    .line 196
    .line 197
    if-eqz v6, :cond_7

    .line 198
    .line 199
    const/4 v6, 0x1

    .line 200
    goto :goto_3

    .line 201
    :cond_7
    move v6, v10

    .line 202
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 203
    .line 204
    .line 205
    move-result-object v21

    .line 206
    move/from16 v22, v12

    .line 207
    .line 208
    move-object/from16 v12, v21

    .line 209
    .line 210
    check-cast v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 211
    .line 212
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 213
    .line 214
    .line 215
    move-result v21

    .line 216
    move/from16 v23, v1

    .line 217
    .line 218
    sub-int v1, v21, v9

    .line 219
    .line 220
    move/from16 v21, v9

    .line 221
    .line 222
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v2, :cond_8

    .line 231
    .line 232
    move-object v2, v3

    .line 233
    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_8
    const/4 v2, 0x0

    .line 237
    :goto_4
    if-eqz v2, :cond_9

    .line 238
    .line 239
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-nez v2, :cond_9

    .line 248
    .line 249
    const/4 v2, 0x1

    .line 250
    goto :goto_5

    .line 251
    :cond_9
    const/4 v2, 0x0

    .line 252
    :goto_5
    if-lez v6, :cond_c

    .line 253
    .line 254
    if-eqz v2, :cond_a

    .line 255
    .line 256
    const/4 v9, 0x2

    .line 257
    if-lt v6, v9, :cond_c

    .line 258
    .line 259
    :cond_a
    mul-int v6, v6, v11

    .line 260
    .line 261
    const/high16 v9, -0x80000000

    .line 262
    .line 263
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    invoke-virtual {v3, v6, v1}, Landroid/view/View;->measure(II)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    div-int v9, v6, v11

    .line 275
    .line 276
    rem-int/2addr v6, v11

    .line 277
    if-eqz v6, :cond_b

    .line 278
    .line 279
    add-int/lit8 v9, v9, 0x1

    .line 280
    .line 281
    :cond_b
    if-eqz v2, :cond_d

    .line 282
    .line 283
    const/4 v6, 0x2

    .line 284
    if-ge v9, v6, :cond_d

    .line 285
    .line 286
    const/4 v9, 0x2

    .line 287
    goto :goto_6

    .line 288
    :cond_c
    const/4 v9, 0x0

    .line 289
    :cond_d
    :goto_6
    iget-boolean v6, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    .line 290
    .line 291
    if-nez v6, :cond_e

    .line 292
    .line 293
    if-eqz v2, :cond_e

    .line 294
    .line 295
    const/4 v2, 0x1

    .line 296
    goto :goto_7

    .line 297
    :cond_e
    const/4 v2, 0x0

    .line 298
    :goto_7
    iput-boolean v2, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->d:Z

    .line 299
    .line 300
    iput v9, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    .line 301
    .line 302
    mul-int v2, v9, v11

    .line 303
    .line 304
    const/high16 v6, 0x40000000    # 2.0f

    .line 305
    .line 306
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    invoke-virtual {v3, v2, v1}, Landroid/view/View;->measure(II)V

    .line 311
    .line 312
    .line 313
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    .line 314
    .line 315
    .line 316
    move-result v13

    .line 317
    iget-boolean v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->d:Z

    .line 318
    .line 319
    if-eqz v1, :cond_f

    .line 320
    .line 321
    add-int/lit8 v18, v18, 0x1

    .line 322
    .line 323
    :cond_f
    iget-boolean v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    .line 324
    .line 325
    if-eqz v1, :cond_10

    .line 326
    .line 327
    const/4 v15, 0x1

    .line 328
    :cond_10
    sub-int/2addr v10, v9

    .line 329
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    const/4 v1, 0x1

    .line 338
    if-ne v9, v1, :cond_11

    .line 339
    .line 340
    shl-int v2, v1, v14

    .line 341
    .line 342
    int-to-long v1, v2

    .line 343
    or-long v1, v16, v1

    .line 344
    .line 345
    move-wide/from16 v16, v1

    .line 346
    .line 347
    :cond_11
    move/from16 v12, v22

    .line 348
    .line 349
    :goto_8
    add-int/lit8 v14, v14, 0x1

    .line 350
    .line 351
    move/from16 v6, v19

    .line 352
    .line 353
    move/from16 v2, v20

    .line 354
    .line 355
    move/from16 v9, v21

    .line 356
    .line 357
    move/from16 v1, v23

    .line 358
    .line 359
    const/4 v3, 0x0

    .line 360
    goto/16 :goto_1

    .line 361
    .line 362
    :cond_12
    move/from16 v23, v1

    .line 363
    .line 364
    move/from16 v20, v2

    .line 365
    .line 366
    move/from16 v19, v6

    .line 367
    .line 368
    if-eqz v15, :cond_13

    .line 369
    .line 370
    const/4 v1, 0x2

    .line 371
    if-ne v12, v1, :cond_13

    .line 372
    .line 373
    const/4 v1, 0x1

    .line 374
    goto :goto_9

    .line 375
    :cond_13
    const/4 v1, 0x0

    .line 376
    :goto_9
    const/4 v2, 0x0

    .line 377
    :goto_a
    const-wide/16 v21, 0x1

    .line 378
    .line 379
    if-lez v18, :cond_1e

    .line 380
    .line 381
    if-lez v10, :cond_1e

    .line 382
    .line 383
    const v3, 0x7fffffff

    .line 384
    .line 385
    .line 386
    const/4 v6, 0x0

    .line 387
    const/4 v9, 0x0

    .line 388
    const-wide/16 v24, 0x0

    .line 389
    .line 390
    :goto_b
    if-ge v9, v8, :cond_17

    .line 391
    .line 392
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v14

    .line 396
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 397
    .line 398
    .line 399
    move-result-object v14

    .line 400
    check-cast v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 401
    .line 402
    move/from16 v26, v2

    .line 403
    .line 404
    iget-boolean v2, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->d:Z

    .line 405
    .line 406
    if-nez v2, :cond_14

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_14
    iget v2, v14, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    .line 410
    .line 411
    if-ge v2, v3, :cond_15

    .line 412
    .line 413
    shl-long v24, v21, v9

    .line 414
    .line 415
    move v3, v2

    .line 416
    const/4 v6, 0x1

    .line 417
    goto :goto_c

    .line 418
    :cond_15
    if-ne v2, v3, :cond_16

    .line 419
    .line 420
    shl-long v27, v21, v9

    .line 421
    .line 422
    or-long v24, v24, v27

    .line 423
    .line 424
    add-int/lit8 v2, v6, 0x1

    .line 425
    .line 426
    move v6, v2

    .line 427
    :cond_16
    :goto_c
    add-int/lit8 v9, v9, 0x1

    .line 428
    .line 429
    move/from16 v2, v26

    .line 430
    .line 431
    goto :goto_b

    .line 432
    :cond_17
    move/from16 v26, v2

    .line 433
    .line 434
    or-long v16, v16, v24

    .line 435
    .line 436
    if-le v6, v10, :cond_18

    .line 437
    .line 438
    :goto_d
    move/from16 v27, v4

    .line 439
    .line 440
    move v14, v7

    .line 441
    move/from16 v28, v8

    .line 442
    .line 443
    goto :goto_11

    .line 444
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 445
    .line 446
    const/4 v2, 0x0

    .line 447
    :goto_e
    if-ge v2, v8, :cond_1d

    .line 448
    .line 449
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 458
    .line 459
    move/from16 v27, v4

    .line 460
    .line 461
    const/4 v14, 0x1

    .line 462
    shl-int v4, v14, v2

    .line 463
    .line 464
    move v14, v7

    .line 465
    move/from16 v28, v8

    .line 466
    .line 467
    int-to-long v7, v4

    .line 468
    and-long v21, v24, v7

    .line 469
    .line 470
    const-wide/16 v29, 0x0

    .line 471
    .line 472
    cmp-long v4, v21, v29

    .line 473
    .line 474
    if-nez v4, :cond_19

    .line 475
    .line 476
    iget v4, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    .line 477
    .line 478
    if-ne v4, v3, :cond_1c

    .line 479
    .line 480
    or-long v16, v16, v7

    .line 481
    .line 482
    goto :goto_10

    .line 483
    :cond_19
    if-eqz v1, :cond_1a

    .line 484
    .line 485
    iget-boolean v4, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->e:Z

    .line 486
    .line 487
    if-eqz v4, :cond_1a

    .line 488
    .line 489
    const/4 v4, 0x1

    .line 490
    if-ne v10, v4, :cond_1b

    .line 491
    .line 492
    add-int v7, v5, v11

    .line 493
    .line 494
    const/4 v8, 0x0

    .line 495
    invoke-virtual {v6, v7, v8, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 496
    .line 497
    .line 498
    goto :goto_f

    .line 499
    :cond_1a
    const/4 v4, 0x1

    .line 500
    :cond_1b
    :goto_f
    iget v6, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    .line 501
    .line 502
    add-int/2addr v6, v4

    .line 503
    iput v6, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    .line 504
    .line 505
    iput-boolean v4, v9, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->f:Z

    .line 506
    .line 507
    add-int/lit8 v10, v10, -0x1

    .line 508
    .line 509
    :cond_1c
    :goto_10
    add-int/lit8 v2, v2, 0x1

    .line 510
    .line 511
    move v7, v14

    .line 512
    move/from16 v4, v27

    .line 513
    .line 514
    move/from16 v8, v28

    .line 515
    .line 516
    goto :goto_e

    .line 517
    :cond_1d
    const/4 v2, 0x1

    .line 518
    goto/16 :goto_a

    .line 519
    .line 520
    :cond_1e
    move/from16 v26, v2

    .line 521
    .line 522
    goto :goto_d

    .line 523
    :goto_11
    const/4 v1, 0x1

    .line 524
    if-nez v15, :cond_1f

    .line 525
    .line 526
    if-ne v12, v1, :cond_1f

    .line 527
    .line 528
    const/4 v2, 0x1

    .line 529
    goto :goto_12

    .line 530
    :cond_1f
    const/4 v2, 0x0

    .line 531
    :goto_12
    if-lez v10, :cond_20

    .line 532
    .line 533
    const-wide/16 v3, 0x0

    .line 534
    .line 535
    cmp-long v5, v16, v3

    .line 536
    .line 537
    if-eqz v5, :cond_20

    .line 538
    .line 539
    sub-int/2addr v12, v1

    .line 540
    if-lt v10, v12, :cond_21

    .line 541
    .line 542
    if-nez v2, :cond_21

    .line 543
    .line 544
    if-le v13, v1, :cond_20

    .line 545
    .line 546
    goto :goto_13

    .line 547
    :cond_20
    move/from16 v3, v28

    .line 548
    .line 549
    goto/16 :goto_19

    .line 550
    .line 551
    :cond_21
    :goto_13
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->bitCount(J)I

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    int-to-float v1, v1

    .line 556
    if-nez v2, :cond_23

    .line 557
    .line 558
    and-long v2, v16, v21

    .line 559
    .line 560
    const/high16 v4, 0x3f000000    # 0.5f

    .line 561
    .line 562
    const-wide/16 v5, 0x0

    .line 563
    .line 564
    cmp-long v7, v2, v5

    .line 565
    .line 566
    if-eqz v7, :cond_22

    .line 567
    .line 568
    const/4 v2, 0x0

    .line 569
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 578
    .line 579
    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->e:Z

    .line 580
    .line 581
    if-nez v2, :cond_22

    .line 582
    .line 583
    sub-float/2addr v1, v4

    .line 584
    :cond_22
    add-int/lit8 v8, v28, -0x1

    .line 585
    .line 586
    const/4 v2, 0x1

    .line 587
    shl-int v3, v2, v8

    .line 588
    .line 589
    int-to-long v2, v3

    .line 590
    and-long v2, v16, v2

    .line 591
    .line 592
    const-wide/16 v5, 0x0

    .line 593
    .line 594
    cmp-long v7, v2, v5

    .line 595
    .line 596
    if-eqz v7, :cond_23

    .line 597
    .line 598
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 607
    .line 608
    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->e:Z

    .line 609
    .line 610
    if-nez v2, :cond_23

    .line 611
    .line 612
    sub-float/2addr v1, v4

    .line 613
    :cond_23
    const/4 v2, 0x0

    .line 614
    cmpl-float v2, v1, v2

    .line 615
    .line 616
    if-lez v2, :cond_24

    .line 617
    .line 618
    mul-int v10, v10, v11

    .line 619
    .line 620
    int-to-float v2, v10

    .line 621
    div-float/2addr v2, v1

    .line 622
    float-to-int v6, v2

    .line 623
    goto :goto_14

    .line 624
    :cond_24
    const/4 v6, 0x0

    .line 625
    :goto_14
    move/from16 v1, v26

    .line 626
    .line 627
    move/from16 v3, v28

    .line 628
    .line 629
    const/4 v2, 0x0

    .line 630
    :goto_15
    if-ge v2, v3, :cond_2b

    .line 631
    .line 632
    const/4 v4, 0x1

    .line 633
    shl-int v5, v4, v2

    .line 634
    .line 635
    int-to-long v4, v5

    .line 636
    and-long v4, v16, v4

    .line 637
    .line 638
    const-wide/16 v7, 0x0

    .line 639
    .line 640
    cmp-long v9, v4, v7

    .line 641
    .line 642
    if-nez v9, :cond_25

    .line 643
    .line 644
    const/4 v4, 0x2

    .line 645
    goto :goto_17

    .line 646
    :cond_25
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 655
    .line 656
    instance-of v4, v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 657
    .line 658
    if-eqz v4, :cond_27

    .line 659
    .line 660
    iput v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->c:I

    .line 661
    .line 662
    const/4 v1, 0x1

    .line 663
    iput-boolean v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->f:Z

    .line 664
    .line 665
    if-nez v2, :cond_26

    .line 666
    .line 667
    iget-boolean v1, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->e:Z

    .line 668
    .line 669
    if-nez v1, :cond_26

    .line 670
    .line 671
    neg-int v1, v6

    .line 672
    const/4 v4, 0x2

    .line 673
    div-int/2addr v1, v4

    .line 674
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 675
    .line 676
    goto :goto_16

    .line 677
    :cond_26
    const/4 v4, 0x2

    .line 678
    :goto_16
    const/4 v1, 0x1

    .line 679
    :goto_17
    const/4 v9, 0x1

    .line 680
    goto :goto_18

    .line 681
    :cond_27
    const/4 v4, 0x2

    .line 682
    iget-boolean v9, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->a:Z

    .line 683
    .line 684
    if-eqz v9, :cond_28

    .line 685
    .line 686
    iput v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->c:I

    .line 687
    .line 688
    const/4 v9, 0x1

    .line 689
    iput-boolean v9, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->f:Z

    .line 690
    .line 691
    neg-int v1, v6

    .line 692
    div-int/2addr v1, v4

    .line 693
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 694
    .line 695
    const/4 v1, 0x1

    .line 696
    goto :goto_18

    .line 697
    :cond_28
    const/4 v9, 0x1

    .line 698
    if-eqz v2, :cond_29

    .line 699
    .line 700
    div-int/lit8 v10, v6, 0x2

    .line 701
    .line 702
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 703
    .line 704
    :cond_29
    add-int/lit8 v10, v3, -0x1

    .line 705
    .line 706
    if-eq v2, v10, :cond_2a

    .line 707
    .line 708
    div-int/lit8 v10, v6, 0x2

    .line 709
    .line 710
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 711
    .line 712
    :cond_2a
    :goto_18
    add-int/lit8 v2, v2, 0x1

    .line 713
    .line 714
    goto :goto_15

    .line 715
    :cond_2b
    move v2, v1

    .line 716
    goto :goto_1a

    .line 717
    :goto_19
    move/from16 v2, v26

    .line 718
    .line 719
    :goto_1a
    if-eqz v2, :cond_2d

    .line 720
    .line 721
    const/4 v1, 0x0

    .line 722
    :goto_1b
    if-ge v1, v3, :cond_2d

    .line 723
    .line 724
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 733
    .line 734
    iget-boolean v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->f:Z

    .line 735
    .line 736
    if-nez v5, :cond_2c

    .line 737
    .line 738
    move v6, v14

    .line 739
    const/high16 v4, 0x40000000    # 2.0f

    .line 740
    .line 741
    goto :goto_1c

    .line 742
    :cond_2c
    iget v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->b:I

    .line 743
    .line 744
    mul-int v5, v5, v11

    .line 745
    .line 746
    iget v4, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->c:I

    .line 747
    .line 748
    add-int/2addr v5, v4

    .line 749
    const/high16 v4, 0x40000000    # 2.0f

    .line 750
    .line 751
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 752
    .line 753
    .line 754
    move-result v5

    .line 755
    move v6, v14

    .line 756
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 757
    .line 758
    .line 759
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    .line 760
    .line 761
    move v14, v6

    .line 762
    goto :goto_1b

    .line 763
    :cond_2d
    const/high16 v4, 0x40000000    # 2.0f

    .line 764
    .line 765
    move/from16 v1, v23

    .line 766
    .line 767
    if-eq v1, v4, :cond_2e

    .line 768
    .line 769
    move/from16 v2, v20

    .line 770
    .line 771
    move/from16 v6, v27

    .line 772
    .line 773
    goto :goto_1d

    .line 774
    :cond_2e
    move/from16 v6, v19

    .line 775
    .line 776
    move/from16 v2, v20

    .line 777
    .line 778
    :goto_1d
    invoke-virtual {v0, v2, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 779
    .line 780
    .line 781
    goto :goto_1f

    .line 782
    :cond_2f
    move/from16 v10, p2

    .line 783
    .line 784
    const/4 v6, 0x0

    .line 785
    :goto_1e
    if-ge v6, v1, :cond_30

    .line 786
    .line 787
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 796
    .line 797
    const/4 v3, 0x0

    .line 798
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 799
    .line 800
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 801
    .line 802
    add-int/lit8 v6, v6, 0x1

    .line 803
    .line 804
    goto :goto_1e

    .line 805
    :cond_30
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 806
    .line 807
    .line 808
    :goto_1f
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/k;

    .line 2
    .line 3
    iput-boolean p1, v0, Landroidx/appcompat/widget/k;->r:Z

    .line 4
    .line 5
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->A:Landroidx/appcompat/widget/n;

    .line 2
    .line 3
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/k;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/appcompat/widget/k;->j:Landroidx/appcompat/widget/i;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Landroidx/appcompat/widget/k;->l:Z

    .line 16
    .line 17
    iput-object p1, v0, Landroidx/appcompat/widget/k;->k:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->r:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->r:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroid/content/Context;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->q:Landroid/content/Context;

    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/k;

    .line 2
    .line 3
    iput-object p0, p1, Lk/c;->h:Lk/a0;

    .line 4
    .line 5
    iget-object p1, p1, Lk/c;->c:Lk/l;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->p:Lk/l;

    .line 8
    .line 9
    return-void
.end method
