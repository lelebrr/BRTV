.class public final Lea/b0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/bitspark/android/Spark;


# direct methods
.method public synthetic constructor <init>(Lorg/bitspark/android/Spark;I)V
    .locals 0

    .line 1
    iput p2, p0, Lea/b0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lea/b0;->b:Lorg/bitspark/android/Spark;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget v0, p0, Lea/b0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lea/b0;->b:Lorg/bitspark/android/Spark;

    .line 7
    .line 8
    invoke-virtual {p1, p2, p3}, Lorg/bitspark/android/Spark;->K0(ILandroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_0
    iget-object p1, p0, Lea/b0;->b:Lorg/bitspark/android/Spark;

    .line 14
    .line 15
    invoke-virtual {p1, p2, p3}, Lorg/bitspark/android/Spark;->K0(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :pswitch_1
    iget-object p1, p0, Lea/b0;->b:Lorg/bitspark/android/Spark;

    .line 21
    .line 22
    invoke-virtual {p1, p2, p3}, Lorg/bitspark/android/Spark;->K0(ILandroid/view/KeyEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :pswitch_2
    const/16 p1, 0x14

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    const/4 v1, 0x0

    .line 31
    iget-object v2, p0, Lea/b0;->b:Lorg/bitspark/android/Spark;

    .line 32
    .line 33
    if-ne p2, p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget-object p1, v2, Lorg/bitspark/android/Spark;->A0:Landroidx/leanback/widget/HorizontalGridView;

    .line 42
    .line 43
    iget-object p2, v2, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 44
    .line 45
    invoke-virtual {p2, v1}, Lta/a;->d(I)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-static {p1, p2}, Lo9/d;->z(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v2, p2, p3}, Lorg/bitspark/android/Spark;->K0(ILandroid/view/KeyEvent;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    :cond_2
    :goto_0
    return v0

    .line 62
    :pswitch_3
    const/16 p1, 0x14

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    iget-object v1, p0, Lea/b0;->b:Lorg/bitspark/android/Spark;

    .line 66
    .line 67
    if-ne p2, p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_6

    .line 74
    .line 75
    iget-object p1, v1, Lorg/bitspark/android/Spark;->z0:Landroidx/leanback/widget/HorizontalGridView;

    .line 76
    .line 77
    iget-object p2, v1, Lorg/bitspark/android/Spark;->u0:Lfa/m1;

    .line 78
    .line 79
    iget p2, p2, Lfa/c;->e:I

    .line 80
    .line 81
    invoke-static {p1, p2}, Lo9/d;->z(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/16 p1, 0x13

    .line 86
    .line 87
    if-ne p2, p1, :cond_4

    .line 88
    .line 89
    iget-object p1, v1, Lorg/bitspark/android/Spark;->B0:Landroidx/leanback/widget/HorizontalGridView;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_6

    .line 96
    .line 97
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_6

    .line 102
    .line 103
    iget-object p1, v1, Lorg/bitspark/android/Spark;->B0:Landroidx/leanback/widget/HorizontalGridView;

    .line 104
    .line 105
    iget-object p2, v1, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 106
    .line 107
    iget p2, p2, Lta/a;->s:I

    .line 108
    .line 109
    invoke-static {p1, p2}, Lo9/d;->z(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {v1, p2, p3}, Lorg/bitspark/android/Spark;->K0(ILandroid/view/KeyEvent;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    const/4 v0, 0x0

    .line 121
    :cond_6
    :goto_1
    return v0

    .line 122
    :pswitch_4
    const/16 v0, 0x13

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    iget-object v2, p0, Lea/b0;->b:Lorg/bitspark/android/Spark;

    .line 126
    .line 127
    const/4 v3, 0x1

    .line 128
    if-ne v0, p2, :cond_b

    .line 129
    .line 130
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_a

    .line 135
    .line 136
    iget-object p1, v2, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 137
    .line 138
    iget p2, p1, Lta/a;->x:I

    .line 139
    .line 140
    iget-object p3, p1, Lta/a;->D:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    if-ge p2, p3, :cond_9

    .line 147
    .line 148
    iget-object p2, p1, Lta/a;->E:Ljava/util/ArrayList;

    .line 149
    .line 150
    iget p3, p1, Lta/a;->x:I

    .line 151
    .line 152
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, Lorg/bitspark/android/beans/VodMenu;

    .line 157
    .line 158
    invoke-virtual {p2}, Lorg/bitspark/android/beans/VodMenu;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    if-eqz p2, :cond_9

    .line 163
    .line 164
    sget-object p3, Lea/e;->c:Lea/e;

    .line 165
    .line 166
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    if-eqz p3, :cond_7

    .line 175
    .line 176
    iget v1, p1, Lta/a;->u:I

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_7
    sget-object p3, Lea/e;->b:Lea/e;

    .line 180
    .line 181
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    if-eqz p3, :cond_8

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Lta/a;->d(I)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    goto :goto_2

    .line 196
    :cond_8
    sget-object p3, Lea/e;->e:Lea/e;

    .line 197
    .line 198
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-eqz p2, :cond_9

    .line 207
    .line 208
    iget v1, p1, Lta/a;->w:I

    .line 209
    .line 210
    :cond_9
    :goto_2
    iget-object p1, v2, Lorg/bitspark/android/Spark;->A0:Landroidx/leanback/widget/HorizontalGridView;

    .line 211
    .line 212
    invoke-static {p1, v1}, Lo9/d;->z(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 213
    .line 214
    .line 215
    :cond_a
    :goto_3
    const/4 v1, 0x1

    .line 216
    goto :goto_4

    .line 217
    :cond_b
    invoke-virtual {v2, p2, p3}, Lorg/bitspark/android/Spark;->K0(ILandroid/view/KeyEvent;)Z

    .line 218
    .line 219
    .line 220
    move-result p3

    .line 221
    if-eqz p3, :cond_c

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_c
    const/16 p3, 0x14

    .line 225
    .line 226
    if-ne p2, p3, :cond_d

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-eqz p1, :cond_d

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_d
    :goto_4
    return v1

    .line 236
    nop

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
