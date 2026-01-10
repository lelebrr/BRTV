.class public final Lfa/m1;
.super Lfa/c;
.source "MyApplication"


# instance fields
.field public i:I


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lfa/c;->e:I

    .line 3
    .line 4
    invoke-super {p0, p1}, Lfa/c;->a(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 8

    .line 1
    check-cast p1, Lfa/l1;

    .line 2
    .line 3
    iget-object v0, p0, Lfa/c;->h:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v4, v0

    .line 10
    check-cast v4, Lorg/bitspark/android/beans/Menu;

    .line 11
    .line 12
    iget-object v0, p1, Lfa/l1;->a:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v4}, Lorg/bitspark/android/beans/Menu;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 22
    .line 23
    new-instance v1, Lfa/z0;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-direct {v1, v2, p0}, Lfa/z0;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 33
    .line 34
    new-instance v1, Lfa/j0;

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    invoke-direct {v1, p0, p1, p2, v2}, Lfa/j0;-><init>(Landroidx/recyclerview/widget/k0;Landroidx/recyclerview/widget/p1;II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lfa/c;->c:Lea/k;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v6, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 48
    .line 49
    new-instance v7, Lfa/k1;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    move-object v0, v7

    .line 53
    move-object v1, p0

    .line 54
    move v2, p2

    .line 55
    move-object v3, p1

    .line 56
    invoke-direct/range {v0 .. v5}, Lfa/k1;-><init>(Lfa/c;ILandroidx/recyclerview/widget/p1;Lorg/bitspark/android/beans/Menu;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 63
    .line 64
    new-instance p2, Lfa/g;

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    invoke-direct {p2, v0}, Lfa/g;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    const p2, 0x7f0e0070

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
    new-instance p2, Lfa/l1;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0b021a

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object p1, p2, Lfa/l1;->a:Landroid/widget/TextView;

    .line 24
    .line 25
    return-object p2
.end method
