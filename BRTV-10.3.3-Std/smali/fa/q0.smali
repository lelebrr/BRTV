.class public final Lfa/q0;
.super Landroidx/recyclerview/widget/k0;
.source "MyApplication"


# instance fields
.field public a:F


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 4

    .line 1
    check-cast p1, Lfa/p0;

    .line 2
    .line 3
    iget v0, p0, Lfa/q0;->a:F

    .line 4
    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    sub-float v1, v0, v1

    .line 8
    .line 9
    int-to-float p2, p2

    .line 10
    sub-float/2addr v1, p2

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    cmpl-float v1, v1, v2

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    iget-object p2, p1, Lfa/p0;->a:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lfa/p0;->a:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    cmpl-float p2, v0, p2

    .line 30
    .line 31
    if-lez p2, :cond_1

    .line 32
    .line 33
    iget-object p2, p1, Lfa/p0;->a:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lfa/p0;->a:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p2, p1, Lfa/p0;->a:Landroid/widget/ImageView;

    .line 45
    .line 46
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p1, Lfa/p0;->a:Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    const p2, 0x7f0e006e

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p2, p1, v0}, La/e;->i(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lfa/p0;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0b0204

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object p1, p2, Lfa/p0;->a:Landroid/widget/ImageView;

    .line 24
    .line 25
    return-object p2
.end method
