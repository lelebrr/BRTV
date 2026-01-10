.class public final Landroidx/appcompat/app/v0;
.super Lo9/d;
.source "MyApplication"


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/appcompat/app/x0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/x0;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/app/v0;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/appcompat/app/v0;->k:Landroidx/appcompat/app/x0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/v0;->k:Landroidx/appcompat/app/x0;

    .line 3
    .line 4
    iget v2, p0, Landroidx/appcompat/app/v0;->j:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iput-object v0, v1, Landroidx/appcompat/app/x0;->J:Lj/j;

    .line 10
    .line 11
    iget-object v0, v1, Landroidx/appcompat/app/x0;->u:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-boolean v2, v1, Landroidx/appcompat/app/x0;->F:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, v1, Landroidx/appcompat/app/x0;->x:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Landroidx/appcompat/app/x0;->u:Landroidx/appcompat/widget/ActionBarContainer;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v2, v1, Landroidx/appcompat/app/x0;->u:Landroidx/appcompat/widget/ActionBarContainer;

    .line 35
    .line 36
    const/16 v3, 0x8

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v1, Landroidx/appcompat/app/x0;->u:Landroidx/appcompat/widget/ActionBarContainer;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 45
    .line 46
    .line 47
    iput-object v0, v1, Landroidx/appcompat/app/x0;->J:Lj/j;

    .line 48
    .line 49
    iget-object v2, v1, Landroidx/appcompat/app/x0;->B:La7/f;

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget-object v3, v1, Landroidx/appcompat/app/x0;->A:Landroidx/appcompat/app/w0;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, La7/f;->E(Lj/a;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, v1, Landroidx/appcompat/app/x0;->A:Landroidx/appcompat/app/w0;

    .line 59
    .line 60
    iput-object v0, v1, Landroidx/appcompat/app/x0;->B:La7/f;

    .line 61
    .line 62
    :cond_1
    iget-object v0, v1, Landroidx/appcompat/app/x0;->t:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 67
    .line 68
    invoke-static {v0}, Ln0/e0;->c(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
