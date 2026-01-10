.class public final Landroidx/appcompat/widget/u;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILu6/m;Landroid/graphics/Rect;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, La2/a;->o(I)V

    .line 7
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, La2/a;->o(I)V

    .line 8
    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, La2/a;->o(I)V

    .line 9
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, La2/a;->o(I)V

    .line 10
    iput-object p6, p0, Landroidx/appcompat/widget/u;->b:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Landroidx/appcompat/widget/u;->c:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Landroidx/appcompat/widget/u;->d:Ljava/lang/Object;

    .line 13
    iput-object p3, p0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    .line 14
    iput p4, p0, Landroidx/appcompat/widget/u;->a:I

    .line 15
    iput-object p5, p0, Landroidx/appcompat/widget/u;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/u;->a:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/u;->b:Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroidx/appcompat/widget/w;->a()Landroidx/appcompat/widget/w;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/u;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroidx/appcompat/widget/u;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    const-string v3, "Cannot create a CalendarItemStyle with a styleResId of 0"

    .line 9
    .line 10
    invoke-static {v3, v2}, La2/a;->n(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lx5/a;->B:[I

    .line 14
    .line 15
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v4, 0x3

    .line 33
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    new-instance v11, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-direct {v11, v2, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/d;->k(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/16 v0, 0x9

    .line 48
    .line 49
    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/d;->k(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const/4 v0, 0x7

    .line 54
    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/d;->k(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    const/16 v0, 0x8

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    const/4 v0, 0x5

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v2, 0x6

    .line 70
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    new-instance v3, Lu6/a;

    .line 75
    .line 76
    int-to-float v1, v1

    .line 77
    invoke-direct {v3, v1}, Lu6/a;-><init>(F)V

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v0, v2, v3}, Lu6/m;->a(Landroid/content/Context;IILu6/c;)Lu6/l;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lu6/l;->a()Lu6/m;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    .line 90
    .line 91
    new-instance p0, Landroidx/appcompat/widget/u;

    .line 92
    .line 93
    move-object v5, p0

    .line 94
    invoke-direct/range {v5 .. v11}, Landroidx/appcompat/widget/u;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILu6/m;Landroid/graphics/Rect;)V

    .line 95
    .line 96
    .line 97
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_7

    .line 10
    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v3, 0x15

    .line 14
    .line 15
    if-le v2, v3, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/appcompat/widget/u;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Landroidx/appcompat/widget/l3;

    .line 20
    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v2, v3, :cond_5

    .line 25
    .line 26
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/u;->f:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Landroidx/appcompat/widget/l3;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    new-instance v2, Landroidx/appcompat/widget/l3;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Landroidx/appcompat/widget/u;->f:Ljava/lang/Object;

    .line 38
    .line 39
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/widget/u;->f:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Landroidx/appcompat/widget/l3;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    iput-object v3, v2, Landroidx/appcompat/widget/l3;->a:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    iput-boolean v4, v2, Landroidx/appcompat/widget/l3;->d:Z

    .line 48
    .line 49
    iput-object v3, v2, Landroidx/appcompat/widget/l3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 50
    .line 51
    iput-boolean v4, v2, Landroidx/appcompat/widget/l3;->c:Z

    .line 52
    .line 53
    sget-object v3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 54
    .line 55
    invoke-static {v0}, Ln0/g0;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/4 v4, 0x1

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    iput-boolean v4, v2, Landroidx/appcompat/widget/l3;->d:Z

    .line 63
    .line 64
    iput-object v3, v2, Landroidx/appcompat/widget/l3;->a:Landroid/content/res/ColorStateList;

    .line 65
    .line 66
    :cond_2
    invoke-static {v0}, Ln0/g0;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    iput-boolean v4, v2, Landroidx/appcompat/widget/l3;->c:Z

    .line 73
    .line 74
    iput-object v3, v2, Landroidx/appcompat/widget/l3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 75
    .line 76
    :cond_3
    iget-boolean v3, v2, Landroidx/appcompat/widget/l3;->d:Z

    .line 77
    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    iget-boolean v3, v2, Landroidx/appcompat/widget/l3;->c:Z

    .line 81
    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/w;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;[I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_5
    iget-object v2, p0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Landroidx/appcompat/widget/l3;

    .line 95
    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/w;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;[I)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    iget-object v2, p0, Landroidx/appcompat/widget/u;->d:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, Landroidx/appcompat/widget/l3;

    .line 109
    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/w;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;[I)V

    .line 117
    .line 118
    .line 119
    :cond_7
    :goto_1
    return-void
.end method

.method public c()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/l3;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/l3;->a:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public d()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/l3;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/l3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public e(Landroid/util/AttributeSet;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v4, Le/a;->B:[I

    .line 10
    .line 11
    invoke-static {v1, p1, v4, p2}, La1/b;->C(Landroid/content/Context;Landroid/util/AttributeSet;[II)La1/b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, La1/b;->c:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v9, v2

    .line 18
    check-cast v9, Landroid/content/res/TypedArray;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/appcompat/widget/u;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v8, 0x0

    .line 29
    iget-object v5, v1, La1/b;->c:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v6, v5

    .line 32
    check-cast v6, Landroid/content/res/TypedArray;

    .line 33
    .line 34
    move-object v5, p1

    .line 35
    move v7, p2

    .line 36
    invoke-static/range {v2 .. v8}, Ln0/s0;->p(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    :try_start_0
    invoke-virtual {v9, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/4 v2, -0x1

    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v9, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iput p2, p0, Landroidx/appcompat/widget/u;->a:I

    .line 52
    .line 53
    iget-object p2, p0, Landroidx/appcompat/widget/u;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p2, Landroidx/appcompat/widget/w;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget v4, p0, Landroidx/appcompat/widget/u;->a:I

    .line 62
    .line 63
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    iget-object v5, p2, Landroidx/appcompat/widget/w;->a:Landroidx/appcompat/widget/l2;

    .line 65
    .line 66
    invoke-virtual {v5, v3, v4}, Landroidx/appcompat/widget/l2;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 67
    .line 68
    .line 69
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :try_start_2
    monitor-exit p2

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/u;->h(Landroid/content/res/ColorStateList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :catchall_1
    move-exception p1

    .line 80
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    :try_start_4
    throw p1

    .line 82
    :cond_0
    :goto_0
    const/4 p2, 0x1

    .line 83
    invoke-virtual {v9, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_1

    .line 88
    .line 89
    invoke-virtual {v1, p2}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v0, v3}, Ln0/s0;->s(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    const/4 v3, 0x2

    .line 97
    invoke-virtual {v9, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    invoke-virtual {v9, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-static {v2, v3}, Landroidx/appcompat/widget/m1;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 113
    .line 114
    invoke-static {v0, v2}, Ln0/g0;->r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 115
    .line 116
    .line 117
    const/16 v2, 0x15

    .line 118
    .line 119
    if-ne v3, v2, :cond_5

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v0}, Ln0/g0;->g(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-nez v3, :cond_2

    .line 130
    .line 131
    invoke-static {v0}, Ln0/g0;->h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    if-eqz v3, :cond_3

    .line 136
    .line 137
    :cond_2
    const/4 p1, 0x1

    .line 138
    :cond_3
    if-eqz v2, :cond_5

    .line 139
    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_4

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 153
    .line 154
    .line 155
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    .line 157
    .line 158
    :cond_5
    invoke-virtual {v1}, La1/b;->F()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :goto_1
    invoke-virtual {v1}, La1/b;->F()V

    .line 163
    .line 164
    .line 165
    throw p1
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/u;->a:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/u;->h(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public g(I)V
    .locals 3

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/u;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/u;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/appcompat/widget/w;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/u;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v2, v0, Landroidx/appcompat/widget/w;->a:Landroidx/appcompat/widget/l2;

    .line 19
    .line 20
    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/widget/l2;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/u;->h(Landroid/content/res/ColorStateList;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->a()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public h(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/u;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/appcompat/widget/l3;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/appcompat/widget/l3;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/appcompat/widget/u;->d:Ljava/lang/Object;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/u;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroidx/appcompat/widget/l3;

    .line 19
    .line 20
    iput-object p1, v0, Landroidx/appcompat/widget/l3;->a:Landroid/content/res/ColorStateList;

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, v0, Landroidx/appcompat/widget/l3;->d:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Landroidx/appcompat/widget/u;->d:Ljava/lang/Object;

    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public i(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/l3;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/appcompat/widget/l3;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/appcompat/widget/l3;

    .line 17
    .line 18
    iput-object p1, v0, Landroidx/appcompat/widget/l3;->a:Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v0, Landroidx/appcompat/widget/l3;->d:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->a()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public j(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/l3;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/appcompat/widget/l3;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/appcompat/widget/l3;

    .line 17
    .line 18
    iput-object p1, v0, Landroidx/appcompat/widget/l3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, v0, Landroidx/appcompat/widget/l3;->c:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->a()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public k(Landroid/widget/TextView;)V
    .locals 9

    .line 1
    new-instance v0, Lu6/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lu6/h;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lu6/h;

    .line 7
    .line 8
    invoke-direct {v1}, Lu6/h;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/appcompat/widget/u;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lu6/m;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lu6/h;->setShapeAppearanceModel(Lu6/m;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lu6/h;->setShapeAppearanceModel(Lu6/m;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroidx/appcompat/widget/u;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lu6/h;->n(Landroid/content/res/ColorStateList;)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Landroidx/appcompat/widget/u;->a:I

    .line 29
    .line 30
    int-to-float v2, v2

    .line 31
    iget-object v3, v0, Lu6/h;->a:Lu6/g;

    .line 32
    .line 33
    iput v2, v3, Lu6/g;->j:F

    .line 34
    .line 35
    invoke-virtual {v0}, Lu6/h;->invalidateSelf()V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Landroidx/appcompat/widget/u;->e:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lu6/h;->s(Landroid/content/res/ColorStateList;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Landroidx/appcompat/widget/u;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    .line 53
    .line 54
    const/16 v3, 0x1e

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v4, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/appcompat/widget/u;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Landroid/graphics/Rect;

    .line 68
    .line 69
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    iget v7, v1, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 76
    .line 77
    move-object v3, v0

    .line 78
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 79
    .line 80
    .line 81
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
