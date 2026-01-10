.class public La0/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ln0/s;
.implements Lo0/s;
.implements Lk/x;
.implements Lk/j;
.implements Landroidx/appcompat/widget/y0;
.implements Ln0/i;
.implements Lv2/b;
.implements Lcom/google/android/material/button/a;
.implements Lcom/google/android/material/internal/f;
.implements Lz4/k;
.implements Le3/l;
.implements Lj3/a;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, La0/b;->a:I

    packed-switch p1, :pswitch_data_0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Lb3/r;

    const-wide/16 v0, 0x1f4

    .line 8
    invoke-direct {p1, v0, v1}, Lr3/j;-><init>(J)V

    .line 9
    iput-object p1, p0, La0/b;->b:Ljava/lang/Object;

    return-void

    .line 10
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La0/b;->a:I

    iput-object p2, p0, La0/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, La0/b;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iput-object p1, p0, La0/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, La0/b;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, La7/f;

    invoke-direct {v0, p1}, La7/f;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, La0/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, La0/b;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ld1/g;

    invoke-direct {v0, p1}, Ld1/g;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, La0/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb3/x;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, La0/b;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    iget-object p1, p1, Lb3/x;->a:Ljava/util/HashMap;

    .line 5
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, La0/b;->b:Ljava/lang/Object;

    return-void
.end method

.method private final q(Lk/l;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final s(Lk/l;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lk/l;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lk/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lk/e0;

    .line 7
    .line 8
    iget-object v0, v0, Lk/e0;->z:Lk/l;

    .line 9
    .line 10
    invoke-virtual {v0}, Lk/l;->k()Lk/l;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lk/l;->c(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, La0/b;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroidx/appcompat/widget/k;

    .line 21
    .line 22
    iget-object v0, v0, Lk/c;->e:Lk/x;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Lk/x;->b(Lk/l;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public c([BI)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/4 v2, -0x1

    .line 4
    if-ge v0, p2, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, La0/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/io/InputStream;

    .line 9
    .line 10
    sub-int v3, p2, v0

    .line 11
    .line 12
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez v0, :cond_2

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance p1, Le3/k;

    .line 26
    .line 27
    invoke-direct {p1}, Le3/k;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_2
    :goto_1
    return v0
.end method

.method public d()S
    .locals 2

    .line 1
    iget-object v0, p0, La0/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/InputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    int-to-short v0, v0

    .line 13
    return v0

    .line 14
    :cond_0
    new-instance v0, Le3/k;

    .line 15
    .line 16
    invoke-direct {v0}, Le3/k;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public e(Lx2/x;Lv2/h;)Lx2/x;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Le3/d;

    .line 6
    .line 7
    iget-object v0, p0, La0/b;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/content/res/Resources;

    .line 10
    .line 11
    invoke-direct {p2, v0, p1}, Le3/d;-><init>(Landroid/content/res/Resources;Lx2/x;)V

    .line 12
    .line 13
    .line 14
    move-object p1, p2

    .line 15
    :goto_0
    return-object p1
.end method

.method public f(Lk/l;)Z
    .locals 3

    .line 1
    iget-object v0, p0, La0/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/k;

    .line 4
    .line 5
    iget-object v1, v0, Lk/c;->c:Lk/l;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    move-object v1, p1

    .line 12
    check-cast v1, Lk/e0;

    .line 13
    .line 14
    iget-object v1, v1, Lk/e0;->A:Lk/n;

    .line 15
    .line 16
    iget v1, v1, Lk/n;->a:I

    .line 17
    .line 18
    iput v1, v0, Landroidx/appcompat/widget/k;->y:I

    .line 19
    .line 20
    iget-object v0, v0, Lk/c;->e:Lk/x;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lk/x;->f(Lk/l;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    :cond_1
    return v2
.end method

.method public g(F)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p0}, La0/b;->o()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, La0/b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 14
    .line 15
    float-to-int p1, p1

    .line 16
    invoke-virtual {v0, p1}, Landroidx/core/widget/NestedScrollView;->k(I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public h()I
    .locals 2

    .line 1
    invoke-virtual {p0}, La0/b;->d()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0}, La0/b;->d()S

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    or-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public i(Ljava/lang/Object;Ljava/io/File;Lv2/h;)Z
    .locals 5

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    const-string p3, "StreamEncoder"

    .line 4
    .line 5
    const/high16 v0, 0x10000

    .line 6
    .line 7
    const-class v1, [B

    .line 8
    .line 9
    iget-object v2, p0, La0/b;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ly2/f;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Ly2/f;->d(ILjava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [B

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    .line 22
    .line 23
    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .line 25
    .line 26
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 v3, -0x1

    .line 31
    if-eq p2, v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v4, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    move-object v3, v4

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception p1

    .line 41
    move-object v3, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    .line 48
    .line 49
    :catch_1
    invoke-virtual {v2, v0}, Ly2/f;->h(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_2

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :catch_2
    move-exception p1

    .line 57
    :goto_1
    const/4 p2, 0x3

    .line 58
    :try_start_3
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    const-string p2, "Failed to encode data onto the OutputStream"

    .line 65
    .line 66
    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    .line 69
    :cond_1
    if-eqz v3, :cond_2

    .line 70
    .line 71
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 72
    .line 73
    .line 74
    :catch_3
    :cond_2
    invoke-virtual {v2, v0}, Ly2/f;->h(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    return v1

    .line 78
    :goto_3
    if-eqz v3, :cond_3

    .line 79
    .line 80
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 81
    .line 82
    .line 83
    :catch_4
    :cond_3
    invoke-virtual {v2, v0}, Ly2/f;->h(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public j(Lk/l;Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget p1, p0, La0/b;->a:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, La0/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/material/navigation/NavigationView;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :sswitch_0
    iget-object p1, p0, La0/b;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lcom/google/android/material/navigation/l;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :sswitch_1
    iget-object p1, p0, La0/b;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->A:Landroidx/appcompat/widget/n;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    check-cast p1, Landroidx/appcompat/widget/o3;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/appcompat/widget/o3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 39
    .line 40
    iget-object v1, p1, Landroidx/appcompat/widget/Toolbar;->G:Ll6/h;

    .line 41
    .line 42
    iget-object v1, v1, Ll6/h;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/r3;

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    check-cast p1, Landroidx/appcompat/app/q0;

    .line 61
    .line 62
    iget-object p1, p1, Landroidx/appcompat/app/q0;->a:Landroidx/appcompat/app/s0;

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/appcompat/app/s0;->s:Landroidx/appcompat/app/z;

    .line 65
    .line 66
    iget-object p1, p1, Landroidx/appcompat/app/z;->a:Landroid/view/Window$Callback;

    .line 67
    .line 68
    invoke-interface {p1, v0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 p1, 0x0

    .line 74
    :goto_0
    if-eqz p1, :cond_2

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-static {v1}, La/e;->l(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    throw p1

    .line 83
    :cond_2
    :goto_1
    return v0

    .line 84
    nop

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public k(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public m()F
    .locals 1

    .line 1
    iget-object v0, p0, La0/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    neg-float v0, v0

    .line 10
    return v0
.end method

.method public n(Lk/l;)V
    .locals 1

    .line 1
    iget v0, p0, La0/b;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    :sswitch_0
    return-void

    .line 7
    :sswitch_1
    iget-object v0, p0, La0/b;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/j;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lk/j;->n(Lk/l;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, La0/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/OverScroller;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Ln0/r1;)Ln0/r1;
    .locals 7

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, p0, La0/b;->a:I

    .line 5
    .line 6
    sparse-switch v2, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, La0/b;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 12
    .line 13
    iget-object v2, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    .line 23
    .line 24
    :cond_0
    iget-object v2, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {p2}, Ln0/r1;->b()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p2}, Ln0/r1;->d()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {p2}, Ln0/r1;->c()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-virtual {p2}, Ln0/r1;->a()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->a(Ln0/r1;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p2, Ln0/r1;->a:Ln0/o1;

    .line 49
    .line 50
    invoke-virtual {p2}, Ln0/o1;->k()Lf0/c;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget-object v3, Lf0/c;->e:Lf0/c;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lf0/c;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    iget-object v2, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    :cond_1
    const/4 v0, 0x1

    .line 67
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ln0/o1;->c()Ln0/r1;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :sswitch_0
    iget-object v0, p0, La0/b;->b:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    move-object p1, p2

    .line 96
    :cond_3
    iget-object v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:Ln0/r1;

    .line 97
    .line 98
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    iput-object p1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:Ln0/r1;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object p1, p2, Ln0/r1;->a:Ln0/o1;

    .line 110
    .line 111
    invoke-virtual {p1}, Ln0/o1;->c()Ln0/r1;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    :sswitch_1
    iget-object v2, p0, La0/b;->b:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    sget-object v3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 124
    .line 125
    invoke-virtual {v2}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    move-object p1, p2

    .line 132
    :cond_5
    iget-object v3, v2, Lcom/google/android/material/appbar/AppBarLayout;->g:Ln0/r1;

    .line 133
    .line 134
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-nez v3, :cond_7

    .line 139
    .line 140
    iput-object p1, v2, Lcom/google/android/material/appbar/AppBarLayout;->g:Ln0/r1;

    .line 141
    .line 142
    iget-object p1, v2, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    if-eqz p1, :cond_6

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-lez p1, :cond_6

    .line 151
    .line 152
    const/4 v0, 0x1

    .line 153
    :cond_6
    xor-int/lit8 p1, v0, 0x1

    .line 154
    .line 155
    invoke-virtual {v2, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 159
    .line 160
    .line 161
    :cond_7
    return-object p2

    .line 162
    :sswitch_2
    iget-object p1, p0, La0/b;->b:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 165
    .line 166
    iget-object v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Ln0/r1;

    .line 167
    .line 168
    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    iput-object p2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Ln0/r1;

    .line 175
    .line 176
    invoke-virtual {p2}, Ln0/r1;->d()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-lez v2, :cond_8

    .line 181
    .line 182
    const/4 v2, 0x1

    .line 183
    goto :goto_0

    .line 184
    :cond_8
    const/4 v2, 0x0

    .line 185
    :goto_0
    iput-boolean v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Z

    .line 186
    .line 187
    if-nez v2, :cond_9

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    if-nez v2, :cond_9

    .line 194
    .line 195
    const/4 v2, 0x1

    .line 196
    goto :goto_1

    .line 197
    :cond_9
    const/4 v2, 0x0

    .line 198
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 199
    .line 200
    .line 201
    iget-object v2, p2, Ln0/r1;->a:Ln0/o1;

    .line 202
    .line 203
    invoke-virtual {v2}, Ln0/o1;->n()Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_a

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    :goto_2
    if-ge v0, v3, :cond_c

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    sget-object v5, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 221
    .line 222
    invoke-virtual {v4}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_b

    .line 227
    .line 228
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    check-cast v4, Landroidx/coordinatorlayout/widget/c;

    .line 233
    .line 234
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/c;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 235
    .line 236
    if-eqz v4, :cond_b

    .line 237
    .line 238
    invoke-virtual {v2}, Ln0/o1;->n()Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_b

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_b
    add-int/2addr v0, v1

    .line 246
    goto :goto_2

    .line 247
    :cond_c
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 248
    .line 249
    .line 250
    :cond_d
    return-object p2

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public p()Le2/j;
    .locals 3

    .line 1
    iget-object v0, p0, La0/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le2/c;

    .line 4
    .line 5
    iget-object v1, v0, Le2/c;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Le2/h;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    const/4 v2, 0x1

    .line 11
    :try_start_0
    invoke-virtual {v0, v2}, Le2/c;->d(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Le2/c;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Le2/d;

    .line 17
    .line 18
    iget-object v0, v0, Le2/d;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Le2/h;->c(Ljava/lang/String;)Le2/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v1

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v1, Le2/j;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Le2/j;-><init>(Le2/e;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit v1

    .line 37
    throw v0
.end method

.method public perform(Landroid/view/View;Lo0/k;)Z
    .locals 3

    .line 1
    iget-object p2, p0, La0/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    sget-object v0, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    iget p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    :cond_1
    if-ne p2, v2, :cond_3

    .line 29
    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    neg-int p2, p2

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    :goto_0
    invoke-static {p2, p1}, Ln0/s0;->i(ILandroid/view/View;)V

    .line 43
    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 47
    .line 48
    .line 49
    return v2

    .line 50
    :cond_4
    return v1
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ld5/c;

    .line 2
    .line 3
    check-cast p2, Lw5/d;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->p()Landroid/os/IInterface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ld5/a;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p1, Lcom/google/android/gms/internal/cast/a;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget v1, Lq5/a;->a:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iget-object v2, p0, La0/b;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lcom/google/android/gms/common/internal/TelemetryData;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v0, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/a;->d:Landroid/os/IBinder;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-interface {p1, v1, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v2}, Lw5/d;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public skip(J)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    move-wide v2, p1

    .line 9
    :goto_0
    cmp-long v4, v2, v0

    .line 10
    .line 11
    if-lez v4, :cond_3

    .line 12
    .line 13
    iget-object v4, p0, La0/b;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Ljava/io/InputStream;

    .line 16
    .line 17
    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    cmp-long v7, v5, v0

    .line 22
    .line 23
    if-lez v7, :cond_1

    .line 24
    .line 25
    sub-long/2addr v2, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, -0x1

    .line 32
    if-ne v4, v5, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const-wide/16 v4, 0x1

    .line 36
    .line 37
    sub-long/2addr v2, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    :goto_1
    sub-long/2addr p1, v2

    .line 40
    return-wide p1
.end method
