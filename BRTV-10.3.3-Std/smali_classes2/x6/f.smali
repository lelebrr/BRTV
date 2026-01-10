.class public final Lx6/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx6/g;


# direct methods
.method public constructor <init>(Lx6/g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx6/f;->b:Lx6/g;

    .line 2
    .line 3
    iput p2, p0, Lx6/f;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lx6/f;->b:Lx6/g;

    .line 2
    .line 3
    iget v0, p0, Lx6/f;->a:I

    .line 4
    .line 5
    iput v0, p1, Lx6/g;->b:I

    .line 6
    .line 7
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lx6/f;->b:Lx6/g;

    .line 2
    .line 3
    iget v0, p0, Lx6/f;->a:I

    .line 4
    .line 5
    iput v0, p1, Lx6/g;->b:I

    .line 6
    .line 7
    return-void
.end method
