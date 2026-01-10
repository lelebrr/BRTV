.class public final Lfa/j1;
.super Lfa/p;
.source "MyApplication"


# static fields
.field public static final l:Ljava/lang/String;


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
    const-string v0, "IP3qHmlzTBI6o889emxNBwTE\n"

    .line 2
    .line 3
    const-string v1, "dpKOWRscOWI=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lfa/j1;->l:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Landroidx/fragment/app/FragmentActivity;Landroidx/mediarouter/app/c;)V
    .locals 4

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lfa/p;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lfa/j1;->i:I

    .line 8
    .line 9
    iput v0, p0, Lfa/j1;->k:I

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    sget v1, Lorg/bitspark/android/R$drawable;->group_l1_bg:I

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lfa/j1;->j:Landroidx/mediarouter/app/c;

    .line 21
    .line 22
    iput-object p1, p0, Lfa/j1;->g:Landroid/util/SparseArray;

    .line 23
    .line 24
    new-instance p2, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-ge v0, p3, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    const-string p3, "jKKaUdWjcEqW/L9yxrxxX6ib\n"

    .line 47
    .line 48
    const-string v1, "2s3+FqfMBTo=\n"

    .line 49
    .line 50
    invoke-static {p3, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "VhjQJk4FSc8LSg==\n"

    .line 60
    .line 61
    const-string v3, "MWq/Uz5OLLY=\n"

    .line 62
    .line 63
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 82
    .line 83
    invoke-static {p3, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    new-array p1, p1, [Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, [Ljava/lang/Integer;

    .line 100
    .line 101
    iput-object p1, p0, Lfa/j1;->h:[Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    const-string p2, "xA8eyoTvlibeUTvpl/CXM+A2\n"

    .line 107
    .line 108
    const-string p3, "kmB6jfaA41Y=\n"

    .line 109
    .line 110
    invoke-static {p2, p3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    new-instance p3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v0, "gam2hHfM2c+nqauQfr2c\n"

    .line 120
    .line 121
    const-string v1, "5tvZ8QeHvLY=\n"

    .line 122
    .line 123
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    array-length p1, p1

    .line 131
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    sget-boolean p3, Lorg/bitspark/android/utils/m;->b:Z

    .line 139
    .line 140
    invoke-static {p2, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lfa/j1;->j:Landroidx/mediarouter/app/c;

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
    const-string v3, "iWJePzm0W48=\n"

    .line 20
    .line 21
    const-string v4, "7hAxSknnPvs=\n"

    .line 22
    .line 23
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lfa/j1;->g:Landroid/util/SparseArray;

    .line 28
    .line 29
    iget v5, p0, Lfa/j1;->k:I

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
    iput v0, p0, Lfa/j1;->i:I

    .line 51
    .line 52
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/j1;->g:Landroid/util/SparseArray;

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
    .locals 4

    .line 1
    check-cast p1, Lfa/i1;

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
    iget-object v1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lfa/j1;->h:[Ljava/lang/Integer;

    .line 16
    .line 17
    aget-object p2, v1, p2

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iput p2, p0, Lfa/j1;->k:I

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "hGlGB3YljtfRVkgCPEk=\n"

    .line 31
    .line 32
    const-string v2, "4xspcgZpv5s=\n"

    .line 33
    .line 34
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lfa/j1;->g:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, "8lHGj+UlBhPoFg==\n"

    .line 51
    .line 52
    const-string v3, "0ja04JBVT3c=\n"

    .line 53
    .line 54
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v2, p0, Lfa/j1;->k:I

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, "IzYwN6azVoBuNHh4\n"

    .line 67
    .line 68
    const-string v3, "A1FCWNPDGOE=\n"

    .line 69
    .line 70
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v2, p0, Lfa/j1;->k:I

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lorg/bitspark/android/beans/GroupL1;

    .line 84
    .line 85
    iget-object v2, v2, Lorg/bitspark/android/beans/GroupL1;->name:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 95
    .line 96
    sget-object v2, Lfa/j1;->l:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v2, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget p2, p0, Lfa/j1;->k:I

    .line 102
    .line 103
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Lorg/bitspark/android/beans/GroupL1;

    .line 108
    .line 109
    iget-object p2, p2, Lorg/bitspark/android/beans/GroupL1;->name:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v1, p1, Lfa/i1;->a:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iget p2, p0, Lfa/j1;->k:I

    .line 117
    .line 118
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    if-eqz v0, :cond_2

    .line 126
    .line 127
    const/4 p2, -0x1

    .line 128
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    iget p2, p0, Lfa/p;->b:I

    .line 132
    .line 133
    if-ltz p2, :cond_1

    .line 134
    .line 135
    sget p2, Lorg/bitspark/android/R$drawable;->dialog_btn_bg_focused:I

    .line 136
    .line 137
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    sget p2, Lorg/bitspark/android/R$drawable;->dialog_btn_bg_last_focus:I

    .line 142
    .line 143
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    .line 145
    .line 146
    :goto_1
    iget p2, p0, Lfa/j1;->i:I

    .line 147
    .line 148
    iget v0, p0, Lfa/p;->a:I

    .line 149
    .line 150
    if-eq p2, v0, :cond_3

    .line 151
    .line 152
    invoke-virtual {p0}, Lfa/j1;->b()V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_2
    const p2, -0x70000001

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    .line 161
    .line 162
    sget p2, Lorg/bitspark/android/R$drawable;->group_l1_bg:I

    .line 163
    .line 164
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 165
    .line 166
    .line 167
    :cond_3
    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 168
    .line 169
    new-instance p2, Landroidx/appcompat/app/a;

    .line 170
    .line 171
    const/16 v0, 0xd

    .line 172
    .line 173
    invoke-direct {p2, v0, p0}, Landroidx/appcompat/app/a;-><init>(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 2

    .line 1
    new-instance p2, Lfa/i1;

    .line 2
    .line 3
    const v0, 0x7f0e012c

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, p1, v1}, La/e;->i(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0b01bb

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
    iput-object p1, p2, Lfa/i1;->a:Landroid/widget/TextView;

    .line 24
    .line 25
    return-object p2
.end method
