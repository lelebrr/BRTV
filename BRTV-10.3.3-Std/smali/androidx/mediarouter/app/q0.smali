.class public final Landroidx/mediarouter/app/q0;
.super Landroidx/appcompat/app/i0;
.source "MyApplication"


# static fields
.field public static final synthetic S:I


# instance fields
.field public A:Landroid/widget/ImageButton;

.field public B:Landroid/widget/Button;

.field public C:Landroid/widget/ImageView;

.field public D:Landroid/view/View;

.field public E:Landroid/widget/ImageView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/TextView;

.field public H:Ljava/lang/String;

.field public I:Landroid/support/v4/media/session/MediaControllerCompat;

.field public final J:Landroidx/mediarouter/app/f0;

.field public K:Landroid/support/v4/media/MediaDescriptionCompat;

.field public L:Landroidx/mediarouter/app/e0;

.field public M:Landroid/graphics/Bitmap;

.field public N:Landroid/net/Uri;

.field public O:Z

.field public P:Landroid/graphics/Bitmap;

.field public Q:I

.field public final R:Z

.field public final e:Lq1/u0;

.field public final f:Landroidx/mediarouter/app/i0;

.field public g:Lq1/l0;

.field public h:Lq1/s0;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public final m:Landroid/content/Context;

.field public n:Z

.field public o:Z

.field public p:J

.field public final q:Landroidx/mediarouter/app/c;

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public s:Landroidx/mediarouter/app/o0;

.field public t:Landroidx/mediarouter/app/p0;

.field public u:Ljava/util/HashMap;

.field public v:Lq1/s0;

.field public w:Ljava/util/HashMap;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MediaRouteCtrlDialog"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lo9/d;->g(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lo9/d;->h(Landroid/view/ContextThemeWrapper;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/i0;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lq1/l0;->c:Lq1/l0;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->g:Lq1/l0;

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->i:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->j:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->k:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance p1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->l:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance p1, Landroidx/mediarouter/app/c;

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    invoke-direct {p1, v0, p0}, Landroidx/mediarouter/app/c;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->q:Landroidx/mediarouter/app/c;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {p1}, Lq1/u0;->d(Landroid/content/Context;)Lq1/u0;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->e:Lq1/u0;

    .line 64
    .line 65
    invoke-static {}, Lq1/u0;->g()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput-boolean p1, p0, Landroidx/mediarouter/app/q0;->R:Z

    .line 70
    .line 71
    new-instance p1, Landroidx/mediarouter/app/i0;

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-direct {p1, p0, v0}, Landroidx/mediarouter/app/i0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->f:Landroidx/mediarouter/app/i0;

    .line 78
    .line 79
    invoke-static {}, Lq1/u0;->f()Lq1/s0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 84
    .line 85
    new-instance p1, Landroidx/mediarouter/app/f0;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/f0;-><init>(Landroidx/mediarouter/app/q0;)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->J:Landroidx/mediarouter/app/f0;

    .line 91
    .line 92
    invoke-static {}, Lq1/u0;->e()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/q0;->k(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public final i(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lq1/s0;

    .line 14
    .line 15
    invoke-virtual {v1}, Lq1/s0;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-boolean v2, v1, Lq1/s0;->g:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->g:Lq1/l0;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lq1/s0;->h(Lq1/l0;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 34
    .line 35
    if-eq v2, v1, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->K:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->K:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_1
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->L:Landroidx/mediarouter/app/e0;

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/mediarouter/app/q0;->M:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget-object v3, v2, Landroidx/mediarouter/app/e0;->a:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    :goto_2
    if-nez v2, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->N:Landroid/net/Uri;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    iget-object v2, v2, Landroidx/mediarouter/app/e0;->b:Landroid/net/Uri;

    .line 36
    .line 37
    :goto_3
    if-ne v3, v0, :cond_5

    .line 38
    .line 39
    if-nez v3, :cond_4

    .line 40
    .line 41
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    :cond_4
    return-void

    .line 48
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->L:Landroidx/mediarouter/app/e0;

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 54
    .line 55
    .line 56
    :cond_6
    new-instance v0, Landroidx/mediarouter/app/e0;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/e0;-><init>(Landroidx/mediarouter/app/q0;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->L:Landroidx/mediarouter/app/e0;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    new-array v1, v1, [Ljava/lang/Void;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final k(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->I:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->J:Landroidx/mediarouter/app/f0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Landroidx/mediarouter/app/q0;->I:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 12
    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-boolean v0, p0, Landroidx/mediarouter/app/q0;->o:Z

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v3, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->I:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/mediarouter/app/q0;->I:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_0
    iput-object v2, p0, Landroidx/mediarouter/app/q0;->K:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/mediarouter/app/q0;->j()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/mediarouter/app/q0;->n()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final l(Lq1/l0;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->g:Lq1/l0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lq1/l0;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->g:Lq1/l0;

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/mediarouter/app/q0;->o:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->e:Lq1/u0;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->f:Landroidx/mediarouter/app/i0;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lq1/u0;->h(Lq1/m0;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, p1, v1, v2}, Lq1/u0;->a(Lq1/l0;Lq1/m0;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/mediarouter/app/q0;->o()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "selector must not be null"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f050002

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v3, -0x1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Ln5/d;->v(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v3, -0x2

    .line 35
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->M:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->N:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/mediarouter/app/q0;->j()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/mediarouter/app/q0;->n()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/mediarouter/app/q0;->p()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final n()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->v:Lq1/s0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/mediarouter/app/q0;->x:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/q0;->n:Z

    .line 12
    .line 13
    xor-int/2addr v0, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iput-boolean v1, p0, Landroidx/mediarouter/app/q0;->z:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Landroidx/mediarouter/app/q0;->z:Z

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 25
    .line 26
    invoke-virtual {v2}, Lq1/s0;->g()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 33
    .line 34
    invoke-virtual {v2}, Lq1/s0;->d()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/i0;->dismiss()V

    .line 41
    .line 42
    .line 43
    :cond_4
    iget-boolean v2, p0, Landroidx/mediarouter/app/q0;->O:Z

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/16 v4, 0x8

    .line 47
    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->P:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->P:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->E:Landroid/widget/ImageView;

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->E:Landroid/widget/ImageView;

    .line 71
    .line 72
    iget-object v5, p0, Landroidx/mediarouter/app/q0;->P:Landroid/graphics/Bitmap;

    .line 73
    .line 74
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->E:Landroid/widget/ImageView;

    .line 78
    .line 79
    iget v5, p0, Landroidx/mediarouter/app/q0;->Q:I

    .line 80
    .line 81
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->D:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->P:Landroid/graphics/Bitmap;

    .line 90
    .line 91
    iget-object v5, p0, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {v5}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {v5, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-static {v5, v7}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v5}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-static {v5, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    const/high16 v9, 0x41200000    # 10.0f

    .line 118
    .line 119
    invoke-virtual {v8, v9}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v2, v9, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8}, Landroid/renderscript/BaseObj;->destroy()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Landroid/renderscript/RenderScript;->destroy()V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->C:Landroid/widget/ImageView;

    .line 152
    .line 153
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_6
    :goto_2
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->P:Landroid/graphics/Bitmap;

    .line 158
    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v2, "Can\'t set artwork image with recycled bitmap: "

    .line 170
    .line 171
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->P:Landroid/graphics/Bitmap;

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const-string v2, "MediaRouteCtrlDialog"

    .line 184
    .line 185
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :cond_7
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->E:Landroid/widget/ImageView;

    .line 189
    .line 190
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->D:Landroid/view/View;

    .line 194
    .line 195
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->C:Landroid/widget/ImageView;

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    .line 202
    .line 203
    :goto_3
    iput-boolean v0, p0, Landroidx/mediarouter/app/q0;->O:Z

    .line 204
    .line 205
    iput-object v3, p0, Landroidx/mediarouter/app/q0;->P:Landroid/graphics/Bitmap;

    .line 206
    .line 207
    iput v0, p0, Landroidx/mediarouter/app/q0;->Q:I

    .line 208
    .line 209
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->K:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 210
    .line 211
    if-nez v1, :cond_8

    .line 212
    .line 213
    move-object v1, v3

    .line 214
    goto :goto_4

    .line 215
    :cond_8
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    iget-object v5, p0, Landroidx/mediarouter/app/q0;->K:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 224
    .line 225
    if-nez v5, :cond_9

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_9
    invoke-virtual {v5}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-nez v2, :cond_a

    .line 237
    .line 238
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->F:Landroid/widget/TextView;

    .line 239
    .line 240
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_a
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->F:Landroid/widget/TextView;

    .line 245
    .line 246
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->H:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    :goto_6
    if-nez v5, :cond_b

    .line 252
    .line 253
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->G:Landroid/widget/TextView;

    .line 254
    .line 255
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->G:Landroid/widget/TextView;

    .line 259
    .line 260
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_b
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->G:Landroid/widget/TextView;

    .line 265
    .line 266
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    :goto_7
    return-void
.end method

.method public final o()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->j:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->k:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 17
    .line 18
    iget-object v3, v3, Lq1/s0;->v:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 28
    .line 29
    invoke-virtual {v3}, Lq1/s0;->a()Lq1/p0;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iget-object v4, p0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 36
    .line 37
    iget-object v4, v4, Lq1/s0;->a:Lq1/r0;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lq1/u0;->b()V

    .line 43
    .line 44
    .line 45
    iget-object v4, v4, Lq1/r0;->b:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lq1/s0;

    .line 66
    .line 67
    invoke-virtual {v3, v5}, Lq1/p0;->o(Lq1/s0;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v6, v3, Lq1/p0;->x:Lp/e;

    .line 77
    .line 78
    iget-object v7, v5, Lq1/s0;->c:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Lp/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Lq1/z;

    .line 85
    .line 86
    if-eqz v6, :cond_0

    .line 87
    .line 88
    iget-boolean v6, v6, Lq1/z;->e:Z

    .line 89
    .line 90
    if-eqz v6, :cond_0

    .line 91
    .line 92
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/q0;->i(Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v2}, Landroidx/mediarouter/app/q0;->i(Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    sget-object v3, Landroidx/mediarouter/app/e;->d:Landroidx/mediarouter/app/e;

    .line 103
    .line 104
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->s:Landroidx/mediarouter/app/o0;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/mediarouter/app/o0;->d()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/q0;->o:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->g:Lq1/l0;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->f:Landroidx/mediarouter/app/i0;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/mediarouter/app/q0;->e:Lq1/u0;

    .line 12
    .line 13
    invoke-virtual {v3, v1, v2, v0}, Lq1/u0;->a(Lq1/l0;Lq1/m0;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/mediarouter/app/q0;->o()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lq1/u0;->e()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/q0;->k(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/i0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e00c7

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i0;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/mediarouter/app/q0;->m:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1}, Lo9/d;->t(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const v1, 0x7f0602b5

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const v1, 0x7f0602b4

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {p1, v1}, Lu7/d;->i(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0b02be

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/ImageButton;

    .line 48
    .line 49
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->A:Landroid/widget/ImageButton;

    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->A:Landroid/widget/ImageButton;

    .line 56
    .line 57
    new-instance v2, Landroidx/mediarouter/app/d0;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-direct {v2, p0, v3}, Landroidx/mediarouter/app/d0;-><init>(Landroidx/mediarouter/app/q0;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0b02ce

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/Button;

    .line 74
    .line 75
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->B:Landroid/widget/Button;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->B:Landroid/widget/Button;

    .line 81
    .line 82
    new-instance v2, Landroidx/mediarouter/app/d0;

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    invoke-direct {v2, p0, v3}, Landroidx/mediarouter/app/d0;-><init>(Landroidx/mediarouter/app/q0;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Landroidx/mediarouter/app/o0;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/o0;-><init>(Landroidx/mediarouter/app/q0;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->s:Landroidx/mediarouter/app/o0;

    .line 97
    .line 98
    const v0, 0x7f0b02c4

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    .line 109
    iget-object v2, p0, Landroidx/mediarouter/app/q0;->s:Landroidx/mediarouter/app/o0;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    .line 116
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 117
    .line 118
    const/4 v3, 0x1

    .line 119
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Landroidx/mediarouter/app/p0;

    .line 126
    .line 127
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/p0;-><init>(Landroidx/mediarouter/app/q0;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->t:Landroidx/mediarouter/app/p0;

    .line 131
    .line 132
    new-instance v0, Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->u:Ljava/util/HashMap;

    .line 138
    .line 139
    new-instance v0, Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->w:Ljava/util/HashMap;

    .line 145
    .line 146
    const v0, 0x7f0b02c6

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Landroid/widget/ImageView;

    .line 154
    .line 155
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->C:Landroid/widget/ImageView;

    .line 156
    .line 157
    const v0, 0x7f0b02c7

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->D:Landroid/view/View;

    .line 165
    .line 166
    const v0, 0x7f0b02c5

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/widget/ImageView;

    .line 174
    .line 175
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->E:Landroid/widget/ImageView;

    .line 176
    .line 177
    const v0, 0x7f0b02c9

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/widget/TextView;

    .line 185
    .line 186
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->F:Landroid/widget/TextView;

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    .line 190
    .line 191
    const v0, 0x7f0b02c8

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/i0;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Landroid/widget/TextView;

    .line 199
    .line 200
    iput-object v0, p0, Landroidx/mediarouter/app/q0;->G:Landroid/widget/TextView;

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    const v0, 0x7f120155

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iput-object p1, p0, Landroidx/mediarouter/app/q0;->H:Ljava/lang/String;

    .line 217
    .line 218
    iput-boolean v3, p0, Landroidx/mediarouter/app/q0;->n:Z

    .line 219
    .line 220
    invoke-virtual {p0}, Landroidx/mediarouter/app/q0;->m()V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/q0;->o:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->e:Lq1/u0;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/mediarouter/app/q0;->f:Landroidx/mediarouter/app/i0;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lq1/u0;->h(Lq1/m0;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->q:Landroidx/mediarouter/app/c;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/q0;->k(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final p()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/q0;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Landroidx/mediarouter/app/q0;->p:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    const/4 v2, 0x1

    .line 13
    const-wide/16 v3, 0x12c

    .line 14
    .line 15
    cmp-long v5, v0, v3

    .line 16
    .line 17
    if-ltz v5, :cond_5

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->v:Lq1/s0;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-boolean v0, p0, Landroidx/mediarouter/app/q0;->x:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/q0;->n:Z

    .line 29
    .line 30
    xor-int/2addr v0, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iput-boolean v2, p0, Landroidx/mediarouter/app/q0;->y:Z

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Landroidx/mediarouter/app/q0;->y:Z

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 42
    .line 43
    invoke-virtual {v0}, Lq1/s0;->g()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->h:Lq1/s0;

    .line 50
    .line 51
    invoke-virtual {v0}, Lq1/s0;->d()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/i0;->dismiss()V

    .line 58
    .line 59
    .line 60
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    iput-wide v0, p0, Landroidx/mediarouter/app/q0;->p:J

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->s:Landroidx/mediarouter/app/o0;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/mediarouter/app/o0;->c()V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/app/q0;->q:Landroidx/mediarouter/app/c;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    .line 76
    .line 77
    iget-wide v5, p0, Landroidx/mediarouter/app/q0;->p:J

    .line 78
    .line 79
    add-long/2addr v5, v3

    .line 80
    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 81
    .line 82
    .line 83
    :cond_6
    :goto_2
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/q0;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/mediarouter/app/q0;->p()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/q0;->z:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/mediarouter/app/q0;->n()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method
