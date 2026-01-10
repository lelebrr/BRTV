.class public final Ly1/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyApplication"


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/b;->b:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Ly1/b;->c:Landroid/graphics/Rect;

    .line 4
    .line 5
    iput p3, p0, Ly1/b;->d:I

    .line 6
    .line 7
    iput p4, p0, Ly1/b;->e:I

    .line 8
    .line 9
    iput p5, p0, Ly1/b;->f:I

    .line 10
    .line 11
    iput p6, p0, Ly1/b;->g:I

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ly1/b;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Ly1/b;->a:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    iget-object p1, p0, Ly1/b;->c:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget-object v0, p0, Ly1/b;->b:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Ly1/b;->d:I

    .line 15
    .line 16
    iget v1, p0, Ly1/b;->e:I

    .line 17
    .line 18
    iget v2, p0, Ly1/b;->f:I

    .line 19
    .line 20
    iget v3, p0, Ly1/b;->g:I

    .line 21
    .line 22
    invoke-static {v0, p1, v1, v2, v3}, Ly1/g0;->a(Landroid/view/View;IIII)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
