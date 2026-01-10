.class public final Lcom/google/android/material/textfield/m;
.super Lcom/google/android/material/textfield/n;
.source "MyApplication"


# instance fields
.field public final e:Lcom/google/android/material/textfield/i;

.field public final f:Landroidx/appcompat/widget/r2;

.field public final g:Lcom/google/android/material/textfield/j;

.field public final h:Lcom/google/android/material/textfield/a;

.field public final i:Lcom/google/android/material/textfield/b;

.field public final j:Lcom/google/android/material/textfield/k;

.field public final k:La0/b;

.field public l:Z

.field public m:Z

.field public n:J

.field public o:Landroid/graphics/drawable/StateListDrawable;

.field public p:Lu6/h;

.field public q:Landroid/view/accessibility/AccessibilityManager;

.field public r:Landroid/animation/ValueAnimator;

.field public s:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/n;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/google/android/material/textfield/i;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p2, p0, v0}, Lcom/google/android/material/textfield/i;-><init>(Lcom/google/android/material/textfield/n;I)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/material/textfield/m;->e:Lcom/google/android/material/textfield/i;

    .line 11
    .line 12
    new-instance p2, Landroidx/appcompat/widget/r2;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-direct {p2, v0, p0}, Landroidx/appcompat/widget/r2;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/material/textfield/m;->f:Landroidx/appcompat/widget/r2;

    .line 19
    .line 20
    new-instance p2, Lcom/google/android/material/textfield/j;

    .line 21
    .line 22
    invoke-direct {p2, p0, p1}, Lcom/google/android/material/textfield/j;-><init>(Lcom/google/android/material/textfield/m;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/google/android/material/textfield/m;->g:Lcom/google/android/material/textfield/j;

    .line 26
    .line 27
    new-instance p1, Lcom/google/android/material/textfield/a;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/a;-><init>(Lcom/google/android/material/textfield/n;I)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/material/textfield/m;->h:Lcom/google/android/material/textfield/a;

    .line 34
    .line 35
    new-instance p1, Lcom/google/android/material/textfield/b;

    .line 36
    .line 37
    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/b;-><init>(Lcom/google/android/material/textfield/n;I)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/material/textfield/m;->i:Lcom/google/android/material/textfield/b;

    .line 41
    .line 42
    new-instance p1, Lcom/google/android/material/textfield/k;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-direct {p1, p2, p0}, Lcom/google/android/material/textfield/k;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/material/textfield/m;->j:Lcom/google/android/material/textfield/k;

    .line 49
    .line 50
    new-instance p1, La0/b;

    .line 51
    .line 52
    const/16 p2, 0x15

    .line 53
    .line 54
    invoke-direct {p1, p2, p0}, La0/b;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/google/android/material/textfield/m;->k:La0/b;

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/google/android/material/textfield/m;->l:Z

    .line 61
    .line 62
    iput-boolean p1, p0, Lcom/google/android/material/textfield/m;->m:Z

    .line 63
    .line 64
    const-wide p1, 0x7fffffffffffffffL

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    iput-wide p1, p0, Lcom/google/android/material/textfield/m;->n:J

    .line 70
    .line 71
    return-void
.end method

.method public static d(Lcom/google/android/material/textfield/m;Landroid/widget/AutoCompleteTextView;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lcom/google/android/material/textfield/m;->n:J

    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    cmp-long v6, v0, v2

    .line 22
    .line 23
    if-ltz v6, :cond_2

    .line 24
    .line 25
    const-wide/16 v2, 0x12c

    .line 26
    .line 27
    cmp-long v6, v0, v2

    .line 28
    .line 29
    if-lez v6, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iput-boolean v5, p0, Lcom/google/android/material/textfield/m;->l:Z

    .line 38
    .line 39
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/textfield/m;->l:Z

    .line 40
    .line 41
    if-nez v0, :cond_5

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/google/android/material/textfield/m;->m:Z

    .line 44
    .line 45
    xor-int/2addr v0, v4

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/m;->i(Z)V

    .line 47
    .line 48
    .line 49
    iget-boolean p0, p0, Lcom/google/android/material/textfield/m;->m:Z

    .line 50
    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    iput-boolean v5, p0, Lcom/google/android/material/textfield/m;->l:Z

    .line 65
    .line 66
    :goto_2
    return-void
.end method

.method public static h(Landroid/widget/EditText;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    iget-object v2, p0, Lcom/google/android/material/textfield/n;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const v4, 0x7f07035a

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    int-to-float v3, v3

    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const v5, 0x7f070317

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    int-to-float v4, v4

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const v6, 0x7f070319

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {p0, v3, v5, v3, v4}, Lcom/google/android/material/textfield/m;->g(FIFF)Lu6/h;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-virtual {p0, v7, v5, v3, v4}, Lcom/google/android/material/textfield/m;->g(FIFF)Lu6/h;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iput-object v6, p0, Lcom/google/android/material/textfield/m;->p:Lu6/h;

    .line 50
    .line 51
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    .line 52
    .line 53
    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v4, p0, Lcom/google/android/material/textfield/m;->o:Landroid/graphics/drawable/StateListDrawable;

    .line 57
    .line 58
    const v5, 0x10100aa

    .line 59
    .line 60
    .line 61
    filled-new-array {v5}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Lcom/google/android/material/textfield/m;->o:Landroid/graphics/drawable/StateListDrawable;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    new-array v5, v5, [I

    .line 72
    .line 73
    invoke-virtual {v4, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 74
    .line 75
    .line 76
    iget v3, p0, Lcom/google/android/material/textfield/n;->d:I

    .line 77
    .line 78
    if-nez v3, :cond_0

    .line 79
    .line 80
    const v3, 0x7f080276

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 84
    .line 85
    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const v5, 0x7f1200ec

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    new-instance v3, Landroidx/appcompat/app/a;

    .line 103
    .line 104
    const/4 v5, 0x7

    .line 105
    invoke-direct {v3, v5, p0}, Landroidx/appcompat/app/a;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->c0:Ljava/util/LinkedHashSet;

    .line 112
    .line 113
    iget-object v5, p0, Lcom/google/android/material/textfield/m;->h:Lcom/google/android/material/textfield/a;

    .line 114
    .line 115
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/EditText;

    .line 119
    .line 120
    if-eqz v3, :cond_1

    .line 121
    .line 122
    invoke-virtual {v5, v4}, Lcom/google/android/material/textfield/a;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->g0:Ljava/util/LinkedHashSet;

    .line 126
    .line 127
    iget-object v5, p0, Lcom/google/android/material/textfield/m;->i:Lcom/google/android/material/textfield/b;

    .line 128
    .line 129
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    new-array v3, v0, [F

    .line 133
    .line 134
    fill-array-data v3, :array_0

    .line 135
    .line 136
    .line 137
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    sget-object v5, Ly5/a;->a:Landroid/view/animation/LinearInterpolator;

    .line 142
    .line 143
    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 144
    .line 145
    .line 146
    const/16 v6, 0x43

    .line 147
    .line 148
    int-to-long v6, v6

    .line 149
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    .line 151
    .line 152
    new-instance v6, La7/c;

    .line 153
    .line 154
    invoke-direct {v6, v1, p0}, La7/c;-><init>(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    .line 159
    .line 160
    iput-object v3, p0, Lcom/google/android/material/textfield/m;->s:Landroid/animation/ValueAnimator;

    .line 161
    .line 162
    new-array v0, v0, [F

    .line 163
    .line 164
    fill-array-data v0, :array_1

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    .line 173
    .line 174
    const/16 v3, 0x32

    .line 175
    .line 176
    int-to-long v5, v3

    .line 177
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 178
    .line 179
    .line 180
    new-instance v3, La7/c;

    .line 181
    .line 182
    invoke-direct {v3, v1, p0}, La7/c;-><init>(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    .line 187
    .line 188
    iput-object v0, p0, Lcom/google/android/material/textfield/m;->r:Landroid/animation/ValueAnimator;

    .line 189
    .line 190
    new-instance v3, La6/a;

    .line 191
    .line 192
    invoke-direct {v3, v1, p0}, La6/a;-><init>(ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    .line 197
    .line 198
    const-string v0, "accessibility"

    .line 199
    .line 200
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 205
    .line 206
    iput-object v0, p0, Lcom/google/android/material/textfield/m;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 207
    .line 208
    iget-object v0, p0, Lcom/google/android/material/textfield/m;->j:Lcom/google/android/material/textfield/k;

    .line 209
    .line 210
    invoke-virtual {v4, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/textfield/m;->f()V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final b(I)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    return p1
.end method

.method public final e(Landroid/widget/AutoCompleteTextView;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/android/material/textfield/m;->h(Landroid/widget/EditText;)Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lu6/h;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const v6, 0x7f04012a

    .line 22
    .line 23
    .line 24
    invoke-static {v6, p1}, Lo9/e;->p(ILandroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    new-array v7, v2, [I

    .line 29
    .line 30
    new-array v8, v1, [[I

    .line 31
    .line 32
    const v9, 0x10100a7

    .line 33
    .line 34
    .line 35
    filled-new-array {v9}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    aput-object v9, v8, v2

    .line 40
    .line 41
    aput-object v7, v8, v0

    .line 42
    .line 43
    const v7, 0x3dcccccd    # 0.1f

    .line 44
    .line 45
    .line 46
    if-ne v4, v1, :cond_1

    .line 47
    .line 48
    const v3, 0x7f040147

    .line 49
    .line 50
    .line 51
    invoke-static {v3, p1}, Lo9/e;->p(ILandroid/view/View;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    new-instance v4, Lu6/h;

    .line 56
    .line 57
    iget-object v9, v5, Lu6/h;->a:Lu6/g;

    .line 58
    .line 59
    iget-object v9, v9, Lu6/g;->a:Lu6/m;

    .line 60
    .line 61
    invoke-direct {v4, v9}, Lu6/h;-><init>(Lu6/m;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v7, v6, v3}, Lo9/e;->x(FII)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    filled-new-array {v6, v2}, [I

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    new-instance v9, Landroid/content/res/ColorStateList;

    .line 73
    .line 74
    invoke-direct {v9, v8, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v9}, Lu6/h;->n(Landroid/content/res/ColorStateList;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v3}, Lu6/h;->setTint(I)V

    .line 81
    .line 82
    .line 83
    filled-new-array {v6, v3}, [I

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    new-instance v6, Landroid/content/res/ColorStateList;

    .line 88
    .line 89
    invoke-direct {v6, v8, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 90
    .line 91
    .line 92
    new-instance v3, Lu6/h;

    .line 93
    .line 94
    iget-object v7, v5, Lu6/h;->a:Lu6/g;

    .line 95
    .line 96
    iget-object v7, v7, Lu6/g;->a:Lu6/m;

    .line 97
    .line 98
    invoke-direct {v3, v7}, Lu6/h;-><init>(Lu6/m;)V

    .line 99
    .line 100
    .line 101
    const/4 v7, -0x1

    .line 102
    invoke-virtual {v3, v7}, Lu6/h;->setTint(I)V

    .line 103
    .line 104
    .line 105
    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    .line 106
    .line 107
    invoke-direct {v7, v6, v4, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 108
    .line 109
    .line 110
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 111
    .line 112
    aput-object v7, v1, v2

    .line 113
    .line 114
    aput-object v5, v1, v0

    .line 115
    .line 116
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 117
    .line 118
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 119
    .line 120
    .line 121
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    if-ne v4, v0, :cond_2

    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-static {v7, v6, v0}, Lo9/e;->x(FII)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    filled-new-array {v1, v0}, [I

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 142
    .line 143
    invoke-direct {v1, v8, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 147
    .line 148
    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    .line 155
    .line 156
    :cond_2
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/m;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/m;->q:Landroid/view/accessibility/AccessibilityManager;

    .line 18
    .line 19
    new-instance v1, Lo0/b;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/material/textfield/m;->k:La0/b;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lo0/b;-><init>(La0/b;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final g(FIFF)Lu6/h;
    .locals 14

    .line 1
    move v0, p1

    .line 2
    move/from16 v1, p3

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    new-instance v3, Lu6/k;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v4, Lu6/k;

    .line 11
    .line 12
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v5, Lu6/k;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v6, Lu6/k;

    .line 21
    .line 22
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v7, Lu6/e;

    .line 26
    .line 27
    invoke-direct {v7, v2}, Lu6/e;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v8, Lu6/e;

    .line 31
    .line 32
    invoke-direct {v8, v2}, Lu6/e;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v9, Lu6/e;

    .line 36
    .line 37
    invoke-direct {v9, v2}, Lu6/e;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v10, Lu6/e;

    .line 41
    .line 42
    invoke-direct {v10, v2}, Lu6/e;-><init>(I)V

    .line 43
    .line 44
    .line 45
    new-instance v11, Lu6/a;

    .line 46
    .line 47
    invoke-direct {v11, p1}, Lu6/a;-><init>(F)V

    .line 48
    .line 49
    .line 50
    new-instance v12, Lu6/a;

    .line 51
    .line 52
    invoke-direct {v12, p1}, Lu6/a;-><init>(F)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lu6/a;

    .line 56
    .line 57
    invoke-direct {v0, v1}, Lu6/a;-><init>(F)V

    .line 58
    .line 59
    .line 60
    new-instance v13, Lu6/a;

    .line 61
    .line 62
    invoke-direct {v13, v1}, Lu6/a;-><init>(F)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lu6/m;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v3, v1, Lu6/m;->a:Ln5/d;

    .line 71
    .line 72
    iput-object v4, v1, Lu6/m;->b:Ln5/d;

    .line 73
    .line 74
    iput-object v5, v1, Lu6/m;->c:Ln5/d;

    .line 75
    .line 76
    iput-object v6, v1, Lu6/m;->d:Ln5/d;

    .line 77
    .line 78
    iput-object v11, v1, Lu6/m;->e:Lu6/c;

    .line 79
    .line 80
    iput-object v12, v1, Lu6/m;->f:Lu6/c;

    .line 81
    .line 82
    iput-object v13, v1, Lu6/m;->g:Lu6/c;

    .line 83
    .line 84
    iput-object v0, v1, Lu6/m;->h:Lu6/c;

    .line 85
    .line 86
    iput-object v7, v1, Lu6/m;->i:Lu6/e;

    .line 87
    .line 88
    iput-object v8, v1, Lu6/m;->j:Lu6/e;

    .line 89
    .line 90
    iput-object v9, v1, Lu6/m;->k:Lu6/e;

    .line 91
    .line 92
    iput-object v10, v1, Lu6/m;->l:Lu6/e;

    .line 93
    .line 94
    sget-object v0, Lu6/h;->w:Landroid/graphics/Paint;

    .line 95
    .line 96
    const-class v0, Lu6/h;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    move-object v3, p0

    .line 103
    iget-object v4, v3, Lcom/google/android/material/textfield/n;->b:Landroid/content/Context;

    .line 104
    .line 105
    const v5, 0x7f040147

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v5, v0}, Lcom/bumptech/glide/c;->m(Landroid/content/Context;ILjava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    new-instance v5, Lu6/h;

    .line 113
    .line 114
    invoke-direct {v5}, Lu6/h;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v4}, Lu6/h;->k(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v5, v0}, Lu6/h;->n(Landroid/content/res/ColorStateList;)V

    .line 125
    .line 126
    .line 127
    move/from16 v0, p4

    .line 128
    .line 129
    invoke-virtual {v5, v0}, Lu6/h;->m(F)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v1}, Lu6/h;->setShapeAppearanceModel(Lu6/m;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, v5, Lu6/h;->a:Lu6/g;

    .line 136
    .line 137
    iget-object v1, v0, Lu6/g;->g:Landroid/graphics/Rect;

    .line 138
    .line 139
    if-nez v1, :cond_0

    .line 140
    .line 141
    new-instance v1, Landroid/graphics/Rect;

    .line 142
    .line 143
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v1, v0, Lu6/g;->g:Landroid/graphics/Rect;

    .line 147
    .line 148
    :cond_0
    iget-object v0, v5, Lu6/h;->a:Lu6/g;

    .line 149
    .line 150
    iget-object v0, v0, Lu6/g;->g:Landroid/graphics/Rect;

    .line 151
    .line 152
    move/from16 v1, p2

    .line 153
    .line 154
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Lu6/h;->invalidateSelf()V

    .line 158
    .line 159
    .line 160
    return-object v5
.end method

.method public final i(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/m;->m:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/textfield/m;->m:Z

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/material/textfield/m;->s:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/material/textfield/m;->r:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
