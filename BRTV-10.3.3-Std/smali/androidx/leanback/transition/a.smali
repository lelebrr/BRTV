.class public final Landroidx/leanback/transition/a;
.super Lr4/b;
.source "MyApplication"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/transition/a;->c:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public n(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 3

    .line 1
    iget v0, p0, Landroidx/leanback/transition/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lr4/b;->n(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    const/4 v0, 0x0

    .line 12
    aget v1, p4, v0

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    div-int/lit8 v2, v2, 0x2

    .line 19
    .line 20
    add-int/2addr v2, v1

    .line 21
    invoke-virtual {p2, p4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    aget p4, p4, v0

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    div-int/lit8 v0, v0, 0x2

    .line 37
    .line 38
    add-int/2addr v0, p4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :goto_0
    if-ge v2, v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->a(Landroid/view/ViewGroup;)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    sub-float/2addr p3, p1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->a(Landroid/view/ViewGroup;)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    add-float/2addr p3, p1

    .line 65
    :goto_1
    return p3

    .line 66
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    const/4 v0, 0x1

    .line 71
    if-ne p4, v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->a(Landroid/view/ViewGroup;)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    sub-float/2addr p3, p1

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->a(Landroid/view/ViewGroup;)F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    add-float/2addr p3, p1

    .line 92
    :goto_2
    return p3

    .line 93
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    .line 94
    .line 95
    .line 96
    move-result p4

    .line 97
    const/4 v0, 0x1

    .line 98
    if-ne p4, v0, :cond_3

    .line 99
    .line 100
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->a(Landroid/view/ViewGroup;)F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    add-float/2addr p1, p3

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->a(Landroid/view/ViewGroup;)F

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    sub-float p1, p3, p1

    .line 119
    .line 120
    :goto_3
    return p1

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public o(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/transition/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lr4/b;->o(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->b(Landroid/view/ViewGroup;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    sub-float/2addr p3, p1

    .line 20
    return p3

    .line 21
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->b(Landroid/view/ViewGroup;)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    add-float/2addr p1, p3

    .line 30
    return p1

    .line 31
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
