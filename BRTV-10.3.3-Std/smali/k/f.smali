.class public final Lk/f;
.super Lk/t;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Landroid/os/Handler;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:Landroidx/appcompat/widget/q;

.field public final j:Lcom/google/android/material/textfield/k;

.field public final k:Lj7/c;

.field public l:I

.field public m:I

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:I

.field public q:Z

.field public r:Z

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Lk/x;

.field public x:Landroid/view/ViewTreeObserver;

.field public y:Lk/u;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lk/f;->g:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lk/f;->h:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v1, Landroidx/appcompat/widget/q;

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    invoke-direct {v1, v2, p0}, Landroidx/appcompat/widget/q;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lk/f;->i:Landroidx/appcompat/widget/q;

    .line 26
    .line 27
    new-instance v1, Lcom/google/android/material/textfield/k;

    .line 28
    .line 29
    invoke-direct {v1, v0, p0}, Lcom/google/android/material/textfield/k;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lk/f;->j:Lcom/google/android/material/textfield/k;

    .line 33
    .line 34
    new-instance v1, Lj7/c;

    .line 35
    .line 36
    invoke-direct {v1, v0, p0}, Lj7/c;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lk/f;->k:Lj7/c;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lk/f;->l:I

    .line 43
    .line 44
    iput v1, p0, Lk/f;->m:I

    .line 45
    .line 46
    iput-object p1, p0, Lk/f;->b:Landroid/content/Context;

    .line 47
    .line 48
    iput-object p2, p0, Lk/f;->n:Landroid/view/View;

    .line 49
    .line 50
    iput p3, p0, Lk/f;->d:I

    .line 51
    .line 52
    iput-boolean p4, p0, Lk/f;->e:Z

    .line 53
    .line 54
    iput-boolean v1, p0, Lk/f;->u:Z

    .line 55
    .line 56
    sget-object p3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-ne p2, v0, :cond_0

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    :cond_0
    iput v0, p0, Lk/f;->p:I

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    .line 77
    div-int/lit8 p2, p2, 0x2

    .line 78
    .line 79
    const p3, 0x7f070017

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput p1, p0, Lk/f;->c:I

    .line 91
    .line 92
    new-instance p1, Landroid/os/Handler;

    .line 93
    .line 94
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lk/f;->f:Landroid/os/Handler;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/f;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lk/f;->g:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lk/l;

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lk/f;->x(Lk/l;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lk/f;->n:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, p0, Lk/f;->o:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lk/f;->x:Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lk/f;->x:Landroid/view/ViewTreeObserver;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lk/f;->i:Landroidx/appcompat/widget/q;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lk/f;->o:Landroid/view/View;

    .line 60
    .line 61
    iget-object v1, p0, Lk/f;->j:Lcom/google/android/material/textfield/k;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public final b(Lk/l;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lk/f;->h:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Lk/e;

    .line 17
    .line 18
    iget-object v5, v5, Lk/e;->b:Lk/l;

    .line 19
    .line 20
    if-ne p1, v5, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/2addr v4, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v4, -0x1

    .line 26
    :goto_1
    if-gez v4, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    add-int/lit8 v2, v4, 0x1

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ge v2, v5, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lk/e;

    .line 42
    .line 43
    iget-object v2, v2, Lk/e;->b:Lk/l;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lk/l;->c(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lk/e;

    .line 53
    .line 54
    iget-object v4, v2, Lk/e;->b:Lk/l;

    .line 55
    .line 56
    invoke-virtual {v4, p0}, Lk/l;->r(Lk/y;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v4, p0, Lk/f;->z:Z

    .line 60
    .line 61
    iget-object v2, v2, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    if-eqz v4, :cond_5

    .line 65
    .line 66
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 v6, 0x17

    .line 69
    .line 70
    if-lt v4, v6, :cond_4

    .line 71
    .line 72
    iget-object v4, v2, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/widget/PopupWindow;

    .line 73
    .line 74
    invoke-static {v4, v5}, Landroidx/appcompat/widget/e2;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object v4, v2, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/widget/PopupWindow;

    .line 78
    .line 79
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-lez v2, :cond_6

    .line 90
    .line 91
    add-int/lit8 v4, v2, -0x1

    .line 92
    .line 93
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lk/e;

    .line 98
    .line 99
    iget v4, v4, Lk/e;->c:I

    .line 100
    .line 101
    iput v4, p0, Lk/f;->p:I

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    iget-object v4, p0, Lk/f;->n:Landroid/view/View;

    .line 105
    .line 106
    sget-object v6, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-ne v4, v0, :cond_7

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    goto :goto_2

    .line 116
    :cond_7
    const/4 v4, 0x1

    .line 117
    :goto_2
    iput v4, p0, Lk/f;->p:I

    .line 118
    .line 119
    :goto_3
    if-nez v2, :cond_b

    .line 120
    .line 121
    invoke-virtual {p0}, Lk/f;->dismiss()V

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lk/f;->w:Lk/x;

    .line 125
    .line 126
    if-eqz p2, :cond_8

    .line 127
    .line 128
    invoke-interface {p2, p1, v0}, Lk/x;->b(Lk/l;Z)V

    .line 129
    .line 130
    .line 131
    :cond_8
    iget-object p1, p0, Lk/f;->x:Landroid/view/ViewTreeObserver;

    .line 132
    .line 133
    if-eqz p1, :cond_a

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_9

    .line 140
    .line 141
    iget-object p1, p0, Lk/f;->x:Landroid/view/ViewTreeObserver;

    .line 142
    .line 143
    iget-object p2, p0, Lk/f;->i:Landroidx/appcompat/widget/q;

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 146
    .line 147
    .line 148
    :cond_9
    iput-object v5, p0, Lk/f;->x:Landroid/view/ViewTreeObserver;

    .line 149
    .line 150
    :cond_a
    iget-object p1, p0, Lk/f;->o:Landroid/view/View;

    .line 151
    .line 152
    iget-object p2, p0, Lk/f;->j:Lcom/google/android/material/textfield/k;

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lk/f;->y:Lk/u;

    .line 158
    .line 159
    invoke-virtual {p1}, Lk/u;->onDismiss()V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_b
    if-eqz p2, :cond_c

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Lk/e;

    .line 170
    .line 171
    iget-object p1, p1, Lk/e;->b:Lk/l;

    .line 172
    .line 173
    invoke-virtual {p1, v3}, Lk/l;->c(Z)V

    .line 174
    .line 175
    .line 176
    :cond_c
    :goto_4
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk/f;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lk/e;

    .line 15
    .line 16
    iget-object v0, v0, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    :cond_0
    return v2
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/f;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    new-array v2, v1, [Lk/e;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Lk/e;

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_1

    .line 20
    .line 21
    aget-object v2, v0, v1

    .line 22
    .line 23
    iget-object v3, v2, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 24
    .line 25
    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object v2, v2, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final e(Lk/e0;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lk/f;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lk/e;

    .line 19
    .line 20
    iget-object v3, v1, Lk/e;->b:Lk/l;

    .line 21
    .line 22
    if-ne p1, v3, :cond_0

    .line 23
    .line 24
    iget-object p1, v1, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/s1;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {p1}, Lk/l;->hasVisibleItems()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lk/f;->n(Lk/l;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lk/f;->w:Lk/x;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lk/x;->f(Lk/l;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    return v2

    .line 49
    :cond_3
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public final g(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h()Landroidx/appcompat/widget/s1;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/f;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, Lea/q;->e(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lk/e;

    .line 17
    .line 18
    iget-object v0, v0, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/s1;

    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method public final i(Lk/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/f;->w:Lk/x;

    .line 2
    .line 3
    return-void
.end method

.method public final j(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lk/f;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lk/e;

    .line 18
    .line 19
    iget-object v0, v0, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/s1;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lk/i;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    check-cast v0, Lk/i;

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0}, Lk/i;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public final l()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final m()Landroid/os/Parcelable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final n(Lk/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/f;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1, p0, v0}, Lk/l;->b(Lk/y;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lk/f;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lk/f;->x(Lk/l;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lk/f;->g:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final onDismiss()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/f;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lk/e;

    .line 16
    .line 17
    iget-object v5, v4, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 18
    .line 19
    iget-object v5, v5, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/widget/PopupWindow;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_1
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget-object v0, v4, Lk/e;->b:Lk/l;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lk/l;->c(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x52

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lk/f;->dismiss()V

    .line 13
    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final p(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/f;->n:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lk/f;->n:Landroid/view/View;

    .line 6
    .line 7
    iget v0, p0, Lk/f;->l:I

    .line 8
    .line 9
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lk/f;->m:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk/f;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public final r(I)V
    .locals 2

    .line 1
    iget v0, p0, Lk/f;->l:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lk/f;->l:I

    .line 6
    .line 7
    iget-object v0, p0, Lk/f;->n:Landroid/view/View;

    .line 8
    .line 9
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lk/f;->m:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final s(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/f;->q:Z

    .line 3
    .line 4
    iput p1, p0, Lk/f;->s:I

    .line 5
    .line 6
    return-void
.end method

.method public final t(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    check-cast p1, Lk/u;

    .line 2
    .line 3
    iput-object p1, p0, Lk/f;->y:Lk/u;

    .line 4
    .line 5
    return-void
.end method

.method public final u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk/f;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public final v(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/f;->r:Z

    .line 3
    .line 4
    iput p1, p0, Lk/f;->t:I

    .line 5
    .line 6
    return-void
.end method

.method public final x(Lk/l;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Lk/f;->b:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v5, Lk/i;

    .line 13
    .line 14
    iget-boolean v6, v0, Lk/f;->e:Z

    .line 15
    .line 16
    const v7, 0x7f0e000b

    .line 17
    .line 18
    .line 19
    invoke-direct {v5, v1, v4, v6, v7}, Lk/i;-><init>(Lk/l;Landroid/view/LayoutInflater;ZI)V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lk/f;->c()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/4 v7, 0x1

    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    iget-boolean v6, v0, Lk/f;->u:Z

    .line 30
    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    iput-boolean v7, v5, Lk/i;->c:Z

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lk/f;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Lk/t;->w(Lk/l;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    iput-boolean v6, v5, Lk/i;->c:Z

    .line 47
    .line 48
    :cond_1
    :goto_0
    iget v6, v0, Lk/f;->c:I

    .line 49
    .line 50
    invoke-static {v5, v3, v6}, Lk/t;->o(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    new-instance v8, Landroidx/appcompat/widget/i2;

    .line 55
    .line 56
    iget v9, v0, Lk/f;->d:I

    .line 57
    .line 58
    const/4 v10, 0x0

    .line 59
    invoke-direct {v8, v3, v10, v9, v2}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v8, Landroidx/appcompat/widget/ListPopupWindow;->y:Landroid/widget/PopupWindow;

    .line 63
    .line 64
    iget-object v9, v0, Lk/f;->k:Lj7/c;

    .line 65
    .line 66
    iput-object v9, v8, Landroidx/appcompat/widget/i2;->C:Lj7/c;

    .line 67
    .line 68
    iput-object v0, v8, Landroidx/appcompat/widget/ListPopupWindow;->p:Landroid/widget/AdapterView$OnItemClickListener;

    .line 69
    .line 70
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v9, v0, Lk/f;->n:Landroid/view/View;

    .line 74
    .line 75
    iput-object v9, v8, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroid/view/View;

    .line 76
    .line 77
    iget v9, v0, Lk/f;->m:I

    .line 78
    .line 79
    iput v9, v8, Landroidx/appcompat/widget/ListPopupWindow;->l:I

    .line 80
    .line 81
    iput-boolean v7, v8, Landroidx/appcompat/widget/ListPopupWindow;->x:Z

    .line 82
    .line 83
    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 84
    .line 85
    .line 86
    const/4 v9, 0x2

    .line 87
    invoke-virtual {v3, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v5}, Landroidx/appcompat/widget/ListPopupWindow;->q(Landroid/widget/ListAdapter;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v6}, Landroidx/appcompat/widget/ListPopupWindow;->r(I)V

    .line 94
    .line 95
    .line 96
    iget v5, v0, Lk/f;->m:I

    .line 97
    .line 98
    iput v5, v8, Landroidx/appcompat/widget/ListPopupWindow;->l:I

    .line 99
    .line 100
    iget-object v5, v0, Lk/f;->h:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-lez v11, :cond_b

    .line 107
    .line 108
    invoke-static {v7, v5}, Lea/q;->e(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    check-cast v11, Lk/e;

    .line 113
    .line 114
    iget-object v12, v11, Lk/e;->b:Lk/l;

    .line 115
    .line 116
    iget-object v13, v12, Lk/l;->f:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    const/4 v14, 0x0

    .line 123
    :goto_1
    if-ge v14, v13, :cond_3

    .line 124
    .line 125
    invoke-virtual {v12, v14}, Lk/l;->getItem(I)Landroid/view/MenuItem;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    invoke-interface {v15}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 130
    .line 131
    .line 132
    move-result v16

    .line 133
    if-eqz v16, :cond_2

    .line 134
    .line 135
    invoke-interface {v15}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    if-ne v1, v9, :cond_2

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_2
    add-int/2addr v14, v7

    .line 143
    const/4 v9, 0x2

    .line 144
    goto :goto_1

    .line 145
    :cond_3
    move-object v15, v10

    .line 146
    :goto_2
    if-nez v15, :cond_4

    .line 147
    .line 148
    move-object v2, v10

    .line 149
    goto :goto_7

    .line 150
    :cond_4
    iget-object v9, v11, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 151
    .line 152
    iget-object v9, v9, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/s1;

    .line 153
    .line 154
    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    .line 159
    .line 160
    if-eqz v13, :cond_5

    .line 161
    .line 162
    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    .line 163
    .line 164
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    check-cast v12, Lk/i;

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    check-cast v12, Lk/i;

    .line 176
    .line 177
    const/4 v13, 0x0

    .line 178
    :goto_3
    invoke-virtual {v12}, Lk/i;->getCount()I

    .line 179
    .line 180
    .line 181
    move-result v14

    .line 182
    const/4 v10, 0x0

    .line 183
    :goto_4
    if-ge v10, v14, :cond_7

    .line 184
    .line 185
    invoke-virtual {v12, v10}, Lk/i;->b(I)Lk/n;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-ne v15, v2, :cond_6

    .line 190
    .line 191
    const/4 v2, -0x1

    .line 192
    goto :goto_5

    .line 193
    :cond_6
    add-int/2addr v10, v7

    .line 194
    goto :goto_4

    .line 195
    :cond_7
    const/4 v2, -0x1

    .line 196
    const/4 v10, -0x1

    .line 197
    :goto_5
    if-ne v10, v2, :cond_9

    .line 198
    .line 199
    :cond_8
    :goto_6
    const/4 v2, 0x0

    .line 200
    goto :goto_7

    .line 201
    :cond_9
    add-int/2addr v10, v13

    .line 202
    invoke-virtual {v9}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    sub-int/2addr v10, v2

    .line 207
    if-ltz v10, :cond_8

    .line 208
    .line 209
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-lt v10, v2, :cond_a

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_a
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    goto :goto_7

    .line 221
    :cond_b
    const/4 v2, 0x0

    .line 222
    const/4 v11, 0x0

    .line 223
    :goto_7
    if-eqz v2, :cond_18

    .line 224
    .line 225
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 226
    .line 227
    const/16 v10, 0x1c

    .line 228
    .line 229
    if-gt v9, v10, :cond_c

    .line 230
    .line 231
    sget-object v9, Landroidx/appcompat/widget/i2;->D:Ljava/lang/reflect/Method;

    .line 232
    .line 233
    if-eqz v9, :cond_d

    .line 234
    .line 235
    :try_start_0
    new-array v10, v7, [Ljava/lang/Object;

    .line 236
    .line 237
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 238
    .line 239
    const/4 v13, 0x0

    .line 240
    aput-object v12, v10, v13

    .line 241
    .line 242
    invoke-virtual {v9, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    goto :goto_8

    .line 246
    :catch_0
    const-string v9, "MenuPopupWindow"

    .line 247
    .line 248
    const-string v10, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    .line 249
    .line 250
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_c
    const/4 v9, 0x0

    .line 255
    invoke-static {v3, v9}, Landroidx/appcompat/widget/f2;->a(Landroid/widget/PopupWindow;Z)V

    .line 256
    .line 257
    .line 258
    :cond_d
    :goto_8
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 259
    .line 260
    const/16 v10, 0x17

    .line 261
    .line 262
    if-lt v9, v10, :cond_e

    .line 263
    .line 264
    const/4 v10, 0x0

    .line 265
    invoke-static {v3, v10}, Landroidx/appcompat/widget/e2;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 266
    .line 267
    .line 268
    :cond_e
    invoke-static {v7, v5}, Lea/q;->e(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    check-cast v3, Lk/e;

    .line 273
    .line 274
    iget-object v3, v3, Lk/e;->a:Landroidx/appcompat/widget/i2;

    .line 275
    .line 276
    iget-object v3, v3, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/s1;

    .line 277
    .line 278
    const/4 v10, 0x2

    .line 279
    new-array v12, v10, [I

    .line 280
    .line 281
    invoke-virtual {v3, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 282
    .line 283
    .line 284
    new-instance v10, Landroid/graphics/Rect;

    .line 285
    .line 286
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 287
    .line 288
    .line 289
    iget-object v13, v0, Lk/f;->o:Landroid/view/View;

    .line 290
    .line 291
    invoke-virtual {v13, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 292
    .line 293
    .line 294
    iget v13, v0, Lk/f;->p:I

    .line 295
    .line 296
    if-ne v13, v7, :cond_11

    .line 297
    .line 298
    const/16 v17, 0x0

    .line 299
    .line 300
    aget v12, v12, v17

    .line 301
    .line 302
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    add-int/2addr v3, v12

    .line 307
    add-int/2addr v3, v6

    .line 308
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 309
    .line 310
    if-le v3, v10, :cond_10

    .line 311
    .line 312
    :cond_f
    const/4 v3, 0x0

    .line 313
    goto :goto_a

    .line 314
    :cond_10
    :goto_9
    const/4 v3, 0x1

    .line 315
    goto :goto_a

    .line 316
    :cond_11
    const/16 v17, 0x0

    .line 317
    .line 318
    aget v3, v12, v17

    .line 319
    .line 320
    sub-int/2addr v3, v6

    .line 321
    if-gez v3, :cond_f

    .line 322
    .line 323
    goto :goto_9

    .line 324
    :goto_a
    if-ne v3, v7, :cond_12

    .line 325
    .line 326
    const/4 v13, 0x1

    .line 327
    goto :goto_b

    .line 328
    :cond_12
    const/4 v13, 0x0

    .line 329
    :goto_b
    iput v3, v0, Lk/f;->p:I

    .line 330
    .line 331
    const/16 v3, 0x1a

    .line 332
    .line 333
    const/4 v10, 0x5

    .line 334
    if-lt v9, v3, :cond_13

    .line 335
    .line 336
    iput-object v2, v8, Landroidx/appcompat/widget/ListPopupWindow;->o:Landroid/view/View;

    .line 337
    .line 338
    const/4 v3, 0x0

    .line 339
    const/4 v12, 0x0

    .line 340
    goto :goto_d

    .line 341
    :cond_13
    const/4 v3, 0x2

    .line 342
    new-array v9, v3, [I

    .line 343
    .line 344
    iget-object v12, v0, Lk/f;->n:Landroid/view/View;

    .line 345
    .line 346
    invoke-virtual {v12, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 347
    .line 348
    .line 349
    new-array v3, v3, [I

    .line 350
    .line 351
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 352
    .line 353
    .line 354
    iget v12, v0, Lk/f;->m:I

    .line 355
    .line 356
    and-int/lit8 v12, v12, 0x7

    .line 357
    .line 358
    if-ne v12, v10, :cond_14

    .line 359
    .line 360
    const/4 v12, 0x0

    .line 361
    aget v14, v9, v12

    .line 362
    .line 363
    iget-object v15, v0, Lk/f;->n:Landroid/view/View;

    .line 364
    .line 365
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    .line 366
    .line 367
    .line 368
    move-result v15

    .line 369
    add-int/2addr v15, v14

    .line 370
    aput v15, v9, v12

    .line 371
    .line 372
    aget v14, v3, v12

    .line 373
    .line 374
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 375
    .line 376
    .line 377
    move-result v15

    .line 378
    add-int/2addr v15, v14

    .line 379
    aput v15, v3, v12

    .line 380
    .line 381
    goto :goto_c

    .line 382
    :cond_14
    const/4 v12, 0x0

    .line 383
    :goto_c
    aget v14, v3, v12

    .line 384
    .line 385
    aget v15, v9, v12

    .line 386
    .line 387
    sub-int v12, v14, v15

    .line 388
    .line 389
    aget v3, v3, v7

    .line 390
    .line 391
    aget v9, v9, v7

    .line 392
    .line 393
    sub-int/2addr v3, v9

    .line 394
    :goto_d
    iget v9, v0, Lk/f;->m:I

    .line 395
    .line 396
    and-int/2addr v9, v10

    .line 397
    if-ne v9, v10, :cond_16

    .line 398
    .line 399
    if-eqz v13, :cond_15

    .line 400
    .line 401
    add-int/2addr v12, v6

    .line 402
    goto :goto_e

    .line 403
    :cond_15
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    sub-int/2addr v12, v2

    .line 408
    goto :goto_e

    .line 409
    :cond_16
    if-eqz v13, :cond_17

    .line 410
    .line 411
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    add-int/2addr v12, v2

    .line 416
    goto :goto_e

    .line 417
    :cond_17
    sub-int/2addr v12, v6

    .line 418
    :goto_e
    iput v12, v8, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    .line 419
    .line 420
    iput-boolean v7, v8, Landroidx/appcompat/widget/ListPopupWindow;->k:Z

    .line 421
    .line 422
    iput-boolean v7, v8, Landroidx/appcompat/widget/ListPopupWindow;->j:Z

    .line 423
    .line 424
    invoke-virtual {v8, v3}, Landroidx/appcompat/widget/ListPopupWindow;->j(I)V

    .line 425
    .line 426
    .line 427
    goto :goto_10

    .line 428
    :cond_18
    iget-boolean v2, v0, Lk/f;->q:Z

    .line 429
    .line 430
    if-eqz v2, :cond_19

    .line 431
    .line 432
    iget v2, v0, Lk/f;->s:I

    .line 433
    .line 434
    iput v2, v8, Landroidx/appcompat/widget/ListPopupWindow;->f:I

    .line 435
    .line 436
    :cond_19
    iget-boolean v2, v0, Lk/f;->r:Z

    .line 437
    .line 438
    if-eqz v2, :cond_1a

    .line 439
    .line 440
    iget v2, v0, Lk/f;->t:I

    .line 441
    .line 442
    invoke-virtual {v8, v2}, Landroidx/appcompat/widget/ListPopupWindow;->j(I)V

    .line 443
    .line 444
    .line 445
    :cond_1a
    iget-object v2, v0, Lk/t;->a:Landroid/graphics/Rect;

    .line 446
    .line 447
    if-eqz v2, :cond_1b

    .line 448
    .line 449
    new-instance v10, Landroid/graphics/Rect;

    .line 450
    .line 451
    invoke-direct {v10, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 452
    .line 453
    .line 454
    goto :goto_f

    .line 455
    :cond_1b
    const/4 v10, 0x0

    .line 456
    :goto_f
    iput-object v10, v8, Landroidx/appcompat/widget/ListPopupWindow;->w:Landroid/graphics/Rect;

    .line 457
    .line 458
    :goto_10
    new-instance v2, Lk/e;

    .line 459
    .line 460
    iget v3, v0, Lk/f;->p:I

    .line 461
    .line 462
    invoke-direct {v2, v8, v1, v3}, Lk/e;-><init>(Landroidx/appcompat/widget/i2;Lk/l;I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    invoke-virtual {v8}, Landroidx/appcompat/widget/ListPopupWindow;->a()V

    .line 469
    .line 470
    .line 471
    iget-object v2, v8, Landroidx/appcompat/widget/ListPopupWindow;->c:Landroidx/appcompat/widget/s1;

    .line 472
    .line 473
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 474
    .line 475
    .line 476
    if-nez v11, :cond_1c

    .line 477
    .line 478
    iget-boolean v3, v0, Lk/f;->v:Z

    .line 479
    .line 480
    if-eqz v3, :cond_1c

    .line 481
    .line 482
    iget-object v3, v1, Lk/l;->m:Ljava/lang/CharSequence;

    .line 483
    .line 484
    if-eqz v3, :cond_1c

    .line 485
    .line 486
    const v3, 0x7f0e0012

    .line 487
    .line 488
    .line 489
    const/4 v5, 0x0

    .line 490
    invoke-virtual {v4, v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    check-cast v3, Landroid/widget/FrameLayout;

    .line 495
    .line 496
    const v4, 0x1020016

    .line 497
    .line 498
    .line 499
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    check-cast v4, Landroid/widget/TextView;

    .line 504
    .line 505
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 506
    .line 507
    .line 508
    iget-object v1, v1, Lk/l;->m:Ljava/lang/CharSequence;

    .line 509
    .line 510
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    .line 512
    .line 513
    const/4 v1, 0x0

    .line 514
    invoke-virtual {v2, v3, v1, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v8}, Landroidx/appcompat/widget/ListPopupWindow;->a()V

    .line 518
    .line 519
    .line 520
    :cond_1c
    return-void
.end method
