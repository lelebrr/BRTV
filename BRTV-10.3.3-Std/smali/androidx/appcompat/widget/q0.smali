.class public final Landroidx/appcompat/widget/q0;
.super Le0/b;
.source "MyApplication"


# instance fields
.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Ljava/lang/ref/WeakReference;

.field public final synthetic k:Landroidx/appcompat/widget/x0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/x0;IILjava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/q0;->k:Landroidx/appcompat/widget/x0;

    .line 5
    .line 6
    iput p2, p0, Landroidx/appcompat/widget/q0;->h:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/appcompat/widget/q0;->i:I

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/appcompat/widget/q0;->j:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final i(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final j(Landroid/graphics/Typeface;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x1c

    .line 5
    .line 6
    if-lt v1, v2, :cond_1

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    iget v2, p0, Landroidx/appcompat/widget/q0;->h:I

    .line 10
    .line 11
    if-eq v2, v1, :cond_1

    .line 12
    .line 13
    iget v1, p0, Landroidx/appcompat/widget/q0;->i:I

    .line 14
    .line 15
    and-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-static {p1, v2, v1}, Landroidx/appcompat/widget/w0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/q0;->k:Landroidx/appcompat/widget/x0;

    .line 27
    .line 28
    iget-boolean v2, v1, Landroidx/appcompat/widget/x0;->m:Z

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    iput-object p1, v1, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/appcompat/widget/q0;->j:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    sget-object v3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    iget v1, v1, Landroidx/appcompat/widget/x0;->j:I

    .line 53
    .line 54
    new-instance v3, Landroidx/appcompat/widget/r0;

    .line 55
    .line 56
    invoke-direct {v3, v2, p1, v1, v0}, Landroidx/appcompat/widget/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget v0, v1, Landroidx/appcompat/widget/x0;->j:I

    .line 64
    .line 65
    invoke-virtual {v2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    return-void
.end method
