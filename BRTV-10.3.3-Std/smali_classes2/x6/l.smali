.class public final Lx6/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lx6/d;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx6/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lx6/l;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final d(Lx6/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final e(Lx6/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final f(Lx6/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final g(Lx6/h;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lx6/h;)V
    .locals 0

    .line 1
    iget p1, p0, Lx6/l;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final b(Lx6/h;)V
    .locals 0

    .line 1
    iget p1, p0, Lx6/l;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final c(Lx6/h;)V
    .locals 2

    .line 1
    iget v0, p0, Lx6/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p1, p1, Lx6/h;->d:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iget-object v1, p0, Lx6/l;->b:Landroid/view/ViewGroup;

    .line 10
    .line 11
    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    .line 13
    invoke-virtual {v1, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget p1, p1, Lx6/h;->d:I

    .line 18
    .line 19
    iget-object v0, p0, Lx6/l;->b:Landroid/view/ViewGroup;

    .line 20
    .line 21
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
