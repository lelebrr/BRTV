.class public final Lu6/m;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final m:Lu6/j;


# instance fields
.field public a:Ln5/d;

.field public b:Ln5/d;

.field public c:Ln5/d;

.field public d:Ln5/d;

.field public e:Lu6/c;

.field public f:Lu6/c;

.field public g:Lu6/c;

.field public h:Lu6/c;

.field public i:Lu6/e;

.field public j:Lu6/e;

.field public k:Lu6/e;

.field public l:Lu6/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu6/j;

    .line 2
    .line 3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lu6/j;-><init>(F)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lu6/m;->m:Lu6/j;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu6/k;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu6/m;->a:Ln5/d;

    .line 10
    .line 11
    new-instance v0, Lu6/k;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lu6/m;->b:Ln5/d;

    .line 17
    .line 18
    new-instance v0, Lu6/k;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lu6/m;->c:Ln5/d;

    .line 24
    .line 25
    new-instance v0, Lu6/k;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lu6/m;->d:Ln5/d;

    .line 31
    .line 32
    new-instance v0, Lu6/a;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v1}, Lu6/a;-><init>(F)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lu6/m;->e:Lu6/c;

    .line 39
    .line 40
    new-instance v0, Lu6/a;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lu6/a;-><init>(F)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lu6/m;->f:Lu6/c;

    .line 46
    .line 47
    new-instance v0, Lu6/a;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lu6/a;-><init>(F)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lu6/m;->g:Lu6/c;

    .line 53
    .line 54
    new-instance v0, Lu6/a;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lu6/a;-><init>(F)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lu6/m;->h:Lu6/c;

    .line 60
    .line 61
    new-instance v0, Lu6/e;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lu6/m;->i:Lu6/e;

    .line 68
    .line 69
    new-instance v0, Lu6/e;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lu6/m;->j:Lu6/e;

    .line 76
    .line 77
    new-instance v0, Lu6/e;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lu6/m;->k:Lu6/e;

    .line 84
    .line 85
    new-instance v0, Lu6/e;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-direct {v0, v1}, Lu6/e;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lu6/m;->l:Lu6/e;

    .line 92
    .line 93
    return-void
.end method

.method public static a(Landroid/content/Context;IILu6/c;)Lu6/l;
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    move p1, p2

    .line 9
    move-object p0, v0

    .line 10
    :cond_0
    sget-object p2, Lx5/a;->S:[I

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p1, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x3

    .line 22
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const/4 v0, 0x4

    .line 27
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v2, 0x5

    .line 42
    invoke-static {p0, v2, p3}, Lu6/m;->d(Landroid/content/res/TypedArray;ILu6/c;)Lu6/c;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    invoke-static {p0, v2, p3}, Lu6/m;->d(Landroid/content/res/TypedArray;ILu6/c;)Lu6/c;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/16 v3, 0x9

    .line 53
    .line 54
    invoke-static {p0, v3, p3}, Lu6/m;->d(Landroid/content/res/TypedArray;ILu6/c;)Lu6/c;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const/4 v4, 0x7

    .line 59
    invoke-static {p0, v4, p3}, Lu6/m;->d(Landroid/content/res/TypedArray;ILu6/c;)Lu6/c;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/4 v5, 0x6

    .line 64
    invoke-static {p0, v5, p3}, Lu6/m;->d(Landroid/content/res/TypedArray;ILu6/c;)Lu6/c;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    new-instance v5, Lu6/l;

    .line 69
    .line 70
    invoke-direct {v5}, Lu6/l;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {p2}, Lo9/d;->e(I)Ln5/d;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iput-object p2, v5, Lu6/l;->a:Ln5/d;

    .line 78
    .line 79
    invoke-static {p2}, Lu6/l;->b(Ln5/d;)V

    .line 80
    .line 81
    .line 82
    iput-object v2, v5, Lu6/l;->e:Lu6/c;

    .line 83
    .line 84
    invoke-static {v0}, Lo9/d;->e(I)Ln5/d;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, v5, Lu6/l;->b:Ln5/d;

    .line 89
    .line 90
    invoke-static {p2}, Lu6/l;->b(Ln5/d;)V

    .line 91
    .line 92
    .line 93
    iput-object v3, v5, Lu6/l;->f:Lu6/c;

    .line 94
    .line 95
    invoke-static {v1}, Lo9/d;->e(I)Ln5/d;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iput-object p2, v5, Lu6/l;->c:Ln5/d;

    .line 100
    .line 101
    invoke-static {p2}, Lu6/l;->b(Ln5/d;)V

    .line 102
    .line 103
    .line 104
    iput-object v4, v5, Lu6/l;->g:Lu6/c;

    .line 105
    .line 106
    invoke-static {p1}, Lo9/d;->e(I)Ln5/d;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, v5, Lu6/l;->d:Ln5/d;

    .line 111
    .line 112
    invoke-static {p1}, Lu6/l;->b(Ln5/d;)V

    .line 113
    .line 114
    .line 115
    iput-object p3, v5, Lu6/l;->h:Lu6/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    .line 119
    .line 120
    return-object v5

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    .line 124
    .line 125
    throw p1
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lu6/l;
    .locals 2

    .line 1
    new-instance v0, Lu6/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    int-to-float v1, v1

    .line 5
    invoke-direct {v0, v1}, Lu6/a;-><init>(F)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1, p2, p3, v0}, Lu6/m;->c(Landroid/content/Context;Landroid/util/AttributeSet;IILu6/c;)Lu6/l;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/util/AttributeSet;IILu6/c;)Lu6/l;
    .locals 1

    .line 1
    sget-object v0, Lx5/a;->G:[I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p3, p2, p4}, Lu6/m;->a(Landroid/content/Context;IILu6/c;)Lu6/l;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static d(Landroid/content/res/TypedArray;ILu6/c;)Lu6/c;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    new-instance p2, Lu6/a;

    .line 14
    .line 15
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    int-to-float p0, p0

    .line 30
    invoke-direct {p2, p0}, Lu6/a;-><init>(F)V

    .line 31
    .line 32
    .line 33
    return-object p2

    .line 34
    :cond_1
    const/4 p0, 0x6

    .line 35
    if-ne v0, p0, :cond_2

    .line 36
    .line 37
    new-instance p0, Lu6/j;

    .line 38
    .line 39
    const/high16 p2, 0x3f800000    # 1.0f

    .line 40
    .line 41
    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-direct {p0, p1}, Lu6/j;-><init>(F)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    return-object p2
.end method


# virtual methods
.method public final e(Landroid/graphics/RectF;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lu6/m;->l:Lu6/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lu6/e;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lu6/m;->j:Lu6/e;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lu6/m;->i:Lu6/e;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lu6/m;->k:Lu6/e;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v1, p0, Lu6/m;->e:Lu6/c;

    .line 57
    .line 58
    invoke-interface {v1, p1}, Lu6/c;->a(Landroid/graphics/RectF;)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iget-object v4, p0, Lu6/m;->f:Lu6/c;

    .line 63
    .line 64
    invoke-interface {v4, p1}, Lu6/c;->a(Landroid/graphics/RectF;)F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    cmpl-float v4, v4, v1

    .line 69
    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    iget-object v4, p0, Lu6/m;->h:Lu6/c;

    .line 73
    .line 74
    invoke-interface {v4, p1}, Lu6/c;->a(Landroid/graphics/RectF;)F

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    cmpl-float v4, v4, v1

    .line 79
    .line 80
    if-nez v4, :cond_1

    .line 81
    .line 82
    iget-object v4, p0, Lu6/m;->g:Lu6/c;

    .line 83
    .line 84
    invoke-interface {v4, p1}, Lu6/c;->a(Landroid/graphics/RectF;)F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    cmpl-float p1, p1, v1

    .line 89
    .line 90
    if-nez p1, :cond_1

    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const/4 p1, 0x0

    .line 95
    :goto_1
    iget-object v1, p0, Lu6/m;->b:Ln5/d;

    .line 96
    .line 97
    instance-of v1, v1, Lu6/k;

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    iget-object v1, p0, Lu6/m;->a:Ln5/d;

    .line 102
    .line 103
    instance-of v1, v1, Lu6/k;

    .line 104
    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    iget-object v1, p0, Lu6/m;->c:Ln5/d;

    .line 108
    .line 109
    instance-of v1, v1, Lu6/k;

    .line 110
    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    iget-object v1, p0, Lu6/m;->d:Ln5/d;

    .line 114
    .line 115
    instance-of v1, v1, Lu6/k;

    .line 116
    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    const/4 v1, 0x1

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const/4 v1, 0x0

    .line 122
    :goto_2
    if-eqz v0, :cond_3

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    const/4 v2, 0x1

    .line 129
    :cond_3
    return v2
.end method

.method public final f()Lu6/l;
    .locals 2

    .line 1
    new-instance v0, Lu6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lu6/m;->a:Ln5/d;

    .line 7
    .line 8
    iput-object v1, v0, Lu6/l;->a:Ln5/d;

    .line 9
    .line 10
    iget-object v1, p0, Lu6/m;->b:Ln5/d;

    .line 11
    .line 12
    iput-object v1, v0, Lu6/l;->b:Ln5/d;

    .line 13
    .line 14
    iget-object v1, p0, Lu6/m;->c:Ln5/d;

    .line 15
    .line 16
    iput-object v1, v0, Lu6/l;->c:Ln5/d;

    .line 17
    .line 18
    iget-object v1, p0, Lu6/m;->d:Ln5/d;

    .line 19
    .line 20
    iput-object v1, v0, Lu6/l;->d:Ln5/d;

    .line 21
    .line 22
    iget-object v1, p0, Lu6/m;->e:Lu6/c;

    .line 23
    .line 24
    iput-object v1, v0, Lu6/l;->e:Lu6/c;

    .line 25
    .line 26
    iget-object v1, p0, Lu6/m;->f:Lu6/c;

    .line 27
    .line 28
    iput-object v1, v0, Lu6/l;->f:Lu6/c;

    .line 29
    .line 30
    iget-object v1, p0, Lu6/m;->g:Lu6/c;

    .line 31
    .line 32
    iput-object v1, v0, Lu6/l;->g:Lu6/c;

    .line 33
    .line 34
    iget-object v1, p0, Lu6/m;->h:Lu6/c;

    .line 35
    .line 36
    iput-object v1, v0, Lu6/l;->h:Lu6/c;

    .line 37
    .line 38
    iget-object v1, p0, Lu6/m;->i:Lu6/e;

    .line 39
    .line 40
    iput-object v1, v0, Lu6/l;->i:Lu6/e;

    .line 41
    .line 42
    iget-object v1, p0, Lu6/m;->j:Lu6/e;

    .line 43
    .line 44
    iput-object v1, v0, Lu6/l;->j:Lu6/e;

    .line 45
    .line 46
    iget-object v1, p0, Lu6/m;->k:Lu6/e;

    .line 47
    .line 48
    iput-object v1, v0, Lu6/l;->k:Lu6/e;

    .line 49
    .line 50
    iget-object v1, p0, Lu6/m;->l:Lu6/e;

    .line 51
    .line 52
    iput-object v1, v0, Lu6/l;->l:Lu6/e;

    .line 53
    .line 54
    return-object v0
.end method
