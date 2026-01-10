.class public final Lfa/c1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lfa/e1;

.field public final synthetic c:Lfa/f1;


# direct methods
.method public constructor <init>(Lfa/f1;ILfa/e1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/c1;->c:Lfa/f1;

    .line 5
    .line 6
    iput p2, p0, Lfa/c1;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Lfa/c1;->b:Lfa/e1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "9T7WIg8oc1TiNdMVCSJ0\n"

    .line 3
    .line 4
    const-string v2, "o1GyZX1HBiQ=\n"

    .line 5
    .line 6
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "+eWdOJDaAw==\n"

    .line 16
    .line 17
    const-string v4, "uon0W/vrI6s=\n"

    .line 18
    .line 19
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lfa/c1;->c:Lfa/f1;

    .line 27
    .line 28
    iget-object v4, v3, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, "7w==\n"

    .line 38
    .line 39
    const-string v5, "zsANABph/z4=\n"

    .line 40
    .line 41
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v1, v3, Lfa/p;->a:I

    .line 58
    .line 59
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v3, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iput v1, v3, Lfa/p;->b:I

    .line 69
    .line 70
    iget-object v1, v3, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, v3, Lfa/p;->a:I

    .line 77
    .line 78
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v3, Lfa/f1;->h:Landroid/util/SparseArray;

    .line 82
    .line 83
    iget v1, p0, Lfa/c1;->a:I

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lorg/bitspark/android/beans/Group;

    .line 90
    .line 91
    iget-boolean p1, p1, Lorg/bitspark/android/beans/Group;->restrictedAccess:Z

    .line 92
    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    sget-boolean p1, Lorg/bitspark/android/Spark;->c2:Z

    .line 96
    .line 97
    iget-object v2, p0, Lfa/c1;->b:Lfa/e1;

    .line 98
    .line 99
    if-eqz p1, :cond_0

    .line 100
    .line 101
    iget p1, v3, Lfa/p;->a:I

    .line 102
    .line 103
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, v2, Lfa/e1;->a:Landroid/widget/ImageView;

    .line 107
    .line 108
    const v2, 0x7f0f001f

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    .line 113
    .line 114
    sget-object p1, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 115
    .line 116
    const/4 v2, 0x3

    .line 117
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    .line 119
    .line 120
    sget-object p1, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 121
    .line 122
    invoke-static {p1, v2, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    sget-object v0, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Ll6/h;

    .line 133
    .line 134
    iget-object v4, v3, Lfa/f1;->g:Landroidx/fragment/app/FragmentActivity;

    .line 135
    .line 136
    invoke-direct {p1, v4}, Ll6/h;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    new-instance v4, Lfa/d1;

    .line 140
    .line 141
    invoke-direct {v4, v3, v2, v1, v0}, Lfa/d1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 142
    .line 143
    .line 144
    iput-object v4, p1, Ll6/h;->c:Ljava/lang/Object;

    .line 145
    .line 146
    invoke-virtual {p1}, Ll6/h;->b()Lsa/e;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 151
    .line 152
    .line 153
    :cond_1
    :goto_0
    return-void
.end method
