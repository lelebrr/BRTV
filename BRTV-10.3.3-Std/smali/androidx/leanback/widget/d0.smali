.class public final Landroidx/leanback/widget/d0;
.super Landroidx/recyclerview/widget/k0;
.source "MyApplication"


# instance fields
.field public final a:La1/b;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(La1/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/leanback/widget/d0;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/leanback/widget/b0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/leanback/widget/b0;-><init>(Landroidx/leanback/widget/d0;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/leanback/widget/d0;->a:La1/b;

    .line 17
    .line 18
    if-ne p1, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v1, La1/b;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Landroidx/leanback/widget/e0;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iput-object p1, p0, Landroidx/leanback/widget/d0;->a:La1/b;

    .line 31
    .line 32
    iget-object p1, p1, La1/b;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Landroidx/leanback/widget/e0;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->hasStableIds()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v0, p0, Landroidx/leanback/widget/d0;->a:La1/b;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/leanback/widget/d0;->a:La1/b;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->setHasStableIds(Z)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/d0;->a:La1/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, La1/b;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/d0;->a:La1/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/d0;->a:La1/b;

    .line 2
    .line 3
    iget-object v1, v0, La1/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/leanback/widget/l0;

    .line 6
    .line 7
    iget-object v0, v0, La1/b;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v1, p1}, Landroidx/leanback/widget/l0;->a(Ljava/lang/Object;)Lqa/m;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Landroidx/leanback/widget/d0;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-gez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :cond_0
    return v1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/leanback/widget/c0;

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/d0;->a:La1/b;

    .line 3
    iget-object v0, v0, La1/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 5
    iput-object p2, p1, Landroidx/leanback/widget/c0;->c:Ljava/lang/Object;

    .line 6
    iget-object v0, p1, Landroidx/leanback/widget/c0;->a:Lqa/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Y7nbjKezLqVwog==\n"

    const-string v2, "FdC+++/cQsE=\n"

    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroidx/leanback/widget/c0;->b:Lia/b;

    invoke-static {p1, v1}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1, p2}, Lqa/m;->e(Lia/b;Ljava/lang/Object;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;ILjava/util/List;)V
    .locals 2

    .line 8
    check-cast p1, Landroidx/leanback/widget/c0;

    .line 9
    iget-object p3, p0, Landroidx/leanback/widget/d0;->a:La1/b;

    .line 10
    iget-object p3, p3, La1/b;->d:Ljava/lang/Object;

    check-cast p3, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 12
    iput-object p2, p1, Landroidx/leanback/widget/c0;->c:Ljava/lang/Object;

    .line 13
    iget-object p3, p1, Landroidx/leanback/widget/c0;->a:Lqa/m;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Y7nbjKezLqVwog==\n"

    const-string v1, "FdC+++/cQsE=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/leanback/widget/c0;->b:Lia/b;

    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p3, p1, p2}, Lqa/m;->e(Lia/b;Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/d0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lqa/m;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "jIt/Mx2C\n"

    .line 13
    .line 14
    const-string v1, "/OoNVnP2S30=\n"

    .line 15
    .line 16
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v1, p2, Lqa/m;->c:I

    .line 32
    .line 33
    packed-switch v1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const v1, 0x7f0e006a

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_0
    const v1, 0x7f0e0068

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    const v1, 0x7f0e0069

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_2
    const v1, 0x7f0e0067

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_3
    const v1, 0x7f0e0066

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-static {v0, v1, p1}, Lw0/c;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Lw0/e;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v0, Lia/b;

    .line 60
    .line 61
    invoke-static {p1}, Lj9/i;->c(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p1}, Lia/b;-><init>(Lw0/e;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Landroidx/leanback/widget/c0;

    .line 68
    .line 69
    iget-object v1, v0, Lia/b;->a:Landroid/view/View;

    .line 70
    .line 71
    invoke-direct {p1, p2, v1, v0}, Landroidx/leanback/widget/c0;-><init>(Lqa/m;Landroid/view/View;Lia/b;)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p1, Landroidx/leanback/widget/c0;->b:Lia/b;

    .line 75
    .line 76
    iget-object p2, p2, Lia/b;->a:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/p1;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/d0;->onViewRecycled(Landroidx/recyclerview/widget/p1;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/p1;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/leanback/widget/c0;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/leanback/widget/c0;->a:Lqa/m;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/p1;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/leanback/widget/c0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/c0;->a:Lqa/m;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Landroidx/leanback/widget/c0;->b:Lia/b;

    .line 9
    .line 10
    iget-object p1, p1, Lia/b;->a:Landroid/view/View;

    .line 11
    .line 12
    invoke-static {p1}, Lqa/m;->d(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/p1;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/leanback/widget/c0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/c0;->a:Lqa/m;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "4EO6rEBuQhPzWA==\n"

    .line 9
    .line 10
    const-string v2, "lirf2wgBLnc=\n"

    .line 11
    .line 12
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p1, Landroidx/leanback/widget/c0;->b:Lia/b;

    .line 17
    .line 18
    invoke-static {v2, v1}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v0, v0, Lqa/m;->c:I

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    const-string v0, "S6NK10MZpR5YuA==\n"

    .line 27
    .line 28
    const-string v1, "PcovoAt2yXo=\n"

    .line 29
    .line 30
    :goto_0
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v2, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :pswitch_0
    const-string v0, "JwZ7cH/f9VQ0HQ==\n"

    .line 39
    .line 40
    const-string v1, "UW8eBzewmTA=\n"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_1
    const-string v0, "4uUpebxrcUTx/g==\n"

    .line 44
    .line 45
    const-string v1, "lIxMDvQEHSA=\n"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_2
    const-string v0, "2Fv0CxBpqJjLQA==\n"

    .line 49
    .line 50
    const-string v1, "rjKRfFgGxPw=\n"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_3
    const-string v0, "BpHbw3/hHt0Vig==\n"

    .line 54
    .line 55
    const-string v1, "cPi+tDeOcrk=\n"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_4
    const-string v0, "sAS+4Xpht36jHw==\n"

    .line 59
    .line 60
    const-string v1, "xm3bljIO2xo=\n"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :goto_1
    const/4 v0, 0x0

    .line 64
    iput-object v0, p1, Landroidx/leanback/widget/c0;->c:Ljava/lang/Object;

    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
