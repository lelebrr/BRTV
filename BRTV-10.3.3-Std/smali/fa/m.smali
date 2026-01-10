.class public final Lfa/m;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/k0;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/k0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lfa/m;->a:I

    iput-object p1, p0, Lfa/m;->b:Landroidx/recyclerview/widget/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfa/g0;I)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lfa/m;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/m;->b:Landroidx/recyclerview/widget/k0;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lfa/m;->b:Landroidx/recyclerview/widget/k0;

    .line 3
    .line 4
    iget v1, p0, Lfa/m;->a:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v0, Lfa/g0;

    .line 10
    .line 11
    iput-boolean p1, v0, Lfa/g0;->h:Z

    .line 12
    .line 13
    iget-object p1, v0, Lfa/g0;->f:Lka/n;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :pswitch_0
    check-cast v0, Lfa/u;

    .line 21
    .line 22
    iget-object v1, v0, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    iget v2, v0, Lfa/u;->b:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, v0, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    iget v2, v0, Lfa/u;->b:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    iget-object v1, v0, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    iget v0, v0, Lfa/u;->b:I

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    .line 55
    .line 56
    .line 57
    :cond_0
    sget-object v0, Lfa/u;->e:Ljava/lang/String;

    .line 58
    .line 59
    const-string v1, "igDfke2tagyKAN+d4aF3XtlxjcK30ztY1FbY\n"

    .line 60
    .line 61
    const-string v2, "tz3irNCQVzE=\n"

    .line 62
    .line 63
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return p1

    .line 73
    :pswitch_1
    check-cast v0, Lfa/o;

    .line 74
    .line 75
    iget-object v1, v0, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    iget v2, v0, Lfa/o;->b:I

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    iget-object v1, v0, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    iget v2, v0, Lfa/o;->b:I

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v1, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 94
    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    iget-object v1, v0, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    .line 99
    iget v0, v0, Lfa/o;->b:I

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v0, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    .line 108
    .line 109
    .line 110
    :cond_1
    sget-object v0, Lfa/o;->i:Ljava/lang/String;

    .line 111
    .line 112
    const-string v1, "qeoFHitNtYap6gUSJ0Go1PqbV01xM+TS97wC\n"

    .line 113
    .line 114
    const-string v2, "lNc4IxZwiLs=\n"

    .line 115
    .line 116
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 121
    .line 122
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return p1

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
