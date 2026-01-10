.class public Landroidx/transition/ChangeScroll;
.super Landroidx/transition/Transition;
.source "MyApplication"


# static fields
.field public static final x:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "android:changeScroll:x"

    .line 2
    .line 3
    const-string v1, "android:changeScroll:y"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/transition/ChangeScroll;->x:[Ljava/lang/String;

    .line 10
    .line 11
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
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/e0;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object p0, p0, Ly1/e0;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "android:changeScroll:x"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v1, "android:changeScroll:y"

    .line 27
    .line 28
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final c(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/ChangeScroll;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/ChangeScroll;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;Ly1/e0;Ly1/e0;)Landroid/animation/Animator;
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_5

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    iget-object p2, p2, Ly1/e0;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    const-string v0, "android:changeScroll:x"

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p3, Ly1/e0;->a:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v3, "android:changeScroll:y"

    .line 35
    .line 36
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object p3, p3, Ly1/e0;->b:Landroid/view/View;

    .line 57
    .line 58
    if-eq v1, v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p3, v1}, Landroid/view/View;->setScrollX(I)V

    .line 61
    .line 62
    .line 63
    const-string v3, "scrollX"

    .line 64
    .line 65
    filled-new-array {v1, v0}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p3, v3, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    move-object v0, p1

    .line 75
    :goto_0
    if-eq p2, v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {p3, p2}, Landroid/view/View;->setScrollY(I)V

    .line 78
    .line 79
    .line 80
    const-string p1, "scrollY"

    .line 81
    .line 82
    filled-new-array {p2, v2}, [I

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {p3, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :cond_2
    sget-boolean p2, Ly1/d0;->a:Z

    .line 91
    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    move-object v0, p1

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    if-nez p1, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 100
    .line 101
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 102
    .line 103
    .line 104
    const/4 p3, 0x2

    .line 105
    new-array p3, p3, [Landroid/animation/Animator;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    aput-object v0, p3, v1

    .line 109
    .line 110
    const/4 v0, 0x1

    .line 111
    aput-object p1, p3, v0

    .line 112
    .line 113
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 114
    .line 115
    .line 116
    move-object v0, p2

    .line 117
    :goto_1
    return-object v0

    .line 118
    :cond_5
    :goto_2
    return-object p1
.end method

.method public final o()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/transition/ChangeScroll;->x:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
