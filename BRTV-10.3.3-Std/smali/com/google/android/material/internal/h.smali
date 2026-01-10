.class public final Lcom/google/android/material/internal/h;
.super Lk/l;
.source "MyApplication"


# virtual methods
.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lk/l;->a(IIILjava/lang/CharSequence;)Lk/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/android/material/internal/s;

    .line 6
    .line 7
    iget-object p3, p0, Lk/l;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p2, p3, p0, p1}, Lk/e0;-><init>(Landroid/content/Context;Lk/l;Lk/n;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p1, Lk/n;->o:Lk/e0;

    .line 13
    .line 14
    iget-object p1, p1, Lk/n;->e:Ljava/lang/CharSequence;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lk/e0;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 17
    .line 18
    .line 19
    return-object p2
.end method
