.class public final Landroidx/fragment/app/y;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Landroidx/fragment/app/j0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/j0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .line 2
    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/j0;

    if-eqz v0, :cond_9

    .line 3
    new-instance p1, Landroidx/fragment/app/FragmentContainerView;

    .line 4
    invoke-direct {p1, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-boolean v3, p1, Landroidx/fragment/app/FragmentContainerView;->d:Z

    .line 6
    invoke-interface {p4}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object p2

    .line 7
    sget-object v0, Lf1/a;->b:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p4

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 9
    :cond_0
    invoke-virtual {p4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p4

    .line 12
    invoke-virtual {v4, p4}, Landroidx/fragment/app/j0;->y(I)Landroidx/fragment/app/s;

    move-result-object v5

    if-eqz p2, :cond_6

    if-nez v5, :cond_6

    if-gtz p4, :cond_2

    if-eqz v0, :cond_1

    .line 13
    const-string p1, " with tag "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_1
    const-string p1, ""

    .line 15
    :goto_0
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "FragmentContainerView must have an android:id to add Fragment "

    .line 16
    invoke-static {p4, p2, p1}, La/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 18
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/j0;->C()Landroidx/fragment/app/d0;

    move-result-object p4

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    invoke-virtual {p4, p2}, Landroidx/fragment/app/d0;->a(Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p2

    .line 19
    iput-boolean v3, p2, Landroidx/fragment/app/s;->D:Z

    .line 20
    iget-object p3, p2, Landroidx/fragment/app/s;->t:Landroidx/fragment/app/v;

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p3, Landroidx/fragment/app/v;->f:Landroidx/fragment/app/FragmentActivity;

    :goto_1
    if-eqz v2, :cond_4

    .line 21
    iput-boolean v3, p2, Landroidx/fragment/app/s;->D:Z

    .line 22
    :cond_4
    new-instance p3, Landroidx/fragment/app/a;

    invoke-direct {p3, v4}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j0;)V

    .line 23
    iput-boolean v3, p3, Landroidx/fragment/app/a;->p:Z

    .line 24
    iput-object p1, p2, Landroidx/fragment/app/s;->E:Landroid/view/ViewGroup;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p4

    .line 26
    invoke-virtual {p3, p4, p2, v0, v3}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/s;Ljava/lang/String;I)V

    .line 27
    iget-boolean p2, p3, Landroidx/fragment/app/a;->g:Z

    if-nez p2, :cond_5

    .line 28
    iput-boolean v1, p3, Landroidx/fragment/app/a;->h:Z

    .line 29
    iget-object p2, p3, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/j0;

    invoke-virtual {p2, p3, v3}, Landroidx/fragment/app/j0;->v(Landroidx/fragment/app/a;Z)V

    goto :goto_2

    .line 30
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This transaction is already being added to the back stack"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_6
    :goto_2
    iget-object p2, v4, Landroidx/fragment/app/j0;->c:La1/b;

    invoke-virtual {p2}, La1/b;->q()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/p0;

    .line 32
    iget-object p4, p3, Landroidx/fragment/app/p0;->c:Landroidx/fragment/app/s;

    .line 33
    iget v0, p4, Landroidx/fragment/app/s;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget-object v0, p4, Landroidx/fragment/app/s;->F:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 35
    iput-object p1, p4, Landroidx/fragment/app/s;->E:Landroid/view/ViewGroup;

    .line 36
    invoke-virtual {p3}, Landroidx/fragment/app/p0;->b()V

    goto :goto_3

    :cond_8
    return-object p1

    .line 37
    :cond_9
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    return-object v2

    .line 38
    :cond_a
    const-string p2, "class"

    invoke-interface {p4, v2, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 39
    sget-object v0, Lf1/a;->a:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p2, :cond_b

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_b
    const/4 v5, -0x1

    .line 41
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x2

    .line 42
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1e

    .line 44
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 45
    :try_start_0
    invoke-static {p2, v0}, Landroidx/fragment/app/d0;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    const-class v9, Landroidx/fragment/app/s;

    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_c

    goto/16 :goto_b

    :cond_c
    if-eqz p1, :cond_d

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :cond_d
    if-ne v1, v5, :cond_f

    if-ne v6, v5, :cond_f

    if-eqz v8, :cond_e

    goto :goto_5

    .line 48
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_5
    if-eq v6, v5, :cond_10

    .line 49
    invoke-virtual {v4, v6}, Landroidx/fragment/app/j0;->y(I)Landroidx/fragment/app/s;

    move-result-object v0

    goto :goto_6

    :cond_10
    move-object v0, v2

    :goto_6
    if-nez v0, :cond_11

    if-eqz v8, :cond_11

    .line 50
    invoke-virtual {v4, v8}, Landroidx/fragment/app/j0;->z(Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v0

    :cond_11
    if-nez v0, :cond_12

    if-eq v1, v5, :cond_12

    .line 51
    invoke-virtual {v4, v1}, Landroidx/fragment/app/j0;->y(I)Landroidx/fragment/app/s;

    move-result-object v0

    .line 52
    :cond_12
    const-string v5, "Fragment "

    const-string v9, "FragmentManager"

    if-nez v0, :cond_16

    .line 53
    invoke-virtual {v4}, Landroidx/fragment/app/j0;->C()Landroidx/fragment/app/d0;

    move-result-object p4

    .line 54
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 55
    invoke-virtual {p4, p2}, Landroidx/fragment/app/d0;->a(Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v0

    .line 56
    iput-boolean v3, v0, Landroidx/fragment/app/s;->n:Z

    if-eqz v6, :cond_13

    move p3, v6

    goto :goto_7

    :cond_13
    move p3, v1

    .line 57
    :goto_7
    iput p3, v0, Landroidx/fragment/app/s;->w:I

    .line 58
    iput v1, v0, Landroidx/fragment/app/s;->x:I

    .line 59
    iput-object v8, v0, Landroidx/fragment/app/s;->y:Ljava/lang/String;

    .line 60
    iput-boolean v3, v0, Landroidx/fragment/app/s;->o:Z

    .line 61
    iput-object v4, v0, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 62
    iget-object p3, v4, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 63
    iput-object p3, v0, Landroidx/fragment/app/s;->t:Landroidx/fragment/app/v;

    .line 64
    iget-object p4, p3, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/FragmentActivity;

    .line 65
    iput-boolean v3, v0, Landroidx/fragment/app/s;->D:Z

    if-nez p3, :cond_14

    goto :goto_8

    .line 66
    :cond_14
    iget-object v2, p3, Landroidx/fragment/app/v;->f:Landroidx/fragment/app/FragmentActivity;

    :goto_8
    if-eqz v2, :cond_15

    .line 67
    iput-boolean v3, v0, Landroidx/fragment/app/s;->D:Z

    .line 68
    :cond_15
    invoke-virtual {v4, v0}, Landroidx/fragment/app/j0;->a(Landroidx/fragment/app/s;)Landroidx/fragment/app/p0;

    move-result-object p3

    .line 69
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_19

    .line 70
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 72
    invoke-static {v9, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 73
    :cond_16
    iget-boolean p3, v0, Landroidx/fragment/app/s;->o:Z

    if-nez p3, :cond_1d

    .line 74
    iput-boolean v3, v0, Landroidx/fragment/app/s;->o:Z

    .line 75
    iput-object v4, v0, Landroidx/fragment/app/s;->s:Landroidx/fragment/app/j0;

    .line 76
    iget-object p3, v4, Landroidx/fragment/app/j0;->n:Landroidx/fragment/app/v;

    .line 77
    iput-object p3, v0, Landroidx/fragment/app/s;->t:Landroidx/fragment/app/v;

    .line 78
    iget-object p4, p3, Landroidx/fragment/app/v;->g:Landroidx/fragment/app/FragmentActivity;

    .line 79
    iput-boolean v3, v0, Landroidx/fragment/app/s;->D:Z

    if-nez p3, :cond_17

    goto :goto_9

    .line 80
    :cond_17
    iget-object v2, p3, Landroidx/fragment/app/v;->f:Landroidx/fragment/app/FragmentActivity;

    :goto_9
    if-eqz v2, :cond_18

    .line 81
    iput-boolean v3, v0, Landroidx/fragment/app/s;->D:Z

    .line 82
    :cond_18
    invoke-virtual {v4, v0}, Landroidx/fragment/app/j0;->f(Landroidx/fragment/app/s;)Landroidx/fragment/app/p0;

    move-result-object p3

    .line 83
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_19

    .line 84
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Retained Fragment "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 86
    invoke-static {v9, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_19
    :goto_a
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, v0, Landroidx/fragment/app/s;->E:Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {p3}, Landroidx/fragment/app/p0;->k()V

    .line 89
    invoke-virtual {p3}, Landroidx/fragment/app/p0;->j()V

    .line 90
    iget-object p1, v0, Landroidx/fragment/app/s;->F:Landroid/view/View;

    if-eqz p1, :cond_1c

    if-eqz v6, :cond_1a

    .line 91
    invoke-virtual {p1, v6}, Landroid/view/View;->setId(I)V

    .line 92
    :cond_1a
    iget-object p1, v0, Landroidx/fragment/app/s;->F:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 93
    iget-object p1, v0, Landroidx/fragment/app/s;->F:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    :cond_1b
    iget-object p1, v0, Landroidx/fragment/app/s;->F:Landroid/view/View;

    new-instance p2, Landroidx/fragment/app/x;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/x;-><init>(Landroidx/fragment/app/y;Landroidx/fragment/app/p0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 95
    iget-object p1, v0, Landroidx/fragment/app/s;->F:Landroid/view/View;

    return-object p1

    .line 96
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, " did not create a view."

    .line 97
    invoke-static {v5, p2, p3}, La/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " with another fragment for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    :goto_b
    return-object v2
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/y;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
