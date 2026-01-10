.class public final Lfa/h1;
.super Lfa/p;
.source "MyApplication"


# instance fields
.field public final g:Landroid/util/SparseArray;

.field public final h:[Ljava/lang/Integer;

.field public i:I

.field public final j:Landroidx/mediarouter/app/c;

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "CwLW0LgLgKsRXPPzqxSBvi8=\n"

    .line 2
    .line 3
    const-string v1, "XW2yl8pk9ds=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Landroidx/fragment/app/FragmentActivity;Landroidx/mediarouter/app/c;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lfa/p;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lfa/h1;->i:I

    .line 7
    .line 8
    iput v1, p0, Lfa/h1;->k:I

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    sget v2, Lorg/bitspark/android/R$drawable;->group_l1_bg:I

    .line 15
    .line 16
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Lfa/h1;->j:Landroidx/mediarouter/app/c;

    .line 20
    .line 21
    iput-object p1, p0, Lfa/h1;->g:Landroid/util/SparseArray;

    .line 22
    .line 23
    new-instance p2, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-ge v1, p3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    const-string p3, "tKkfMJSOWNOu9zoTh5FZxpA=\n"

    .line 46
    .line 47
    const-string v2, "4sZ7d+bhLaM=\n"

    .line 48
    .line 49
    invoke-static {p3, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    const-string p3, "oVnJXAM7FCX8Cw==\n"

    .line 53
    .line 54
    const-string v2, "xiumKXNwcVw=\n"

    .line 55
    .line 56
    invoke-static {p3, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 60
    .line 61
    .line 62
    add-int/2addr v1, v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    new-array p1, p1, [Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, [Ljava/lang/Integer;

    .line 75
    .line 76
    iput-object p1, p0, Lfa/h1;->h:[Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const-string p2, "oHPdtg7Xej66LfiVHch7K4Q=\n"

    .line 82
    .line 83
    const-string p3, "9hy58Xy4D04=\n"

    .line 84
    .line 85
    invoke-static {p2, p3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v0, "acuA7owwupNPy536hUH/\n"

    .line 95
    .line 96
    const-string v1, "Drnvm/x73+o=\n"

    .line 97
    .line 98
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    array-length p1, p1

    .line 106
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sget-boolean p3, Lorg/bitspark/android/utils/m;->b:Z

    .line 114
    .line 115
    invoke-static {p2, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lfa/h1;->j:Landroidx/mediarouter/app/c;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Landroid/os/Message;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 10
    .line 11
    .line 12
    iput v1, v2, Landroid/os/Message;->what:I

    .line 13
    .line 14
    new-instance v1, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "hpqu7jXxR+k=\n"

    .line 20
    .line 21
    const-string v4, "4ejBm0WiIp0=\n"

    .line 22
    .line 23
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lfa/h1;->g:Landroid/util/SparseArray;

    .line 28
    .line 29
    iget v5, p0, Lfa/h1;->k:I

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lorg/bitspark/android/beans/GroupL1;

    .line 36
    .line 37
    iget-object v4, v4, Lorg/bitspark/android/beans/GroupL1;->groups:Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lfa/p;->a:I

    .line 49
    .line 50
    iput v0, p0, Lfa/h1;->i:I

    .line 51
    .line 52
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/h1;->g:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 3

    .line 1
    check-cast p1, Lfa/g1;

    .line 2
    .line 3
    iget v0, p0, Lfa/p;->a:I

    .line 4
    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v1, p0, Lfa/p;->b:I

    .line 13
    .line 14
    :cond_1
    iget-object v1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lfa/h1;->h:[Ljava/lang/Integer;

    .line 20
    .line 21
    aget-object p2, v1, p2

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iput p2, p0, Lfa/h1;->k:I

    .line 28
    .line 29
    const-string p2, "tFCb9g9T0xLhb5XzRT8=\n"

    .line 30
    .line 31
    const-string v1, "0yL0g38f4l4=\n"

    .line 32
    .line 33
    invoke-static {p2, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lfa/h1;->g:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    const-string v1, "Eyx+4FcUShUJaw==\n"

    .line 42
    .line 43
    const-string v2, "M0sMjyJkA3E=\n"

    .line 44
    .line 45
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    const-string v1, "JuNbPiaQuGRr4RNx\n"

    .line 49
    .line 50
    const-string v2, "BoQpUVPg9gU=\n"

    .line 51
    .line 52
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    iget v1, p0, Lfa/h1;->k:I

    .line 56
    .line 57
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lorg/bitspark/android/beans/GroupL1;

    .line 62
    .line 63
    iget-object v1, v1, Lorg/bitspark/android/beans/GroupL1;->name:Ljava/lang/String;

    .line 64
    .line 65
    iget v1, p0, Lfa/h1;->k:I

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lorg/bitspark/android/beans/GroupL1;

    .line 72
    .line 73
    iget-object p2, p2, Lorg/bitspark/android/beans/GroupL1;->name:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v1, p1, Lfa/g1;->a:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget p2, p0, Lfa/h1;->k:I

    .line 81
    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    const/4 p2, -0x1

    .line 92
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    iget p2, p0, Lfa/p;->b:I

    .line 96
    .line 97
    if-ltz p2, :cond_2

    .line 98
    .line 99
    sget p2, Lorg/bitspark/android/R$drawable;->dialog_btn_bg_focused:I

    .line 100
    .line 101
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    sget p2, Lorg/bitspark/android/R$drawable;->dialog_btn_bg_last_focus:I

    .line 106
    .line 107
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    .line 109
    .line 110
    :goto_1
    iget p2, p0, Lfa/h1;->i:I

    .line 111
    .line 112
    iget v0, p0, Lfa/p;->a:I

    .line 113
    .line 114
    if-eq p2, v0, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0}, Lfa/h1;->b()V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    const p2, -0x70000001

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    sget p2, Lorg/bitspark/android/R$drawable;->group_l1_bg:I

    .line 127
    .line 128
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 132
    .line 133
    new-instance p2, Landroidx/appcompat/app/a;

    .line 134
    .line 135
    const/16 v0, 0xc

    .line 136
    .line 137
    invoke-direct {p2, v0, p0}, Landroidx/appcompat/app/a;-><init>(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    const p2, 0x7f0e012b

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
    new-instance p2, Lfa/g1;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0b01ba

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
    iput-object p1, p2, Lfa/g1;->a:Landroid/widget/TextView;

    .line 24
    .line 25
    return-object p2
.end method
