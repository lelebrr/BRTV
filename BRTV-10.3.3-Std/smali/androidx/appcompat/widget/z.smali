.class public final Landroidx/appcompat/widget/z;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lw5/c;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/appcompat/widget/z;->a:I

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/m1;Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/z;->c:Ljava/lang/Object;

    iput p3, p0, Landroidx/appcompat/widget/z;->a:I

    iput-object p4, p0, Landroidx/appcompat/widget/z;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/appcompat/widget/m1;->a(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz v1, :cond_7

    .line 15
    .line 16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v3, 0x15

    .line 19
    .line 20
    if-le v2, v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-ne v2, v3, :cond_6

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/appcompat/widget/z;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Landroidx/appcompat/widget/l3;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    new-instance v2, Landroidx/appcompat/widget/l3;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Landroidx/appcompat/widget/z;->d:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/widget/z;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Landroidx/appcompat/widget/l3;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    iput-object v3, v2, Landroidx/appcompat/widget/l3;->a:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    iput-boolean v4, v2, Landroidx/appcompat/widget/l3;->d:Z

    .line 47
    .line 48
    iput-object v3, v2, Landroidx/appcompat/widget/l3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    iput-boolean v4, v2, Landroidx/appcompat/widget/l3;->c:Z

    .line 51
    .line 52
    invoke-static {v0}, Landroidx/core/widget/g;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v4, 0x1

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iput-boolean v4, v2, Landroidx/appcompat/widget/l3;->d:Z

    .line 60
    .line 61
    iput-object v3, v2, Landroidx/appcompat/widget/l3;->a:Landroid/content/res/ColorStateList;

    .line 62
    .line 63
    :cond_3
    invoke-static {v0}, Landroidx/core/widget/g;->b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    iput-boolean v4, v2, Landroidx/appcompat/widget/l3;->c:Z

    .line 70
    .line 71
    iput-object v3, v2, Landroidx/appcompat/widget/l3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    :cond_4
    iget-boolean v3, v2, Landroidx/appcompat/widget/l3;->d:Z

    .line 74
    .line 75
    if-nez v3, :cond_5

    .line 76
    .line 77
    iget-boolean v3, v2, Landroidx/appcompat/widget/l3;->c:Z

    .line 78
    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/w;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;[I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/z;->c:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Landroidx/appcompat/widget/l3;

    .line 92
    .line 93
    if-eqz v2, :cond_7

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/w;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;[I)V

    .line 100
    .line 101
    .line 102
    :cond_7
    return-void
.end method

.method public b(Landroid/util/AttributeSet;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v3, Le/a;->g:[I

    .line 10
    .line 11
    invoke-static {v1, p1, v3, p2}, La1/b;->C(Landroid/content/Context;Landroid/util/AttributeSet;[II)La1/b;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v7, 0x0

    .line 20
    iget-object v1, v8, La1/b;->c:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v5, v1

    .line 23
    check-cast v5, Landroid/content/res/TypedArray;

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    move-object v4, p1

    .line 27
    move v6, p2

    .line 28
    invoke-static/range {v1 .. v7}, Ln0/s0;->p(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const/4 p2, -0x1

    .line 36
    iget-object v1, v8, La1/b;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Landroid/content/res/TypedArray;

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    :try_start_1
    invoke-virtual {v1, v2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eq v2, p2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1, v2}, Lcom/bumptech/glide/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 66
    .line 67
    invoke-static {p1}, Landroidx/appcompat/widget/m1;->a(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    const/4 p1, 0x2

    .line 71
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/16 v3, 0x15

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-virtual {v8, p1}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    .line 85
    invoke-static {v0, p1}, Landroidx/core/widget/g;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 86
    .line 87
    .line 88
    if-ne v2, v3, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    invoke-static {v0}, Landroidx/core/widget/g;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    const/4 p1, 0x3

    .line 119
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    const/4 p2, 0x0

    .line 130
    invoke-static {p1, p2}, Landroidx/appcompat/widget/m1;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 135
    .line 136
    invoke-static {v0, p1}, Landroidx/core/widget/g;->d(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 137
    .line 138
    .line 139
    if-ne p2, v3, :cond_5

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    invoke-static {v0}, Landroidx/core/widget/g;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    if-eqz p2, :cond_5

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_4

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 164
    .line 165
    .line 166
    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-virtual {v8}, La1/b;->F()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :goto_1
    invoke-virtual {v8}, La1/b;->F()V

    .line 174
    .line 175
    .line 176
    throw p1
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1, p1}, Lcom/bumptech/glide/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Landroidx/appcompat/widget/m1;->a(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->a()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    move-object v6, p1

    .line 4
    check-cast v6, Landroid/os/Bundle;

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v4, p1

    .line 9
    check-cast v4, Lcom/google/android/gms/internal/cast/m1;

    .line 10
    .line 11
    iget-object p1, v4, Lcom/google/android/gms/internal/cast/m1;->a:Lq4/f;

    .line 12
    .line 13
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v8, "Must be called from the main thread."

    .line 17
    .line 18
    const-string v9, "register callback = %s"

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/appcompat/widget/z;->c:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v7, v2

    .line 23
    check-cast v7, Ljava/lang/String;

    .line 24
    .line 25
    iget v2, p0, Landroidx/appcompat/widget/z;->a:I

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    const/4 v5, 0x2

    .line 29
    iget-object v10, v4, Lcom/google/android/gms/internal/cast/m1;->b:Lcom/google/android/gms/internal/cast/x;

    .line 30
    .line 31
    if-eq v2, v3, :cond_0

    .line 32
    .line 33
    if-ne v2, v5, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    :cond_0
    new-instance v3, Lc2/b;

    .line 37
    .line 38
    iget-object v11, v4, Lcom/google/android/gms/internal/cast/m1;->c:Lcom/google/android/gms/internal/cast/h;

    .line 39
    .line 40
    invoke-direct {v3, v4, v11, v7}, Lc2/b;-><init>(Lcom/google/android/gms/internal/cast/m1;Lcom/google/android/gms/internal/cast/h;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v11, Lcom/google/android/gms/internal/cast/u4;

    .line 44
    .line 45
    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/cast/u4;-><init>(Lc2/b;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v11}, Lq4/f;->a(Lq4/g;)V

    .line 49
    .line 50
    .line 51
    if-eqz v10, :cond_1

    .line 52
    .line 53
    new-instance v11, Lcom/google/android/gms/internal/cast/d2;

    .line 54
    .line 55
    invoke-direct {v11, v1, v3}, Lcom/google/android/gms/internal/cast/d2;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-array v3, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v11, v3, v0

    .line 61
    .line 62
    sget-object v12, Lcom/google/android/gms/internal/cast/x;->g:Lv4/b;

    .line 63
    .line 64
    invoke-virtual {v12, v9, v3}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v8}, Lb5/l;->b(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v10, Lcom/google/android/gms/internal/cast/x;->b:Ljava/util/Set;

    .line 71
    .line 72
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    if-eq v2, v1, :cond_2

    .line 76
    .line 77
    if-ne v2, v5, :cond_3

    .line 78
    .line 79
    :cond_2
    new-instance v11, Lcom/google/android/gms/internal/cast/g2;

    .line 80
    .line 81
    iget-object v5, v4, Lcom/google/android/gms/internal/cast/m1;->c:Lcom/google/android/gms/internal/cast/h;

    .line 82
    .line 83
    iget-object v2, p0, Landroidx/appcompat/widget/z;->d:Ljava/lang/Object;

    .line 84
    .line 85
    move-object v3, v2

    .line 86
    check-cast v3, Landroid/content/SharedPreferences;

    .line 87
    .line 88
    move-object v2, v11

    .line 89
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/cast/g2;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/m1;Lcom/google/android/gms/internal/cast/h;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v2, Lcom/google/android/gms/internal/cast/l7;

    .line 93
    .line 94
    const/4 v3, 0x4

    .line 95
    invoke-direct {v2, v3, v11}, Lcom/google/android/gms/internal/cast/l7;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v2}, Lq4/f;->a(Lq4/g;)V

    .line 99
    .line 100
    .line 101
    if-eqz v10, :cond_3

    .line 102
    .line 103
    new-instance p1, Lcom/google/android/gms/internal/cast/d2;

    .line 104
    .line 105
    invoke-direct {p1, v0, v11}, Lcom/google/android/gms/internal/cast/d2;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-array v1, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object p1, v1, v0

    .line 111
    .line 112
    sget-object v0, Lcom/google/android/gms/internal/cast/x;->g:Lv4/b;

    .line 113
    .line 114
    invoke-virtual {v0, v9, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v8}, Lb5/l;->b(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, v10, Lcom/google/android/gms/internal/cast/x;->b:Ljava/util/Set;

    .line 121
    .line 122
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    :cond_3
    return-void
.end method
