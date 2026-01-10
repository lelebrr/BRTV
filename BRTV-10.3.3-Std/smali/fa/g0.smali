.class public final Lfa/g0;
.super Lfa/i0;
.source "MyApplication"


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field public c:Ljava/util/LinkedHashMap;

.field public d:Ljava/util/ArrayList;

.field public e:Landroid/view/View;

.field public f:Lka/n;

.field public g:Z

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "HztEfjcAWNY2I3N4PQc=\n"

    .line 2
    .line 3
    const-string v1, "UkIDDFh1KJc=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lfa/g0;->i:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "2o/jBz/EKpndj/MCM804wIk=\n"

    .line 7
    .line 8
    const-string v2, "qeqXVFqoT/o=\n"

    .line 9
    .line 10
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "Pibrb5U=\n"

    .line 21
    .line 22
    const-string v2, "AxvWUqhPRHo=\n"

    .line 23
    .line 24
    invoke-static {v1, v2, v0, p1}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 29
    .line 30
    sget-object v0, Lfa/g0;->i:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lfa/g0;->e:Landroid/view/View;

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/g0;->c:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 6

    .line 1
    check-cast p1, Lfa/f0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getAbsoluteAdapterPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Lfa/f0;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 14
    .line 15
    new-instance v3, Lfa/f;

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    invoke-direct {v3, v0, v4, p0}, Lfa/f;-><init>(IILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 25
    .line 26
    new-instance v3, Lfa/h;

    .line 27
    .line 28
    invoke-direct {v3, p2, v4, p0}, Lfa/h;-><init>(IILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 35
    .line 36
    new-instance v3, Lfa/q;

    .line 37
    .line 38
    invoke-direct {v3, p0, p2, v4}, Lfa/q;-><init>(Landroidx/recyclerview/widget/k0;II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 45
    .line 46
    new-instance v3, Lfa/m;

    .line 47
    .line 48
    invoke-direct {v3, p0, v0}, Lfa/m;-><init>(Lfa/g0;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lfa/g0;->d:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-le v3, p2, :cond_6

    .line 61
    .line 62
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-object v3, p0, Lfa/g0;->c:Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Lorg/bitspark/android/beans/Group;

    .line 79
    .line 80
    iget-object v4, v4, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v5, p1, Lfa/f0;->a:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lorg/bitspark/android/beans/Group;

    .line 92
    .line 93
    iget-boolean v4, v4, Lorg/bitspark/android/beans/Group;->restrictedAccess:Z

    .line 94
    .line 95
    if-eqz v4, :cond_1

    .line 96
    .line 97
    sget-boolean v3, Lorg/bitspark/android/Spark;->c2:Z

    .line 98
    .line 99
    if-eqz v3, :cond_0

    .line 100
    .line 101
    const v3, 0x7f0f001e

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_0
    const v3, 0x7f0f001f

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lorg/bitspark/android/beans/Group;

    .line 120
    .line 121
    iget v4, v4, Lorg/bitspark/android/beans/Group;->type:I

    .line 122
    .line 123
    const/4 v5, -0x5

    .line 124
    if-ne v4, v5, :cond_2

    .line 125
    .line 126
    const v3, 0x7f0f001d

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Lorg/bitspark/android/beans/Group;

    .line 138
    .line 139
    iget v4, v4, Lorg/bitspark/android/beans/Group;->type:I

    .line 140
    .line 141
    const/4 v5, -0x4

    .line 142
    if-eq v4, v5, :cond_5

    .line 143
    .line 144
    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Lorg/bitspark/android/beans/Group;

    .line 149
    .line 150
    iget v4, v4, Lorg/bitspark/android/beans/Group;->type:I

    .line 151
    .line 152
    const/16 v5, 0x68

    .line 153
    .line 154
    if-ne v4, v5, :cond_3

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Lorg/bitspark/android/beans/Group;

    .line 162
    .line 163
    iget v3, v3, Lorg/bitspark/android/beans/Group;->type:I

    .line 164
    .line 165
    const/4 v4, -0x3

    .line 166
    if-ne v3, v4, :cond_4

    .line 167
    .line 168
    const v3, 0x7f0f001c

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    const/16 v3, 0x8

    .line 176
    .line 177
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_5
    :goto_0
    const v3, 0x7f0f0020

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    .line 186
    .line 187
    :goto_1
    iget-object v1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 188
    .line 189
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    iget-object p2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 193
    .line 194
    new-instance v1, Lfa/e0;

    .line 195
    .line 196
    invoke-direct {v1, p0, p1, v2, v0}, Lfa/e0;-><init>(Lfa/g0;Lfa/f0;II)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 200
    .line 201
    .line 202
    :cond_6
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    const p2, 0x7f0e0054

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
    new-instance p2, Lfa/f0;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0b01bd

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p2, Lfa/f0;->a:Landroid/widget/TextView;

    .line 24
    .line 25
    const v0, 0x7f0b01c3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object p1, p2, Lfa/f0;->b:Landroid/widget/ImageView;

    .line 35
    .line 36
    return-object p2
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/p1;)V
    .locals 1

    .line 1
    check-cast p1, Lfa/f0;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->onViewRecycled(Landroidx/recyclerview/widget/p1;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p1, p1, Lfa/f0;->b:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/o;->k(Landroid/widget/ImageView;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
