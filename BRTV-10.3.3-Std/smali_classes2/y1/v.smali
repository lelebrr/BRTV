.class public abstract Ly1/v;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ly1/u;


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[Ljava/lang/String;

.field public static k:Ljava/lang/reflect/Method; = null

.field public static l:Ljava/lang/reflect/Method; = null

.field public static m:Z = false

.field public static n:Z = true

.field public static o:Z = true

.field public static p:Ljava/lang/reflect/Method;

.field public static q:Z

.field public static r:Ljava/lang/reflect/Method;

.field public static s:Z

.field public static t:Ljava/lang/reflect/Field;

.field public static u:Z


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    const v0, 0x10103e2

    .line 2
    .line 3
    .line 4
    const v1, 0x101044f

    .line 5
    .line 6
    .line 7
    const v2, 0x1010141

    .line 8
    .line 9
    .line 10
    const v3, 0x1010198

    .line 11
    .line 12
    .line 13
    filled-new-array {v2, v3, v0, v1}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Ly1/v;->a:[I

    .line 18
    .line 19
    const v0, 0x10104cf

    .line 20
    .line 21
    .line 22
    filled-new-array {v0}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Ly1/v;->b:[I

    .line 27
    .line 28
    const v0, 0x101047c

    .line 29
    .line 30
    .line 31
    filled-new-array {v0}, [I

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Ly1/v;->c:[I

    .line 36
    .line 37
    const v0, 0x10103e1

    .line 38
    .line 39
    .line 40
    filled-new-array {v0}, [I

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Ly1/v;->d:[I

    .line 45
    .line 46
    const v0, 0x10104bc

    .line 47
    .line 48
    .line 49
    const v1, 0x10104bd

    .line 50
    .line 51
    .line 52
    filled-new-array {v0, v1}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Ly1/v;->e:[I

    .line 57
    .line 58
    const v0, 0x1010430

    .line 59
    .line 60
    .line 61
    filled-new-array {v0}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Ly1/v;->f:[I

    .line 66
    .line 67
    const v0, 0x10103e0

    .line 68
    .line 69
    .line 70
    filled-new-array {v0}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Ly1/v;->g:[I

    .line 75
    .line 76
    const v0, 0x101047e

    .line 77
    .line 78
    .line 79
    const v1, 0x101047f

    .line 80
    .line 81
    .line 82
    const v2, 0x101047d

    .line 83
    .line 84
    .line 85
    filled-new-array {v2, v0, v1}, [I

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Ly1/v;->h:[I

    .line 90
    .line 91
    const v0, 0x10104ca

    .line 92
    .line 93
    .line 94
    filled-new-array {v0}, [I

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Ly1/v;->i:[I

    .line 99
    .line 100
    const-string v0, "android:visibilityPropagation:visibility"

    .line 101
    .line 102
    const-string v1, "android:visibilityPropagation:center"

    .line 103
    .line 104
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sput-object v0, Ly1/v;->j:[Ljava/lang/String;

    .line 109
    .line 110
    return-void
.end method

.method public static c(Landroid/view/View;Ly1/e0;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Visibility;)Landroid/animation/ObjectAnimator;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 7
    .line 8
    .line 9
    move-result v5

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    iget-object v7, v1, Ly1/e0;->b:Landroid/view/View;

    .line 15
    .line 16
    const v8, 0x7f0b0433

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    check-cast v7, [I

    .line 24
    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    aget v8, v7, v4

    .line 28
    .line 29
    sub-int/2addr v8, p2

    .line 30
    int-to-float v8, v8

    .line 31
    add-float/2addr v8, v5

    .line 32
    aget v7, v7, v3

    .line 33
    .line 34
    sub-int v7, v7, p3

    .line 35
    .line 36
    int-to-float v7, v7

    .line 37
    add-float/2addr v7, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move/from16 v8, p4

    .line 40
    .line 41
    move/from16 v7, p5

    .line 42
    .line 43
    :goto_0
    sub-float v9, v8, v5

    .line 44
    .line 45
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    add-int/2addr v9, p2

    .line 50
    sub-float v10, v7, v6

    .line 51
    .line 52
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    add-int v10, v10, p3

    .line 57
    .line 58
    invoke-virtual {p0, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 62
    .line 63
    .line 64
    cmpl-float v11, v8, p6

    .line 65
    .line 66
    if-nez v11, :cond_1

    .line 67
    .line 68
    cmpl-float v11, v7, p7

    .line 69
    .line 70
    if-nez v11, :cond_1

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    return-object v0

    .line 74
    :cond_1
    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 75
    .line 76
    new-array v12, v2, [F

    .line 77
    .line 78
    aput v8, v12, v4

    .line 79
    .line 80
    aput p6, v12, v3

    .line 81
    .line 82
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 87
    .line 88
    new-array v12, v2, [F

    .line 89
    .line 90
    aput v7, v12, v4

    .line 91
    .line 92
    aput p7, v12, v3

    .line 93
    .line 94
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    .line 99
    .line 100
    aput-object v8, v2, v4

    .line 101
    .line 102
    aput-object v7, v2, v3

    .line 103
    .line 104
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v3, Ly1/f0;

    .line 109
    .line 110
    iget-object v1, v1, Ly1/e0;->b:Landroid/view/View;

    .line 111
    .line 112
    move-object p1, v3

    .line 113
    move-object p2, p0

    .line 114
    move-object/from16 p3, v1

    .line 115
    .line 116
    move/from16 p4, v9

    .line 117
    .line 118
    move/from16 p5, v10

    .line 119
    .line 120
    move/from16 p6, v5

    .line 121
    .line 122
    move/from16 p7, v6

    .line 123
    .line 124
    invoke-direct/range {p1 .. p7}, Ly1/f0;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    .line 125
    .line 126
    .line 127
    move-object/from16 v0, p9

    .line 128
    .line 129
    invoke-virtual {v0, v3}, Landroidx/transition/Transition;->a(Ly1/y;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 136
    .line 137
    .line 138
    move-object/from16 v0, p8

    .line 139
    .line 140
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    .line 142
    .line 143
    return-object v2
.end method

.method public static d(Landroid/graphics/Canvas;Z)V
    .locals 4

    .line 1
    const-class v0, Landroid/graphics/Canvas;

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1d

    .line 6
    .line 7
    if-lt v1, v2, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Ln0/f1;->j(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-static {p0}, Ln0/f1;->v(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    const/16 v2, 0x1c

    .line 20
    .line 21
    if-eq v1, v2, :cond_5

    .line 22
    .line 23
    sget-boolean v1, Ly1/v;->m:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :try_start_0
    const-string v3, "insertReorderBarrier"

    .line 30
    .line 31
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sput-object v3, Ly1/v;->k:Ljava/lang/reflect/Method;

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 38
    .line 39
    .line 40
    const-string v3, "insertInorderBarrier"

    .line 41
    .line 42
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Ly1/v;->l:Ljava/lang/reflect/Method;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    sput-boolean v1, Ly1/v;->m:Z

    .line 52
    .line 53
    :cond_2
    if-eqz p1, :cond_3

    .line 54
    .line 55
    :try_start_1
    sget-object v0, Ly1/v;->k:Ljava/lang/reflect/Method;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 66
    .line 67
    sget-object p1, Ly1/v;->l:Ljava/lang/reflect/Method;

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :catch_2
    :cond_4
    :goto_2
    return-void

    .line 86
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string p1, "This method doesn\'t work on Pie!"

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public static f(Ly1/e0;I)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Ly1/e0;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    const-string v1, "android:visibilityPropagation:center"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, [I

    .line 14
    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    aget p0, p0, p1

    .line 19
    .line 20
    return p0
.end method

.method public static j(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ln0/f1;->n(Landroid/view/ViewGroup;Z)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-boolean v0, Ly1/v;->o:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-static {p0, p1}, Ln0/f1;->n(Landroid/view/ViewGroup;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const/4 p0, 0x0

    .line 20
    sput-boolean p0, Ly1/v;->o:Z

    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public abstract e(Landroid/view/ViewGroup;Landroidx/transition/Transition;Ly1/e0;Ly1/e0;)J
.end method

.method public abstract g()Landroid/graphics/Rect;
.end method

.method public h(Landroid/view/View;IIII)V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x4

    .line 5
    const/4 v4, 0x1

    .line 6
    sget-boolean v5, Ly1/v;->s:Z

    .line 7
    .line 8
    if-nez v5, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-class v5, Landroid/view/View;

    .line 11
    .line 12
    const-string v6, "setFrame"

    .line 13
    .line 14
    new-array v7, v3, [Ljava/lang/Class;

    .line 15
    .line 16
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    aput-object v8, v7, v2

    .line 19
    .line 20
    aput-object v8, v7, v4

    .line 21
    .line 22
    aput-object v8, v7, v1

    .line 23
    .line 24
    aput-object v8, v7, v0

    .line 25
    .line 26
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    sput-object v5, Ly1/v;->r:Ljava/lang/reflect/Method;

    .line 31
    .line 32
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v5

    .line 37
    const-string v6, "ViewUtilsBase"

    .line 38
    .line 39
    const-string v7, "Failed to retrieve setFrame method"

    .line 40
    .line 41
    invoke-static {v6, v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    sput-boolean v4, Ly1/v;->s:Z

    .line 45
    .line 46
    :cond_0
    sget-object v5, Ly1/v;->r:Ljava/lang/reflect/Method;

    .line 47
    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p5

    .line 66
    new-array v3, v3, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object p2, v3, v2

    .line 69
    .line 70
    aput-object p3, v3, v4

    .line 71
    .line 72
    aput-object p4, v3, v1

    .line 73
    .line 74
    aput-object p5, v3, v0

    .line 75
    .line 76
    invoke-virtual {v5, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_1
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw p2

    .line 91
    :catch_2
    :cond_1
    :goto_1
    return-void
.end method

.method public i(ILandroid/view/View;)V
    .locals 3

    .line 1
    sget-boolean v0, Ly1/v;->u:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :try_start_0
    const-class v1, Landroid/view/View;

    .line 7
    .line 8
    const-string v2, "mViewFlags"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sput-object v1, Ly1/v;->t:Ljava/lang/reflect/Field;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string v1, "ViewUtilsBase"

    .line 21
    .line 22
    const-string v2, "fetchViewFlagsField: "

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    sput-boolean v0, Ly1/v;->u:Z

    .line 28
    .line 29
    :cond_0
    sget-object v0, Ly1/v;->t:Ljava/lang/reflect/Field;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sget-object v1, Ly1/v;->t:Ljava/lang/reflect/Field;

    .line 38
    .line 39
    and-int/lit8 v0, v0, -0xd

    .line 40
    .line 41
    or-int/2addr p1, v0

    .line 42
    invoke-virtual {v1, p2, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    .line 44
    .line 45
    :catch_1
    :cond_1
    return-void
.end method
