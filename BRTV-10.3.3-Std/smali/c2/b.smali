.class public final Lc2/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ld4/b;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    iput v0, p0, Lc2/b;->a:I

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {p0, p1, v0}, Lc2/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lc2/b;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc2/b;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lc2/b;->j()V

    return-void
.end method

.method public constructor <init>(Lc2/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc2/b;->a:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-object v0, p1, Lc2/c;->a:Ljava/util/List;

    invoke-static {v0}, Lx8/j;->d0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc2/b;->b:Ljava/lang/Object;

    .line 22
    iget-object v0, p1, Lc2/c;->b:Ljava/util/List;

    invoke-static {v0}, Lx8/j;->d0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 23
    iget-object v0, p1, Lc2/c;->c:Ljava/util/List;

    invoke-static {v0}, Lx8/j;->d0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 24
    iget-object v0, p1, Lc2/c;->d:Ljava/util/List;

    invoke-static {v0}, Lx8/j;->d0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 25
    iget-object p1, p1, Lc2/c;->e:Ljava/util/List;

    invoke-static {p1}, Lx8/j;->d0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lc2/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/m1;Lcom/google/android/gms/internal/cast/h;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc2/b;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc2/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc2/b;->d:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/cast/u4;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/cast/u4;-><init>(Lc2/b;)V

    iput-object p1, p0, Lc2/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf6/e;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lc2/b;->a:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc2/b;->b:Ljava/lang/Object;

    .line 28
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lc2/b;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 30
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lc2/b;->a:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lc2/b;->b:Ljava/lang/Object;

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iput-object p2, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 15
    iput-object p3, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 16
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iput-object p4, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 18
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    iput-object p1, p0, Lc2/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bitspark/android/utils/o;Lka/b;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lc2/b;->a:I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/b;->f:Ljava/lang/Object;

    iput-object p2, p0, Lc2/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc2/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Lc2/b;->d:Ljava/lang/Object;

    iput-object p5, p0, Lc2/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv8/a;Lv8/a;La1/b;Lv8/a;Lv8/a;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lc2/b;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lc2/b;->b:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 9
    iput-object p5, p0, Lc2/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public static k(Lc2/b;Lcom/google/android/gms/internal/cast/f0;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/cast/f0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Lcom/google/android/gms/internal/cast/x7;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lc2/b;->m()V

    .line 13
    .line 14
    .line 15
    :cond_0
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lc2/b;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/google/android/gms/internal/cast/m1;

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/cast/x7;

    .line 22
    .line 23
    iget-object v2, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/cast/x7;-><init>(Lcom/google/android/gms/internal/cast/m1;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lc2/b;->l()Lcom/google/android/gms/internal/cast/x7;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 38
    .line 39
    :goto_0
    iget-object p0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lcom/google/android/gms/internal/cast/x7;

    .line 42
    .line 43
    invoke-static {p0}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p0, Lcom/google/android/gms/internal/cast/x7;->h:J

    .line 47
    .line 48
    iput-wide v0, p1, Lcom/google/android/gms/internal/cast/f0;->d:J

    .line 49
    .line 50
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/x7;->b:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public a(Lg2/f;Ljava/lang/Class;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v1, Lw8/f;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lw8/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b(Lj2/a;Ljava/lang/Class;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v1, Lw8/f;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lw8/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf6/d;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, v0, Lf6/d;->c:F

    .line 8
    .line 9
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 10
    .line 11
    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 20
    :goto_1
    iget-object v1, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v7, v1

    .line 23
    check-cast v7, Landroid/graphics/Paint;

    .line 24
    .line 25
    iget-object v1, p0, Lc2/b;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Landroid/view/ViewGroup;

    .line 28
    .line 29
    iget-object v2, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Landroid/view/View;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    invoke-interface {v1, p1}, Lf6/e;->d(Landroid/graphics/Canvas;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-float v5, v0

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    int-to-float v6, v0

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    move-object v2, p1

    .line 61
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-interface {v1, p1}, Lf6/e;->d(Landroid/graphics/Canvas;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-float v5, v0

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    int-to-float v6, v0

    .line 88
    const/4 v3, 0x0

    .line 89
    const/4 v4, 0x0

    .line 90
    move-object v2, p1

    .line 91
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_2
    iget-object v0, p0, Lc2/b;->f:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v1, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Lf6/d;

    .line 103
    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v1, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v1, Lf6/d;

    .line 113
    .line 114
    iget v1, v1, Lf6/d;->a:F

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    int-to-float v2, v2

    .line 121
    const/high16 v3, 0x40000000    # 2.0f

    .line 122
    .line 123
    div-float/2addr v2, v3

    .line 124
    sub-float/2addr v1, v2

    .line 125
    iget-object v2, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v2, Lf6/d;

    .line 128
    .line 129
    iget v2, v2, Lf6/d;->b:F

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    int-to-float v0, v0

    .line 136
    div-float/2addr v0, v3

    .line 137
    sub-float/2addr v2, v0

    .line 138
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lc2/b;->f:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    .line 147
    .line 148
    neg-float v0, v1

    .line 149
    neg-float v1, v2

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    .line 152
    .line 153
    :cond_4
    return-void
.end method

.method public d()Lf6/d;
    .locals 5

    .line 1
    iget-object v0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf6/d;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lf6/d;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lf6/d;-><init>(Lf6/d;)V

    .line 12
    .line 13
    .line 14
    iget v0, v1, Lf6/d;->c:F

    .line 15
    .line 16
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 17
    .line 18
    .line 19
    cmpl-float v0, v0, v2

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget v0, v1, Lf6/d;->a:F

    .line 24
    .line 25
    iget v2, v1, Lf6/d;->b:F

    .line 26
    .line 27
    iget-object v3, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    int-to-float v4, v4

    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    int-to-float v3, v3

    .line 41
    invoke-static {v0, v2, v4, v3}, Lu7/d;->g(FFFF)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, v1, Lf6/d;->c:F

    .line 46
    .line 47
    :cond_1
    return-object v1
.end method

.method public e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lc2/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-interface {v0}, Lf6/e;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lf6/d;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, v0, Lf6/d;->c:F

    .line 20
    .line 21
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 22
    .line 23
    .line 24
    cmpl-float v0, v0, v3

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 32
    :goto_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_2
    return v1
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc2/b;->f:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object p1, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lc2/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv8/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lv8/a;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    iget-object v0, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lv8/a;

    .line 15
    .line 16
    invoke-interface {v0}, Lv8/a;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v3, v0

    .line 21
    check-cast v3, Lb4/f;

    .line 22
    .line 23
    iget-object v0, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, La1/b;

    .line 26
    .line 27
    invoke-virtual {v0}, La1/b;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, Lh4/d;

    .line 33
    .line 34
    iget-object v0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lv8/a;

    .line 37
    .line 38
    invoke-interface {v0}, Lv8/a;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v5, v0

    .line 43
    check-cast v5, Li4/d;

    .line 44
    .line 45
    iget-object v0, p0, Lc2/b;->f:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lv8/a;

    .line 48
    .line 49
    invoke-interface {v0}, Lv8/a;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v6, v0

    .line 54
    check-cast v6, Lj4/c;

    .line 55
    .line 56
    new-instance v0, Lg4/a;

    .line 57
    .line 58
    move-object v1, v0

    .line 59
    invoke-direct/range {v1 .. v6}, Lg4/a;-><init>(Ljava/util/concurrent/Executor;Lb4/f;Lh4/d;Li4/d;Lj4/c;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public h(Lf6/d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v1, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lf6/d;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lf6/d;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lf6/d;-><init>(Lf6/d;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v2, p1, Lf6/d;->a:F

    .line 26
    .line 27
    iget v3, p1, Lf6/d;->b:F

    .line 28
    .line 29
    iget v4, p1, Lf6/d;->c:F

    .line 30
    .line 31
    iput v2, v1, Lf6/d;->a:F

    .line 32
    .line 33
    iput v3, v1, Lf6/d;->b:F

    .line 34
    .line 35
    iput v4, v1, Lf6/d;->c:F

    .line 36
    .line 37
    :goto_0
    iget v1, p1, Lf6/d;->c:F

    .line 38
    .line 39
    iget v2, p1, Lf6/d;->a:F

    .line 40
    .line 41
    iget p1, p1, Lf6/d;->b:F

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    int-to-float v4, v4

    .line 53
    invoke-static {v2, p1, v3, v4}, Lu7/d;->g(FFFF)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const v2, 0x38d1b717    # 1.0E-4f

    .line 58
    .line 59
    .line 60
    add-float/2addr v1, v2

    .line 61
    cmpl-float p1, v1, p1

    .line 62
    .line 63
    if-ltz p1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Lf6/d;

    .line 68
    .line 69
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 70
    .line 71
    .line 72
    iput v1, p1, Lf6/d;->c:F

    .line 73
    .line 74
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public i(Landroid/net/Uri;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lc2/b;->j()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/net/Uri;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0}, Lc2/b;->j()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p1, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 26
    .line 27
    iget v1, p1, Lcom/google/android/gms/cast/framework/media/ImageHints;->b:I

    .line 28
    .line 29
    iget-object v2, p0, Lc2/b;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Landroid/content/Context;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget p1, p1, Lcom/google/android/gms/cast/framework/media/ImageHints;->c:I

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v3, Ls4/b;

    .line 41
    .line 42
    invoke-direct {v3, v2, v1, p1, p0}, Ls4/b;-><init>(Landroid/content/Context;IILc2/b;)V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    new-instance p1, Ls4/b;

    .line 49
    .line 50
    invoke-direct {p1, v2, v0, v0, p0}, Ls4/b;-><init>(Landroid/content/Context;IILc2/b;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 54
    .line 55
    :goto_1
    iget-object p1, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Ls4/b;

    .line 58
    .line 59
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Landroid/net/Uri;

    .line 65
    .line 66
    invoke-static {v1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    new-array v3, v3, [Landroid/net/Uri;

    .line 73
    .line 74
    aput-object v1, v3, v0

    .line 75
    .line 76
    invoke-virtual {p1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ls4/b;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    iput-object v1, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public l()Lcom/google/android/gms/internal/cast/x7;
    .locals 3

    .line 1
    iget-object v0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x7;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/cast/x7;

    .line 8
    .line 9
    iget-object v1, p0, Lc2/b;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/cast/m1;

    .line 12
    .line 13
    iget-object v2, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cast/x7;-><init>(Lcom/google/android/gms/internal/cast/m1;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/x7;->b(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/gms/internal/cast/x7;

    .line 29
    .line 30
    return-object v0
.end method

.method public m()V
    .locals 31

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    iget-object v0, v1, Lc2/b;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/cast/x7;

    if-eqz v4, :cond_1f

    .line 2
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/x7;->j:Lq4/b;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v5, v0, Lq4/b;->l:Lcom/google/android/gms/internal/cast/u4;

    .line 4
    iput-object v5, v4, Lcom/google/android/gms/internal/cast/x7;->j:Lq4/b;

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/c3;->m()Lcom/google/android/gms/internal/cast/b3;

    move-result-object v6

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 7
    iget-object v0, v6, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/cast/c3;

    iget-wide v7, v4, Lcom/google/android/gms/internal/cast/x7;->i:J

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/cast/c3;->z(Lcom/google/android/gms/internal/cast/c3;J)V

    .line 9
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/x7;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v7, v6, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 11
    check-cast v7, Lcom/google/android/gms/internal/cast/c3;

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/cast/c3;->w(Lcom/google/android/gms/internal/cast/c3;Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/cast/g5;->l()Lcom/google/android/gms/internal/cast/f5;

    move-result-object v0

    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->n:Ljava/lang/String;

    .line 13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->n:Ljava/lang/String;

    .line 14
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v8, v6, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 15
    check-cast v8, Lcom/google/android/gms/internal/cast/c3;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/cast/c3;->s(Lcom/google/android/gms/internal/cast/c3;Ljava/lang/String;)V

    .line 16
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->n:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 18
    iget-object v8, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 19
    check-cast v8, Lcom/google/android/gms/internal/cast/g5;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/cast/g5;->o(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 20
    :cond_2
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->o:Ljava/lang/String;

    .line 21
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->o:Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 23
    iget-object v8, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 24
    check-cast v8, Lcom/google/android/gms/internal/cast/g5;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/cast/g5;->p(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 25
    :cond_3
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->p:Ljava/lang/String;

    .line 26
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->p:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 28
    iget-object v8, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 29
    check-cast v8, Lcom/google/android/gms/internal/cast/g5;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/cast/g5;->q(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 30
    :cond_4
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->q:Ljava/lang/String;

    .line 31
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->q:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 33
    iget-object v8, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 34
    check-cast v8, Lcom/google/android/gms/internal/cast/g5;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/cast/g5;->m(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 35
    :cond_5
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->r:Ljava/lang/String;

    .line 36
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->r:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 38
    iget-object v8, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 39
    check-cast v8, Lcom/google/android/gms/internal/cast/g5;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/cast/g5;->n(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 40
    :cond_6
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->s:Ljava/lang/String;

    .line 41
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v4, Lcom/google/android/gms/internal/cast/x7;->s:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 43
    iget-object v8, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 44
    check-cast v8, Lcom/google/android/gms/internal/cast/g5;

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/cast/g5;->r(Lcom/google/android/gms/internal/cast/g5;Ljava/lang/String;)V

    .line 45
    :cond_7
    iget v7, v4, Lcom/google/android/gms/internal/cast/x7;->t:I

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v7, v3, :cond_c

    if-eq v7, v12, :cond_b

    if-eq v7, v11, :cond_a

    if-eq v7, v10, :cond_9

    if-eq v7, v9, :cond_8

    const/4 v7, 0x1

    goto :goto_0

    :cond_8
    const/4 v7, 0x6

    goto :goto_0

    :cond_9
    const/4 v7, 0x5

    goto :goto_0

    :cond_a
    const/4 v7, 0x4

    goto :goto_0

    :cond_b
    const/4 v7, 0x3

    goto :goto_0

    :cond_c
    const/4 v7, 0x2

    .line 46
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 47
    iget-object v13, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    check-cast v13, Lcom/google/android/gms/internal/cast/g5;

    invoke-static {v13, v7}, Lcom/google/android/gms/internal/cast/g5;->s(Lcom/google/android/gms/internal/cast/g5;I)V

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/g5;

    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v7, v6, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 50
    check-cast v7, Lcom/google/android/gms/internal/cast/c3;

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/cast/c3;->v(Lcom/google/android/gms/internal/cast/c3;Lcom/google/android/gms/internal/cast/g5;)V

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/cast/t2;->l()Lcom/google/android/gms/internal/cast/s2;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/internal/cast/x7;->w:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 53
    iget-object v13, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 54
    check-cast v13, Lcom/google/android/gms/internal/cast/t2;

    invoke-static {v13, v7}, Lcom/google/android/gms/internal/cast/t2;->n(Lcom/google/android/gms/internal/cast/t2;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v7, v0, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 56
    check-cast v7, Lcom/google/android/gms/internal/cast/t2;

    iget-object v13, v4, Lcom/google/android/gms/internal/cast/x7;->g:Ljava/lang/String;

    invoke-static {v7, v13}, Lcom/google/android/gms/internal/cast/t2;->m(Lcom/google/android/gms/internal/cast/t2;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/t2;

    .line 58
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v7, v6, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 59
    check-cast v7, Lcom/google/android/gms/internal/cast/c3;

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/cast/c3;->o(Lcom/google/android/gms/internal/cast/c3;Lcom/google/android/gms/internal/cast/t2;)V

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/cast/k3;->l()Lcom/google/android/gms/internal/cast/j3;

    move-result-object v7

    .line 61
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/x7;->a:Lcom/google/android/gms/internal/cast/k1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/k1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/cast/u3;->l()Lcom/google/android/gms/internal/cast/t3;

    move-result-object v13

    .line 63
    invoke-virtual {v13}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 64
    iget-object v14, v13, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 65
    check-cast v14, Lcom/google/android/gms/internal/cast/u3;

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/cast/u3;->m(Lcom/google/android/gms/internal/cast/u3;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v13}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/u3;

    .line 67
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 68
    iget-object v13, v7, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 69
    check-cast v13, Lcom/google/android/gms/internal/cast/k3;

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/cast/k3;->r(Lcom/google/android/gms/internal/cast/k3;Lcom/google/android/gms/internal/cast/u3;)V

    .line 70
    :cond_d
    iget-object v13, v4, Lcom/google/android/gms/internal/cast/x7;->k:Ljava/lang/String;

    const/16 v14, 0x10

    if-eqz v13, :cond_e

    :try_start_0
    const-string v0, "-"

    const-string v15, ""

    .line 71
    invoke-virtual {v13, v0, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/math/BigInteger;

    .line 73
    invoke-direct {v15, v0, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v14, v15

    goto :goto_1

    :catch_0
    move-exception v0

    .line 74
    new-array v15, v3, [Ljava/lang/Object;

    aput-object v13, v15, v2

    .line 75
    sget-object v13, Lcom/google/android/gms/internal/cast/x7;->v:Lv4/b;

    iget-object v2, v13, Lv4/b;->a:Ljava/lang/String;

    .line 76
    const-string v8, "receiverSessionId %s is not valid for hash"

    invoke-virtual {v13, v8, v15}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v17, 0x0

    move-wide/from16 v14, v17

    .line 77
    :goto_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 78
    iget-object v0, v7, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 79
    check-cast v0, Lcom/google/android/gms/internal/cast/k3;

    invoke-static {v0, v14, v15}, Lcom/google/android/gms/internal/cast/k3;->t(Lcom/google/android/gms/internal/cast/k3;J)V

    .line 80
    :cond_e
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/x7;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    new-instance v8, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/cast/f0;

    .line 83
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/cast/i3;->l()Lcom/google/android/gms/internal/cast/h3;

    move-result-object v14

    .line 85
    invoke-virtual {v14}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 86
    iget-object v15, v14, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 87
    check-cast v15, Lcom/google/android/gms/internal/cast/i3;

    iget v2, v13, Lcom/google/android/gms/internal/cast/f0;->e:I

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/cast/i3;->q(Lcom/google/android/gms/internal/cast/i3;I)V

    move-object v15, v6

    .line 88
    iget-wide v5, v13, Lcom/google/android/gms/internal/cast/f0;->b:J

    iget-wide v9, v13, Lcom/google/android/gms/internal/cast/f0;->d:J

    sub-long/2addr v5, v9

    long-to-int v6, v5

    int-to-long v9, v6

    .line 89
    invoke-virtual {v14}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v5, v14, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 90
    check-cast v5, Lcom/google/android/gms/internal/cast/i3;

    invoke-static {v5, v9, v10}, Lcom/google/android/gms/internal/cast/i3;->o(Lcom/google/android/gms/internal/cast/i3;J)V

    .line 91
    invoke-virtual {v14}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v5, v14, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 92
    check-cast v5, Lcom/google/android/gms/internal/cast/i3;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/cast/i3;->p(Lcom/google/android/gms/internal/cast/i3;I)V

    .line 93
    iget-object v5, v13, Lcom/google/android/gms/internal/cast/f0;->a:Ljava/lang/Integer;

    if-eqz v5, :cond_f

    .line 94
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 95
    invoke-virtual {v14}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v6, v14, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 96
    check-cast v6, Lcom/google/android/gms/internal/cast/i3;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/cast/i3;->n(Lcom/google/android/gms/internal/cast/i3;I)V

    .line 97
    :cond_f
    iget-object v5, v13, Lcom/google/android/gms/internal/cast/f0;->c:Ljava/lang/Boolean;

    if-eqz v5, :cond_10

    .line 98
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 99
    invoke-virtual {v14}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v6, v14, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 100
    check-cast v6, Lcom/google/android/gms/internal/cast/i3;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/cast/i3;->m(Lcom/google/android/gms/internal/cast/i3;Z)V

    .line 101
    :cond_10
    invoke-virtual {v14}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/cast/i3;

    .line 102
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v15

    const/4 v5, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x4

    goto :goto_2

    :cond_11
    move-object v15, v6

    .line 103
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 104
    iget-object v0, v7, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 105
    check-cast v0, Lcom/google/android/gms/internal/cast/k3;

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/cast/k3;->m(Lcom/google/android/gms/internal/cast/k3;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_12
    move-object v15, v6

    .line 106
    :goto_3
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/x7;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    new-instance v5, Ljava/util/ArrayList;

    .line 107
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_13

    .line 109
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 110
    iget-object v0, v7, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 111
    check-cast v0, Lcom/google/android/gms/internal/cast/k3;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/cast/k3;->p(Lcom/google/android/gms/internal/cast/k3;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 112
    :cond_13
    invoke-static {v0}, La/e;->l(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    .line 113
    throw v0

    .line 114
    :cond_14
    :goto_4
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/x7;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    new-instance v5, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/cast/c0;

    .line 117
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-static {}, Lcom/google/android/gms/internal/cast/e3;->l()Lcom/google/android/gms/internal/cast/d3;

    move-result-object v8

    iget-object v9, v6, Lcom/google/android/gms/internal/cast/c0;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v13, 0xb

    const/16 v14, 0x14

    const/16 v19, 0xd

    const/16 v20, 0x11

    const/16 v21, 0x15

    const/16 v22, 0x7

    const/16 v23, 0x13

    const/16 v24, 0x8

    const/16 v25, 0xc

    const/16 v26, 0x12

    const/16 v27, 0xe

    const/16 v28, 0xa

    const/16 v29, 0x9

    const/16 v30, 0xf

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_6

    .line 119
    :sswitch_0
    const-string v10, "queueFetchItemIds"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0xf

    goto/16 :goto_7

    :sswitch_1
    const-string v10, "activeTracks"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0x9

    goto/16 :goto_7

    :sswitch_2
    const-string v10, "trackStyle"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0xa

    goto/16 :goto_7

    :sswitch_3
    const-string v10, "queueReorder"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0xe

    goto/16 :goto_7

    :sswitch_4
    const-string v10, "queueFetchItemRange"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0x10

    goto/16 :goto_7

    :sswitch_5
    const-string v10, "pause"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v9, 0x2

    goto/16 :goto_7

    :sswitch_6
    const-string v10, "stop"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v9, 0x3

    goto/16 :goto_7

    :sswitch_7
    const-string v10, "seek"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v9, 0x4

    goto/16 :goto_7

    :sswitch_8
    const-string v10, "play"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v9, 0x1

    goto/16 :goto_7

    :sswitch_9
    const-string v10, "mute"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v9, 0x6

    goto/16 :goto_7

    :sswitch_a
    const-string v10, "load"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v9, 0x0

    goto/16 :goto_7

    :sswitch_b
    const-string v10, "setPlaybackRate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0x12

    goto/16 :goto_7

    :sswitch_c
    const-string v10, "volume"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v9, 0x5

    goto/16 :goto_7

    :sswitch_d
    const-string v10, "queueUpdate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0xc

    goto :goto_7

    :sswitch_e
    const-string v10, "status"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0x8

    goto :goto_7

    :sswitch_f
    const-string v10, "skipAd"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0x13

    goto :goto_7

    :sswitch_10
    const-string v10, "volume-mute"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v9, 0x7

    goto :goto_7

    :sswitch_11
    const-string v10, "setPlaybackDevices"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0x15

    goto :goto_7

    :sswitch_12
    const-string v10, "queueFetchItems"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0x11

    goto :goto_7

    :sswitch_13
    const-string v10, "queueRemove"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0xd

    goto :goto_7

    :sswitch_14
    const-string v10, "launch"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0x14

    goto :goto_7

    :sswitch_15
    const-string v10, "queueInsert"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/16 v9, 0xb

    goto :goto_7

    :cond_15
    :goto_6
    const/4 v9, -0x1

    :goto_7
    packed-switch v9, :pswitch_data_0

    const/4 v13, 0x1

    goto :goto_8

    :pswitch_0
    const/16 v13, 0x17

    goto :goto_8

    :pswitch_1
    const/16 v13, 0x16

    goto :goto_8

    :pswitch_2
    const/16 v13, 0x15

    goto :goto_8

    :pswitch_3
    const/16 v13, 0x14

    goto :goto_8

    :pswitch_4
    const/16 v13, 0x13

    goto :goto_8

    :pswitch_5
    const/16 v13, 0x12

    goto :goto_8

    :pswitch_6
    const/16 v13, 0x11

    goto :goto_8

    :pswitch_7
    const/16 v13, 0x10

    goto :goto_8

    :pswitch_8
    const/16 v13, 0xf

    goto :goto_8

    :pswitch_9
    const/16 v13, 0xe

    goto :goto_8

    :pswitch_a
    const/16 v13, 0xd

    goto :goto_8

    :pswitch_b
    const/16 v13, 0xc

    goto :goto_8

    :pswitch_c
    const/16 v13, 0xa

    goto :goto_8

    :pswitch_d
    const/16 v13, 0x9

    goto :goto_8

    :pswitch_e
    const/16 v13, 0x8

    goto :goto_8

    :pswitch_f
    const/4 v13, 0x7

    goto :goto_8

    :pswitch_10
    const/4 v13, 0x6

    goto :goto_8

    :pswitch_11
    const/4 v13, 0x5

    goto :goto_8

    :pswitch_12
    const/4 v13, 0x4

    goto :goto_8

    :pswitch_13
    const/4 v13, 0x3

    goto :goto_8

    :pswitch_14
    const/4 v13, 0x2

    .line 120
    :goto_8
    :pswitch_15
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 121
    iget-object v9, v8, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 122
    check-cast v9, Lcom/google/android/gms/internal/cast/e3;

    invoke-static {v9, v13}, Lcom/google/android/gms/internal/cast/e3;->q(Lcom/google/android/gms/internal/cast/e3;I)V

    .line 123
    iget-wide v9, v6, Lcom/google/android/gms/internal/cast/c0;->b:J

    long-to-int v10, v9

    .line 124
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v9, v8, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 125
    check-cast v9, Lcom/google/android/gms/internal/cast/e3;

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/cast/e3;->n(Lcom/google/android/gms/internal/cast/e3;I)V

    .line 126
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v9, v8, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 127
    check-cast v9, Lcom/google/android/gms/internal/cast/e3;

    iget v10, v6, Lcom/google/android/gms/internal/cast/c0;->c:I

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/cast/e3;->p(Lcom/google/android/gms/internal/cast/e3;I)V

    .line 128
    iget-wide v9, v6, Lcom/google/android/gms/internal/cast/c0;->d:J

    iget-wide v13, v6, Lcom/google/android/gms/internal/cast/c0;->f:J

    sub-long/2addr v9, v13

    long-to-int v10, v9

    .line 129
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v9, v8, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 130
    check-cast v9, Lcom/google/android/gms/internal/cast/e3;

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/cast/e3;->o(Lcom/google/android/gms/internal/cast/e3;I)V

    .line 131
    iget-wide v9, v6, Lcom/google/android/gms/internal/cast/c0;->e:J

    iget-wide v13, v6, Lcom/google/android/gms/internal/cast/c0;->f:J

    sub-long/2addr v9, v13

    long-to-int v6, v9

    .line 132
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v9, v8, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 133
    check-cast v9, Lcom/google/android/gms/internal/cast/e3;

    invoke-static {v9, v6}, Lcom/google/android/gms/internal/cast/e3;->m(Lcom/google/android/gms/internal/cast/e3;I)V

    .line 134
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/cast/e3;

    .line 135
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 136
    :cond_16
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 137
    iget-object v0, v7, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 138
    check-cast v0, Lcom/google/android/gms/internal/cast/k3;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/cast/k3;->n(Lcom/google/android/gms/internal/cast/k3;Ljava/util/ArrayList;)V

    .line 139
    :cond_17
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/x7;->m:Landroidx/appcompat/app/t0;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    .line 140
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v4, Lcom/google/android/gms/internal/cast/x7;->m:Landroidx/appcompat/app/t0;

    .line 141
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/cast/g3;->l()Lcom/google/android/gms/internal/cast/f3;

    move-result-object v6

    iget v8, v5, Landroidx/appcompat/app/t0;->a:I

    if-eq v8, v3, :cond_1b

    if-eq v8, v12, :cond_1a

    if-eq v8, v11, :cond_19

    const/4 v9, 0x4

    if-eq v8, v9, :cond_18

    goto :goto_9

    :cond_18
    const/4 v3, 0x5

    goto :goto_9

    :cond_19
    const/4 v9, 0x4

    const/4 v3, 0x4

    goto :goto_9

    :cond_1a
    const/4 v3, 0x3

    goto :goto_9

    :cond_1b
    const/4 v3, 0x2

    .line 143
    :goto_9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 144
    iget-object v8, v6, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 145
    check-cast v8, Lcom/google/android/gms/internal/cast/g3;

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/cast/g3;->n(Lcom/google/android/gms/internal/cast/g3;I)V

    .line 146
    iget-wide v8, v5, Landroidx/appcompat/app/t0;->b:J

    iget-wide v10, v5, Landroidx/appcompat/app/t0;->c:J

    sub-long/2addr v8, v10

    long-to-int v3, v8

    .line 147
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v5, v6, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 148
    check-cast v5, Lcom/google/android/gms/internal/cast/g3;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/cast/g3;->m(Lcom/google/android/gms/internal/cast/g3;I)V

    .line 149
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/cast/g3;

    .line 150
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 152
    iget-object v3, v7, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 153
    check-cast v3, Lcom/google/android/gms/internal/cast/k3;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/cast/k3;->o(Lcom/google/android/gms/internal/cast/k3;Ljava/util/ArrayList;)V

    .line 154
    :cond_1c
    iget-object v0, v4, Lcom/google/android/gms/internal/cast/x7;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    new-instance v3, Ljava/util/ArrayList;

    .line 155
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/cast/g;

    .line 157
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-static {}, Lcom/google/android/gms/internal/cast/m3;->l()Lcom/google/android/gms/internal/cast/l3;

    move-result-object v6

    .line 159
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 160
    iget-object v8, v6, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 161
    check-cast v8, Lcom/google/android/gms/internal/cast/m3;

    iget v9, v5, Lcom/google/android/gms/internal/cast/g;->e:I

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/cast/m3;->p(Lcom/google/android/gms/internal/cast/m3;I)V

    .line 162
    iget-object v8, v5, Lcom/google/android/gms/internal/cast/g;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 163
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 164
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v9, v6, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 165
    check-cast v9, Lcom/google/android/gms/internal/cast/m3;

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/cast/m3;->m(Lcom/google/android/gms/internal/cast/m3;I)V

    .line 166
    iget-wide v8, v5, Lcom/google/android/gms/internal/cast/g;->a:J

    iget-wide v10, v5, Lcom/google/android/gms/internal/cast/g;->c:J

    sub-long/2addr v8, v10

    long-to-int v9, v8

    .line 167
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v8, v6, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 168
    check-cast v8, Lcom/google/android/gms/internal/cast/m3;

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/cast/m3;->n(Lcom/google/android/gms/internal/cast/m3;I)V

    .line 169
    iget-wide v8, v5, Lcom/google/android/gms/internal/cast/g;->b:J

    iget-wide v10, v5, Lcom/google/android/gms/internal/cast/g;->c:J

    sub-long/2addr v8, v10

    long-to-int v5, v8

    .line 170
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->c()V

    iget-object v8, v6, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 171
    check-cast v8, Lcom/google/android/gms/internal/cast/m3;

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/cast/m3;->o(Lcom/google/android/gms/internal/cast/m3;I)V

    .line 172
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/cast/m3;

    .line 173
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 174
    :cond_1d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 175
    iget-object v0, v7, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 176
    check-cast v0, Lcom/google/android/gms/internal/cast/k3;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/cast/k3;->q(Lcom/google/android/gms/internal/cast/k3;Ljava/util/ArrayList;)V

    .line 177
    :cond_1e
    iget v0, v4, Lcom/google/android/gms/internal/cast/x7;->u:I

    .line 178
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 179
    iget-object v3, v7, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 180
    check-cast v3, Lcom/google/android/gms/internal/cast/k3;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/cast/k3;->s(Lcom/google/android/gms/internal/cast/k3;I)V

    .line 181
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/k3;

    .line 182
    invoke-virtual {v15}, Lcom/google/android/gms/internal/cast/b7;->c()V

    move-object v3, v15

    iget-object v5, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 183
    check-cast v5, Lcom/google/android/gms/internal/cast/c3;

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/cast/c3;->y(Lcom/google/android/gms/internal/cast/c3;Lcom/google/android/gms/internal/cast/k3;)V

    .line 184
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/c3;

    iget-object v3, v4, Lcom/google/android/gms/internal/cast/x7;->f:Lcom/google/android/gms/internal/cast/m1;

    const/16 v4, 0xe9

    .line 185
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/cast/m1;->a(Lcom/google/android/gms/internal/cast/c3;I)V

    const/4 v2, 0x0

    .line 186
    iput-object v2, v1, Lc2/b;->e:Ljava/lang/Object;

    :cond_1f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x46e808d6 -> :sswitch_15
        -0x4226dc4d -> :sswitch_14
        -0x380dd30b -> :sswitch_13
        -0x37d356e9 -> :sswitch_12
        -0x37752a80 -> :sswitch_11
        -0x36e71314 -> :sswitch_10
        -0x35ad75fe -> :sswitch_f
        -0x3532300e -> :sswitch_e
        -0x325892c6 -> :sswitch_d
        -0x305518e6 -> :sswitch_c
        -0x17fa60e3 -> :sswitch_b
        0x32c4e6 -> :sswitch_a
        0x335219 -> :sswitch_9
        0x348b34 -> :sswitch_8
        0x35ce78 -> :sswitch_7
        0x360802 -> :sswitch_6
        0x65825f6 -> :sswitch_5
        0x1f50ffc1 -> :sswitch_4
        0x3670baaa -> :sswitch_3
        0x447a5326 -> :sswitch_2
        0x5684c72e -> :sswitch_1
        0x6fa62e3c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_15
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

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lc2/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "FontRequest {mProviderAuthority: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lc2/b;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ", mProviderPackage: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lc2/b;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ", mQuery: "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lc2/b;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", mCertificates:"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x0

    .line 68
    :goto_0
    iget-object v3, p0, Lc2/b;->e:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-ge v2, v4, :cond_1

    .line 77
    .line 78
    const-string v4, " ["

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Ljava/util/List;

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-ge v4, v5, :cond_0

    .line 95
    .line 96
    const-string v5, " \""

    .line 97
    .line 98
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, [B

    .line 106
    .line 107
    invoke-static {v5, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v5, "\""

    .line 115
    .line 116
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    add-int/lit8 v4, v4, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_0
    const-string v3, " ]"

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    const-string v1, "}mCertificatesArray: 0"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
