.class public final Landroidx/appcompat/widget/q;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/q;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/q;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/q;->b:Ljava/lang/Object;

    .line 3
    .line 4
    iget v2, p0, Landroidx/appcompat/widget/q;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v1, Lk/d0;

    .line 10
    .line 11
    invoke-virtual {v1}, Lk/d0;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, v1, Lk/d0;->h:Landroidx/appcompat/widget/i2;

    .line 18
    .line 19
    iget-boolean v2, v0, Landroidx/appcompat/widget/ListPopupWindow;->x:Z

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    iget-object v2, v1, Lk/d0;->m:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->a()V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lk/d0;->dismiss()V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_1
    return-void

    .line 42
    :pswitch_0
    check-cast v1, Lk/f;

    .line 43
    .line 44
    invoke-virtual {v1}, Lk/f;->c()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_5

    .line 49
    .line 50
    iget-object v2, v1, Lk/f;->h:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-lez v3, :cond_5

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lk/e;

    .line 63
    .line 64
    iget-object v0, v0, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 65
    .line 66
    iget-boolean v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->x:Z

    .line 67
    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    iget-object v0, v1, Lk/f;->o:Landroid/view/View;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lk/e;

    .line 96
    .line 97
    iget-object v1, v1, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->a()V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lk/f;->dismiss()V

    .line 104
    .line 105
    .line 106
    :cond_5
    return-void

    .line 107
    :pswitch_1
    check-cast v1, Lcom/google/android/material/navigation/NavigationView;

    .line 108
    .line 109
    iget-object v2, v1, Lcom/google/android/material/navigation/NavigationView;->i:[I

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v1, Lcom/google/android/material/navigation/NavigationView;->i:[I

    .line 115
    .line 116
    const/4 v3, 0x1

    .line 117
    aget v2, v2, v3

    .line 118
    .line 119
    if-nez v2, :cond_6

    .line 120
    .line 121
    const/4 v2, 0x1

    .line 122
    goto :goto_4

    .line 123
    :cond_6
    const/4 v2, 0x0

    .line 124
    :goto_4
    iget-object v4, v1, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 125
    .line 126
    iget-boolean v5, v4, Lcom/google/android/material/internal/r;->v:Z

    .line 127
    .line 128
    if-eq v5, v2, :cond_8

    .line 129
    .line 130
    iput-boolean v2, v4, Lcom/google/android/material/internal/r;->v:Z

    .line 131
    .line 132
    iget-object v5, v4, Lcom/google/android/material/internal/r;->b:Landroid/widget/LinearLayout;

    .line 133
    .line 134
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-nez v5, :cond_7

    .line 139
    .line 140
    iget-boolean v5, v4, Lcom/google/android/material/internal/r;->v:Z

    .line 141
    .line 142
    if-eqz v5, :cond_7

    .line 143
    .line 144
    iget v5, v4, Lcom/google/android/material/internal/r;->x:I

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_7
    const/4 v5, 0x0

    .line 148
    :goto_5
    iget-object v4, v4, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 149
    .line 150
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    invoke-virtual {v4, v0, v5, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 155
    .line 156
    .line 157
    :cond_8
    if-eqz v2, :cond_9

    .line 158
    .line 159
    iget-boolean v2, v1, Lcom/google/android/material/navigation/NavigationView;->l:Z

    .line 160
    .line 161
    if-eqz v2, :cond_9

    .line 162
    .line 163
    const/4 v2, 0x1

    .line 164
    goto :goto_6

    .line 165
    :cond_9
    const/4 v2, 0x0

    .line 166
    :goto_6
    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawTopInsetForeground(Z)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    :goto_7
    instance-of v4, v2, Landroid/content/ContextWrapper;

    .line 174
    .line 175
    if-eqz v4, :cond_b

    .line 176
    .line 177
    instance-of v4, v2, Landroid/app/Activity;

    .line 178
    .line 179
    if-eqz v4, :cond_a

    .line 180
    .line 181
    check-cast v2, Landroid/app/Activity;

    .line 182
    .line 183
    goto :goto_8

    .line 184
    :cond_a
    check-cast v2, Landroid/content/ContextWrapper;

    .line 185
    .line 186
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    goto :goto_7

    .line 191
    :cond_b
    const/4 v2, 0x0

    .line 192
    :goto_8
    if-eqz v2, :cond_f

    .line 193
    .line 194
    const v4, 0x1020002

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-ne v4, v5, :cond_c

    .line 210
    .line 211
    const/4 v4, 0x1

    .line 212
    goto :goto_9

    .line 213
    :cond_c
    const/4 v4, 0x0

    .line 214
    :goto_9
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v2}, Landroid/view/Window;->getNavigationBarColor()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_d

    .line 227
    .line 228
    const/4 v2, 0x1

    .line 229
    goto :goto_a

    .line 230
    :cond_d
    const/4 v2, 0x0

    .line 231
    :goto_a
    if-eqz v4, :cond_e

    .line 232
    .line 233
    if-eqz v2, :cond_e

    .line 234
    .line 235
    iget-boolean v2, v1, Lcom/google/android/material/navigation/NavigationView;->m:Z

    .line 236
    .line 237
    if-eqz v2, :cond_e

    .line 238
    .line 239
    const/4 v0, 0x1

    .line 240
    :cond_e
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawBottomInsetForeground(Z)V

    .line 241
    .line 242
    .line 243
    :cond_f
    return-void

    .line 244
    :pswitch_2
    check-cast v1, Landroidx/appcompat/widget/m0;

    .line 245
    .line 246
    iget-object v0, v1, Landroidx/appcompat/widget/m0;->G:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    sget-object v2, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 252
    .line 253
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_10

    .line 258
    .line 259
    iget-object v2, v1, Landroidx/appcompat/widget/m0;->E:Landroid/graphics/Rect;

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_10

    .line 266
    .line 267
    invoke-virtual {v1}, Landroidx/appcompat/widget/m0;->s()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->a()V

    .line 271
    .line 272
    .line 273
    goto :goto_b

    .line 274
    :cond_10
    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 275
    .line 276
    .line 277
    :goto_b
    return-void

    .line 278
    :pswitch_3
    check-cast v1, Landroidx/appcompat/widget/AppCompatSpinner;

    .line 279
    .line 280
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/o0;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-interface {v0}, Landroidx/appcompat/widget/o0;->c()Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_11

    .line 289
    .line 290
    invoke-static {v1}, Landroidx/appcompat/widget/g0;->b(Landroid/view/View;)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    invoke-static {v1}, Landroidx/appcompat/widget/g0;->a(Landroid/view/View;)I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    iget-object v3, v1, Landroidx/appcompat/widget/AppCompatSpinner;->f:Landroidx/appcompat/widget/o0;

    .line 299
    .line 300
    invoke-interface {v3, v0, v2}, Landroidx/appcompat/widget/o0;->n(II)V

    .line 301
    .line 302
    .line 303
    :cond_11
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    if-eqz v0, :cond_12

    .line 308
    .line 309
    invoke-static {v0, p0}, Landroidx/appcompat/widget/f0;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 310
    .line 311
    .line 312
    :cond_12
    return-void

    .line 313
    :pswitch_4
    check-cast v1, Landroidx/appcompat/widget/ActivityChooserView;

    .line 314
    .line 315
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_14

    .line 320
    .line 321
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-nez v0, :cond_13

    .line 326
    .line 327
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 332
    .line 333
    .line 334
    goto :goto_c

    .line 335
    :cond_13
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->a()V

    .line 340
    .line 341
    .line 342
    iget-object v0, v1, Landroidx/appcompat/widget/ActivityChooserView;->g:Ln0/c;

    .line 343
    .line 344
    if-eqz v0, :cond_14

    .line 345
    .line 346
    iget-object v0, v0, Ln0/c;->a:Landroidx/appcompat/widget/k;

    .line 347
    .line 348
    if-eqz v0, :cond_14

    .line 349
    .line 350
    iget-object v1, v0, Lk/c;->e:Lk/x;

    .line 351
    .line 352
    if-eqz v1, :cond_14

    .line 353
    .line 354
    iget-object v0, v0, Lk/c;->c:Lk/l;

    .line 355
    .line 356
    invoke-interface {v1, v0}, Lk/x;->f(Lk/l;)Z

    .line 357
    .line 358
    .line 359
    :cond_14
    :goto_c
    return-void

    .line 360
    nop

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
