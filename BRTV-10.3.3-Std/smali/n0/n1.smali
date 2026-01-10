.class public final Ln0/n1;
.super Ln0/m1;
.source "MyApplication"


# static fields
.field public static final q:Ln0/r1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/media3/exoplayer/hls/j;->p()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ln0/r1;->h(Landroid/view/WindowInsets;Landroid/view/View;)Ln0/r1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Ln0/n1;->q:Ln0/r1;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ln0/r1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln0/m1;-><init>(Ln0/r1;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(Ln0/r1;Ln0/n1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ln0/m1;-><init>(Ln0/r1;Ln0/m1;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(I)Lf0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/j1;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Ln0/q1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/hls/j;->g(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lf0/c;->b(Landroid/graphics/Insets;)Lf0/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
