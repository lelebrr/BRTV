.class public final Landroidx/appcompat/widget/s2;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/s2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/s2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 p3, 0x0

    .line 3
    iget-object p4, p0, Landroidx/appcompat/widget/s2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget p5, p0, Landroidx/appcompat/widget/s2;->a:I

    .line 6
    .line 7
    packed-switch p5, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p4, Lz6/a;

    .line 11
    .line 12
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x2

    .line 16
    new-array p2, p2, [I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 19
    .line 20
    .line 21
    aget p2, p2, p3

    .line 22
    .line 23
    iput p2, p4, Lz6/a;->I:I

    .line 24
    .line 25
    iget-object p2, p4, Lz6/a;->C:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    new-instance p1, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    check-cast p4, Lla/d;

    .line 37
    .line 38
    iget-object p5, p4, Lla/d;->j0:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {p5, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    iget-object p5, p4, Lla/d;->j0:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {p5}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p5

    .line 49
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 54
    .line 55
    sub-int p1, p5, p1

    .line 56
    .line 57
    int-to-double p6, p1

    .line 58
    int-to-double p8, p5

    .line 59
    const-wide v0, 0x3fc3333333333333L    # 0.15

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    mul-double p8, p8, v0

    .line 65
    .line 66
    cmpl-double p1, p6, p8

    .line 67
    .line 68
    if-lez p1, :cond_0

    .line 69
    .line 70
    iput-boolean p2, p4, Lla/d;->g0:Z

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iput-boolean p3, p4, Lla/d;->g0:Z

    .line 74
    .line 75
    :goto_0
    const-string p1, "h0ouMj8=\n"

    .line 76
    .line 77
    const-string p2, "yyVJW1ETVo0=\n"

    .line 78
    .line 79
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string p3, "hGfRKurfy+ioYfwl9NWEvA==\n"

    .line 89
    .line 90
    const-string p5, "6wmdS5Owvpw=\n"

    .line 91
    .line 92
    invoke-static {p3, p5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-boolean p3, p4, Lla/d;->g0:Z

    .line 100
    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    sget-boolean p3, Lorg/bitspark/android/utils/m;->b:Z

    .line 109
    .line 110
    invoke-static {p1, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_1
    check-cast p4, Lcom/google/android/material/navigation/d;

    .line 115
    .line 116
    iget-object p1, p4, Lcom/google/android/material/navigation/d;->k:Landroid/widget/ImageView;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-nez p2, :cond_1

    .line 123
    .line 124
    iget-object p2, p4, Lcom/google/android/material/navigation/d;->B:Lz5/a;

    .line 125
    .line 126
    if-eqz p2, :cond_1

    .line 127
    .line 128
    new-instance p3, Landroid/graphics/Rect;

    .line 129
    .line 130
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 137
    .line 138
    .line 139
    const/4 p3, 0x0

    .line 140
    invoke-virtual {p2, p1, p3}, Lz5/a;->f(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 141
    .line 142
    .line 143
    :cond_1
    return-void

    .line 144
    :pswitch_2
    check-cast p4, Landroidx/appcompat/widget/SearchView;

    .line 145
    .line 146
    iget-object p1, p4, Landroidx/appcompat/widget/SearchView;->x:Landroid/view/View;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result p5

    .line 152
    if-le p5, p2, :cond_4

    .line 153
    .line 154
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    iget-object p5, p4, Landroidx/appcompat/widget/SearchView;->r:Landroid/view/View;

    .line 163
    .line 164
    invoke-virtual {p5}, Landroid/view/View;->getPaddingLeft()I

    .line 165
    .line 166
    .line 167
    move-result p5

    .line 168
    new-instance p6, Landroid/graphics/Rect;

    .line 169
    .line 170
    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-static {p4}, Landroidx/appcompat/widget/c4;->a(Landroid/view/View;)Z

    .line 174
    .line 175
    .line 176
    move-result p7

    .line 177
    iget-boolean p8, p4, Landroidx/appcompat/widget/SearchView;->M:Z

    .line 178
    .line 179
    if-eqz p8, :cond_2

    .line 180
    .line 181
    const p3, 0x7f070029

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 185
    .line 186
    .line 187
    move-result p3

    .line 188
    const p8, 0x7f07002a

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, p8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    add-int/2addr p3, p2

    .line 196
    :cond_2
    iget-object p2, p4, Landroidx/appcompat/widget/SearchView;->p:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    .line 199
    .line 200
    .line 201
    move-result-object p4

    .line 202
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 203
    .line 204
    .line 205
    if-eqz p7, :cond_3

    .line 206
    .line 207
    iget p4, p6, Landroid/graphics/Rect;->left:I

    .line 208
    .line 209
    neg-int p4, p4

    .line 210
    goto :goto_1

    .line 211
    :cond_3
    iget p4, p6, Landroid/graphics/Rect;->left:I

    .line 212
    .line 213
    add-int/2addr p4, p3

    .line 214
    sub-int p4, p5, p4

    .line 215
    .line 216
    :goto_1
    invoke-virtual {p2, p4}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    iget p4, p6, Landroid/graphics/Rect;->left:I

    .line 224
    .line 225
    add-int/2addr p1, p4

    .line 226
    iget p4, p6, Landroid/graphics/Rect;->right:I

    .line 227
    .line 228
    add-int/2addr p1, p4

    .line 229
    add-int/2addr p1, p3

    .line 230
    sub-int/2addr p1, p5

    .line 231
    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 232
    .line 233
    .line 234
    :cond_4
    return-void

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
