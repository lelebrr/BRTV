.class public Landroidx/leanback/widget/BaseCardView;
.super Landroid/widget/FrameLayout;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/BaseCardView$LayoutParams;
    }
.end annotation


# static fields
.field public static final r:[I


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:I

.field public h:I

.field public i:Z

.field public final j:I

.field public final k:I

.field public final l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:Landroidx/leanback/widget/c;

.field public final q:Landroidx/leanback/widget/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10100a7

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/leanback/widget/BaseCardView;->r:[I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040073

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Landroidx/leanback/widget/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->q:Landroidx/leanback/widget/a;

    .line 4
    sget-object v0, Lh1/a;->c:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 5
    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->a:I

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_1

    :cond_0
    :goto_0
    const/4 p3, 0x1

    .line 8
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x5

    .line 10
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->b:I

    const/4 v0, 0x4

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->c:I

    .line 12
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->b:I

    if-ge p2, v0, :cond_2

    .line 13
    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->c:I

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c0011

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const/4 v0, 0x6

    .line 15
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->j:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c0012

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const/4 v0, 0x7

    .line 17
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->l:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c0010

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 19
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    iput-boolean p3, p0, Landroidx/leanback/widget/BaseCardView;->i:Z

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->d:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->e:Ljava/util/ArrayList;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->f:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->m:F

    .line 26
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->getFinalInfoVisFraction()F

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->n:F

    .line 27
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->getFinalInfoAlpha()F

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->o:F

    return-void

    .line 28
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    throw p2
.end method

.method private setInfoViewVisibility(Z)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/BaseCardView;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    if-ne v0, v2, :cond_3

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ge p1, v0, :cond_e

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ge p1, v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 p1, p1, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_2
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->f:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ge v5, v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iput v3, p0, Landroidx/leanback/widget/BaseCardView;->m:F

    .line 73
    .line 74
    goto/16 :goto_8

    .line 75
    .line 76
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 77
    .line 78
    const/4 v6, 0x2

    .line 79
    if-ne v0, v6, :cond_9

    .line 80
    .line 81
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->b:I

    .line 82
    .line 83
    if-ne v0, v6, :cond_7

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->b()V

    .line 86
    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ge v0, v4, :cond_4

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Landroid/view/View;

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    if-eqz p1, :cond_5

    .line 110
    .line 111
    const/high16 v3, 0x3f800000    # 1.0f

    .line 112
    .line 113
    :cond_5
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->n:F

    .line 114
    .line 115
    cmpl-float p1, p1, v3

    .line 116
    .line 117
    if-nez p1, :cond_6

    .line 118
    .line 119
    goto/16 :goto_8

    .line 120
    .line 121
    :cond_6
    new-instance p1, Landroidx/leanback/widget/c;

    .line 122
    .line 123
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->n:F

    .line 124
    .line 125
    const/4 v1, 0x1

    .line 126
    invoke-direct {p1, p0, v0, v3, v1}, Landroidx/leanback/widget/c;-><init>(Landroidx/leanback/widget/BaseCardView;FFI)V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 130
    .line 131
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->l:I

    .line 132
    .line 133
    int-to-long v0, v0

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 138
    .line 139
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 140
    .line 141
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 148
    .line 149
    new-instance v0, Landroidx/leanback/widget/b;

    .line 150
    .line 151
    const/4 v1, 0x1

    .line 152
    invoke-direct {v0, p0, v1}, Landroidx/leanback/widget/b;-><init>(Landroidx/leanback/widget/BaseCardView;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_8

    .line 164
    .line 165
    :cond_7
    const/4 v0, 0x0

    .line 166
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-ge v0, v2, :cond_e

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Landroid/view/View;

    .line 177
    .line 178
    if-eqz p1, :cond_8

    .line 179
    .line 180
    const/4 v3, 0x0

    .line 181
    goto :goto_5

    .line 182
    :cond_8
    const/16 v3, 0x8

    .line 183
    .line 184
    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_9
    const/4 v4, 0x1

    .line 191
    if-ne v0, v4, :cond_e

    .line 192
    .line 193
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->b()V

    .line 194
    .line 195
    .line 196
    if-eqz p1, :cond_a

    .line 197
    .line 198
    const/4 v0, 0x0

    .line 199
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-ge v0, v4, :cond_a

    .line 204
    .line 205
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    check-cast v4, Landroid/view/View;

    .line 210
    .line 211
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    add-int/lit8 v0, v0, 0x1

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_a
    if-eqz p1, :cond_b

    .line 218
    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_b
    const/4 v0, 0x0

    .line 223
    :goto_7
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->o:F

    .line 224
    .line 225
    cmpl-float v0, v0, v1

    .line 226
    .line 227
    if-nez v0, :cond_c

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_c
    new-instance v0, Landroidx/leanback/widget/c;

    .line 231
    .line 232
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->o:F

    .line 233
    .line 234
    if-eqz p1, :cond_d

    .line 235
    .line 236
    const/high16 v3, 0x3f800000    # 1.0f

    .line 237
    .line 238
    :cond_d
    const/4 p1, 0x0

    .line 239
    invoke-direct {v0, p0, v1, v3, p1}, Landroidx/leanback/widget/c;-><init>(Landroidx/leanback/widget/BaseCardView;FFI)V

    .line 240
    .line 241
    .line 242
    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 243
    .line 244
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->k:I

    .line 245
    .line 246
    int-to-long v1, p1

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 251
    .line 252
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 253
    .line 254
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 261
    .line 262
    new-instance v0, Landroidx/leanback/widget/b;

    .line 263
    .line 264
    const/4 v1, 0x2

    .line 265
    invoke-direct {v0, p0, v1}, Landroidx/leanback/widget/b;-><init>(Landroidx/leanback/widget/BaseCardView;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 272
    .line 273
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 274
    .line 275
    .line 276
    :cond_e
    :goto_8
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->b()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->g:I

    .line 8
    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    iget-object v5, p0, Landroidx/leanback/widget/BaseCardView;->f:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-ge v3, v6, :cond_0

    .line 28
    .line 29
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v0, v4

    .line 53
    :cond_1
    new-instance v1, Landroidx/leanback/widget/c;

    .line 54
    .line 55
    iget v2, p0, Landroidx/leanback/widget/BaseCardView;->m:F

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    int-to-float p1, v0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    :goto_1
    const/4 v0, 0x2

    .line 63
    invoke-direct {v1, p0, v2, p1, v0}, Landroidx/leanback/widget/c;-><init>(Landroidx/leanback/widget/BaseCardView;FFI)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 67
    .line 68
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->l:I

    .line 69
    .line 70
    int-to-long v2, p1

    .line 71
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 75
    .line 76
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 77
    .line 78
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 85
    .line 86
    new-instance v0, Landroidx/leanback/widget/b;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-direct {v0, p0, v1}, Landroidx/leanback/widget/b;-><init>(Landroidx/leanback/widget/BaseCardView;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->p:Landroidx/leanback/widget/c;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    const/4 v1, -0x2

    .line 2
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;->a:I

    return-object v0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 4
    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    const/4 v1, -0x2

    .line 5
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;->a:I

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 3
    instance-of v0, p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    check-cast p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    .line 5
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 6
    iput v1, v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;->a:I

    .line 7
    iget p1, p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;->a:I

    iput p1, v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;->a:I

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    .line 9
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iput v1, v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;->a:I

    :goto_0
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCardType()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtraVisibility()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFinalInfoAlpha()F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->b:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    .line 21
    :goto_0
    return v0
.end method

.method public final getFinalInfoVisFraction()F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->b:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    :goto_0
    return v0
.end method

.method public getInfoVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final onCreateDrawableState(I)[I
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    .line 11
    aget v4, p1, v1

    .line 12
    .line 13
    const v5, 0x10100a7

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    if-ne v4, v5, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    :cond_0
    const v5, 0x101009e

    .line 21
    .line 22
    .line 23
    if-ne v4, v5, :cond_1

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    if-eqz v2, :cond_3

    .line 30
    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    sget-object p1, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    if-eqz v2, :cond_4

    .line 37
    .line 38
    sget-object p1, Landroidx/leanback/widget/BaseCardView;->r:[I

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_4
    if-eqz v3, :cond_5

    .line 42
    .line 43
    sget-object p1, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_5
    sget-object p1, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 47
    .line 48
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->q:Landroidx/leanback/widget/a;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    int-to-float v1, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/16 v6, 0x8

    .line 16
    .line 17
    if-ge v3, v5, :cond_1

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eq v5, v6, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    float-to-int v6, v1

    .line 36
    iget v7, v0, Landroidx/leanback/widget/BaseCardView;->g:I

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    add-int/2addr v8, v7

    .line 43
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    int-to-float v7, v7

    .line 48
    add-float/2addr v7, v1

    .line 49
    float-to-int v7, v7

    .line 50
    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/view/View;->layout(IIII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    int-to-float v4, v4

    .line 58
    add-float/2addr v1, v4

    .line 59
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 63
    .line 64
    if-eqz v3, :cond_a

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    :goto_1
    iget-object v7, v0, Landroidx/leanback/widget/BaseCardView;->e:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-ge v4, v8, :cond_2

    .line 76
    .line 77
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    int-to-float v7, v7

    .line 88
    add-float/2addr v5, v7

    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget v4, v0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 93
    .line 94
    const/4 v8, 0x1

    .line 95
    if-ne v4, v8, :cond_3

    .line 96
    .line 97
    sub-float/2addr v1, v5

    .line 98
    cmpg-float v4, v1, v3

    .line 99
    .line 100
    if-gez v4, :cond_5

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    const/4 v8, 0x2

    .line 105
    if-ne v4, v8, :cond_4

    .line 106
    .line 107
    iget v4, v0, Landroidx/leanback/widget/BaseCardView;->b:I

    .line 108
    .line 109
    if-ne v4, v8, :cond_5

    .line 110
    .line 111
    iget v4, v0, Landroidx/leanback/widget/BaseCardView;->n:F

    .line 112
    .line 113
    mul-float v5, v5, v4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    iget v4, v0, Landroidx/leanback/widget/BaseCardView;->m:F

    .line 117
    .line 118
    sub-float/2addr v1, v4

    .line 119
    :cond_5
    :goto_2
    const/4 v4, 0x0

    .line 120
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-ge v4, v8, :cond_8

    .line 125
    .line 126
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eq v9, v6, :cond_7

    .line 137
    .line 138
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    int-to-float v10, v9

    .line 143
    cmpl-float v10, v10, v5

    .line 144
    .line 145
    if-lez v10, :cond_6

    .line 146
    .line 147
    float-to-int v9, v5

    .line 148
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    float-to-int v11, v1

    .line 153
    iget v12, v0, Landroidx/leanback/widget/BaseCardView;->g:I

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    add-int/2addr v13, v12

    .line 160
    int-to-float v9, v9

    .line 161
    add-float/2addr v1, v9

    .line 162
    float-to-int v12, v1

    .line 163
    invoke-virtual {v8, v10, v11, v13, v12}, Landroid/view/View;->layout(IIII)V

    .line 164
    .line 165
    .line 166
    sub-float/2addr v5, v9

    .line 167
    cmpg-float v8, v5, v3

    .line 168
    .line 169
    if-gtz v8, :cond_7

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    :goto_4
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 176
    .line 177
    const/4 v4, 0x3

    .line 178
    if-ne v3, v4, :cond_a

    .line 179
    .line 180
    const/4 v3, 0x0

    .line 181
    :goto_5
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->f:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-ge v3, v5, :cond_a

    .line 188
    .line 189
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    check-cast v4, Landroid/view/View;

    .line 194
    .line 195
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eq v5, v6, :cond_9

    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    float-to-int v7, v1

    .line 206
    iget v8, v0, Landroidx/leanback/widget/BaseCardView;->g:I

    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    add-int/2addr v9, v8

    .line 213
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    int-to-float v8, v8

    .line 218
    add-float/2addr v8, v1

    .line 219
    float-to-int v8, v8

    .line 220
    invoke-virtual {v4, v5, v7, v9, v8}, Landroid/view/View;->layout(IIII)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    int-to-float v4, v4

    .line 228
    add-float/2addr v1, v4

    .line 229
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_a
    sub-int v1, p4, p2

    .line 233
    .line 234
    sub-int v3, p5, p3

    .line 235
    .line 236
    invoke-virtual {p0, v2, v2, v1, v3}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public final onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->g:I

    .line 5
    .line 6
    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->h:I

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/leanback/widget/BaseCardView;->d:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Landroidx/leanback/widget/BaseCardView;->e:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->f:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    const/4 v8, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v8, 0x0

    .line 35
    :goto_0
    const/4 v9, 0x2

    .line 36
    const/4 v10, 0x0

    .line 37
    if-eqz v8, :cond_6

    .line 38
    .line 39
    iget v8, v0, Landroidx/leanback/widget/BaseCardView;->b:I

    .line 40
    .line 41
    if-eqz v8, :cond_5

    .line 42
    .line 43
    if-eq v8, v7, :cond_4

    .line 44
    .line 45
    if-eq v8, v9, :cond_2

    .line 46
    .line 47
    :cond_1
    const/4 v6, 0x0

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    if-ne v6, v9, :cond_3

    .line 50
    .line 51
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->n:F

    .line 52
    .line 53
    cmpl-float v6, v6, v10

    .line 54
    .line 55
    if-lez v6, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isSelected()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isActivated()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    goto :goto_2

    .line 68
    :cond_5
    :goto_1
    const/4 v6, 0x1

    .line 69
    :goto_2
    if-eqz v6, :cond_6

    .line 70
    .line 71
    const/4 v6, 0x1

    .line 72
    goto :goto_3

    .line 73
    :cond_6
    const/4 v6, 0x0

    .line 74
    :goto_3
    iget v8, v0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 75
    .line 76
    const/4 v11, 0x3

    .line 77
    if-ne v8, v11, :cond_7

    .line 78
    .line 79
    const/4 v8, 0x1

    .line 80
    goto :goto_4

    .line 81
    :cond_7
    const/4 v8, 0x0

    .line 82
    :goto_4
    if-eqz v8, :cond_8

    .line 83
    .line 84
    iget v8, v0, Landroidx/leanback/widget/BaseCardView;->m:F

    .line 85
    .line 86
    cmpl-float v8, v8, v10

    .line 87
    .line 88
    if-lez v8, :cond_8

    .line 89
    .line 90
    const/4 v8, 0x1

    .line 91
    goto :goto_5

    .line 92
    :cond_8
    const/4 v8, 0x0

    .line 93
    :goto_5
    const/4 v12, 0x0

    .line 94
    :goto_6
    const/16 v13, 0x8

    .line 95
    .line 96
    if-ge v12, v5, :cond_e

    .line 97
    .line 98
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    if-nez v14, :cond_9

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_9
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v15

    .line 109
    check-cast v15, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    .line 110
    .line 111
    iget v15, v15, Landroidx/leanback/widget/BaseCardView$LayoutParams;->a:I

    .line 112
    .line 113
    if-ne v15, v7, :cond_b

    .line 114
    .line 115
    iget v15, v0, Landroidx/leanback/widget/BaseCardView;->o:F

    .line 116
    .line 117
    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    if-eqz v6, :cond_a

    .line 124
    .line 125
    const/4 v13, 0x0

    .line 126
    :cond_a
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_b
    if-ne v15, v9, :cond_d

    .line 131
    .line 132
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    if-eqz v8, :cond_c

    .line 136
    .line 137
    const/4 v13, 0x0

    .line 138
    :cond_c
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_d
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_e
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    const/4 v6, 0x0

    .line 156
    const/4 v8, 0x0

    .line 157
    const/4 v12, 0x0

    .line 158
    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    if-ge v6, v14, :cond_10

    .line 163
    .line 164
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    check-cast v14, Landroid/view/View;

    .line 169
    .line 170
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    if-eq v15, v13, :cond_f

    .line 175
    .line 176
    invoke-virtual {v0, v14, v5, v5}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 177
    .line 178
    .line 179
    iget v15, v0, Landroidx/leanback/widget/BaseCardView;->g:I

    .line 180
    .line 181
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->g:I

    .line 190
    .line 191
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    add-int/2addr v8, v1

    .line 196
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 205
    .line 206
    const/4 v1, 0x0

    .line 207
    goto :goto_8

    .line 208
    :cond_10
    iget v1, v0, Landroidx/leanback/widget/BaseCardView;->g:I

    .line 209
    .line 210
    div-int/2addr v1, v9

    .line 211
    int-to-float v1, v1

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 213
    .line 214
    .line 215
    div-int/lit8 v1, v8, 0x2

    .line 216
    .line 217
    int-to-float v1, v1

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 219
    .line 220
    .line 221
    iget v1, v0, Landroidx/leanback/widget/BaseCardView;->g:I

    .line 222
    .line 223
    const/high16 v2, 0x40000000    # 2.0f

    .line 224
    .line 225
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 230
    .line 231
    if-eqz v2, :cond_11

    .line 232
    .line 233
    const/4 v2, 0x1

    .line 234
    goto :goto_9

    .line 235
    :cond_11
    const/4 v2, 0x0

    .line 236
    :goto_9
    if-eqz v2, :cond_18

    .line 237
    .line 238
    const/4 v2, 0x0

    .line 239
    const/4 v6, 0x0

    .line 240
    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 241
    .line 242
    .line 243
    move-result v14

    .line 244
    if-ge v2, v14, :cond_14

    .line 245
    .line 246
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    check-cast v14, Landroid/view/View;

    .line 251
    .line 252
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 253
    .line 254
    .line 255
    move-result v15

    .line 256
    if-eq v15, v13, :cond_13

    .line 257
    .line 258
    invoke-virtual {v0, v14, v1, v5}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 259
    .line 260
    .line 261
    iget v15, v0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 262
    .line 263
    if-eq v15, v7, :cond_12

    .line 264
    .line 265
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 266
    .line 267
    .line 268
    move-result v15

    .line 269
    add-int/2addr v6, v15

    .line 270
    :cond_12
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    .line 271
    .line 272
    .line 273
    move-result v14

    .line 274
    invoke-static {v12, v14}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 275
    .line 276
    .line 277
    move-result v12

    .line 278
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 279
    .line 280
    goto :goto_a

    .line 281
    :cond_14
    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 282
    .line 283
    if-ne v2, v11, :cond_15

    .line 284
    .line 285
    const/4 v2, 0x1

    .line 286
    goto :goto_b

    .line 287
    :cond_15
    const/4 v2, 0x0

    .line 288
    :goto_b
    if-eqz v2, :cond_17

    .line 289
    .line 290
    const/4 v2, 0x0

    .line 291
    const/4 v3, 0x0

    .line 292
    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 293
    .line 294
    .line 295
    move-result v11

    .line 296
    if-ge v2, v11, :cond_19

    .line 297
    .line 298
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v11

    .line 302
    check-cast v11, Landroid/view/View;

    .line 303
    .line 304
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 305
    .line 306
    .line 307
    move-result v14

    .line 308
    if-eq v14, v13, :cond_16

    .line 309
    .line 310
    invoke-virtual {v0, v11, v1, v5}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 314
    .line 315
    .line 316
    move-result v14

    .line 317
    add-int/2addr v3, v14

    .line 318
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    invoke-static {v12, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 323
    .line 324
    .line 325
    move-result v12

    .line 326
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 327
    .line 328
    goto :goto_c

    .line 329
    :cond_17
    const/4 v3, 0x0

    .line 330
    goto :goto_d

    .line 331
    :cond_18
    const/4 v3, 0x0

    .line 332
    const/4 v6, 0x0

    .line 333
    :cond_19
    :goto_d
    iget v1, v0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 334
    .line 335
    if-eqz v1, :cond_1a

    .line 336
    .line 337
    const/4 v1, 0x1

    .line 338
    goto :goto_e

    .line 339
    :cond_1a
    const/4 v1, 0x0

    .line 340
    :goto_e
    if-eqz v1, :cond_1b

    .line 341
    .line 342
    iget v1, v0, Landroidx/leanback/widget/BaseCardView;->b:I

    .line 343
    .line 344
    if-ne v1, v9, :cond_1b

    .line 345
    .line 346
    const/4 v1, 0x1

    .line 347
    goto :goto_f

    .line 348
    :cond_1b
    const/4 v1, 0x0

    .line 349
    :goto_f
    int-to-float v2, v8

    .line 350
    int-to-float v4, v6

    .line 351
    if-eqz v1, :cond_1c

    .line 352
    .line 353
    iget v5, v0, Landroidx/leanback/widget/BaseCardView;->n:F

    .line 354
    .line 355
    mul-float v4, v4, v5

    .line 356
    .line 357
    :cond_1c
    add-float/2addr v2, v4

    .line 358
    int-to-float v3, v3

    .line 359
    add-float/2addr v2, v3

    .line 360
    if-eqz v1, :cond_1d

    .line 361
    .line 362
    goto :goto_10

    .line 363
    :cond_1d
    iget v10, v0, Landroidx/leanback/widget/BaseCardView;->m:F

    .line 364
    .line 365
    :goto_10
    sub-float/2addr v2, v10

    .line 366
    float-to-int v1, v2

    .line 367
    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->h:I

    .line 368
    .line 369
    iget v1, v0, Landroidx/leanback/widget/BaseCardView;->g:I

    .line 370
    .line 371
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    add-int/2addr v2, v1

    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    add-int/2addr v1, v2

    .line 381
    move/from16 v2, p1

    .line 382
    .line 383
    invoke-static {v1, v2, v12}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->h:I

    .line 388
    .line 389
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    add-int/2addr v3, v2

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    add-int/2addr v2, v3

    .line 399
    shl-int/lit8 v3, v12, 0x10

    .line 400
    .line 401
    move/from16 v4, p2

    .line 402
    .line 403
    invoke-static {v2, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 408
    .line 409
    .line 410
    return-void
.end method

.method public setActivated(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->b:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_3

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroidx/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public setCardType(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Invalid card type specified: "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ". Defaulting to type CARD_TYPE_MAIN_ONLY."

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "BaseCardView"

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public setExtraVisibility(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->c:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->c:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setInfoVisibility(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->b:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->b()V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->b:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->getFinalInfoVisFraction()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->n:F

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->getFinalInfoAlpha()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->o:F

    .line 24
    .line 25
    cmpl-float v0, p1, v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->o:F

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->e:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge p1, v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/view/View;

    .line 45
    .line 46
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->o:F

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->q:Landroidx/leanback/widget/a;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->a:I

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->i:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->i:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->j:I

    .line 38
    .line 39
    int-to-long v1, p1

    .line 40
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseCardView;->a(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->b:I

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    if-ne v0, v1, :cond_3

    .line 53
    .line 54
    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    return-void
.end method

.method public setSelectedAnimationDelayed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
