.class public Lka/m0;
.super Lka/b;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final B0:Ljava/lang/String;

.field public static C0:Landroidx/recyclerview/widget/RecyclerView;

.field public static D0:Landroid/widget/RelativeLayout;

.field public static E0:Landroidx/mediarouter/app/c;

.field public static F0:Lea/d;

.field public static G0:Z

.field public static H0:Lc7/o;

.field public static I0:Landroid/view/View;

.field public static J0:I


# instance fields
.field public A0:Lo8/a;

.field public U:Landroid/view/View;

.field public V:Landroidx/recyclerview/widget/RecyclerView;

.field public W:Landroidx/recyclerview/widget/RecyclerView;

.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Landroidx/recyclerview/widget/RecyclerView;

.field public Z:Lfa/h1;

.field public b0:Lfa/j1;

.field public c0:Lfa/f1;

.field public d0:Lfa/x0;

.field public e0:Landroidx/recyclerview/widget/GridLayoutManager;

.field public f0:Landroid/widget/RelativeLayout;

.field public g0:Lorg/bitspark/android/view/CircularProgressBar;

.field public h0:Landroid/widget/LinearLayout;

.field public i0:Landroid/widget/ImageButton;

.field public j0:Landroid/widget/FrameLayout;

.field public k0:Landroid/widget/ImageView;

.field public l0:Landroid/widget/TextView;

.field public m0:Landroid/widget/ImageButton;

.field public n0:Landroid/widget/ImageButton;

.field public o0:Landroid/widget/EditText;

.field public p0:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

.field public q0:Z

.field public r0:Z

.field public s0:Landroid/widget/RelativeLayout;

.field public t0:Landroid/widget/RelativeLayout;

.field public volatile u0:I

.field public v0:Lta/a;

.field public w0:Ljava/lang/String;

.field public x0:Landroid/widget/FrameLayout;

.field public y0:Landroid/widget/RelativeLayout;

.field public final z0:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "htjLvdU=\n"

    .line 2
    .line 3
    const-string v1, "xIud0rF8vVU=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lka/m0;->B0:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v0, Lea/d;->d:Lea/d;

    .line 12
    .line 13
    sput-object v0, Lka/m0;->F0:Lea/d;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lka/m0;->G0:Z

    .line 17
    .line 18
    sput v0, Lka/m0;->J0:I

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lka/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lka/m0;->q0:Z

    .line 6
    .line 7
    iput v0, p0, Lka/m0;->u0:I

    .line 8
    .line 9
    new-instance v0, Landroidx/mediarouter/app/c;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x4

    .line 16
    invoke-direct {v0, p0, v1, v2}, Landroidx/mediarouter/app/c;-><init>(Lka/b;Landroid/os/Looper;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    iput-object v0, p0, Lka/m0;->w0:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lka/m0;->x0:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    iput-object v0, p0, Lka/m0;->y0:Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    new-instance v1, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lka/m0;->z0:Ljava/util/HashMap;

    .line 36
    .line 37
    iput-object v0, p0, Lka/m0;->A0:Lo8/a;

    .line 38
    .line 39
    return-void
.end method

.method public static Q(Lka/m0;Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lfa/f1;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p1, p0, Lfa/p;->a:I

    .line 14
    .line 15
    iput p2, p0, Lfa/p;->a:I

    .line 16
    .line 17
    iput p3, p0, Lfa/p;->b:I

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 20
    .line 21
    .line 22
    if-eq p1, p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lfa/p;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    iget p0, p0, Lfa/p;->a:I

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public static V()V
    .locals 2

    .line 1
    const-string v0, "BdLMUXixTt0hyNtQZIk=\n"

    .line 2
    .line 3
    const-string v1, "Y72vJAvnIbk=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 10
    .line 11
    sget-object v1, Lka/m0;->B0:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 17
    .line 18
    const/16 v1, 0x69

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    .line 1
    const-string v0, "ttYurEVx7ECy2C0=\n"

    .line 2
    .line 3
    const-string v1, "wLlK4SAfmQY=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "PqiDQmdUSw==\n"

    .line 10
    .line 11
    const-string v2, "UcbQNgYmP2o=\n"

    .line 12
    .line 13
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Le8/a;->B()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lka/m0;->q0:Z

    .line 27
    .line 28
    return-void
.end method

.method public final R(I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lga/o;->b(I)Lorg/bitspark/android/beans/ChannelBean$TagsBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->isRestrictedAccess()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    const/4 v1, 0x1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    sget-boolean p1, Lorg/bitspark/android/Spark;->c2:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    sput-boolean v0, Lorg/bitspark/android/Spark;->c2:Z

    .line 22
    .line 23
    :cond_1
    return v1

    .line 24
    :cond_2
    sget-boolean p1, Lorg/bitspark/android/Spark;->c2:Z

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    return v1

    .line 29
    :cond_3
    sget-boolean p1, Lorg/bitspark/android/Spark;->g2:Z

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_6

    .line 40
    .line 41
    :cond_4
    iget-boolean p1, p0, Lka/m0;->r0:Z

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    iget-object p1, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_5
    iget-object p1, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 54
    .line 55
    .line 56
    :goto_1
    sget-object p1, Lea/d;->a:Lea/d;

    .line 57
    .line 58
    sput-object p1, Lka/m0;->F0:Lea/d;

    .line 59
    .line 60
    :cond_6
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    const/16 v2, 0x8

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    sget p1, Lka/m0;->J0:I

    .line 68
    .line 69
    sget v2, Lea/h;->s:I

    .line 70
    .line 71
    if-ge p1, v2, :cond_7

    .line 72
    .line 73
    sget p1, Lka/m0;->J0:I

    .line 74
    .line 75
    add-int/2addr p1, v1

    .line 76
    sput p1, Lka/m0;->J0:I

    .line 77
    .line 78
    const p1, 0x7f120006

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lorg/bitspark/android/Spark;->l0(I)V

    .line 82
    .line 83
    .line 84
    :cond_7
    const-string p1, "By0CCTX+mw4QLDAeJPKLCVUvAxIy59RaBy0FCDX5\n"

    .line 85
    .line 86
    const-string v1, "dUhxfUeX+Ho=\n"

    .line 87
    .line 88
    invoke-static {p1, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 93
    .line 94
    sget-object v1, Lka/m0;->B0:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return v0
.end method

.method public final S()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lka/m0;->G0:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lka/m0;->r0:Z

    .line 5
    .line 6
    const v1, 0x7f0f005c

    .line 7
    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lka/m0;->i0:Landroid/widget/ImageButton;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    const v1, 0x7f0b00ca

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lka/m0;->k0:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lka/m0;->l0:Landroid/widget/TextView;

    .line 31
    .line 32
    const v1, 0x7f12001b

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {}, Lga/o;->a()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lka/m0;->X()V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lea/d;->e:Lea/d;

    .line 49
    .line 50
    sput-object v0, Lka/m0;->F0:Lea/d;

    .line 51
    .line 52
    return-void
.end method

.method public final T(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lka/m0;->Z:Lfa/h1;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Lka/m0;->b0:Lfa/j1;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-boolean v2, p0, Lka/m0;->r0:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iput p3, v0, Lfa/p;->a:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput p3, v1, Lfa/p;->a:I

    .line 21
    .line 22
    :goto_0
    invoke-static {p1, p3}, Lo9/d;->z(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Lo9/d;->y(Landroid/view/View;)Z

    .line 29
    .line 30
    .line 31
    new-instance p1, La3/c;

    .line 32
    .line 33
    const/16 p3, 0x16

    .line 34
    .line 35
    invoke-direct {p1, p0, p3, p2}, La3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v0, 0x64

    .line 39
    .line 40
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    new-instance p1, Landroidx/appcompat/widget/r0;

    .line 44
    .line 45
    const/16 v6, 0x8

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    move-object v2, p1

    .line 49
    move-object v3, p0

    .line 50
    move-object v4, p2

    .line 51
    move v5, p4

    .line 52
    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/widget/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;IIZ)V

    .line 53
    .line 54
    .line 55
    const-wide/16 p3, 0x1f4

    .line 56
    .line 57
    invoke-virtual {p2, p1, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    return-void
.end method

.method public final U(I)V
    .locals 8

    .line 1
    sget-object v0, Lga/o;->f:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lga/o;->f:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, -0xffff

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const v3, -0xffff

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lorg/bitspark/android/beans/GroupBeanModel;

    .line 31
    .line 32
    iget-object v5, v5, Lorg/bitspark/android/beans/GroupBeanModel;->items:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const/4 v6, 0x0

    .line 39
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Lorg/bitspark/android/beans/ChannelBean$TagsBean;

    .line 50
    .line 51
    invoke-virtual {v7}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-ne v7, p1, :cond_1

    .line 56
    .line 57
    move v3, v6

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_2
    if-eq v3, v1, :cond_3

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    :goto_3
    if-ne v3, v1, :cond_5

    .line 69
    .line 70
    return-void

    .line 71
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    iget-boolean p1, p0, Lka/m0;->r0:Z

    .line 74
    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    iget-object p1, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    iget-object v0, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    invoke-virtual {p0, p1, v0, v4, v3}, Lka/m0;->T(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    iget-object p1, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    iget-object v0, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    invoke-virtual {p0, p1, v0, v4, v3}, Lka/m0;->T(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 90
    .line 91
    .line 92
    :goto_4
    return-void
.end method

.method public final W(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lga/o;->c:Landroid/util/SparseArray;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lga/o;->c:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lorg/bitspark/android/beans/Group;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string v0, "ZkFHvQ==\n"

    .line 22
    .line 23
    const-string v2, "SGsbkiBunM0=\n"

    .line 24
    .line 25
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    iget-object p1, p0, Lka/m0;->c0:Lfa/f1;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-object v0, p1, Lfa/f1;->i:Ljava/util/ArrayList;

    .line 40
    .line 41
    iget v2, p1, Lfa/p;->a:I

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object p1, p1, Lfa/f1;->h:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lorg/bitspark/android/beans/Group;

    .line 60
    .line 61
    iget-object p1, p1, Lorg/bitspark/android/beans/Group;->name:Ljava/lang/String;

    .line 62
    .line 63
    const-string v0, "enZ1PA==\n"

    .line 64
    .line 65
    const-string v2, "VFwpEyluTFI=\n"

    .line 66
    .line 67
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    move-object p1, v1

    .line 81
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_1
    return-object v1
.end method

.method public final X()V
    .locals 6

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    sget-object v1, Lka/m0;->B0:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "4AMwF3S7dJP8KDAHUuc1yA==\n"

    .line 6
    .line 7
    const-string v3, "jGxRczPJG+Y=\n"

    .line 8
    .line 9
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v2, p0, Lka/m0;->q0:Z

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string v0, "zqXg23VcswnGp/rKPBjhCtO++8E=\n"

    .line 23
    .line 24
    const-string v2, "p8uJrxA4k28=\n"

    .line 25
    .line 26
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    const-string v0, "iSAWBtGii+GEOhQemPqNpJ46Chw=\n"

    .line 41
    .line 42
    const-string v2, "6k94crTa/8E=\n"

    .line 43
    .line 44
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lka/m0;->a0()V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    iget-object v1, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    iget-object v1, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    iget-object v1, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    sget-object v1, Lga/o;->c:Landroid/util/SparseArray;

    .line 72
    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    sget-object v1, Lga/o;->c:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_2

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_2
    :try_start_0
    new-instance v1, Lfa/h1;

    .line 86
    .line 87
    sget-object v2, Lga/o;->d:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    sget-object v4, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 94
    .line 95
    invoke-direct {v1, v2, v3, v4}, Lfa/h1;-><init>(Landroid/util/SparseArray;Landroidx/fragment/app/FragmentActivity;Landroidx/mediarouter/app/c;)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lka/m0;->Z:Lfa/h1;

    .line 99
    .line 100
    const/4 v2, 0x2

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    new-instance v4, La7/f;

    .line 106
    .line 107
    invoke-direct {v4, p0, v0, v3}, La7/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iput-object v4, v1, Lfa/p;->e:La7/f;

    .line 111
    .line 112
    new-instance v1, Lfa/j1;

    .line 113
    .line 114
    sget-object v3, Lga/o;->d:Landroid/util/SparseArray;

    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    sget-object v5, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 121
    .line 122
    invoke-direct {v1, v3, v4, v5}, Lfa/j1;-><init>(Landroid/util/SparseArray;Landroidx/fragment/app/FragmentActivity;Landroidx/mediarouter/app/c;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Lka/m0;->b0:Lfa/j1;

    .line 126
    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    new-instance v3, La7/f;

    .line 132
    .line 133
    invoke-direct {v3, p0, v0, v2}, La7/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iput-object v3, v1, Lfa/p;->e:La7/f;

    .line 137
    .line 138
    new-instance v0, Lfa/f1;

    .line 139
    .line 140
    sget-object v1, Lga/o;->c:Landroid/util/SparseArray;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    sget-object v3, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 147
    .line 148
    invoke-direct {v0, v1, v2, v3}, Lfa/f1;-><init>(Landroid/util/SparseArray;Landroidx/fragment/app/FragmentActivity;Landroidx/mediarouter/app/c;)V

    .line 149
    .line 150
    .line 151
    iput-object v0, p0, Lka/m0;->c0:Lfa/f1;

    .line 152
    .line 153
    invoke-virtual {p0}, Lka/m0;->b0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :goto_0
    iget-boolean v0, p0, Lka/m0;->r0:Z

    .line 162
    .line 163
    const/16 v1, 0x8

    .line 164
    .line 165
    const/4 v2, 0x0

    .line 166
    if-eqz v0, :cond_3

    .line 167
    .line 168
    iget-object v0, p0, Lka/m0;->t0:Landroid/widget/RelativeLayout;

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lka/m0;->s0:Landroid/widget/RelativeLayout;

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 199
    .line 200
    iget-object v2, p0, Lka/m0;->Z:Lfa/h1;

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 206
    .line 207
    iget-object v2, p0, Lka/m0;->c0:Lfa/f1;

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lka/m0;->t0:Landroid/widget/RelativeLayout;

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lka/m0;->s0:Landroid/widget/RelativeLayout;

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 244
    .line 245
    iget-object v2, p0, Lka/m0;->b0:Lfa/j1;

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 251
    .line 252
    iget-object v2, p0, Lka/m0;->c0:Lfa/f1;

    .line 253
    .line 254
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 255
    .line 256
    .line 257
    :goto_1
    iget-object v0, p0, Lka/m0;->g0:Lorg/bitspark/android/view/CircularProgressBar;

    .line 258
    .line 259
    if-eqz v0, :cond_4

    .line 260
    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_4

    .line 266
    .line 267
    iget-object v0, p0, Lka/m0;->g0:Lorg/bitspark/android/view/CircularProgressBar;

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Lorg/bitspark/android/view/CircularProgressBar;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    :cond_4
    iget-object v0, p0, Lka/m0;->c0:Lfa/f1;

    .line 273
    .line 274
    if-eqz v0, :cond_6

    .line 275
    .line 276
    iget-object v0, v0, Lfa/f1;->i:Ljava/util/ArrayList;

    .line 277
    .line 278
    if-eqz v0, :cond_6

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-lez v0, :cond_6

    .line 285
    .line 286
    iget-object v0, p0, Lka/m0;->c0:Lfa/f1;

    .line 287
    .line 288
    iget-object v0, v0, Lfa/f1;->i:Ljava/util/ArrayList;

    .line 289
    .line 290
    const/4 v1, 0x1

    .line 291
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    check-cast v0, Ljava/lang/Integer;

    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    const/4 v2, -0x1

    .line 302
    if-le v0, v2, :cond_5

    .line 303
    .line 304
    iget-object v0, p0, Lka/m0;->c0:Lfa/f1;

    .line 305
    .line 306
    iget-object v0, v0, Lfa/f1;->i:Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Ljava/lang/Integer;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    const-string v1, ""

    .line 319
    .line 320
    invoke-virtual {p0, v0, v1}, Lka/m0;->Y(ILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    sget-object v1, Lga/l;->i:Lga/l;

    .line 330
    .line 331
    invoke-static {v1}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v1, "Gw==\n"

    .line 339
    .line 340
    const-string v2, "NDTjhAaVVm8=\n"

    .line 341
    .line 342
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const/16 v1, -0xa

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-static {v0}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {p0, v1, v0}, Lka/m0;->Y(ILjava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :cond_6
    :goto_2
    return-void
.end method

.method public final Y(ILjava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput p1, p0, Lka/m0;->u0:I

    .line 8
    .line 9
    sget-object v1, Lka/m0;->B0:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "aGMXDNM/6udsbRgG4DzKxXA2Vg==\n"

    .line 17
    .line 18
    const-string v4, "BAx2aIVQjqQ=\n"

    .line 19
    .line 20
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, "Z9zuixY=\n"

    .line 31
    .line 32
    const-string v4, "R+HQq0164r4=\n"

    .line 33
    .line 34
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v3, 0x5d

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 54
    .line 55
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v2, -0x5

    .line 59
    if-ne p1, v2, :cond_1

    .line 60
    .line 61
    sget-object v3, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    .line 62
    .line 63
    invoke-virtual {v3}, Lga/i;->b()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    sget-object v3, Lka/m0;->H0:Lc7/o;

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v3, v3, Lc7/o;->a:Lc7/b0;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Lc7/b0;->c(Ljava/lang/Object;)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v3, v5}, Lc7/b0;->e(I)Lc7/q;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v6, v5, v4}, Lc7/q;->h(ILjava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget-object v3, v3, Lc7/b0;->o:Lx4/e;

    .line 95
    .line 96
    if-nez v4, :cond_2

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    :goto_0
    move-object v3, v4

    .line 106
    check-cast v3, Ljava/util/List;

    .line 107
    .line 108
    :goto_1
    const/4 v4, 0x0

    .line 109
    if-eqz v3, :cond_a

    .line 110
    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v5, "DsLDXGtSR8kN6fVRUV989hHZggIF\n"

    .line 117
    .line 118
    const-string v6, "Yq2iOCU3MJ8=\n"

    .line 119
    .line 120
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-static {v1, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget p2, p0, Lka/m0;->u0:I

    .line 138
    .line 139
    const/16 v5, 0x8

    .line 140
    .line 141
    if-eq p1, p2, :cond_3

    .line 142
    .line 143
    goto/16 :goto_4

    .line 144
    .line 145
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_4

    .line 150
    .line 151
    sget-object p2, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    .line 153
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    if-ne p1, v2, :cond_9

    .line 157
    .line 158
    sget-object p1, Lka/m0;->D0:Landroid/widget/RelativeLayout;

    .line 159
    .line 160
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_4

    .line 164
    .line 165
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v6, "RiQUX8ixa1pMPwERnA==\n"

    .line 171
    .line 172
    const-string v7, "JUx1MabUBxY=\n"

    .line 173
    .line 174
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-static {v1, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p1}, Lka/m0;->R(I)Z

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    if-nez p2, :cond_5

    .line 200
    .line 201
    goto/16 :goto_4

    .line 202
    .line 203
    :cond_5
    const/4 p2, 0x0

    .line 204
    :try_start_0
    new-instance v1, Lfa/x0;

    .line 205
    .line 206
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    sget-object v7, Lea/d;->e:Lea/d;

    .line 211
    .line 212
    invoke-direct {v1, v6, v7}, Lfa/o;-><init>(Landroid/content/Context;Lea/d;)V

    .line 213
    .line 214
    .line 215
    new-instance v7, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    iput-object v7, v1, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 221
    .line 222
    iput-object p2, v1, Lfa/x0;->p:Lfa/o0;

    .line 223
    .line 224
    iput-object p2, v1, Lfa/x0;->q:[I

    .line 225
    .line 226
    iput-object p2, v1, Lfa/x0;->r:Landroidx/media3/common/x;

    .line 227
    .line 228
    iput-object v6, v1, Lfa/x0;->k:Landroidx/fragment/app/FragmentActivity;

    .line 229
    .line 230
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Lfa/x0;->b()V

    .line 237
    .line 238
    .line 239
    iput p1, v1, Lfa/x0;->l:I

    .line 240
    .line 241
    iput-object v1, p0, Lka/m0;->d0:Lfa/x0;

    .line 242
    .line 243
    new-instance v3, Lka/k0;

    .line 244
    .line 245
    invoke-direct {v3, p0, p1, v0}, Lka/k0;-><init>(Lka/m0;II)V

    .line 246
    .line 247
    .line 248
    iput-object v3, v1, Lfa/x0;->p:Lfa/o0;

    .line 249
    .line 250
    sget-boolean v0, Lka/m0;->G0:Z

    .line 251
    .line 252
    if-eqz v0, :cond_6

    .line 253
    .line 254
    const/4 v0, 0x5

    .line 255
    iput v0, v1, Lfa/o;->g:I

    .line 256
    .line 257
    :cond_6
    const/4 v0, 0x3

    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-instance v3, La7/f;

    .line 263
    .line 264
    const/16 v6, 0x1d

    .line 265
    .line 266
    invoke-direct {v3, p0, v6, v0}, La7/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    iput-object v3, v1, Lfa/o;->h:Lfa/n0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    .line 275
    .line 276
    :goto_2
    sget-object v0, Lka/m0;->D0:Landroid/widget/RelativeLayout;

    .line 277
    .line 278
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    sget-object v0, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 282
    .line 283
    iget-object v1, p0, Lka/m0;->d0:Lfa/x0;

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 286
    .line 287
    .line 288
    sget-object v0, Lka/m0;->B0:Ljava/lang/String;

    .line 289
    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    const-string v3, "3XXL4D5ovXmA\n"

    .line 296
    .line 297
    const-string v6, "ugeklU4h2Vk=\n"

    .line 298
    .line 299
    invoke-static {v3, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    if-ne p1, v2, :cond_7

    .line 317
    .line 318
    iget-object p1, p0, Lka/m0;->d0:Lfa/x0;

    .line 319
    .line 320
    new-instance v0, Landroidx/media3/common/x;

    .line 321
    .line 322
    const/16 v1, 0x11

    .line 323
    .line 324
    invoke-direct {v0, v1, p0}, Landroidx/media3/common/x;-><init>(ILjava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    iput-object v0, p1, Lfa/x0;->r:Landroidx/media3/common/x;

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_7
    iget-object p1, p0, Lka/m0;->d0:Lfa/x0;

    .line 331
    .line 332
    iput-object p2, p1, Lfa/x0;->r:Landroidx/media3/common/x;

    .line 333
    .line 334
    :goto_3
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 335
    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    if-ne p1, v5, :cond_8

    .line 341
    .line 342
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 343
    .line 344
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    .line 346
    .line 347
    :cond_8
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 348
    .line 349
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/s0;)V

    .line 350
    .line 351
    .line 352
    :cond_9
    :goto_4
    iget-object p1, p0, Lka/m0;->g0:Lorg/bitspark/android/view/CircularProgressBar;

    .line 353
    .line 354
    invoke-virtual {p1, v5}, Lorg/bitspark/android/view/CircularProgressBar;->setVisibility(I)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :cond_a
    iget-object v1, p0, Lka/m0;->d0:Lfa/x0;

    .line 359
    .line 360
    if-eqz v1, :cond_c

    .line 361
    .line 362
    iget-object v2, v1, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 365
    .line 366
    .line 367
    iget-object v2, v1, Lfa/x0;->m:Landroid/os/AsyncTask;

    .line 368
    .line 369
    if-eqz v2, :cond_b

    .line 370
    .line 371
    const-string v3, "cdUETXk91Flz2zNqMDzFekLOBGBkL41qRtQjZHxmkCA=\n"

    .line 372
    .line 373
    const-string v5, "J7pAARBOoAk=\n"

    .line 374
    .line 375
    invoke-static {v3, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 379
    .line 380
    .line 381
    const-string v0, "7bHlS47zLm3vv9Jsx/I/Tt6q5WaT4Xde2rDCYouoaxQ=\n"

    .line 382
    .line 383
    const-string v2, "u96hB+eAWj0=\n"

    .line 384
    .line 385
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    :cond_b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 389
    .line 390
    .line 391
    :cond_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-nez v0, :cond_d

    .line 396
    .line 397
    goto/16 :goto_6

    .line 398
    .line 399
    :cond_d
    const/16 p2, -0xa

    .line 400
    .line 401
    if-ne p1, p2, :cond_e

    .line 402
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    sget-object v1, Lga/l;->i:Lga/l;

    .line 409
    .line 410
    invoke-static {v1}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string v1, "1Q==\n"

    .line 418
    .line 419
    const-string v2, "+lHfpJM2hEs=\n"

    .line 420
    .line 421
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p2

    .line 435
    invoke-static {p2}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p2

    .line 439
    goto :goto_6

    .line 440
    :cond_e
    sget-object p2, Lga/o;->f:Ljava/util/List;

    .line 441
    .line 442
    if-nez p2, :cond_f

    .line 443
    .line 444
    return-void

    .line 445
    :cond_f
    sget-object p2, Lga/o;->f:Ljava/util/List;

    .line 446
    .line 447
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 448
    .line 449
    .line 450
    move-result-object p2

    .line 451
    :cond_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    const-string v1, ""

    .line 456
    .line 457
    if-eqz v0, :cond_12

    .line 458
    .line 459
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    check-cast v0, Lorg/bitspark/android/beans/GroupBeanModel;

    .line 464
    .line 465
    iget v2, v0, Lorg/bitspark/android/beans/GroupBeanModel;->group_id:I

    .line 466
    .line 467
    if-ne v2, p1, :cond_10

    .line 468
    .line 469
    iget-object p2, v0, Lorg/bitspark/android/beans/GroupBeanModel;->items:Ljava/util/List;

    .line 470
    .line 471
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object p2

    .line 475
    check-cast p2, Lorg/bitspark/android/beans/ChannelBean$TagsBean;

    .line 476
    .line 477
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 478
    .line 479
    .line 480
    move-result p2

    .line 481
    iget-object v0, v0, Lorg/bitspark/android/beans/GroupBeanModel;->items:Ljava/util/List;

    .line 482
    .line 483
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    :goto_5
    move-object v8, v1

    .line 488
    move v1, p2

    .line 489
    move-object p2, v8

    .line 490
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-eqz v2, :cond_13

    .line 495
    .line 496
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    check-cast v2, Lorg/bitspark/android/beans/ChannelBean$TagsBean;

    .line 501
    .line 502
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    if-lt v1, v3, :cond_11

    .line 507
    .line 508
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->getId()I

    .line 509
    .line 510
    .line 511
    move-result p2

    .line 512
    iget-object v1, v2, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->url:Ljava/lang/String;

    .line 513
    .line 514
    goto :goto_5

    .line 515
    :cond_12
    move-object p2, v1

    .line 516
    :cond_13
    :goto_6
    iget-object v0, p0, Lka/m0;->w0:Ljava/lang/String;

    .line 517
    .line 518
    invoke-static {v0}, Lpa/a;->a(Ljava/lang/String;)Z

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    if-nez v0, :cond_15

    .line 523
    .line 524
    const-string v0, "5g==\n"

    .line 525
    .line 526
    const-string v1, "2eIx8YfiKc4=\n"

    .line 527
    .line 528
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-eqz v0, :cond_14

    .line 537
    .line 538
    invoke-static {p2}, Lea/q;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    move-result-object p2

    .line 542
    const-string v0, "QQ==\n"

    .line 543
    .line 544
    const-string v1, "Z0dRDXJlu4o=\n"

    .line 545
    .line 546
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    iget-object v0, p0, Lka/m0;->w0:Ljava/lang/String;

    .line 554
    .line 555
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object p2

    .line 562
    goto :goto_7

    .line 563
    :cond_14
    invoke-static {p2}, Lea/q;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    move-result-object p2

    .line 567
    const-string v0, "Fg==\n"

    .line 568
    .line 569
    const-string v1, "KU3jCs2q8PE=\n"

    .line 570
    .line 571
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    iget-object v0, p0, Lka/m0;->w0:Ljava/lang/String;

    .line 579
    .line 580
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object p2

    .line 587
    :cond_15
    :goto_7
    sget-object v0, Lka/m0;->B0:Ljava/lang/String;

    .line 588
    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .line 593
    .line 594
    const-string v2, "3tYeP1UP5p+Q\n"

    .line 595
    .line 596
    const-string v3, "rbNwWwB9iqI=\n"

    .line 597
    .line 598
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    iget-object v0, p0, Lka/m0;->g0:Lorg/bitspark/android/view/CircularProgressBar;

    .line 616
    .line 617
    invoke-virtual {v0, v4}, Lorg/bitspark/android/view/CircularProgressBar;->setVisibility(I)V

    .line 618
    .line 619
    .line 620
    :try_start_1
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    invoke-static {p2}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    .line 628
    .line 629
    .line 630
    move-result-object p2

    .line 631
    const-string v0, "wQpljX+qT4H6DQ==\n"

    .line 632
    .line 633
    const-string v1, "lHkA/1LrKOQ=\n"

    .line 634
    .line 635
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-virtual {p2, v0}, Lcom/lzy/okgo/request/base/Request;->removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 640
    .line 641
    .line 642
    move-result-object p2

    .line 643
    check-cast p2, Lcom/lzy/okgo/request/GetRequest;

    .line 644
    .line 645
    const-string v0, "jynwwypPzGa0Lg==\n"

    .line 646
    .line 647
    const-string v1, "2lqVsQcOqwM=\n"

    .line 648
    .line 649
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    sget-object v1, Lea/a;->m:Ljava/lang/String;

    .line 654
    .line 655
    invoke-virtual {p2, v0, v1}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 656
    .line 657
    .line 658
    move-result-object p2

    .line 659
    check-cast p2, Lcom/lzy/okgo/request/GetRequest;

    .line 660
    .line 661
    invoke-virtual {p2, p0}, Lcom/lzy/okgo/request/base/Request;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    .line 662
    .line 663
    .line 664
    move-result-object p2

    .line 665
    check-cast p2, Lcom/lzy/okgo/request/GetRequest;

    .line 666
    .line 667
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 668
    .line 669
    invoke-virtual {p2, v0}, Lcom/lzy/okgo/request/base/Request;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 670
    .line 671
    .line 672
    move-result-object p2

    .line 673
    check-cast p2, Lcom/lzy/okgo/request/GetRequest;

    .line 674
    .line 675
    new-instance v0, Lka/j0;

    .line 676
    .line 677
    invoke-direct {v0, p0, p1}, Lka/j0;-><init>(Lka/m0;I)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {p2, v0}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 681
    .line 682
    .line 683
    goto :goto_8

    .line 684
    :catch_1
    sget-object p1, Lka/m0;->B0:Ljava/lang/String;

    .line 685
    .line 686
    const-string p2, "h0F13IuXpBKIRW+SmJTgMJBNIZmPiq8jwQ==\n"

    .line 687
    .line 688
    const-string v0, "4CQB/P34wFE=\n"

    .line 689
    .line 690
    invoke-static {p2, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object p2

    .line 694
    invoke-static {p1, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    :goto_8
    return-void
.end method

.method public final Z()V
    .locals 2

    .line 1
    const-string v0, "Pvju36OWtDEt+vDPoIfIYw==\n"

    .line 2
    .line 3
    const-string v1, "TJ2dqs7z8kM=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 10
    .line 11
    sget-object v1, Lka/m0;->B0:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 17
    .line 18
    iget-boolean v1, v0, Lorg/bitspark/android/utils/o;->e:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/bitspark/android/utils/o;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lka/m0;->v0:Lta/a;

    .line 29
    .line 30
    invoke-virtual {v0}, Lta/a;->f()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    invoke-static {v0}, Lo9/d;->y(Landroid/view/View;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final a0()V
    .locals 5

    .line 1
    sget-object v0, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    invoke-static {v1, v2}, Ln5/d;->q(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-boolean v2, Lka/m0;->G0:Z

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lka/m0;->e0:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 25
    .line 26
    const/4 v4, 0x5

    .line 27
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->C(I)V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    sget-object v2, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lfa/o;

    .line 45
    .line 46
    iput v4, v2, Lfa/o;->g:I

    .line 47
    .line 48
    sget-object v2, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v2, p0, Lka/m0;->h0:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lka/m0;->h0:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 66
    .line 67
    .line 68
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 69
    .line 70
    sget-object v1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lka/m0;->t0:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    const v1, 0x7f06031c

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object v2, p0, Lka/m0;->e0:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 85
    .line 86
    sget v4, Lea/h;->t:I

    .line 87
    .line 88
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->C(I)V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    sget-object v2, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lfa/o;

    .line 106
    .line 107
    sget v4, Lea/h;->t:I

    .line 108
    .line 109
    iput v4, v2, Lfa/o;->g:I

    .line 110
    .line 111
    sget-object v2, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 118
    .line 119
    .line 120
    :cond_2
    iget-object v2, p0, Lka/m0;->h0:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    const/16 v4, 0x8

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lka/m0;->h0:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 130
    .line 131
    .line 132
    iget-boolean v2, p0, Lka/m0;->r0:Z

    .line 133
    .line 134
    if-nez v2, :cond_3

    .line 135
    .line 136
    iget-object v2, p0, Lka/m0;->t0:Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    .line 144
    add-int/2addr v2, v1

    .line 145
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 146
    .line 147
    sget-object v1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_3
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 154
    .line 155
    sget-object v1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .line 159
    .line 160
    :goto_0
    return-void
.end method

.method public final b0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lka/m0;->r0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lka/m0;->c0:Lfa/f1;

    .line 6
    .line 7
    const/16 v1, 0x78

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, La7/f;

    .line 14
    .line 15
    const/16 v3, 0x1d

    .line 16
    .line 17
    invoke-direct {v2, p0, v3, v1}, La7/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, v0, Lfa/p;->e:La7/f;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lka/m0;->c0:Lfa/f1;

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, La7/f;

    .line 31
    .line 32
    const/16 v3, 0x1d

    .line 33
    .line 34
    invoke-direct {v2, p0, v3, v1}, La7/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, v0, Lfa/p;->e:La7/f;

    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final c0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lka/m0;->r0:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lka/m0;->t0:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lka/m0;->s0:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lka/m0;->t0:Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lka/m0;->s0:Landroid/widget/RelativeLayout;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 87
    .line 88
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    .line 106
    new-instance v2, Lfa/s0;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 115
    .line 116
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    .line 129
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 130
    .line 131
    .line 132
    sget-object v0, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 139
    .line 140
    sget-object v1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    :goto_0
    return-void
.end method

.method public final d0()V
    .locals 2

    .line 1
    sget-boolean v0, Lka/m0;->G0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lka/m0;->G0:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Lka/m0;->r0:Z

    .line 9
    .line 10
    const v1, 0x7f0f005e

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lka/m0;->i0:Landroid/widget/ImageButton;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    const v1, 0x7f0b022f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lka/m0;->k0:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lka/m0;->l0:Landroid/widget/TextView;

    .line 35
    .line 36
    const v1, 0x7f120002

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroidx/fragment/app/s;->n(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {}, Lga/o;->a()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lka/m0;->X()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0}, Lka/m0;->S()V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void
.end method

.method public final e0(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    .line 12
    iput-object p1, p0, Lka/m0;->w0:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p1, "6LSa7nuRAPn6\n"

    .line 16
    .line 17
    const-string v0, "m9vomkb/ess=\n"

    .line 18
    .line 19
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lka/m0;->w0:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string p1, "y7DpAJFt2RPC\n"

    .line 27
    .line 28
    const-string v0, "uN+bdKwDuCE=\n"

    .line 29
    .line 30
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lka/m0;->w0:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string p1, "ZyOuwAw1+PR5KQ==\n"

    .line 38
    .line 39
    const-string v0, "FEzctDFYjJ0=\n"

    .line 40
    .line 41
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lka/m0;->w0:Ljava/lang/String;

    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lka/m0;->i0:Landroid/widget/ImageButton;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lka/m0;->j0:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lka/m0;->m0:Landroid/widget/ImageButton;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sget-object v1, Lka/m0;->B0:Ljava/lang/String;

    .line 30
    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    const-string p1, "LCHc/7zzHRwrAsv67+wSPCIp3P/v\n"

    .line 34
    .line 35
    const-string v0, "TkC/lM+DfH8=\n"

    .line 36
    .line 37
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 42
    .line 43
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-lez p1, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-lez p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v0, v0, -0x1

    .line 77
    .line 78
    iget-object v1, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iget-object v0, p0, Lka/m0;->n0:Landroid/widget/ImageButton;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-ne p1, v0, :cond_2

    .line 95
    .line 96
    const-string p1, "Qa7v1oJisJZL6+zdtWubgU7r\n"

    .line 97
    .line 98
    const-string v0, "JcuDs/YH8uI=\n"

    .line 99
    .line 100
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 105
    .line 106
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 110
    .line 111
    const-string v0, ""

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-ne p1, v0, :cond_4

    .line 124
    .line 125
    const-string p1, "45keAYH7D7PhnFEbn+o1s+eAUQ==\n"

    .line 126
    .line 127
    const-string v0, "hOtxdPGpWdo=\n"

    .line 128
    .line 129
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 134
    .line 135
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lka/m0;->d0()V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_1
    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Lka/m0;->B0:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    const-string p1, "Euy8ZdqDWMcQ6fN/xJdhzQDt\n"

    .line 18
    .line 19
    const-string p2, "dZ7TEKrRDq4=\n"

    .line 20
    .line 21
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-boolean p2, Lorg/bitspark/android/utils/m;->b:Z

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 33
    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    if-eqz p2, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ne p1, v1, :cond_1

    .line 46
    .line 47
    const-string p1, "r8wDOu1Ii1ye1wk4vWvUSKfdGTw=\n"

    .line 48
    .line 49
    const-string p2, "yL5sT50Eug4=\n"

    .line 50
    .line 51
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-boolean p2, Lorg/bitspark/android/utils/m;->b:Z

    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    if-eqz p2, :cond_2

    .line 67
    .line 68
    sget-object v1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-ne p1, v1, :cond_2

    .line 75
    .line 76
    const-string p1, "V+mx1RyDrTBm8rvXTKDyJF/4q9M=\n"

    .line 77
    .line 78
    const-string p2, "MJveoGzPnGI=\n"

    .line 79
    .line 80
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-boolean p2, Lorg/bitspark/android/utils/m;->b:Z

    .line 85
    .line 86
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    if-eqz p2, :cond_3

    .line 96
    .line 97
    iget-object v1, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-ne p1, v1, :cond_3

    .line 104
    .line 105
    const-string p1, "Gp5HJtknP+4Ym35zxhsv6B6ZWw==\n"

    .line 106
    .line 107
    const-string p2, "fewoU6l1aYc=\n"

    .line 108
    .line 109
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sget-boolean p2, Lorg/bitspark/android/utils/m;->b:Z

    .line 114
    .line 115
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    if-eqz p2, :cond_4

    .line 125
    .line 126
    iget-object p2, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 127
    .line 128
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-ne p1, p2, :cond_4

    .line 133
    .line 134
    const-string p1, "dtMKg8dc42BHyACB4TC9XFfOBoPE\n"

    .line 135
    .line 136
    const-string p2, "EaFl9rcQ0jI=\n"

    .line 137
    .line 138
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    sget-boolean p2, Lorg/bitspark/android/utils/m;->b:Z

    .line 143
    .line 144
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 148
    .line 149
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "92xtDIb9oYLEbX1qm/KNitgj\n"

    .line 27
    .line 28
    const-string v5, "oQMJSvScxu8=\n"

    .line 29
    .line 30
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, "9ftTJXQ=\n"

    .line 41
    .line 42
    const-string v5, "2NZ+CFmLqoI=\n"

    .line 43
    .line 44
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v4, "v1n2vg==\n"

    .line 59
    .line 60
    const-string v5, "knTbk4xDR+A=\n"

    .line 61
    .line 62
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v4, "ZYKigi05\n"

    .line 77
    .line 78
    const-string v5, "SK+Pr1sDUxc=\n"

    .line 79
    .line 80
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 95
    .line 96
    sget-object v4, Lka/m0;->B0:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v4, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/16 v3, 0x15

    .line 102
    .line 103
    if-eqz v1, :cond_12

    .line 104
    .line 105
    iget-object v1, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const/16 v5, 0x14

    .line 112
    .line 113
    if-eq v0, v1, :cond_f

    .line 114
    .line 115
    iget-object v1, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-ne v0, v1, :cond_1

    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :cond_1
    iget-object v1, p0, Lka/m0;->i0:Landroid/widget/ImageButton;

    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    const/16 v6, 0x17

    .line 132
    .line 133
    if-eq v0, v1, :cond_c

    .line 134
    .line 135
    iget-object v1, p0, Lka/m0;->j0:Landroid/widget/FrameLayout;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-ne v0, v1, :cond_2

    .line 142
    .line 143
    goto/16 :goto_2

    .line 144
    .line 145
    :cond_2
    iget-object v1, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    const/16 v7, 0x13

    .line 152
    .line 153
    if-ne v0, v1, :cond_8

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v8, "ZsmJKVz44+Y1x40iH/XQ93vYyA==\n"

    .line 161
    .line 162
    const-string v9, "FazoWz+QppI=\n"

    .line 163
    .line 164
    invoke-static {v8, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v4, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    if-ne p2, v6, :cond_3

    .line 182
    .line 183
    return v2

    .line 184
    :cond_3
    if-ne p2, v3, :cond_4

    .line 185
    .line 186
    sget-object p1, Lea/d;->e:Lea/d;

    .line 187
    .line 188
    sput-object p1, Lka/m0;->F0:Lea/d;

    .line 189
    .line 190
    invoke-static {}, Lka/m0;->V()V

    .line 191
    .line 192
    .line 193
    return v2

    .line 194
    :cond_4
    if-ne p2, v5, :cond_5

    .line 195
    .line 196
    iget-object p1, p0, Lka/m0;->m0:Landroid/widget/ImageButton;

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lka/m0;->m0:Landroid/widget/ImageButton;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 204
    .line 205
    .line 206
    return v2

    .line 207
    :cond_5
    if-ne p2, v7, :cond_12

    .line 208
    .line 209
    iget-boolean p1, p0, Lka/m0;->r0:Z

    .line 210
    .line 211
    if-eqz p1, :cond_6

    .line 212
    .line 213
    iget-object p1, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 214
    .line 215
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_6
    sget-boolean p1, Lka/m0;->G0:Z

    .line 220
    .line 221
    if-eqz p1, :cond_7

    .line 222
    .line 223
    iget-object p1, p0, Lka/m0;->j0:Landroid/widget/FrameLayout;

    .line 224
    .line 225
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 226
    .line 227
    .line 228
    return v2

    .line 229
    :cond_7
    iget-object p1, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 230
    .line 231
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 232
    .line 233
    .line 234
    :goto_1
    return v2

    .line 235
    :cond_8
    iget-object v1, p0, Lka/m0;->n0:Landroid/widget/ImageButton;

    .line 236
    .line 237
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-ne v0, v1, :cond_b

    .line 242
    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v5, "oXNipeDyqRWrNmWl7beOF6B4euA=\n"

    .line 249
    .line 250
    const-string v8, "xRYOwJSX62E=\n"

    .line 251
    .line 252
    invoke-static {v5, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v4, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    if-ne p2, v6, :cond_9

    .line 270
    .line 271
    iget-object v1, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 272
    .line 273
    const-string v4, ""

    .line 274
    .line 275
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_5

    .line 279
    .line 280
    :cond_9
    if-ne p2, v3, :cond_a

    .line 281
    .line 282
    sget-object p1, Lea/d;->e:Lea/d;

    .line 283
    .line 284
    sput-object p1, Lka/m0;->F0:Lea/d;

    .line 285
    .line 286
    invoke-static {}, Lka/m0;->V()V

    .line 287
    .line 288
    .line 289
    return v2

    .line 290
    :cond_a
    if-ne p2, v7, :cond_12

    .line 291
    .line 292
    iget-object p1, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 293
    .line 294
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 295
    .line 296
    .line 297
    return v2

    .line 298
    :cond_b
    iget-object v1, p0, Lka/m0;->p0:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 299
    .line 300
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-ne v0, v1, :cond_12

    .line 305
    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    const-string v5, "JEyMptXXJ60ZQJCzmt0wsG9Mg6HUwnU=\n"

    .line 312
    .line 313
    const-string v6, "Tyn1xLq2Vck=\n"

    .line 314
    .line 315
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-static {v4, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    if-ne p2, v3, :cond_12

    .line 333
    .line 334
    sget-object p1, Lea/d;->e:Lea/d;

    .line 335
    .line 336
    sput-object p1, Lka/m0;->F0:Lea/d;

    .line 337
    .line 338
    invoke-static {}, Lka/m0;->V()V

    .line 339
    .line 340
    .line 341
    return v2

    .line 342
    :cond_c
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v7, "m9utuMi2CNWGnqev0v4v143QuOo=\n"

    .line 348
    .line 349
    const-string v8, "6L7MyqveSqE=\n"

    .line 350
    .line 351
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-static {v4, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    if-ne p2, v6, :cond_d

    .line 369
    .line 370
    invoke-virtual {p0}, Lka/m0;->d0()V

    .line 371
    .line 372
    .line 373
    return v2

    .line 374
    :cond_d
    if-ne p2, v3, :cond_e

    .line 375
    .line 376
    sget-object p1, Lea/d;->d:Lea/d;

    .line 377
    .line 378
    sput-object p1, Lka/m0;->F0:Lea/d;

    .line 379
    .line 380
    invoke-static {}, Lka/m0;->V()V

    .line 381
    .line 382
    .line 383
    return v2

    .line 384
    :cond_e
    if-ne p2, v5, :cond_12

    .line 385
    .line 386
    sget-boolean v1, Lka/m0;->G0:Z

    .line 387
    .line 388
    if-eqz v1, :cond_12

    .line 389
    .line 390
    iget-boolean v1, p0, Lka/m0;->r0:Z

    .line 391
    .line 392
    if-nez v1, :cond_12

    .line 393
    .line 394
    iget-object p1, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 395
    .line 396
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 397
    .line 398
    .line 399
    return v2

    .line 400
    :cond_f
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    const-string v6, "1mgSS7jn19zUbV1Vrcyh0Md/E0ro\n"

    .line 406
    .line 407
    const-string v7, "sRp9Psi1gbU=\n"

    .line 408
    .line 409
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-static {v4, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    const/16 v1, 0x16

    .line 427
    .line 428
    if-ne p2, v1, :cond_10

    .line 429
    .line 430
    const-string v1, "/Pk73YBz/hz+/HTjtXjrOt/OC+ygYOwqycIT4KQ=\n"

    .line 431
    .line 432
    const-string v6, "m4tUqPAhqHU=\n"

    .line 433
    .line 434
    invoke-static {v1, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-static {v4, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    goto :goto_4

    .line 442
    :cond_10
    if-ne p2, v3, :cond_11

    .line 443
    .line 444
    const-string v1, "3eTdyzveHMLf4ZL1DtUJ5P7T7fobzQ709tP06g==\n"

    .line 445
    .line 446
    const-string v6, "upayvkuMSqs=\n"

    .line 447
    .line 448
    invoke-static {v1, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    invoke-static {v4, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    :cond_11
    :goto_4
    if-ne p2, v5, :cond_12

    .line 456
    .line 457
    sget-object v1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 458
    .line 459
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    const/16 v5, 0x8

    .line 464
    .line 465
    if-ne v1, v5, :cond_12

    .line 466
    .line 467
    const-string p1, "ysq/IN32MF3Iz/Ae6P0le+n9jxH95SJr6feHGw==\n"

    .line 468
    .line 469
    const-string p2, "rbjQVa2kZjQ=\n"

    .line 470
    .line 471
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    invoke-static {v4, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    return v2

    .line 479
    :cond_12
    :goto_5
    if-ne p2, v3, :cond_13

    .line 480
    .line 481
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-lez v1, :cond_13

    .line 486
    .line 487
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-nez v1, :cond_13

    .line 492
    .line 493
    iget-object v1, p0, Lka/m0;->i0:Landroid/widget/ImageButton;

    .line 494
    .line 495
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-ne v0, v1, :cond_13

    .line 500
    .line 501
    sget-object p1, Lea/d;->d:Lea/d;

    .line 502
    .line 503
    sput-object p1, Lka/m0;->F0:Lea/d;

    .line 504
    .line 505
    invoke-static {}, Lka/m0;->V()V

    .line 506
    .line 507
    .line 508
    return v2

    .line 509
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lka/b;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 510
    .line 511
    .line 512
    move-result p1

    .line 513
    return p1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "LQ35hCu6DQ==\n"

    .line 14
    .line 15
    const-string v3, "QmOt617ZZRY=\n"

    .line 16
    .line 17
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 32
    .line 33
    sget-object v0, Lka/m0;->B0:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 39
    .line 40
    .line 41
    :cond_0
    return v1
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    const/4 p2, 0x1

    .line 2
    new-instance p3, La1/b;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p3, v0}, La1/b;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Lta/a;

    .line 12
    .line 13
    invoke-virtual {p3, v0}, La1/b;->n(Ljava/lang/Class;)Landroidx/lifecycle/v0;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    check-cast p3, Lta/a;

    .line 18
    .line 19
    iput-object p3, p0, Lka/m0;->v0:Lta/a;

    .line 20
    .line 21
    const-string p3, "k6mLnDLrgXKfqpuYL+aKeg==\n"

    .line 22
    .line 23
    const-string v0, "wPnUynuvxD0=\n"

    .line 24
    .line 25
    invoke-static {p3, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {v0, p3}, Lorg/bitspark/android/utils/m;->f(ILjava/lang/String;)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    invoke-virtual {p0, p3}, Lka/m0;->e0(I)V

    .line 39
    .line 40
    .line 41
    const-string p3, "/GuTkJsVp8f9dJmW\n"

    .line 42
    .line 43
    const-string v1, "rzvMxtRR+IA=\n"

    .line 44
    .line 45
    invoke-static {p3, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    sget-object v1, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "Rjg6iuYm9iM=\n"

    .line 56
    .line 57
    const-string v3, "JEtK+INAk1E=\n"

    .line 58
    .line 59
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_0

    .line 72
    .line 73
    const-string p3, "F+Pl+CH9ckMW/O/+\n"

    .line 74
    .line 75
    const-string v1, "RLO6rm65LQQ=\n"

    .line 76
    .line 77
    invoke-static {p3, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-static {p3, v0}, Lorg/bitspark/android/utils/m;->e(Ljava/lang/String;Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    iput-boolean p3, p0, Lka/m0;->r0:Z

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    sget-boolean p3, Lea/h;->N:Z

    .line 93
    .line 94
    iput-boolean p3, p0, Lka/m0;->r0:Z

    .line 95
    .line 96
    :goto_0
    iget-boolean p3, p0, Lka/m0;->r0:Z

    .line 97
    .line 98
    if-eqz p3, :cond_1

    .line 99
    .line 100
    const/4 v1, 0x6

    .line 101
    sput v1, Lea/h;->t:I

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    const/4 v1, 0x5

    .line 105
    sput v1, Lea/h;->t:I

    .line 106
    .line 107
    :goto_1
    const/4 v1, 0x0

    .line 108
    if-eqz p3, :cond_2

    .line 109
    .line 110
    const p3, 0x7f0e0051

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    const p3, 0x7f0e0053

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 128
    .line 129
    :goto_2
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 130
    .line 131
    const p3, 0x7f0b0494

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 139
    .line 140
    iput-object p1, p0, Lka/m0;->f0:Landroid/widget/RelativeLayout;

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Lsa/b;

    .line 146
    .line 147
    invoke-direct {p1, v0, v0, v0, v0}, Lsa/b;-><init>(IIII)V

    .line 148
    .line 149
    .line 150
    iget-object p3, p0, Lka/m0;->U:Landroid/view/View;

    .line 151
    .line 152
    const v1, 0x7f0b01b5

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 160
    .line 161
    iput-object p3, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    .line 163
    iget-object p3, p0, Lka/m0;->U:Landroid/view/View;

    .line 164
    .line 165
    const v1, 0x7f0b01c0

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    .line 174
    iput-object p3, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 175
    .line 176
    iget-object p3, p0, Lka/m0;->U:Landroid/view/View;

    .line 177
    .line 178
    const v1, 0x7f0b01b6

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 186
    .line 187
    iput-object p3, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    .line 189
    iget-object p3, p0, Lka/m0;->U:Landroid/view/View;

    .line 190
    .line 191
    const v1, 0x7f0b01c1

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 199
    .line 200
    iput-object p3, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 201
    .line 202
    iget-object p3, p0, Lka/m0;->U:Landroid/view/View;

    .line 203
    .line 204
    const v1, 0x7f0b0230

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    check-cast p3, Landroid/widget/RelativeLayout;

    .line 212
    .line 213
    iput-object p3, p0, Lka/m0;->s0:Landroid/widget/RelativeLayout;

    .line 214
    .line 215
    iget-object p3, p0, Lka/m0;->U:Landroid/view/View;

    .line 216
    .line 217
    const v1, 0x7f0b0231

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    check-cast p3, Landroid/widget/RelativeLayout;

    .line 225
    .line 226
    iput-object p3, p0, Lka/m0;->t0:Landroid/widget/RelativeLayout;

    .line 227
    .line 228
    iget-object p3, p0, Lka/m0;->U:Landroid/view/View;

    .line 229
    .line 230
    const v1, 0x7f0b00ca

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    sput-object p3, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 240
    .line 241
    invoke-virtual {p0}, Lka/m0;->c0()V

    .line 242
    .line 243
    .line 244
    new-instance p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 245
    .line 246
    sget v1, Lea/h;->t:I

    .line 247
    .line 248
    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 249
    .line 250
    .line 251
    iput-object p3, p0, Lka/m0;->e0:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 252
    .line 253
    sget-object p3, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    .line 255
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 256
    .line 257
    .line 258
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    .line 260
    iget-object p3, p0, Lka/m0;->e0:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 261
    .line 262
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 263
    .line 264
    .line 265
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 266
    .line 267
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lka/m0;->W:Landroidx/recyclerview/widget/RecyclerView;

    .line 271
    .line 272
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lka/m0;->V:Landroidx/recyclerview/widget/RecyclerView;

    .line 276
    .line 277
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lka/m0;->Y:Landroidx/recyclerview/widget/RecyclerView;

    .line 281
    .line 282
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 283
    .line 284
    .line 285
    iget-object p1, p0, Lka/m0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 286
    .line 287
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 288
    .line 289
    .line 290
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 291
    .line 292
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 296
    .line 297
    const p3, 0x7f0b0275

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    check-cast p1, Lorg/bitspark/android/view/CircularProgressBar;

    .line 305
    .line 306
    iput-object p1, p0, Lka/m0;->g0:Lorg/bitspark/android/view/CircularProgressBar;

    .line 307
    .line 308
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 309
    .line 310
    const p3, 0x7f0b0196

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 318
    .line 319
    sput-object p1, Lka/m0;->D0:Landroid/widget/RelativeLayout;

    .line 320
    .line 321
    const/16 p3, 0x8

    .line 322
    .line 323
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 324
    .line 325
    .line 326
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 327
    .line 328
    const p3, 0x7f0b0394

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    check-cast p1, Landroid/widget/ImageButton;

    .line 336
    .line 337
    iput-object p1, p0, Lka/m0;->i0:Landroid/widget/ImageButton;

    .line 338
    .line 339
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lka/m0;->i0:Landroid/widget/ImageButton;

    .line 343
    .line 344
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    .line 346
    .line 347
    iget-object p1, p0, Lka/m0;->i0:Landroid/widget/ImageButton;

    .line 348
    .line 349
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 350
    .line 351
    .line 352
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 353
    .line 354
    const p3, 0x7f0b007d

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    check-cast p1, Landroid/widget/ImageButton;

    .line 362
    .line 363
    iput-object p1, p0, Lka/m0;->m0:Landroid/widget/ImageButton;

    .line 364
    .line 365
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 366
    .line 367
    .line 368
    iget-object p1, p0, Lka/m0;->m0:Landroid/widget/ImageButton;

    .line 369
    .line 370
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    .line 372
    .line 373
    iget-object p1, p0, Lka/m0;->m0:Landroid/widget/ImageButton;

    .line 374
    .line 375
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 376
    .line 377
    .line 378
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 379
    .line 380
    const p3, 0x7f0b0109

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    check-cast p1, Landroid/widget/ImageButton;

    .line 388
    .line 389
    iput-object p1, p0, Lka/m0;->n0:Landroid/widget/ImageButton;

    .line 390
    .line 391
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 392
    .line 393
    .line 394
    iget-object p1, p0, Lka/m0;->n0:Landroid/widget/ImageButton;

    .line 395
    .line 396
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    .line 398
    .line 399
    iget-object p1, p0, Lka/m0;->n0:Landroid/widget/ImageButton;

    .line 400
    .line 401
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    .line 403
    .line 404
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 405
    .line 406
    const p3, 0x7f0b0395

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    check-cast p1, Landroid/widget/FrameLayout;

    .line 414
    .line 415
    iput-object p1, p0, Lka/m0;->j0:Landroid/widget/FrameLayout;

    .line 416
    .line 417
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 418
    .line 419
    const p3, 0x7f0b0207

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    check-cast p1, Landroid/widget/ImageView;

    .line 427
    .line 428
    iput-object p1, p0, Lka/m0;->k0:Landroid/widget/ImageView;

    .line 429
    .line 430
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 431
    .line 432
    const p3, 0x7f0b0448

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    check-cast p1, Landroid/widget/TextView;

    .line 440
    .line 441
    iput-object p1, p0, Lka/m0;->l0:Landroid/widget/TextView;

    .line 442
    .line 443
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 444
    .line 445
    const p3, 0x7f0b0487

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    check-cast p1, Landroid/widget/FrameLayout;

    .line 453
    .line 454
    iput-object p1, p0, Lka/m0;->x0:Landroid/widget/FrameLayout;

    .line 455
    .line 456
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 457
    .line 458
    const p3, 0x7f0b0491

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 466
    .line 467
    iput-object p1, p0, Lka/m0;->y0:Landroid/widget/RelativeLayout;

    .line 468
    .line 469
    iget-object p1, p0, Lka/m0;->j0:Landroid/widget/FrameLayout;

    .line 470
    .line 471
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 472
    .line 473
    .line 474
    iget-object p1, p0, Lka/m0;->j0:Landroid/widget/FrameLayout;

    .line 475
    .line 476
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    .line 478
    .line 479
    iget-object p1, p0, Lka/m0;->j0:Landroid/widget/FrameLayout;

    .line 480
    .line 481
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 482
    .line 483
    .line 484
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 485
    .line 486
    const p3, 0x7f0b022e

    .line 487
    .line 488
    .line 489
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    check-cast p1, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 494
    .line 495
    iput-object p1, p0, Lka/m0;->p0:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 496
    .line 497
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 498
    .line 499
    const p3, 0x7f0b0396

    .line 500
    .line 501
    .line 502
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    check-cast p1, Landroid/widget/EditText;

    .line 507
    .line 508
    iput-object p1, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 509
    .line 510
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 511
    .line 512
    .line 513
    iget-object p1, p0, Lka/m0;->p0:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 514
    .line 515
    new-instance p3, Lu6/e;

    .line 516
    .line 517
    const/16 v1, 0x14

    .line 518
    .line 519
    invoke-direct {p3, v1}, Lu6/e;-><init>(I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p1, p3}, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->setOnKeyClickListener(Lna/b;)V

    .line 523
    .line 524
    .line 525
    iget-object p1, p0, Lka/m0;->p0:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 526
    .line 527
    iget-object p3, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 528
    .line 529
    invoke-virtual {p1, p3}, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->setEditText(Landroid/widget/EditText;)V

    .line 530
    .line 531
    .line 532
    iget-object p1, p0, Lka/m0;->p0:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 533
    .line 534
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object p3

    .line 538
    new-instance v1, La7/f;

    .line 539
    .line 540
    const/16 v2, 0x1d

    .line 541
    .line 542
    invoke-direct {v1, p0, v2, p3}, La7/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {p1, v1}, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->setOnBackDownPressedListener(Lfa/n0;)V

    .line 546
    .line 547
    .line 548
    iget-object p1, p0, Lka/m0;->o0:Landroid/widget/EditText;

    .line 549
    .line 550
    new-instance p3, Landroidx/appcompat/widget/p2;

    .line 551
    .line 552
    const/4 v1, 0x4

    .line 553
    invoke-direct {p3, v1, p0}, Landroidx/appcompat/widget/p2;-><init>(ILjava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 557
    .line 558
    .line 559
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 560
    .line 561
    const p3, 0x7f0b022f

    .line 562
    .line 563
    .line 564
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    check-cast p1, Landroid/widget/LinearLayout;

    .line 569
    .line 570
    iput-object p1, p0, Lka/m0;->h0:Landroid/widget/LinearLayout;

    .line 571
    .line 572
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 573
    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 579
    .line 580
    invoke-virtual {p0}, Lka/m0;->a0()V

    .line 581
    .line 582
    .line 583
    new-instance p1, Lc7/d;

    .line 584
    .line 585
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 586
    .line 587
    .line 588
    const-wide/16 v1, -0x1

    .line 589
    .line 590
    iput-wide v1, p1, Lc7/d;->b:J

    .line 591
    .line 592
    const-wide/16 v3, 0xc8

    .line 593
    .line 594
    iput-wide v3, p1, Lc7/d;->a:J

    .line 595
    .line 596
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 597
    .line 598
    cmp-long v3, v1, v1

    .line 599
    .line 600
    if-nez v3, :cond_3

    .line 601
    .line 602
    const/4 v3, 0x1

    .line 603
    goto :goto_3

    .line 604
    :cond_3
    const/4 v3, 0x0

    .line 605
    :goto_3
    if-eqz v3, :cond_4

    .line 606
    .line 607
    const-wide/16 v1, 0x3c

    .line 608
    .line 609
    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 610
    .line 611
    .line 612
    move-result-wide p2

    .line 613
    iput-wide p2, p1, Lc7/d;->b:J

    .line 614
    .line 615
    new-instance p2, Lc7/o;

    .line 616
    .line 617
    invoke-direct {p2, p1}, Lc7/o;-><init>(Lc7/d;)V

    .line 618
    .line 619
    .line 620
    sput-object p2, Lka/m0;->H0:Lc7/o;

    .line 621
    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 627
    .line 628
    .line 629
    iget-object p1, p0, Lka/m0;->U:Landroid/view/View;

    .line 630
    .line 631
    return-object p1

    .line 632
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 633
    .line 634
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 635
    .line 636
    .line 637
    move-result-object p3

    .line 638
    new-array p2, p2, [Ljava/lang/Object;

    .line 639
    .line 640
    aput-object p3, p2, v0

    .line 641
    .line 642
    const-string p3, "expireAfterWrite was already set to %s ns"

    .line 643
    .line 644
    invoke-static {p3, p2}, Lb7/b;->s(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object p2

    .line 648
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    throw p1
.end method

.method public final u()V
    .locals 1

    .line 1
    invoke-super {p0}, Le8/a;->u()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lka/m0;->A0:Lo8/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lo8/a;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lka/m0;->A0:Lo8/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lm8/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    const-string v0, "7uHzdYD9+bfq7/A=\n"

    .line 2
    .line 3
    const-string v1, "mI6XOOWTjPE=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Ht1c+3TcHdQ=\n"

    .line 10
    .line 11
    const-string v2, "cbMOngepcLE=\n"

    .line 12
    .line 13
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Le8/a;->z()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
