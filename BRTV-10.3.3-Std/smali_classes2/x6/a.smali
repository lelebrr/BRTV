.class public final Lx6/a;
.super Lq/b;
.source "MyApplication"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx6/a;->c:I

    .line 2
    .line 3
    const/16 p1, 0xa

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lq/b;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 1
    iget v0, p0, Lx6/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    .line 8
    cmpg-float v1, p4, v0

    .line 9
    .line 10
    if-gez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p2, p3

    .line 14
    :goto_0
    invoke-static {p1, p2}, Lq/b;->c(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x0

    .line 19
    const/high16 p3, 0x3f800000    # 1.0f

    .line 20
    .line 21
    if-gez v1, :cond_1

    .line 22
    .line 23
    invoke-static {p3, p2, p2, v0, p4}, Ly5/a;->b(FFFFF)F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {p2, p3, v0, p3, p4}, Ly5/a;->b(FFFFF)F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    :goto_1
    iget p3, p1, Landroid/graphics/RectF;->left:F

    .line 33
    .line 34
    float-to-int p3, p3

    .line 35
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 42
    .line 43
    float-to-int p1, p1

    .line 44
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    invoke-virtual {p5, p3, p4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    .line 52
    .line 53
    const/high16 p1, 0x437f0000    # 255.0f

    .line 54
    .line 55
    mul-float p2, p2, p1

    .line 56
    .line 57
    float-to-int p1, p2

    .line 58
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_0
    invoke-static {p1, p2}, Lq/b;->c(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p1, p3}, Lq/b;->c(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget p3, p2, Landroid/graphics/RectF;->left:F

    .line 71
    .line 72
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 73
    .line 74
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 75
    .line 76
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 77
    .line 78
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    cmpg-float p3, p3, v0

    .line 84
    .line 85
    if-gez p3, :cond_2

    .line 86
    .line 87
    float-to-double p3, p4

    .line 88
    mul-double p3, p3, v5

    .line 89
    .line 90
    div-double/2addr p3, v3

    .line 91
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    sub-double/2addr v1, v3

    .line 96
    double-to-float v0, v1

    .line 97
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    .line 98
    .line 99
    .line 100
    move-result-wide p3

    .line 101
    double-to-float p3, p3

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    float-to-double p3, p4

    .line 104
    mul-double p3, p3, v5

    .line 105
    .line 106
    div-double/2addr p3, v3

    .line 107
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    double-to-float v0, v3

    .line 112
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    .line 113
    .line 114
    .line 115
    move-result-wide p3

    .line 116
    sub-double/2addr v1, p3

    .line 117
    double-to-float p3, v1

    .line 118
    :goto_2
    iget p4, p2, Landroid/graphics/RectF;->left:F

    .line 119
    .line 120
    float-to-int p4, p4

    .line 121
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 122
    .line 123
    float-to-int v1, v1

    .line 124
    invoke-static {v0, p4, v1}, Ly5/a;->c(FII)I

    .line 125
    .line 126
    .line 127
    move-result p4

    .line 128
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 133
    .line 134
    iget p2, p2, Landroid/graphics/RectF;->right:F

    .line 135
    .line 136
    float-to-int p2, p2

    .line 137
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 138
    .line 139
    float-to-int p1, p1

    .line 140
    invoke-static {p3, p2, p1}, Ly5/a;->c(FII)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 149
    .line 150
    invoke-virtual {p5, p4, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
