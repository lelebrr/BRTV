.class public final Landroidx/mediarouter/app/k;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/mediarouter/app/u;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/app/u;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/mediarouter/app/k;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/mediarouter/app/k;->b:Landroidx/mediarouter/app/u;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Landroidx/mediarouter/app/k;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/mediarouter/app/k;->b:Landroidx/mediarouter/app/u;

    .line 7
    .line 8
    iget-object v0, p1, Landroidx/mediarouter/app/u;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getSessionActivity()Landroid/app/PendingIntent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/appcompat/app/i0;->dismiss()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, " was not sent, it had been canceled."

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "MediaRouteCtrlDialog"

    .line 43
    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object p1, p0, Landroidx/mediarouter/app/k;->b:Landroidx/mediarouter/app/u;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/appcompat/app/i0;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    iget-object p1, p0, Landroidx/mediarouter/app/k;->b:Landroidx/mediarouter/app/u;

    .line 55
    .line 56
    iget-boolean v0, p1, Landroidx/mediarouter/app/u;->e0:Z

    .line 57
    .line 58
    xor-int/lit8 v1, v0, 0x1

    .line 59
    .line 60
    iput-boolean v1, p1, Landroidx/mediarouter/app/u;->e0:Z

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p1, Landroidx/mediarouter/app/u;->D:Landroidx/mediarouter/app/OverlayListView;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-boolean v0, p1, Landroidx/mediarouter/app/u;->e0:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p1, Landroidx/mediarouter/app/u;->l0:Landroid/view/animation/Interpolator;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v0, p1, Landroidx/mediarouter/app/u;->m0:Landroid/view/animation/Interpolator;

    .line 78
    .line 79
    :goto_1
    iput-object v0, p1, Landroidx/mediarouter/app/u;->k0:Landroid/view/animation/Interpolator;

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/u;->v(Z)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
