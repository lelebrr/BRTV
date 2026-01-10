.class public Landroidx/transition/ChangeClipBounds;
.super Landroidx/transition/Transition;
.source "MyApplication"


# static fields
.field public static final x:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "android:clipBounds:clip"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/transition/ChangeClipBounds;->x:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static F(Ly1/e0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/e0;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object p0, p0, Ly1/e0;->a:Ljava/util/HashMap;

    .line 19
    .line 20
    const-string v2, "android:clipBounds:clip"

    .line 21
    .line 22
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    new-instance v1, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 39
    .line 40
    .line 41
    const-string v0, "android:clipBounds:bounds"

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public final c(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/ChangeClipBounds;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/ChangeClipBounds;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;Ly1/e0;Ly1/e0;)Landroid/animation/Animator;
    .locals 8

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p2, :cond_7

    .line 6
    .line 7
    if-eqz p3, :cond_7

    .line 8
    .line 9
    iget-object p2, p2, Ly1/e0;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    const-string v3, "android:clipBounds:clip"

    .line 12
    .line 13
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_7

    .line 18
    .line 19
    iget-object v4, p3, Ly1/e0;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/graphics/Rect;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    const/4 v6, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v6, 0x0

    .line 45
    :goto_0
    if-nez v5, :cond_2

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_2
    const-string v7, "android:clipBounds:bounds"

    .line 51
    .line 52
    if-nez v5, :cond_3

    .line 53
    .line 54
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    move-object v5, p2

    .line 59
    check-cast v5, Landroid/graphics/Rect;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    if-nez v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    move-object v3, p2

    .line 69
    check-cast v3, Landroid/graphics/Rect;

    .line 70
    .line 71
    :cond_4
    :goto_1
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_5

    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_5
    sget-object p2, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 79
    .line 80
    iget-object p2, p3, Ly1/e0;->b:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {p2, v5}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 83
    .line 84
    .line 85
    new-instance p3, Ll6/m;

    .line 86
    .line 87
    new-instance v2, Landroid/graphics/Rect;

    .line 88
    .line 89
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-direct {p3, p1}, Ll6/m;-><init>(I)V

    .line 93
    .line 94
    .line 95
    iput-object v2, p3, Ll6/m;->b:Ljava/lang/Object;

    .line 96
    .line 97
    sget-object v2, Ly1/g0;->c:Landroidx/appcompat/widget/g3;

    .line 98
    .line 99
    new-array p1, p1, [Landroid/graphics/Rect;

    .line 100
    .line 101
    aput-object v5, p1, v0

    .line 102
    .line 103
    aput-object v3, p1, v1

    .line 104
    .line 105
    invoke-static {p2, v2, p3, p1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz v6, :cond_6

    .line 110
    .line 111
    new-instance p3, La6/a;

    .line 112
    .line 113
    const/4 v0, 0x7

    .line 114
    invoke-direct {p3, v0, p2}, La6/a;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    return-object p1

    .line 121
    :cond_7
    :goto_2
    return-object v2
.end method

.method public final o()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/transition/ChangeClipBounds;->x:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
