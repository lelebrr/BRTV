.class public abstract Lcom/google/android/material/navigation/f;
.super Landroid/view/ViewGroup;
.source "MyApplication"

# interfaces
.implements Lk/a0;


# static fields
.field public static final C:[I

.field public static final D:[I


# instance fields
.field public A:Lcom/google/android/material/navigation/h;

.field public B:Lk/l;

.field public final a:Landroidx/transition/AutoTransition;

.field public final b:Landroidx/appcompat/app/a;

.field public final c:Lm0/d;

.field public final d:Landroid/util/SparseArray;

.field public e:I

.field public f:[Lcom/google/android/material/navigation/d;

.field public g:I

.field public h:I

.field public i:Landroid/content/res/ColorStateList;

.field public j:I

.field public k:Landroid/content/res/ColorStateList;

.field public final l:Landroid/content/res/ColorStateList;

.field public m:I

.field public n:I

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:I

.field public final q:Landroid/util/SparseArray;

.field public r:I

.field public s:I

.field public t:Z

.field public u:I

.field public v:I

.field public w:I

.field public x:Lu6/m;

.field public y:Z

.field public z:Landroid/content/res/ColorStateList;


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
    sput-object v0, Lcom/google/android/material/navigation/f;->C:[I

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
    sput-object v0, Lcom/google/android/material/navigation/f;->D:[I

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lm0/d;

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-direct {p1, v0}, Lm0/d;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/material/navigation/f;->c:Lm0/d;

    .line 11
    .line 12
    new-instance p1, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/material/navigation/f;->d:Landroid/util/SparseArray;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/google/android/material/navigation/f;->g:I

    .line 21
    .line 22
    iput p1, p0, Lcom/google/android/material/navigation/f;->h:I

    .line 23
    .line 24
    new-instance v1, Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/android/material/navigation/f;->q:Landroid/util/SparseArray;

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/google/android/material/navigation/f;->r:I

    .line 33
    .line 34
    iput v1, p0, Lcom/google/android/material/navigation/f;->s:I

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/google/android/material/navigation/f;->y:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/navigation/f;->b()Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/google/android/material/navigation/f;->l:Landroid/content/res/ColorStateList;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/google/android/material/navigation/f;->a:Landroidx/transition/AutoTransition;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Landroidx/transition/AutoTransition;

    .line 55
    .line 56
    invoke-direct {v1}, Landroidx/transition/AutoTransition;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/google/android/material/navigation/f;->a:Landroidx/transition/AutoTransition;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Landroidx/transition/TransitionSet;->I(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const v3, 0x7f0c0044

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const v3, 0x7f04038c

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v3}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    iget v3, p1, Landroid/util/TypedValue;->type:I

    .line 89
    .line 90
    const/16 v4, 0x10

    .line 91
    .line 92
    if-ne v3, v4, :cond_1

    .line 93
    .line 94
    iget v2, p1, Landroid/util/TypedValue;->data:I

    .line 95
    .line 96
    :cond_1
    int-to-long v2, v2

    .line 97
    invoke-virtual {v1, v2, v3}, Landroidx/transition/TransitionSet;->G(J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget-object v2, Ly5/a;->b:Lg1/a;

    .line 105
    .line 106
    invoke-static {p1, v2}, La2/a;->K(Landroid/content/Context;Lg1/a;)Landroid/animation/TimeInterpolator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v1, p1}, Landroidx/transition/TransitionSet;->H(Landroid/animation/TimeInterpolator;)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Lcom/google/android/material/internal/y;

    .line 114
    .line 115
    invoke-direct {p1}, Landroidx/transition/Transition;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, p1}, Landroidx/transition/TransitionSet;->F(Landroidx/transition/Transition;)V

    .line 119
    .line 120
    .line 121
    :goto_0
    new-instance p1, Landroidx/appcompat/app/a;

    .line 122
    .line 123
    invoke-direct {p1, v0, p0}, Landroidx/appcompat/app/a;-><init>(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/google/android/material/navigation/f;->b:Landroidx/appcompat/app/a;

    .line 127
    .line 128
    sget-object p1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 129
    .line 130
    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public static f(II)Z
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x3

    .line 7
    if-le p1, p0, :cond_1

    .line 8
    .line 9
    :goto_0
    const/4 v1, 0x1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    if-nez p0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    :goto_1
    return v1
.end method

.method private getNewItem()Lcom/google/android/material/navigation/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->c:Lm0/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm0/d;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/navigation/d;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/f;->e(Landroid/content/Context;)Lcom/google/android/material/navigation/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    return-object v0
.end method

.method private setBadgeIfNeeded(Lcom/google/android/material/navigation/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/navigation/f;->q:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lz5/a;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/d;->setBadge(Lz5/a;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    array-length v4, v0

    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    if-ge v5, v4, :cond_7

    .line 14
    .line 15
    aget-object v6, v0, v5

    .line 16
    .line 17
    if-eqz v6, :cond_6

    .line 18
    .line 19
    iget-object v7, p0, Lcom/google/android/material/navigation/f;->c:Lm0/d;

    .line 20
    .line 21
    invoke-virtual {v7, v6}, Lm0/d;->c(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v7, v6, Lcom/google/android/material/navigation/d;->B:Lz5/a;

    .line 25
    .line 26
    if-eqz v7, :cond_5

    .line 27
    .line 28
    iget-object v7, v6, Lcom/google/android/material/navigation/d;->k:Landroid/widget/ImageView;

    .line 29
    .line 30
    if-eqz v7, :cond_4

    .line 31
    .line 32
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v8, v6, Lcom/google/android/material/navigation/d;->B:Lz5/a;

    .line 39
    .line 40
    if-nez v8, :cond_0

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_0
    iget-object v9, v8, Lz5/a;->m:Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    if-eqz v9, :cond_1

    .line 46
    .line 47
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    check-cast v9, Landroid/widget/FrameLayout;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v9, v2

    .line 55
    :goto_1
    if-eqz v9, :cond_3

    .line 56
    .line 57
    iget-object v7, v8, Lz5/a;->m:Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    if-eqz v7, :cond_2

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroid/widget/FrameLayout;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move-object v7, v2

    .line 69
    :goto_2
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v7, v8}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_3
    iput-object v2, v6, Lcom/google/android/material/navigation/d;->B:Lz5/a;

    .line 81
    .line 82
    :cond_5
    iput-object v2, v6, Lcom/google/android/material/navigation/d;->p:Lk/n;

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    iput v7, v6, Lcom/google/android/material/navigation/d;->v:F

    .line 86
    .line 87
    iput-boolean v3, v6, Lcom/google/android/material/navigation/d;->a:Z

    .line 88
    .line 89
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 93
    .line 94
    iget-object v0, v0, Lk/l;->f:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_8

    .line 101
    .line 102
    iput v3, p0, Lcom/google/android/material/navigation/f;->g:I

    .line 103
    .line 104
    iput v3, p0, Lcom/google/android/material/navigation/f;->h:I

    .line 105
    .line 106
    iput-object v2, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 107
    .line 108
    return-void

    .line 109
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 112
    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    :goto_4
    iget-object v4, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 116
    .line 117
    iget-object v4, v4, Lk/l;->f:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-ge v2, v4, :cond_9

    .line 124
    .line 125
    iget-object v4, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 126
    .line 127
    invoke-virtual {v4, v2}, Lk/l;->getItem(I)Landroid/view/MenuItem;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    const/4 v2, 0x0

    .line 146
    :goto_5
    iget-object v4, p0, Lcom/google/android/material/navigation/f;->q:Landroid/util/SparseArray;

    .line 147
    .line 148
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-ge v2, v5, :cond_b

    .line 153
    .line 154
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-nez v6, :cond_a

    .line 167
    .line 168
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 169
    .line 170
    .line 171
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 175
    .line 176
    iget-object v0, v0, Lk/l;->f:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    new-array v0, v0, [Lcom/google/android/material/navigation/d;

    .line 183
    .line 184
    iput-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 185
    .line 186
    iget v0, p0, Lcom/google/android/material/navigation/f;->e:I

    .line 187
    .line 188
    iget-object v2, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 189
    .line 190
    invoke-virtual {v2}, Lk/l;->l()Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-static {v0, v2}, Lcom/google/android/material/navigation/f;->f(II)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    const/4 v2, 0x0

    .line 203
    :goto_6
    iget-object v4, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 204
    .line 205
    iget-object v4, v4, Lk/l;->f:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-ge v2, v4, :cond_10

    .line 212
    .line 213
    iget-object v4, p0, Lcom/google/android/material/navigation/f;->A:Lcom/google/android/material/navigation/h;

    .line 214
    .line 215
    iput-boolean v1, v4, Lcom/google/android/material/navigation/h;->b:Z

    .line 216
    .line 217
    iget-object v4, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 218
    .line 219
    invoke-virtual {v4, v2}, Lk/l;->getItem(I)Landroid/view/MenuItem;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 224
    .line 225
    .line 226
    iget-object v4, p0, Lcom/google/android/material/navigation/f;->A:Lcom/google/android/material/navigation/h;

    .line 227
    .line 228
    iput-boolean v3, v4, Lcom/google/android/material/navigation/h;->b:Z

    .line 229
    .line 230
    invoke-direct {p0}, Lcom/google/android/material/navigation/f;->getNewItem()Lcom/google/android/material/navigation/d;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    iget-object v5, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 235
    .line 236
    aput-object v4, v5, v2

    .line 237
    .line 238
    iget-object v5, p0, Lcom/google/android/material/navigation/f;->i:Landroid/content/res/ColorStateList;

    .line 239
    .line 240
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 241
    .line 242
    .line 243
    iget v5, p0, Lcom/google/android/material/navigation/f;->j:I

    .line 244
    .line 245
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setIconSize(I)V

    .line 246
    .line 247
    .line 248
    iget-object v5, p0, Lcom/google/android/material/navigation/f;->l:Landroid/content/res/ColorStateList;

    .line 249
    .line 250
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 251
    .line 252
    .line 253
    iget v5, p0, Lcom/google/android/material/navigation/f;->m:I

    .line 254
    .line 255
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setTextAppearanceInactive(I)V

    .line 256
    .line 257
    .line 258
    iget v5, p0, Lcom/google/android/material/navigation/f;->n:I

    .line 259
    .line 260
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setTextAppearanceActive(I)V

    .line 261
    .line 262
    .line 263
    iget-object v5, p0, Lcom/google/android/material/navigation/f;->k:Landroid/content/res/ColorStateList;

    .line 264
    .line 265
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 266
    .line 267
    .line 268
    iget v5, p0, Lcom/google/android/material/navigation/f;->r:I

    .line 269
    .line 270
    const/4 v6, -0x1

    .line 271
    if-eq v5, v6, :cond_c

    .line 272
    .line 273
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setItemPaddingTop(I)V

    .line 274
    .line 275
    .line 276
    :cond_c
    iget v5, p0, Lcom/google/android/material/navigation/f;->s:I

    .line 277
    .line 278
    if-eq v5, v6, :cond_d

    .line 279
    .line 280
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setItemPaddingBottom(I)V

    .line 281
    .line 282
    .line 283
    :cond_d
    iget v5, p0, Lcom/google/android/material/navigation/f;->u:I

    .line 284
    .line 285
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setActiveIndicatorWidth(I)V

    .line 286
    .line 287
    .line 288
    iget v5, p0, Lcom/google/android/material/navigation/f;->v:I

    .line 289
    .line 290
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setActiveIndicatorHeight(I)V

    .line 291
    .line 292
    .line 293
    iget v5, p0, Lcom/google/android/material/navigation/f;->w:I

    .line 294
    .line 295
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setActiveIndicatorMarginHorizontal(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/google/android/material/navigation/f;->c()Lu6/h;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    .line 304
    .line 305
    iget-boolean v5, p0, Lcom/google/android/material/navigation/f;->y:Z

    .line 306
    .line 307
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setActiveIndicatorResizeable(Z)V

    .line 308
    .line 309
    .line 310
    iget-boolean v5, p0, Lcom/google/android/material/navigation/f;->t:Z

    .line 311
    .line 312
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setActiveIndicatorEnabled(Z)V

    .line 313
    .line 314
    .line 315
    iget-object v5, p0, Lcom/google/android/material/navigation/f;->o:Landroid/graphics/drawable/Drawable;

    .line 316
    .line 317
    if-eqz v5, :cond_e

    .line 318
    .line 319
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 320
    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_e
    iget v5, p0, Lcom/google/android/material/navigation/f;->p:I

    .line 324
    .line 325
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setItemBackground(I)V

    .line 326
    .line 327
    .line 328
    :goto_7
    invoke-virtual {v4, v0}, Lcom/google/android/material/navigation/d;->setShifting(Z)V

    .line 329
    .line 330
    .line 331
    iget v5, p0, Lcom/google/android/material/navigation/f;->e:I

    .line 332
    .line 333
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->setLabelVisibilityMode(I)V

    .line 334
    .line 335
    .line 336
    iget-object v5, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 337
    .line 338
    invoke-virtual {v5, v2}, Lk/l;->getItem(I)Landroid/view/MenuItem;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    check-cast v5, Lk/n;

    .line 343
    .line 344
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/d;->c(Lk/n;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, v2}, Lcom/google/android/material/navigation/d;->setItemPosition(I)V

    .line 348
    .line 349
    .line 350
    iget-object v6, p0, Lcom/google/android/material/navigation/f;->d:Landroid/util/SparseArray;

    .line 351
    .line 352
    iget v5, v5, Lk/n;->a:I

    .line 353
    .line 354
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    check-cast v6, Landroid/view/View$OnTouchListener;

    .line 359
    .line 360
    invoke-virtual {v4, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 361
    .line 362
    .line 363
    iget-object v6, p0, Lcom/google/android/material/navigation/f;->b:Landroidx/appcompat/app/a;

    .line 364
    .line 365
    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    .line 367
    .line 368
    iget v6, p0, Lcom/google/android/material/navigation/f;->g:I

    .line 369
    .line 370
    if-eqz v6, :cond_f

    .line 371
    .line 372
    if-ne v5, v6, :cond_f

    .line 373
    .line 374
    iput v2, p0, Lcom/google/android/material/navigation/f;->h:I

    .line 375
    .line 376
    :cond_f
    invoke-direct {p0, v4}, Lcom/google/android/material/navigation/f;->setBadgeIfNeeded(Lcom/google/android/material/navigation/d;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 380
    .line 381
    .line 382
    add-int/lit8 v2, v2, 0x1

    .line 383
    .line 384
    goto/16 :goto_6

    .line 385
    .line 386
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 387
    .line 388
    iget-object v0, v0, Lk/l;->f:Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    sub-int/2addr v0, v1

    .line 395
    iget v2, p0, Lcom/google/android/material/navigation/f;->h:I

    .line 396
    .line 397
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    iput v0, p0, Lcom/google/android/material/navigation/f;->h:I

    .line 402
    .line 403
    iget-object v2, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 404
    .line 405
    invoke-virtual {v2, v0}, Lk/l;->getItem(I)Landroid/view/MenuItem;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 410
    .line 411
    .line 412
    return-void
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .locals 8

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
    const v2, 0x1010038

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    .line 31
    .line 32
    invoke-static {v1, v4}, Lu7/d;->k(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const v5, 0x7f04013d

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    new-instance v4, Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    sget-object v5, Lcom/google/android/material/navigation/f;->D:[I

    .line 63
    .line 64
    const/4 v6, 0x3

    .line 65
    new-array v6, v6, [[I

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    aput-object v5, v6, v7

    .line 69
    .line 70
    sget-object v7, Lcom/google/android/material/navigation/f;->C:[I

    .line 71
    .line 72
    aput-object v7, v6, v3

    .line 73
    .line 74
    sget-object v3, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    .line 75
    .line 76
    const/4 v7, 0x2

    .line 77
    aput-object v3, v6, v7

    .line 78
    .line 79
    invoke-virtual {v1, v5, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    filled-new-array {v1, v0, v2}, [I

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {v4, v6, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 88
    .line 89
    .line 90
    return-object v4
.end method

.method public final c()Lu6/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->x:Lu6/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->z:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lu6/h;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/material/navigation/f;->x:Lu6/m;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lu6/h;-><init>(Lu6/m;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/material/navigation/f;->z:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lu6/h;->n(Landroid/content/res/ColorStateList;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public final d(Lk/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 2
    .line 3
    return-void
.end method

.method public abstract e(Landroid/content/Context;)Lcom/google/android/material/navigation/d;
.end method

.method public getBadgeDrawables()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lz5/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->q:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->i:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->z:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemActiveIndicatorEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigation/f;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lu6/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->x:Lu6/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->o:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->k:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getMenu()Lk/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigation/f;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->B:Lk/l;

    .line 5
    .line 6
    invoke-virtual {v0}, Lk/l;->l()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-static {v2, v0, v2, v1}, Lj7/c;->z(IIIZ)Lj7/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lj7/c;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/f;->i:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/f;->z:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/navigation/f;->c()Lu6/h;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/d;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/f;->t:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setActiveIndicatorEnabled(Z)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/f;->v:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setActiveIndicatorHeight(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/f;->w:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setActiveIndicatorMarginHorizontal(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorResizeable(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/f;->y:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setActiveIndicatorResizeable(Z)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Lu6/m;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/f;->x:Lu6/m;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/navigation/f;->c()Lu6/h;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/d;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/f;->u:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setActiveIndicatorWidth(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/f;->o:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/f;->p:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setItemBackground(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/f;->j:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setIconSize(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/f;->s:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setItemPaddingBottom(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/f;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setItemPaddingTop(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/f;->n:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setTextAppearanceActive(I)V

    .line 14
    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/material/navigation/f;->k:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/f;->m:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setTextAppearanceInactive(I)V

    .line 14
    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/material/navigation/f;->k:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/f;->k:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->f:[Lcom/google/android/material/navigation/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/d;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/navigation/f;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public setPresenter(Lcom/google/android/material/navigation/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/f;->A:Lcom/google/android/material/navigation/h;

    .line 2
    .line 3
    return-void
.end method
