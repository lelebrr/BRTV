.class public final Landroidx/leanback/widget/j1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ln0/s;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/j1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/j1;->b:I

    .line 7
    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/leanback/widget/j1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lp/k;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lp/k;->c:Lq/b;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget v0, v0, Lp/k;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v1

    .line 22
    iget v1, p0, Landroidx/leanback/widget/j1;->b:I

    .line 23
    .line 24
    if-eq v0, v1, :cond_6

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit v1

    .line 29
    throw v0

    .line 30
    :cond_0
    :goto_0
    new-instance v0, Lp/k;

    .line 31
    .line 32
    iget v1, p0, Landroidx/leanback/widget/j1;->b:I

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lp/k;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/leanback/widget/j1;->c:Ljava/lang/Object;

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    const/4 v1, 0x3

    .line 47
    if-eq v0, v1, :cond_4

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Landroidx/leanback/widget/j1;->c:Ljava/lang/Object;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/j1;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lp/k;

    .line 60
    .line 61
    const v1, 0x7fffffff

    .line 62
    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Lp/k;->c()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eq v0, v1, :cond_6

    .line 71
    .line 72
    :cond_5
    new-instance v0, Lp/k;

    .line 73
    .line 74
    invoke-direct {v0, v1}, Lp/k;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Landroidx/leanback/widget/j1;->c:Ljava/lang/Object;

    .line 78
    .line 79
    :cond_6
    :goto_2
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Ln0/r1;)Ln0/r1;
    .locals 4

    .line 1
    iget-object p1, p2, Ln0/r1;->a:Ln0/o1;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-virtual {p1, v0}, Ln0/o1;->g(I)Lf0/c;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget p1, p1, Lf0/c;->b:I

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/leanback/widget/j1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/view/View;

    .line 13
    .line 14
    iget v1, p0, Landroidx/leanback/widget/j1;->a:I

    .line 15
    .line 16
    if-ltz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    add-int/2addr v1, p1

    .line 23
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget v2, p0, Landroidx/leanback/widget/j1;->b:I

    .line 37
    .line 38
    add-int/2addr v2, p1

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    .line 49
    .line 50
    return-object p2
.end method
