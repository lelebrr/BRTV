.class public final Lfa/o1;
.super Lfa/c;
.source "MyApplication"


# instance fields
.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    iput p1, p0, Lfa/o1;->i:I

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfa/c;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lfa/o1;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfa/c;->h:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lfa/c;->h:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 8

    .line 1
    iget v0, p0, Lfa/o1;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lfa/p1;

    .line 7
    .line 8
    iget-object v0, p0, Lfa/c;->h:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/bitspark/android/beans/Menu;

    .line 15
    .line 16
    iget-object v1, p1, Lfa/p1;->a:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/bitspark/android/beans/Menu;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p1, Lfa/p1;->b:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/bitspark/android/beans/Menu;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lfa/c;->e:I

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    if-ne v0, p2, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p1, Lfa/p1;->d:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    iget-object v3, p1, Lfa/p1;->c:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    const/16 v4, 0x8

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_1
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 69
    .line 70
    new-instance v1, Lfa/j0;

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    invoke-direct {v1, p0, p1, p2, v2}, Lfa/j0;-><init>(Landroidx/recyclerview/widget/k0;Landroidx/recyclerview/widget/p1;II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lfa/c;->g:Lfa/o0;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 84
    .line 85
    new-instance v1, Lfa/q;

    .line 86
    .line 87
    const/4 v2, 0x6

    .line 88
    invoke-direct {v1, p0, p2, v2}, Lfa/q;-><init>(Landroidx/recyclerview/widget/k0;II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object p2, p0, Lfa/c;->d:Landroid/view/View$OnKeyListener;

    .line 95
    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 99
    .line 100
    new-instance p2, Lfa/z0;

    .line 101
    .line 102
    const/4 v0, 0x3

    .line 103
    invoke-direct {p2, v0, p0}, Lfa/z0;-><init>(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    return-void

    .line 110
    :pswitch_0
    check-cast p1, Lfa/n1;

    .line 111
    .line 112
    iget v0, p0, Lfa/c;->e:I

    .line 113
    .line 114
    if-ne v0, p2, :cond_4

    .line 115
    .line 116
    iget-object v1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 117
    .line 118
    iput-object v1, p0, Lfa/c;->f:Landroid/view/View;

    .line 119
    .line 120
    :cond_4
    iget-object v1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 121
    .line 122
    if-ne v0, p2, :cond_5

    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    goto :goto_2

    .line 126
    :cond_5
    const/4 v0, 0x0

    .line 127
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lfa/c;->h:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    move-object v5, v0

    .line 137
    check-cast v5, Lorg/bitspark/android/beans/Menu;

    .line 138
    .line 139
    invoke-virtual {v5}, Lorg/bitspark/android/beans/Menu;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v1, p1, Lfa/n1;->a:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lfa/c;->c:Lea/k;

    .line 149
    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 153
    .line 154
    new-instance v7, Lfa/k1;

    .line 155
    .line 156
    const/4 v6, 0x1

    .line 157
    move-object v1, v7

    .line 158
    move-object v2, p0

    .line 159
    move v3, p2

    .line 160
    move-object v4, p1

    .line 161
    invoke-direct/range {v1 .. v6}, Lfa/k1;-><init>(Lfa/c;ILandroidx/recyclerview/widget/p1;Lorg/bitspark/android/beans/Menu;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    .line 166
    .line 167
    :cond_6
    iget-object v0, p0, Lfa/c;->d:Landroid/view/View$OnKeyListener;

    .line 168
    .line 169
    if-eqz v0, :cond_7

    .line 170
    .line 171
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 172
    .line 173
    new-instance v1, Lfa/z0;

    .line 174
    .line 175
    const/4 v2, 0x2

    .line 176
    invoke-direct {v1, v2, p0}, Lfa/z0;-><init>(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    iget-object v0, p0, Lfa/c;->g:Lfa/o0;

    .line 183
    .line 184
    if-eqz v0, :cond_8

    .line 185
    .line 186
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 187
    .line 188
    new-instance v0, Lfa/q;

    .line 189
    .line 190
    const/4 v1, 0x5

    .line 191
    invoke-direct {v0, p0, p2, v1}, Lfa/q;-><init>(Landroidx/recyclerview/widget/k0;II)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    :cond_8
    return-void

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    iget p2, p0, Lfa/o1;->i:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0e006d

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, p2, p1, v0}, La/e;->i(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lfa/p1;

    .line 15
    .line 16
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0b0449

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object v0, p2, Lfa/p1;->a:Landroid/widget/TextView;

    .line 29
    .line 30
    const v0, 0x7f0b044f

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p2, Lfa/p1;->b:Landroid/widget/TextView;

    .line 40
    .line 41
    const v0, 0x7f0b03ac

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/ImageView;

    .line 49
    .line 50
    const v0, 0x7f0b03ad

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    iput-object v0, p2, Lfa/p1;->c:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    const v0, 0x7f0b0457

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/LinearLayout;

    .line 69
    .line 70
    iput-object p1, p2, Lfa/p1;->d:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    return-object p2

    .line 73
    :pswitch_0
    const p2, 0x7f0e0071

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-static {p1, p2, p1, v0}, La/e;->i(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance p2, Lfa/n1;

    .line 82
    .line 83
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    const v0, 0x7f0b0219

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object p1, p2, Lfa/n1;->a:Landroid/widget/TextView;

    .line 96
    .line 97
    return-object p2

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
