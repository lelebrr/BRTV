.class Landroidx/media3/ui/PlayerControlViewLayoutManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/ui/PlayerControlViewLayoutManager;-><init>(Landroidx/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

.field final synthetic val$playerControlView:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->val$playerControlView:Landroidx/media3/ui/PlayerControlView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$500(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 8
    .line 9
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$600(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->val$playerControlView:Landroidx/media3/ui/PlayerControlView;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$700(Landroidx/media3/ui/PlayerControlViewLayoutManager;)Ljava/lang/Runnable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$602(Landroidx/media3/ui/PlayerControlViewLayoutManager;Z)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-static {p1, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->access$500(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
