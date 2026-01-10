.class public final Lc6/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lq2/e;


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc6/c;->d:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance p1, La/f;

    .line 7
    .line 8
    const/4 v0, 0x7

    .line 9
    invoke-direct {p1, v0, p0}, La/f;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lc6/c;->c:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public static c()Lc6/c;
    .locals 2

    .line 1
    new-instance v0, Lc6/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lc6/c;->b:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lc6/c;->a:I

    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 1
    new-instance v7, Lf2/a;

    .line 2
    .line 3
    iget-object v0, p0, Lc6/c;->c:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v8, v0

    .line 6
    check-cast v8, Lo2/a;

    .line 7
    .line 8
    iget-object v0, v8, Lo2/a;->b:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v0, p0, Lc6/c;->d:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v9, v0

    .line 17
    check-cast v9, Lm2/j;

    .line 18
    .line 19
    invoke-virtual {v9}, Lm2/j;->a()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v9}, Lm2/j;->b()Lm2/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v3, v0, Lm2/i;->w:Ln2/g;

    .line 28
    .line 29
    instance-of v10, v9, Lm2/q;

    .line 30
    .line 31
    if-eqz v10, :cond_1

    .line 32
    .line 33
    move-object v0, v9

    .line 34
    check-cast v0, Lm2/q;

    .line 35
    .line 36
    iget-boolean v0, v0, Lm2/q;->g:Z

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 45
    const/4 v5, 0x1

    .line 46
    :goto_1
    iget-boolean v6, p0, Lc6/c;->b:Z

    .line 47
    .line 48
    iget v4, p0, Lc6/c;->a:I

    .line 49
    .line 50
    move-object v0, v7

    .line 51
    invoke-direct/range {v0 .. v6}, Lf2/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ln2/g;IZZ)V

    .line 52
    .line 53
    .line 54
    if-eqz v10, :cond_2

    .line 55
    .line 56
    invoke-virtual {v8, v7}, Lo2/a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    instance-of v0, v9, Lm2/e;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v8, v7}, Lo2/a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_2
    return-void
.end method

.method public b()Lc6/c;
    .locals 5

    .line 1
    iget-object v0, p0, Lc6/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lz4/k;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    .line 12
    new-instance v0, Lc6/c;

    .line 13
    .line 14
    iget-object v1, p0, Lc6/c;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, [Lcom/google/android/gms/common/Feature;

    .line 17
    .line 18
    iget-boolean v2, p0, Lc6/c;->b:Z

    .line 19
    .line 20
    iget v3, p0, Lc6/c;->a:I

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p0, v0, Lc6/c;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v1, v0, Lc6/c;->c:Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    :cond_1
    iput-boolean v4, v0, Lc6/c;->b:Z

    .line 36
    .line 37
    iput v3, v0, Lc6/c;->a:I

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v1, "execute parameter required"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc6/c;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput p1, p0, Lc6/c;->a:I

    .line 17
    .line 18
    iget-boolean p1, p0, Lc6/c;->b:Z

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/view/View;

    .line 29
    .line 30
    iget-object v0, p0, Lc6/c;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, La/f;

    .line 33
    .line 34
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lc6/c;->b:Z

    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method
