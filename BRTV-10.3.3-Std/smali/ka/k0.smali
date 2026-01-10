.class public final Lka/k0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lfa/o0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lka/m0;


# direct methods
.method public synthetic constructor <init>(Lka/m0;II)V
    .locals 0

    .line 1
    iput p3, p0, Lka/k0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lka/k0;->c:Lka/m0;

    .line 4
    .line 5
    iput p2, p0, Lka/k0;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 4

    .line 1
    iget p2, p0, Lka/k0;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 7
    .line 8
    iget-object p2, p2, Lka/m0;->d0:Lfa/x0;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p2, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    sub-int/2addr p2, v0

    .line 20
    if-le p1, p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget p2, p0, Lka/k0;->b:I

    .line 24
    .line 25
    const/4 v1, -0x5

    .line 26
    if-eq p2, v1, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 29
    .line 30
    iget-object p2, p2, Lka/m0;->v0:Lta/a;

    .line 31
    .line 32
    iput-boolean v0, p2, Lta/a;->v:Z

    .line 33
    .line 34
    :cond_1
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 35
    .line 36
    iget-object p2, p2, Lka/m0;->d0:Lfa/x0;

    .line 37
    .line 38
    iget-object p2, p2, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 45
    .line 46
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 47
    .line 48
    iget-object p2, p2, Lka/m0;->y0:Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    const/4 v0, 0x4

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 55
    .line 56
    iget-object p2, p2, Lka/m0;->x0:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    sget-object p2, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 63
    .line 64
    iget-object v1, p0, Lka/k0;->c:Lka/m0;

    .line 65
    .line 66
    iget v2, v1, Lka/m0;->u0:I

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lka/m0;->W(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p2, p1, v1}, Lorg/bitspark/android/utils/o;->c(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lka/k0;->c:Lka/m0;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    sget-object p2, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 81
    .line 82
    iget-object v1, p1, Lka/m0;->x0:Landroid/widget/FrameLayout;

    .line 83
    .line 84
    sget-object v2, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    iget-object v3, p1, Lka/m0;->y0:Landroid/widget/RelativeLayout;

    .line 87
    .line 88
    invoke-virtual {p2, p1, v1, v2, v3}, Lorg/bitspark/android/utils/o;->a(Lka/b;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lka/i0;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroidx/fragment/app/s;->i()Landroidx/fragment/app/j0;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v1, Landroidx/fragment/app/a;

    .line 102
    .line 103
    invoke-direct {v1, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j0;)V

    .line 104
    .line 105
    .line 106
    const p2, 0x7f0b0487

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p2, p1}, Landroidx/fragment/app/a;->i(ILandroidx/fragment/app/s;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Landroidx/fragment/app/a;->c()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->e(Z)I

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 120
    .line 121
    iget-object p2, p2, Lka/m0;->y0:Landroid/widget/RelativeLayout;

    .line 122
    .line 123
    const/4 v0, 0x4

    .line 124
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 128
    .line 129
    iget-object p2, p2, Lka/m0;->x0:Landroid/widget/FrameLayout;

    .line 130
    .line 131
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget p2, p0, Lka/k0;->b:I

    .line 136
    .line 137
    const/4 v1, -0x5

    .line 138
    if-eq p2, v1, :cond_2

    .line 139
    .line 140
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 141
    .line 142
    iget-object p2, p2, Lka/m0;->v0:Lta/a;

    .line 143
    .line 144
    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p2, Lta/a;->v:Z

    .line 146
    .line 147
    :cond_2
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 148
    .line 149
    iget-object p2, p2, Lka/m0;->d0:Lfa/x0;

    .line 150
    .line 151
    iget-object p2, p2, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-ge p1, p2, :cond_3

    .line 158
    .line 159
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 160
    .line 161
    iget-object p2, p2, Lka/m0;->d0:Lfa/x0;

    .line 162
    .line 163
    iget-object p2, p2, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 170
    .line 171
    sget-object p2, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 172
    .line 173
    iget-object v1, p0, Lka/k0;->c:Lka/m0;

    .line 174
    .line 175
    iget v2, v1, Lka/m0;->u0:I

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Lka/m0;->W(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p2, p1, v1}, Lorg/bitspark/android/utils/o;->c(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lka/k0;->c:Lka/m0;

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    sget-object p2, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 190
    .line 191
    iget-object v1, p1, Lka/m0;->x0:Landroid/widget/FrameLayout;

    .line 192
    .line 193
    sget-object v2, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 194
    .line 195
    iget-object v3, p1, Lka/m0;->y0:Landroid/widget/RelativeLayout;

    .line 196
    .line 197
    invoke-virtual {p2, p1, v1, v2, v3}, Lorg/bitspark/android/utils/o;->a(Lka/b;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lka/i0;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iget-object p2, p0, Lka/k0;->c:Lka/m0;

    .line 202
    .line 203
    invoke-virtual {p2}, Landroidx/fragment/app/s;->i()Landroidx/fragment/app/j0;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    new-instance v1, Landroidx/fragment/app/a;

    .line 211
    .line 212
    invoke-direct {v1, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j0;)V

    .line 213
    .line 214
    .line 215
    const p2, 0x7f0b0487

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, p2, p1}, Landroidx/fragment/app/a;->i(ILandroidx/fragment/app/s;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Landroidx/fragment/app/a;->c()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->e(Z)I

    .line 225
    .line 226
    .line 227
    :cond_3
    return-void

    .line 228
    nop

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
