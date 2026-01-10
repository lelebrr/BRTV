.class public final Lka/d;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lfa/o0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lka/e;


# direct methods
.method public synthetic constructor <init>(Lka/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Lka/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lka/d;->b:Lka/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lka/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    sput v0, Lfa/u;->f:I

    .line 8
    .line 9
    iget-object v0, p0, Lka/d;->b:Lka/e;

    .line 10
    .line 11
    iget-object v1, v0, Lka/e;->b0:Lfa/t;

    .line 12
    .line 13
    iget v2, v1, Lfa/u;->b:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lka/e;->b0:Lfa/t;

    .line 19
    .line 20
    iget-object v2, v1, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iput v2, v1, Lfa/u;->c:I

    .line 27
    .line 28
    iget-object v1, v0, Lka/e;->b0:Lfa/t;

    .line 29
    .line 30
    iget-object v2, v1, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iput p2, v1, Lfa/u;->b:I

    .line 37
    .line 38
    iget-object p2, v0, Lka/e;->b0:Lfa/t;

    .line 39
    .line 40
    iget v1, p2, Lfa/u;->b:I

    .line 41
    .line 42
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 43
    .line 44
    .line 45
    iget-object p2, v0, Lka/e;->b0:Lfa/t;

    .line 46
    .line 47
    iget-object p2, p2, Lfa/t;->g:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lorg/bitspark/android/beans/HistoryBean;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lka/e;->R(Lorg/bitspark/android/beans/HistoryBean;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_0
    const/4 v0, 0x1

    .line 60
    sput v0, Lfa/u;->f:I

    .line 61
    .line 62
    iget-object v0, p0, Lka/d;->b:Lka/e;

    .line 63
    .line 64
    iget-object v1, v0, Lka/e;->Y:Lfa/t;

    .line 65
    .line 66
    iget v2, v1, Lfa/u;->b:I

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lka/e;->Y:Lfa/t;

    .line 72
    .line 73
    iget-object v2, v1, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iput v2, v1, Lfa/u;->c:I

    .line 80
    .line 81
    iget-object v1, v0, Lka/e;->Y:Lfa/t;

    .line 82
    .line 83
    iget-object v2, v1, Lfa/u;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    .line 85
    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    iput p2, v1, Lfa/u;->b:I

    .line 90
    .line 91
    iget-object p2, v0, Lka/e;->Y:Lfa/t;

    .line 92
    .line 93
    iget v1, p2, Lfa/u;->b:I

    .line 94
    .line 95
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 96
    .line 97
    .line 98
    iget-object p2, v0, Lka/e;->Y:Lfa/t;

    .line 99
    .line 100
    iget-object p2, p2, Lfa/t;->g:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lorg/bitspark/android/beans/HistoryBean;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lka/e;->R(Lorg/bitspark/android/beans/HistoryBean;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
