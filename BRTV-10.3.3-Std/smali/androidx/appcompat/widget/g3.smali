.class public final Landroidx/appcompat/widget/g3;
.super Landroid/util/Property;
.source "MyApplication"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/appcompat/widget/g3;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p2, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Landroidx/appcompat/widget/g3;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    sget-object v0, Ly1/g0;->a:Ly1/h0;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ly1/h0;->k(Landroid/view/View;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_1
    check-cast p1, Ly1/i;

    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_2
    check-cast p1, Ly1/i;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_3
    check-cast p1, Landroid/widget/ImageView;

    .line 36
    .line 37
    return-object v0

    .line 38
    :pswitch_4
    check-cast p1, Landroid/view/View;

    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_5
    check-cast p1, Landroid/view/View;

    .line 42
    .line 43
    return-object v0

    .line 44
    :pswitch_6
    check-cast p1, Landroid/view/View;

    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_7
    check-cast p1, Ly1/d;

    .line 48
    .line 49
    return-object v0

    .line 50
    :pswitch_8
    check-cast p1, Ly1/d;

    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_9
    check-cast p1, Lq6/s;

    .line 54
    .line 55
    iget p1, p1, Lq6/s;->j:F

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :pswitch_a
    check-cast p1, Lq6/q;

    .line 63
    .line 64
    iget p1, p1, Lq6/q;->i:F

    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :pswitch_b
    check-cast p1, Lq6/l;

    .line 72
    .line 73
    invoke-virtual {p1}, Lq6/l;->b()F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :pswitch_c
    check-cast p1, Lq6/h;

    .line 83
    .line 84
    iget p1, p1, Lq6/h;->j:F

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :pswitch_d
    check-cast p1, Lq6/h;

    .line 92
    .line 93
    iget p1, p1, Lq6/h;->i:F

    .line 94
    .line 95
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :pswitch_e
    check-cast p1, Landroid/view/View;

    .line 101
    .line 102
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    int-to-float p1, p1

    .line 109
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    return-object p1

    .line 114
    :pswitch_f
    check-cast p1, Landroid/view/View;

    .line 115
    .line 116
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    int-to-float p1, p1

    .line 123
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    return-object p1

    .line 128
    :pswitch_10
    check-cast p1, Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    .line 136
    int-to-float p1, p1

    .line 137
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :pswitch_11
    check-cast p1, Landroid/view/View;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    .line 150
    int-to-float p1, p1

    .line 151
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1

    .line 156
    :pswitch_12
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 157
    .line 158
    iget p1, p1, Landroidx/appcompat/widget/SwitchCompat;->z:F

    .line 159
    .line 160
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    return-object p1

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13

    .line 1
    const/16 v0, 0x29b

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    iget v6, p0, Landroidx/appcompat/widget/g3;->a:I

    .line 10
    .line 11
    packed-switch v6, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Landroid/view/View;

    .line 15
    .line 16
    check-cast p2, Landroid/graphics/Rect;

    .line 17
    .line 18
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 25
    .line 26
    check-cast p2, Ljava/lang/Float;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-static {p1, p2}, Ly1/g0;->b(Landroid/view/View;F)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    check-cast p1, Ly1/i;

    .line 37
    .line 38
    check-cast p2, Landroid/graphics/PointF;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 44
    .line 45
    iput v0, p1, Ly1/i;->d:F

    .line 46
    .line 47
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 48
    .line 49
    iput p2, p1, Ly1/i;->e:F

    .line 50
    .line 51
    invoke-virtual {p1}, Ly1/i;->a()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_2
    check-cast p1, Ly1/i;

    .line 56
    .line 57
    check-cast p2, [F

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    array-length v0, p2

    .line 63
    iget-object v1, p1, Ly1/i;->c:[F

    .line 64
    .line 65
    invoke-static {p2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ly1/i;->a()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_3
    check-cast p1, Landroid/widget/ImageView;

    .line 73
    .line 74
    check-cast p2, Landroid/graphics/Matrix;

    .line 75
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    const/16 v1, 0x1d

    .line 79
    .line 80
    if-lt v0, v1, :cond_0

    .line 81
    .line 82
    invoke-static {p1, p2}, Ln0/f1;->o(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    if-nez p2, :cond_1

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-eqz p2, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    sub-int/2addr v0, v1

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    sub-int/2addr v0, v1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    sub-int/2addr v1, v2

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    sub-int/2addr v1, v2

    .line 122
    invoke-virtual {p2, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    sget-boolean v0, Ly1/v;->n:Z

    .line 130
    .line 131
    if-eqz v0, :cond_2

    .line 132
    .line 133
    :try_start_0
    invoke-static {p1, p2}, Ln0/f1;->o(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catch_0
    sput-boolean v4, Ly1/v;->n:Z

    .line 138
    .line 139
    :cond_2
    :goto_0
    return-void

    .line 140
    :pswitch_4
    check-cast p1, Landroid/view/View;

    .line 141
    .line 142
    check-cast p2, Landroid/graphics/PointF;

    .line 143
    .line 144
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 145
    .line 146
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 151
    .line 152
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    add-int/2addr v1, v0

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    add-int/2addr v2, p2

    .line 166
    invoke-static {p1, v0, p2, v1, v2}, Ly1/g0;->a(Landroid/view/View;IIII)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_5
    check-cast p1, Landroid/view/View;

    .line 171
    .line 172
    check-cast p2, Landroid/graphics/PointF;

    .line 173
    .line 174
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 175
    .line 176
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 181
    .line 182
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-static {p1, v0, p2, v1, v2}, Ly1/g0;->a(Landroid/view/View;IIII)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_6
    check-cast p1, Landroid/view/View;

    .line 199
    .line 200
    check-cast p2, Landroid/graphics/PointF;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    iget v2, p2, Landroid/graphics/PointF;->x:F

    .line 211
    .line 212
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 217
    .line 218
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    invoke-static {p1, v0, v1, v2, p2}, Ly1/g0;->a(Landroid/view/View;IIII)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_7
    check-cast p1, Ly1/d;

    .line 227
    .line 228
    check-cast p2, Landroid/graphics/PointF;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 234
    .line 235
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iput v0, p1, Ly1/d;->c:I

    .line 240
    .line 241
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 242
    .line 243
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 244
    .line 245
    .line 246
    move-result p2

    .line 247
    iput p2, p1, Ly1/d;->d:I

    .line 248
    .line 249
    iget v0, p1, Ly1/d;->g:I

    .line 250
    .line 251
    add-int/2addr v0, v5

    .line 252
    iput v0, p1, Ly1/d;->g:I

    .line 253
    .line 254
    iget v1, p1, Ly1/d;->f:I

    .line 255
    .line 256
    if-ne v1, v0, :cond_3

    .line 257
    .line 258
    iget v0, p1, Ly1/d;->a:I

    .line 259
    .line 260
    iget v1, p1, Ly1/d;->b:I

    .line 261
    .line 262
    iget v2, p1, Ly1/d;->c:I

    .line 263
    .line 264
    iget-object v3, p1, Ly1/d;->e:Landroid/view/View;

    .line 265
    .line 266
    invoke-static {v3, v0, v1, v2, p2}, Ly1/g0;->a(Landroid/view/View;IIII)V

    .line 267
    .line 268
    .line 269
    iput v4, p1, Ly1/d;->f:I

    .line 270
    .line 271
    iput v4, p1, Ly1/d;->g:I

    .line 272
    .line 273
    :cond_3
    return-void

    .line 274
    :pswitch_8
    check-cast p1, Ly1/d;

    .line 275
    .line 276
    check-cast p2, Landroid/graphics/PointF;

    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 282
    .line 283
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    iput v0, p1, Ly1/d;->a:I

    .line 288
    .line 289
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 290
    .line 291
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    iput p2, p1, Ly1/d;->b:I

    .line 296
    .line 297
    iget v0, p1, Ly1/d;->f:I

    .line 298
    .line 299
    add-int/2addr v0, v5

    .line 300
    iput v0, p1, Ly1/d;->f:I

    .line 301
    .line 302
    iget v1, p1, Ly1/d;->g:I

    .line 303
    .line 304
    if-ne v0, v1, :cond_4

    .line 305
    .line 306
    iget v0, p1, Ly1/d;->a:I

    .line 307
    .line 308
    iget v1, p1, Ly1/d;->c:I

    .line 309
    .line 310
    iget v2, p1, Ly1/d;->d:I

    .line 311
    .line 312
    iget-object v3, p1, Ly1/d;->e:Landroid/view/View;

    .line 313
    .line 314
    invoke-static {v3, v0, p2, v1, v2}, Ly1/g0;->a(Landroid/view/View;IIII)V

    .line 315
    .line 316
    .line 317
    iput v4, p1, Ly1/d;->f:I

    .line 318
    .line 319
    iput v4, p1, Ly1/d;->g:I

    .line 320
    .line 321
    :cond_4
    return-void

    .line 322
    :pswitch_9
    check-cast p1, Lq6/s;

    .line 323
    .line 324
    check-cast p2, Ljava/lang/Float;

    .line 325
    .line 326
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    iput p2, p1, Lq6/s;->j:F

    .line 331
    .line 332
    const/high16 v0, 0x44e10000    # 1800.0f

    .line 333
    .line 334
    mul-float p2, p2, v0

    .line 335
    .line 336
    float-to-int p2, p2

    .line 337
    const/4 v0, 0x0

    .line 338
    :goto_1
    if-ge v0, v3, :cond_5

    .line 339
    .line 340
    sget-object v6, Lq6/s;->m:[I

    .line 341
    .line 342
    aget v6, v6, v0

    .line 343
    .line 344
    sget-object v7, Lq6/s;->l:[I

    .line 345
    .line 346
    aget v7, v7, v0

    .line 347
    .line 348
    sub-int v6, p2, v6

    .line 349
    .line 350
    int-to-float v6, v6

    .line 351
    int-to-float v7, v7

    .line 352
    div-float/2addr v6, v7

    .line 353
    iget-object v7, p1, Lq6/s;->f:[Landroid/view/animation/Interpolator;

    .line 354
    .line 355
    aget-object v7, v7, v0

    .line 356
    .line 357
    invoke-interface {v7, v6}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    iget-object v7, p1, Lq6/n;->b:[F

    .line 370
    .line 371
    aput v6, v7, v0

    .line 372
    .line 373
    add-int/2addr v0, v5

    .line 374
    goto :goto_1

    .line 375
    :cond_5
    iget-boolean p2, p1, Lq6/s;->i:Z

    .line 376
    .line 377
    if-eqz p2, :cond_6

    .line 378
    .line 379
    iget-object p2, p1, Lq6/s;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 380
    .line 381
    iget-object p2, p2, Lq6/e;->c:[I

    .line 382
    .line 383
    iget v0, p1, Lq6/s;->h:I

    .line 384
    .line 385
    aget p2, p2, v0

    .line 386
    .line 387
    iget-object v0, p1, Lq6/n;->a:Lq6/o;

    .line 388
    .line 389
    iget v0, v0, Lq6/l;->j:I

    .line 390
    .line 391
    invoke-static {p2, v0}, Lo9/e;->j(II)I

    .line 392
    .line 393
    .line 394
    move-result p2

    .line 395
    iget-object v0, p1, Lq6/n;->c:[I

    .line 396
    .line 397
    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([II)V

    .line 398
    .line 399
    .line 400
    iput-boolean v4, p1, Lq6/s;->i:Z

    .line 401
    .line 402
    :cond_6
    iget-object p1, p1, Lq6/n;->a:Lq6/o;

    .line 403
    .line 404
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 405
    .line 406
    .line 407
    return-void

    .line 408
    :pswitch_a
    check-cast p1, Lq6/q;

    .line 409
    .line 410
    check-cast p2, Ljava/lang/Float;

    .line 411
    .line 412
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 413
    .line 414
    .line 415
    move-result p2

    .line 416
    iput p2, p1, Lq6/q;->i:F

    .line 417
    .line 418
    const v6, 0x43a68000    # 333.0f

    .line 419
    .line 420
    .line 421
    mul-float p2, p2, v6

    .line 422
    .line 423
    float-to-int p2, p2

    .line 424
    iget-object v6, p1, Lq6/n;->b:[F

    .line 425
    .line 426
    aput v1, v6, v4

    .line 427
    .line 428
    int-to-float p2, p2

    .line 429
    int-to-float v0, v0

    .line 430
    div-float/2addr p2, v0

    .line 431
    iget-object v0, p1, Lq6/q;->e:Lg1/a;

    .line 432
    .line 433
    invoke-virtual {v0, p2}, Lg1/b;->getInterpolation(F)F

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    const/4 v7, 0x2

    .line 438
    aput v1, v6, v7

    .line 439
    .line 440
    aput v1, v6, v5

    .line 441
    .line 442
    const v1, 0x3eff9dbf

    .line 443
    .line 444
    .line 445
    add-float/2addr p2, v1

    .line 446
    invoke-virtual {v0, p2}, Lg1/b;->getInterpolation(F)F

    .line 447
    .line 448
    .line 449
    move-result p2

    .line 450
    aput p2, v6, v3

    .line 451
    .line 452
    const/4 v0, 0x3

    .line 453
    aput p2, v6, v0

    .line 454
    .line 455
    const/4 v0, 0x5

    .line 456
    aput v2, v6, v0

    .line 457
    .line 458
    iget-boolean v0, p1, Lq6/q;->h:Z

    .line 459
    .line 460
    if-eqz v0, :cond_7

    .line 461
    .line 462
    cmpg-float p2, p2, v2

    .line 463
    .line 464
    if-gez p2, :cond_7

    .line 465
    .line 466
    iget-object p2, p1, Lq6/n;->c:[I

    .line 467
    .line 468
    aget v0, p2, v5

    .line 469
    .line 470
    aput v0, p2, v7

    .line 471
    .line 472
    aget v0, p2, v4

    .line 473
    .line 474
    aput v0, p2, v5

    .line 475
    .line 476
    iget-object v0, p1, Lq6/q;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 477
    .line 478
    iget-object v0, v0, Lq6/e;->c:[I

    .line 479
    .line 480
    iget v1, p1, Lq6/q;->g:I

    .line 481
    .line 482
    aget v0, v0, v1

    .line 483
    .line 484
    iget-object v1, p1, Lq6/n;->a:Lq6/o;

    .line 485
    .line 486
    iget v1, v1, Lq6/l;->j:I

    .line 487
    .line 488
    invoke-static {v0, v1}, Lo9/e;->j(II)I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    aput v0, p2, v4

    .line 493
    .line 494
    iput-boolean v4, p1, Lq6/q;->h:Z

    .line 495
    .line 496
    :cond_7
    iget-object p1, p1, Lq6/n;->a:Lq6/o;

    .line 497
    .line 498
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 499
    .line 500
    .line 501
    return-void

    .line 502
    :pswitch_b
    check-cast p1, Lq6/l;

    .line 503
    .line 504
    check-cast p2, Ljava/lang/Float;

    .line 505
    .line 506
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 507
    .line 508
    .line 509
    move-result p2

    .line 510
    iget v0, p1, Lq6/l;->h:F

    .line 511
    .line 512
    cmpl-float v0, v0, p2

    .line 513
    .line 514
    if-eqz v0, :cond_8

    .line 515
    .line 516
    iput p2, p1, Lq6/l;->h:F

    .line 517
    .line 518
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 519
    .line 520
    .line 521
    :cond_8
    return-void

    .line 522
    :pswitch_c
    check-cast p1, Lq6/h;

    .line 523
    .line 524
    check-cast p2, Ljava/lang/Float;

    .line 525
    .line 526
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 527
    .line 528
    .line 529
    move-result p2

    .line 530
    iput p2, p1, Lq6/h;->j:F

    .line 531
    .line 532
    return-void

    .line 533
    :pswitch_d
    check-cast p1, Lq6/h;

    .line 534
    .line 535
    check-cast p2, Ljava/lang/Float;

    .line 536
    .line 537
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 538
    .line 539
    .line 540
    move-result p2

    .line 541
    iput p2, p1, Lq6/h;->i:F

    .line 542
    .line 543
    const v6, 0x45a8c000    # 5400.0f

    .line 544
    .line 545
    .line 546
    mul-float v6, v6, p2

    .line 547
    .line 548
    float-to-int v6, v6

    .line 549
    const/high16 v7, 0x44be0000    # 1520.0f

    .line 550
    .line 551
    mul-float p2, p2, v7

    .line 552
    .line 553
    const/high16 v7, -0x3e600000    # -20.0f

    .line 554
    .line 555
    add-float/2addr v7, p2

    .line 556
    iget-object v8, p1, Lq6/n;->b:[F

    .line 557
    .line 558
    aput v7, v8, v4

    .line 559
    .line 560
    aput p2, v8, v5

    .line 561
    .line 562
    const/4 p2, 0x0

    .line 563
    :goto_2
    iget-object v7, p1, Lq6/h;->f:Lg1/a;

    .line 564
    .line 565
    if-ge p2, v3, :cond_9

    .line 566
    .line 567
    sget-object v9, Lq6/h;->l:[I

    .line 568
    .line 569
    aget v9, v9, p2

    .line 570
    .line 571
    sub-int v9, v6, v9

    .line 572
    .line 573
    int-to-float v9, v9

    .line 574
    int-to-float v10, v0

    .line 575
    div-float/2addr v9, v10

    .line 576
    aget v11, v8, v5

    .line 577
    .line 578
    invoke-virtual {v7, v9}, Lg1/b;->getInterpolation(F)F

    .line 579
    .line 580
    .line 581
    move-result v9

    .line 582
    const/high16 v12, 0x437a0000    # 250.0f

    .line 583
    .line 584
    mul-float v9, v9, v12

    .line 585
    .line 586
    add-float/2addr v9, v11

    .line 587
    aput v9, v8, v5

    .line 588
    .line 589
    sget-object v9, Lq6/h;->m:[I

    .line 590
    .line 591
    aget v9, v9, p2

    .line 592
    .line 593
    sub-int v9, v6, v9

    .line 594
    .line 595
    int-to-float v9, v9

    .line 596
    div-float/2addr v9, v10

    .line 597
    aget v10, v8, v4

    .line 598
    .line 599
    invoke-virtual {v7, v9}, Lg1/b;->getInterpolation(F)F

    .line 600
    .line 601
    .line 602
    move-result v7

    .line 603
    mul-float v7, v7, v12

    .line 604
    .line 605
    add-float/2addr v7, v10

    .line 606
    aput v7, v8, v4

    .line 607
    .line 608
    add-int/2addr p2, v5

    .line 609
    goto :goto_2

    .line 610
    :cond_9
    aget p2, v8, v4

    .line 611
    .line 612
    aget v0, v8, v5

    .line 613
    .line 614
    sub-float v9, v0, p2

    .line 615
    .line 616
    iget v10, p1, Lq6/h;->j:F

    .line 617
    .line 618
    mul-float v9, v9, v10

    .line 619
    .line 620
    add-float/2addr v9, p2

    .line 621
    aput v9, v8, v4

    .line 622
    .line 623
    const/high16 p2, 0x43b40000    # 360.0f

    .line 624
    .line 625
    div-float/2addr v9, p2

    .line 626
    aput v9, v8, v4

    .line 627
    .line 628
    div-float/2addr v0, p2

    .line 629
    aput v0, v8, v5

    .line 630
    .line 631
    const/4 p2, 0x0

    .line 632
    :goto_3
    if-ge p2, v3, :cond_b

    .line 633
    .line 634
    sget-object v0, Lq6/h;->n:[I

    .line 635
    .line 636
    aget v0, v0, p2

    .line 637
    .line 638
    sub-int v0, v6, v0

    .line 639
    .line 640
    int-to-float v0, v0

    .line 641
    const/16 v8, 0x14d

    .line 642
    .line 643
    int-to-float v8, v8

    .line 644
    div-float/2addr v0, v8

    .line 645
    cmpl-float v8, v0, v1

    .line 646
    .line 647
    if-ltz v8, :cond_a

    .line 648
    .line 649
    cmpg-float v8, v0, v2

    .line 650
    .line 651
    if-gtz v8, :cond_a

    .line 652
    .line 653
    iget v1, p1, Lq6/h;->h:I

    .line 654
    .line 655
    add-int/2addr p2, v1

    .line 656
    iget-object v1, p1, Lq6/h;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 657
    .line 658
    iget-object v2, v1, Lq6/e;->c:[I

    .line 659
    .line 660
    array-length v3, v2

    .line 661
    rem-int/2addr p2, v3

    .line 662
    add-int/2addr v5, p2

    .line 663
    array-length v3, v2

    .line 664
    rem-int/2addr v5, v3

    .line 665
    aget p2, v2, p2

    .line 666
    .line 667
    iget-object v2, p1, Lq6/n;->a:Lq6/o;

    .line 668
    .line 669
    iget v2, v2, Lq6/l;->j:I

    .line 670
    .line 671
    invoke-static {p2, v2}, Lo9/e;->j(II)I

    .line 672
    .line 673
    .line 674
    move-result p2

    .line 675
    iget-object v1, v1, Lq6/e;->c:[I

    .line 676
    .line 677
    aget v1, v1, v5

    .line 678
    .line 679
    iget-object v2, p1, Lq6/n;->a:Lq6/o;

    .line 680
    .line 681
    iget v2, v2, Lq6/l;->j:I

    .line 682
    .line 683
    invoke-static {v1, v2}, Lo9/e;->j(II)I

    .line 684
    .line 685
    .line 686
    move-result v1

    .line 687
    invoke-virtual {v7, v0}, Lg1/b;->getInterpolation(F)F

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 692
    .line 693
    .line 694
    move-result-object p2

    .line 695
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    invoke-static {v0, p2, v1}, Ly5/b;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 700
    .line 701
    .line 702
    move-result-object p2

    .line 703
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 704
    .line 705
    .line 706
    move-result p2

    .line 707
    iget-object v0, p1, Lq6/n;->c:[I

    .line 708
    .line 709
    aput p2, v0, v4

    .line 710
    .line 711
    goto :goto_4

    .line 712
    :cond_a
    add-int/2addr p2, v5

    .line 713
    goto :goto_3

    .line 714
    :cond_b
    :goto_4
    iget-object p1, p1, Lq6/n;->a:Lq6/o;

    .line 715
    .line 716
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 717
    .line 718
    .line 719
    return-void

    .line 720
    :pswitch_e
    check-cast p1, Landroid/view/View;

    .line 721
    .line 722
    check-cast p2, Ljava/lang/Float;

    .line 723
    .line 724
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 725
    .line 726
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 727
    .line 728
    .line 729
    move-result v0

    .line 730
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 731
    .line 732
    .line 733
    move-result v1

    .line 734
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    .line 735
    .line 736
    .line 737
    move-result p2

    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 739
    .line 740
    .line 741
    move-result v2

    .line 742
    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 743
    .line 744
    .line 745
    return-void

    .line 746
    :pswitch_f
    check-cast p1, Landroid/view/View;

    .line 747
    .line 748
    check-cast p2, Ljava/lang/Float;

    .line 749
    .line 750
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    .line 751
    .line 752
    .line 753
    move-result p2

    .line 754
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 755
    .line 756
    .line 757
    move-result v0

    .line 758
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 759
    .line 760
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 769
    .line 770
    .line 771
    return-void

    .line 772
    :pswitch_10
    check-cast p1, Landroid/view/View;

    .line 773
    .line 774
    check-cast p2, Ljava/lang/Float;

    .line 775
    .line 776
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    .line 781
    .line 782
    .line 783
    move-result p2

    .line 784
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 785
    .line 786
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 787
    .line 788
    .line 789
    return-void

    .line 790
    :pswitch_11
    check-cast p1, Landroid/view/View;

    .line 791
    .line 792
    check-cast p2, Ljava/lang/Float;

    .line 793
    .line 794
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    .line 799
    .line 800
    .line 801
    move-result p2

    .line 802
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 803
    .line 804
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 805
    .line 806
    .line 807
    return-void

    .line 808
    :pswitch_12
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 809
    .line 810
    check-cast p2, Ljava/lang/Float;

    .line 811
    .line 812
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 813
    .line 814
    .line 815
    move-result p2

    .line 816
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 817
    .line 818
    .line 819
    return-void

    .line 820
    nop

    .line 821
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
