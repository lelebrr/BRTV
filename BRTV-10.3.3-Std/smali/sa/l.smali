.class public Lsa/l;
.super Landroidx/fragment/app/s;
.source "MyApplication"


# static fields
.field public static final X:Ljava/lang/String;


# instance fields
.field public T:Lfa/m0;

.field public U:Landroidx/recyclerview/widget/RecyclerView;

.field public V:Lta/a;

.field public W:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "7hvE9lHqWn3oE8fgTA==\n"

    .line 2
    .line 3
    const-string v1, "nX6lhT6EBRM=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lsa/l;->X:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/s;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    iput v0, p0, Lsa/l;->W:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    new-instance p3, La1/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p3, v0}, La1/b;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 8
    .line 9
    .line 10
    const-class v0, Lta/a;

    .line 11
    .line 12
    invoke-virtual {p3, v0}, La1/b;->n(Ljava/lang/Class;)Landroidx/lifecycle/v0;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    check-cast p3, Lta/a;

    .line 17
    .line 18
    iput-object p3, p0, Lsa/l;->V:Lta/a;

    .line 19
    .line 20
    invoke-virtual {p3}, Lta/a;->h()Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    const/4 v0, 0x1

    .line 25
    const/16 v1, 0x16

    .line 26
    .line 27
    const/16 v2, 0xf

    .line 28
    .line 29
    const v3, 0x7f0b0153

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    const p3, 0x7f0e012f

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    iput-object p2, p0, Lsa/l;->U:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    new-instance p3, Lsa/b;

    .line 51
    .line 52
    invoke-direct {p3, v4, v4, v2, v1}, Lsa/b;-><init>(IIII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lsa/l;->U:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lsa/l;->U:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    iget-object p3, p0, Lsa/l;->T:Lfa/m0;

    .line 66
    .line 67
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const p3, 0x7f0e012e

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Landroidx/leanback/widget/VerticalGridView;

    .line 83
    .line 84
    iput-object p2, p0, Lsa/l;->U:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    new-instance p3, Lsa/b;

    .line 87
    .line 88
    invoke-direct {p3, v4, v4, v2, v1}, Lsa/b;-><init>(IIII)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 95
    .line 96
    .line 97
    iget-object p3, p0, Lsa/l;->T:Lfa/m0;

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    iget-object p2, p0, Lsa/l;->U:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    .line 104
    new-instance p3, La3/c;

    .line 105
    .line 106
    const/16 v0, 0x1b

    .line 107
    .line 108
    invoke-direct {p3, p0, v0, p2}, La3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 112
    .line 113
    .line 114
    return-object p1
.end method
