.class public final Lfa/k0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lfa/l0;

.field public final synthetic c:Lfa/m0;


# direct methods
.method public constructor <init>(Lfa/m0;ILfa/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/k0;->c:Lfa/m0;

    .line 5
    .line 6
    iput p2, p0, Lfa/k0;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Lfa/k0;->b:Lfa/l0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lfa/k0;->a:I

    .line 5
    .line 6
    iget-object v3, p0, Lfa/k0;->c:Lfa/m0;

    .line 7
    .line 8
    if-ne p2, v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne v0, v4, :cond_3

    .line 16
    .line 17
    iget-object p1, v3, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget p2, v3, Lfa/m0;->c:I

    .line 24
    .line 25
    rem-int p3, p1, p2

    .line 26
    .line 27
    rem-int v0, v2, p2

    .line 28
    .line 29
    div-int v3, p1, p2

    .line 30
    .line 31
    div-int/2addr v2, p2

    .line 32
    add-int/2addr v2, v4

    .line 33
    if-ne v3, v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    :goto_0
    if-eqz p3, :cond_4

    .line 38
    .line 39
    if-eqz v4, :cond_4

    .line 40
    .line 41
    if-lt v0, p3, :cond_4

    .line 42
    .line 43
    iget-object p2, p0, Lfa/k0;->b:Lfa/l0;

    .line 44
    .line 45
    iget-object p2, p2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :goto_1
    if-eqz p2, :cond_2

    .line 52
    .line 53
    instance-of p3, p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    if-eqz p3, :cond_1

    .line 56
    .line 57
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 p2, 0x0

    .line 66
    :goto_2
    if-eqz p2, :cond_4

    .line 67
    .line 68
    invoke-static {p2, p1}, Lo9/d;->z(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    iget-object v0, v3, Lfa/m0;->b:Landroid/view/View$OnKeyListener;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v3, Lfa/m0;->b:Landroid/view/View$OnKeyListener;

    .line 84
    .line 85
    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    return p1

    .line 90
    :cond_4
    :goto_3
    return v1
.end method
