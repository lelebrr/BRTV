.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;
    }
.end annotation


# static fields
.field public static final r:[I

.field public static final s:[I


# instance fields
.field public final f:Lcom/google/android/material/internal/h;

.field public final g:Lcom/google/android/material/internal/r;

.field public final h:I

.field public final i:[I

.field public j:Lj/i;

.field public final k:Landroidx/appcompat/widget/q;

.field public l:Z

.field public m:Z

.field public final n:I

.field public final o:I

.field public p:Landroid/graphics/Path;

.field public final q:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10100a0

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->r:[I

    .line 9
    .line 10
    const v0, -0x101009e

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->s:[I

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0403a6

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const/4 v9, 0x3

    const v10, 0x7f13038a

    move-object/from16 v1, p1

    .line 2
    invoke-static {v1, v7, v8, v10}, Ly6/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v11, Lcom/google/android/material/internal/r;

    invoke-direct {v11}, Lcom/google/android/material/internal/r;-><init>()V

    iput-object v11, v0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    const/4 v12, 0x2

    .line 4
    new-array v1, v12, [I

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->i:[I

    const/4 v13, 0x1

    .line 5
    iput-boolean v13, v0, Lcom/google/android/material/navigation/NavigationView;->l:Z

    .line 6
    iput-boolean v13, v0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    const/4 v14, 0x0

    .line 7
    iput v14, v0, Lcom/google/android/material/navigation/NavigationView;->n:I

    .line 8
    iput v14, v0, Lcom/google/android/material/navigation/NavigationView;->o:I

    .line 9
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/RectF;

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 11
    new-instance v6, Lcom/google/android/material/internal/h;

    .line 12
    invoke-direct {v6, v15}, Lk/l;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v6, v0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/h;

    .line 14
    sget-object v3, Lx5/a;->N:[I

    const v5, 0x7f13038a

    new-array v4, v14, [I

    move-object v1, v15

    move-object/from16 v2, p2

    move-object/from16 v16, v4

    move/from16 v4, p3

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/a0;->k(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)La1/b;

    move-result-object v1

    .line 16
    iget-object v2, v1, La1/b;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/TypedArray;

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {v1, v13}, La1/b;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 18
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v3, 0x7

    .line 19
    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 20
    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->o:I

    .line 21
    invoke-virtual {v2, v14, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 22
    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->n:I

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_3

    .line 24
    :cond_1
    invoke-static {v15, v7, v8, v10}, Lu6/m;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lu6/l;

    move-result-object v3

    invoke-virtual {v3}, Lu6/l;->a()Lu6/m;

    move-result-object v3

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 26
    new-instance v5, Lu6/h;

    invoke-direct {v5, v3}, Lu6/h;-><init>(Lu6/m;)V

    .line 27
    instance-of v3, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_2

    .line 28
    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 30
    invoke-virtual {v5, v3}, Lu6/h;->n(Landroid/content/res/ColorStateList;)V

    .line 31
    :cond_2
    invoke-virtual {v5, v15}, Lu6/h;->k(Landroid/content/Context;)V

    .line 32
    sget-object v3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 33
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/16 v3, 0x8

    .line 34
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 35
    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    .line 36
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    .line 37
    :cond_4
    invoke-virtual {v2, v12, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 38
    invoke-virtual {v0, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 39
    invoke-virtual {v2, v9, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 40
    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->h:I

    const/16 v3, 0x1e

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 42
    invoke-virtual {v1, v3}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v3, v5

    :goto_0
    const/16 v4, 0x21

    .line 43
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 44
    invoke-virtual {v2, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    const v6, 0x1010038

    if-nez v4, :cond_7

    if-nez v3, :cond_7

    .line 45
    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_7
    const/16 v7, 0xe

    .line 46
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 47
    invoke-virtual {v1, v7}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_2

    .line 48
    :cond_8
    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_2
    const/16 v7, 0x18

    .line 49
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 50
    invoke-virtual {v2, v7, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    :goto_3
    const/16 v8, 0xd

    .line 51
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 52
    invoke-virtual {v2, v8, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 53
    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    :cond_a
    const/16 v8, 0x19

    .line 54
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 55
    invoke-virtual {v1, v8}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    goto :goto_4

    :cond_b
    move-object v8, v5

    :goto_4
    if-nez v7, :cond_c

    if-nez v8, :cond_c

    const v8, 0x1010036

    .line 56
    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    :cond_c
    const/16 v10, 0xa

    .line 57
    invoke-virtual {v1, v10}, La1/b;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-nez v10, :cond_e

    const/16 v12, 0x11

    .line 58
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-nez v12, :cond_d

    const/16 v12, 0x12

    .line 59
    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 60
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v12, 0x13

    .line 61
    invoke-static {v10, v1, v12}, Lcom/bumptech/glide/d;->j(Landroid/content/Context;La1/b;I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 62
    invoke-virtual {v0, v1, v10}, Lcom/google/android/material/navigation/NavigationView;->c(La1/b;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v10

    const/16 v12, 0x10

    .line 63
    invoke-static {v15, v1, v12}, Lcom/bumptech/glide/d;->j(Landroid/content/Context;La1/b;I)Landroid/content/res/ColorStateList;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 64
    invoke-virtual {v0, v1, v5}, Lcom/google/android/material/navigation/NavigationView;->c(La1/b;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v9

    .line 65
    new-instance v13, Landroid/graphics/drawable/RippleDrawable;

    .line 66
    invoke-static {v12}, Ls6/c;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-direct {v13, v12, v5, v9}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 67
    iput-object v13, v11, Lcom/google/android/material/internal/r;->m:Landroid/graphics/drawable/RippleDrawable;

    .line 68
    invoke-virtual {v11, v14}, Lcom/google/android/material/internal/r;->j(Z)V

    :cond_e
    const/16 v5, 0xb

    .line 69
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 70
    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 71
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setItemHorizontalPadding(I)V

    :cond_f
    const/16 v5, 0x1a

    .line 72
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 73
    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 74
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setItemVerticalPadding(I)V

    :cond_10
    const/4 v5, 0x6

    .line 75
    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 76
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetStart(I)V

    const/4 v5, 0x5

    .line 77
    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 78
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetEnd(I)V

    const/16 v5, 0x20

    .line 79
    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 80
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetStart(I)V

    const/16 v5, 0x1f

    .line 81
    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 82
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    .line 83
    iget-boolean v5, v0, Lcom/google/android/material/navigation/NavigationView;->l:Z

    const/16 v9, 0x22

    .line 84
    invoke-virtual {v2, v9, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 85
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    .line 86
    iget-boolean v5, v0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    const/4 v9, 0x4

    .line 87
    invoke-virtual {v2, v9, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 88
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    const/16 v5, 0xc

    .line 89
    invoke-virtual {v2, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v9, 0xf

    const/4 v12, 0x1

    .line 90
    invoke-virtual {v2, v9, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 91
    invoke-virtual {v0, v9}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    .line 92
    new-instance v9, La0/b;

    const/16 v13, 0x14

    invoke-direct {v9, v13, v0}, La0/b;-><init>(ILjava/lang/Object;)V

    move-object/from16 v13, v17

    .line 93
    iput-object v9, v13, Lk/l;->e:Lk/j;

    .line 94
    iput v12, v11, Lcom/google/android/material/internal/r;->d:I

    .line 95
    invoke-virtual {v11, v15, v13}, Lcom/google/android/material/internal/r;->k(Landroid/content/Context;Lk/l;)V

    if-eqz v4, :cond_11

    .line 96
    iput v4, v11, Lcom/google/android/material/internal/r;->g:I

    .line 97
    invoke-virtual {v11, v14}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 98
    :cond_11
    iput-object v3, v11, Lcom/google/android/material/internal/r;->h:Landroid/content/res/ColorStateList;

    .line 99
    invoke-virtual {v11, v14}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 100
    iput-object v6, v11, Lcom/google/android/material/internal/r;->k:Landroid/content/res/ColorStateList;

    .line 101
    invoke-virtual {v11, v14}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v3

    .line 103
    iput v3, v11, Lcom/google/android/material/internal/r;->z:I

    .line 104
    iget-object v4, v11, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v4, :cond_12

    .line 105
    invoke-virtual {v4, v3}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_12
    if-eqz v7, :cond_13

    .line 106
    iput v7, v11, Lcom/google/android/material/internal/r;->i:I

    .line 107
    invoke-virtual {v11, v14}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 108
    :cond_13
    iput-object v8, v11, Lcom/google/android/material/internal/r;->j:Landroid/content/res/ColorStateList;

    .line 109
    invoke-virtual {v11, v14}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 110
    iput-object v10, v11, Lcom/google/android/material/internal/r;->l:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {v11, v14}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 112
    iput v5, v11, Lcom/google/android/material/internal/r;->p:I

    .line 113
    invoke-virtual {v11, v14}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 114
    iget-object v3, v13, Lk/l;->a:Landroid/content/Context;

    invoke-virtual {v13, v11, v3}, Lk/l;->b(Lk/y;Landroid/content/Context;)V

    .line 115
    iget-object v3, v11, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v3, :cond_16

    .line 116
    iget-object v3, v11, Lcom/google/android/material/internal/r;->f:Landroid/view/LayoutInflater;

    const v4, 0x7f0e0032

    .line 117
    invoke-virtual {v3, v4, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object v3, v11, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 118
    new-instance v4, Lcom/google/android/material/internal/o;

    iget-object v5, v11, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v4, v11, v5}, Lcom/google/android/material/internal/o;-><init>(Lcom/google/android/material/internal/r;Lcom/google/android/material/internal/NavigationMenuView;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/r1;)V

    .line 119
    iget-object v3, v11, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    if-nez v3, :cond_14

    .line 120
    new-instance v3, Lcom/google/android/material/internal/j;

    invoke-direct {v3, v11}, Lcom/google/android/material/internal/j;-><init>(Lcom/google/android/material/internal/r;)V

    iput-object v3, v11, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    .line 121
    :cond_14
    iget v3, v11, Lcom/google/android/material/internal/r;->z:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    .line 122
    iget-object v4, v11, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 123
    :cond_15
    iget-object v3, v11, Lcom/google/android/material/internal/r;->f:Landroid/view/LayoutInflater;

    const v4, 0x7f0e002f

    iget-object v5, v11, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 124
    invoke-virtual {v3, v4, v5, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v11, Lcom/google/android/material/internal/r;->b:Landroid/widget/LinearLayout;

    .line 125
    iget-object v3, v11, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v4, v11, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 126
    :cond_16
    iget-object v3, v11, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 127
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v3, 0x1b

    .line 128
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 129
    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 130
    iget-object v4, v11, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    if-eqz v4, :cond_17

    const/4 v5, 0x1

    .line 131
    iput-boolean v5, v4, Lcom/google/android/material/internal/j;->c:Z

    .line 132
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    invoke-virtual {v4, v3, v13}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    iget-object v3, v11, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    if-eqz v3, :cond_18

    .line 134
    iput-boolean v14, v3, Lcom/google/android/material/internal/j;->c:Z

    .line 135
    :cond_18
    invoke-virtual {v11, v14}, Lcom/google/android/material/internal/r;->j(Z)V

    :cond_19
    const/16 v3, 0x9

    .line 136
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 137
    invoke-virtual {v2, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 138
    iget-object v3, v11, Lcom/google/android/material/internal/r;->f:Landroid/view/LayoutInflater;

    .line 139
    iget-object v4, v11, Lcom/google/android/material/internal/r;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 140
    iget-object v3, v11, Lcom/google/android/material/internal/r;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 141
    iget-object v2, v11, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v14, v14, v14, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    :cond_1a
    invoke-virtual {v1}, La1/b;->F()V

    .line 143
    new-instance v1, Landroidx/appcompat/widget/q;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/widget/q;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->k:Landroidx/appcompat/widget/q;

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->k:Landroidx/appcompat/widget/q;

    .line 145
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->j:Lj/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lj/i;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lj/i;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->j:Lj/i;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->j:Lj/i;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public final a(Ln0/r1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ln0/r1;->d()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget v2, v0, Lcom/google/android/material/internal/r;->x:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v2, v1, :cond_1

    .line 14
    .line 15
    iput v1, v0, Lcom/google/android/material/internal/r;->x:I

    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/android/material/internal/r;->b:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-boolean v1, v0, Lcom/google/android/material/internal/r;->v:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget v1, v0, Lcom/google/android/material/internal/r;->x:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    iget-object v2, v0, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v2, v3, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {p1}, Ln0/r1;->a()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v1, v3, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lcom/google/android/material/internal/r;->b:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-static {v0, p1}, Ln0/s0;->b(Landroid/view/View;Ln0/r1;)Ln0/r1;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 7

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    .line 28
    .line 29
    invoke-static {p1, v3}, Lu7/d;->k(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const v4, 0x7f04013d

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 58
    .line 59
    sget-object v4, Lcom/google/android/material/navigation/NavigationView;->s:[I

    .line 60
    .line 61
    const/4 v5, 0x3

    .line 62
    new-array v5, v5, [[I

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    aput-object v4, v5, v6

    .line 66
    .line 67
    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->r:[I

    .line 68
    .line 69
    aput-object v6, v5, v2

    .line 70
    .line 71
    sget-object v2, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    .line 72
    .line 73
    const/4 v6, 0x2

    .line 74
    aput-object v2, v5, v6

    .line 75
    .line 76
    invoke-virtual {p1, v4, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    filled-new-array {p1, v0, v1}, [I

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {v3, v5, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 85
    .line 86
    .line 87
    return-object v3
.end method

.method public final c(La1/b;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/InsetDrawable;
    .locals 9

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget-object p1, p1, La1/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroid/content/res/TypedArray;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v2, 0x12

    .line 13
    .line 14
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    new-instance v4, Lu6/h;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v5, Lu6/a;

    .line 25
    .line 26
    int-to-float v6, v1

    .line 27
    invoke-direct {v5, v6}, Lu6/a;-><init>(F)V

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v0, v2, v5}, Lu6/m;->a(Landroid/content/Context;IILu6/c;)Lu6/l;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lu6/l;->a()Lu6/m;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {v4, v0}, Lu6/h;-><init>(Lu6/m;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, p2}, Lu6/h;->n(Landroid/content/res/ColorStateList;)V

    .line 42
    .line 43
    .line 44
    const/16 p2, 0x16

    .line 45
    .line 46
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const/16 p2, 0x17

    .line 51
    .line 52
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/16 p2, 0x15

    .line 57
    .line 58
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/16 p2, 0x14

    .line 63
    .line 64
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    .line 69
    .line 70
    move-object v3, p1

    .line 71
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 72
    .line 73
    .line 74
    return-object p1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/material/internal/j;->b:Lk/n;

    .line 6
    .line 7
    return-object v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/internal/r;->s:I

    .line 4
    .line 5
    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/internal/r;->r:I

    .line 4
    .line 5
    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/internal/r;->b:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/internal/r;->l:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/internal/r;->n:I

    .line 4
    .line 5
    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/internal/r;->p:I

    .line 4
    .line 5
    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/internal/r;->k:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/internal/r;->w:I

    .line 4
    .line 5
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/internal/r;->j:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    return-object v0
.end method

.method public getItemVerticalPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/internal/r;->o:I

    .line 4
    .line 5
    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubheaderInsetEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public getSubheaderInsetStart()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/internal/r;->t:I

    .line 4
    .line 5
    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lo9/d;->E(Landroid/view/ViewGroup;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->k:Landroidx/appcompat/widget/q;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    const/high16 v2, 0x40000000    # 2.0f

    .line 8
    .line 9
    iget v3, p0, Lcom/google/android/material/navigation/NavigationView;->h:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/h;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->c:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lk/l;->t(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->c:Landroid/os/Bundle;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/h;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Lk/l;->v(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    instance-of p3, p3, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/RectF;

    .line 11
    .line 12
    if-eqz p3, :cond_2

    .line 13
    .line 14
    iget p3, p0, Lcom/google/android/material/navigation/NavigationView;->o:I

    .line 15
    .line 16
    if-lez p3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    instance-of p4, p4, Lu6/h;

    .line 23
    .line 24
    if-eqz p4, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    check-cast p4, Lu6/h;

    .line 31
    .line 32
    iget-object v0, p4, Lu6/h;->a:Lu6/g;

    .line 33
    .line 34
    iget-object v0, v0, Lu6/g;->a:Lu6/m;

    .line 35
    .line 36
    invoke-virtual {v0}, Lu6/m;->f()Lu6/l;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget v2, p0, Lcom/google/android/material/navigation/NavigationView;->n:I

    .line 47
    .line 48
    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x3

    .line 53
    if-ne v1, v2, :cond_0

    .line 54
    .line 55
    int-to-float p3, p3

    .line 56
    new-instance v1, Lu6/a;

    .line 57
    .line 58
    invoke-direct {v1, p3}, Lu6/a;-><init>(F)V

    .line 59
    .line 60
    .line 61
    iput-object v1, v0, Lu6/l;->f:Lu6/c;

    .line 62
    .line 63
    new-instance v1, Lu6/a;

    .line 64
    .line 65
    invoke-direct {v1, p3}, Lu6/a;-><init>(F)V

    .line 66
    .line 67
    .line 68
    iput-object v1, v0, Lu6/l;->g:Lu6/c;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    int-to-float p3, p3

    .line 72
    new-instance v1, Lu6/a;

    .line 73
    .line 74
    invoke-direct {v1, p3}, Lu6/a;-><init>(F)V

    .line 75
    .line 76
    .line 77
    iput-object v1, v0, Lu6/l;->e:Lu6/c;

    .line 78
    .line 79
    new-instance v1, Lu6/a;

    .line 80
    .line 81
    invoke-direct {v1, p3}, Lu6/a;-><init>(F)V

    .line 82
    .line 83
    .line 84
    iput-object v1, v0, Lu6/l;->h:Lu6/c;

    .line 85
    .line 86
    :goto_0
    invoke-virtual {v0}, Lu6/l;->a()Lu6/m;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {p4, p3}, Lu6/h;->setShapeAppearanceModel(Lu6/m;)V

    .line 91
    .line 92
    .line 93
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    .line 94
    .line 95
    if-nez p3, :cond_1

    .line 96
    .line 97
    new-instance p3, Landroid/graphics/Path;

    .line 98
    .line 99
    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    .line 103
    .line 104
    :cond_1
    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    .line 105
    .line 106
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 107
    .line 108
    .line 109
    int-to-float p1, p1

    .line 110
    int-to-float p2, p2

    .line 111
    const/4 p3, 0x0

    .line 112
    invoke-virtual {v3, p3, p3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 113
    .line 114
    .line 115
    sget-object v0, Lu6/n;->a:Lu6/o;

    .line 116
    .line 117
    iget-object p1, p4, Lu6/h;->a:Lu6/g;

    .line 118
    .line 119
    iget-object v1, p1, Lu6/g;->a:Lu6/m;

    .line 120
    .line 121
    iget v2, p1, Lu6/g;->i:F

    .line 122
    .line 123
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    .line 124
    .line 125
    const/4 v4, 0x0

    .line 126
    invoke-virtual/range {v0 .. v5}, Lu6/o;->a(Lu6/m;FLandroid/graphics/RectF;Ls2/c;Landroid/graphics/Path;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/graphics/Path;

    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 137
    .line 138
    .line 139
    :goto_1
    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lk/l;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lk/n;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    iget-object v0, v0, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/j;->b(Lk/n;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/h;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lk/l;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Lk/n;

    .line 7
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    iget-object v0, v0, Lcom/google/android/material/internal/r;->e:Lcom/google/android/material/internal/j;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/j;->b(Lk/n;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerInsetEnd(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput p1, v0, Lcom/google/android/material/internal/r;->s:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput p1, v0, Lcom/google/android/material/internal/r;->r:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lo9/d;->B(Landroid/view/ViewGroup;F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/material/internal/r;->l:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Ld0/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput p1, v0, Lcom/google/android/material/internal/r;->n:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 10
    .line 11
    iput p1, v0, Lcom/google/android/material/internal/r;->n:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput p1, v0, Lcom/google/android/material/internal/r;->p:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 10
    .line 11
    iput p1, v0, Lcom/google/android/material/internal/r;->p:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/internal/r;->q:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput p1, v0, Lcom/google/android/material/internal/r;->q:I

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v0, Lcom/google/android/material/internal/r;->u:Z

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/material/internal/r;->k:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput p1, v0, Lcom/google/android/material/internal/r;->w:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput p1, v0, Lcom/google/android/material/internal/r;->i:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/material/internal/r;->j:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput p1, v0, Lcom/google/android/material/internal/r;->o:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 10
    .line 11
    iput p1, v0, Lcom/google/android/material/internal/r;->o:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/m;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, v0, Lcom/google/android/material/internal/r;->z:I

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput p1, v0, Lcom/google/android/material/internal/r;->t:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/r;

    .line 2
    .line 3
    iput p1, v0, Lcom/google/android/material/internal/r;->t:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->l:Z

    .line 2
    .line 3
    return-void
.end method
