.class public final Lp3/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lp3/c;
.implements Lp3/d;


# virtual methods
.method public a(Ljava/lang/Object;Lo3/a;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    iget-object p2, p2, Lo3/a;->a:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    aput-object v2, v4, v1

    .line 24
    .line 25
    aput-object p1, v4, v0

    .line 26
    .line 27
    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 31
    .line 32
    .line 33
    const/16 p1, 0x12c

    .line 34
    .line 35
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    return v0
.end method

.method public g(I)Lp3/c;
    .locals 0

    .line 1
    sget-object p1, Lp3/b;->a:Lp3/b;

    .line 2
    .line 3
    return-object p1
.end method
