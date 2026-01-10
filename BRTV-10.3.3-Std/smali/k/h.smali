.class public final Lk/h;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lk/y;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Lk/l;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:Lk/x;

.field public f:Lk/g;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/h;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lk/h;->b:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Lk/l;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/h;->e:Lk/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lk/x;->b(Lk/l;Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final d(Lk/n;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final e(Lk/e0;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lk/l;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    new-instance v0, Lk/m;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lk/m;->a:Lk/e0;

    .line 15
    .line 16
    new-instance v1, Landroidx/appcompat/app/i;

    .line 17
    .line 18
    iget-object v2, p1, Lk/l;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroidx/appcompat/app/i;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lk/h;

    .line 24
    .line 25
    iget-object v4, v1, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/app/e;

    .line 26
    .line 27
    iget-object v5, v4, Landroidx/appcompat/app/e;->a:Landroid/view/ContextThemeWrapper;

    .line 28
    .line 29
    invoke-direct {v3, v5}, Lk/h;-><init>(Landroid/content/ContextWrapper;)V

    .line 30
    .line 31
    .line 32
    iput-object v3, v0, Lk/m;->c:Lk/h;

    .line 33
    .line 34
    iput-object v0, v3, Lk/h;->e:Lk/x;

    .line 35
    .line 36
    invoke-virtual {p1, v3, v2}, Lk/l;->b(Lk/y;Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lk/m;->c:Lk/h;

    .line 40
    .line 41
    iget-object v3, v2, Lk/h;->f:Lk/g;

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    new-instance v3, Lk/g;

    .line 46
    .line 47
    invoke-direct {v3, v2}, Lk/g;-><init>(Lk/h;)V

    .line 48
    .line 49
    .line 50
    iput-object v3, v2, Lk/h;->f:Lk/g;

    .line 51
    .line 52
    :cond_1
    iget-object v2, v2, Lk/h;->f:Lk/g;

    .line 53
    .line 54
    iput-object v2, v4, Landroidx/appcompat/app/e;->g:Ljava/lang/Object;

    .line 55
    .line 56
    iput-object v0, v4, Landroidx/appcompat/app/e;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 57
    .line 58
    iget-object v2, p1, Lk/l;->o:Landroid/view/View;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iput-object v2, v4, Landroidx/appcompat/app/e;->e:Landroid/view/View;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v2, p1, Lk/l;->n:Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    iput-object v2, v4, Landroidx/appcompat/app/e;->c:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    iget-object v2, p1, Lk/l;->m:Ljava/lang/CharSequence;

    .line 70
    .line 71
    iput-object v2, v4, Landroidx/appcompat/app/e;->d:Ljava/lang/CharSequence;

    .line 72
    .line 73
    :goto_0
    iput-object v0, v4, Landroidx/appcompat/app/e;->f:Lk/m;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/appcompat/app/i;->a()Landroidx/appcompat/app/j;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, v0, Lk/m;->b:Landroidx/appcompat/app/j;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lk/m;->b:Landroidx/appcompat/app/j;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const/16 v2, 0x3eb

    .line 95
    .line 96
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 97
    .line 98
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 99
    .line 100
    const/high16 v3, 0x20000

    .line 101
    .line 102
    or-int/2addr v2, v3

    .line 103
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 104
    .line 105
    iget-object v0, v0, Lk/m;->b:Landroidx/appcompat/app/j;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lk/h;->e:Lk/x;

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    invoke-interface {v0, p1}, Lk/x;->f(Lk/l;)Z

    .line 115
    .line 116
    .line 117
    :cond_3
    const/4 p1, 0x1

    .line 118
    return p1
.end method

.method public final f(Lk/n;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final g(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v0, "android:menu:list"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lk/h;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final getId()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final i(Lk/x;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lk/h;->f:Lk/g;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lk/g;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final k(Landroid/content/Context;Lk/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/h;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lk/h;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Lk/h;->b:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lk/h;->b:Landroid/view/LayoutInflater;

    .line 16
    .line 17
    :cond_0
    iput-object p2, p0, Lk/h;->c:Lk/l;

    .line 18
    .line 19
    iget-object p1, p0, Lk/h;->f:Lk/g;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lk/g;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final l()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final m()Landroid/os/Parcelable;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/h;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lk/h;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string v2, "android:menu:list"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lk/h;->c:Lk/l;

    .line 2
    .line 3
    iget-object p2, p0, Lk/h;->f:Lk/g;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Lk/g;->b(I)Lk/n;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p0, p3}, Lk/l;->q(Landroid/view/MenuItem;Lk/y;I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
