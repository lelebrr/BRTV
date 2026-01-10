.class public Landroidx/transition/AutoTransition;
.super Landroidx/transition/TransitionSet;
.source "MyApplication"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/TransitionSet;->x:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->y:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->A:Z

    .line 7
    iput v0, p0, Landroidx/transition/TransitionSet;->B:I

    .line 8
    invoke-virtual {p0}, Landroidx/transition/AutoTransition;->J()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroidx/transition/AutoTransition;->J()V

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/transition/TransitionSet;->I(I)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Landroidx/transition/Fade;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, v2}, Landroidx/transition/Fade;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/transition/TransitionSet;->F(Landroidx/transition/Transition;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroidx/transition/ChangeBounds;

    .line 15
    .line 16
    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-boolean v2, v1, Landroidx/transition/ChangeBounds;->x:Z

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/transition/TransitionSet;->F(Landroidx/transition/Transition;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroidx/transition/Fade;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Landroidx/transition/Fade;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/transition/TransitionSet;->F(Landroidx/transition/Transition;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
