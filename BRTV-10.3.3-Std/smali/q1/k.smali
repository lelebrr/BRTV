.class public final Lq1/k;
.super Landroid/media/MediaRouter2$ControllerCallback;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lq1/p;


# direct methods
.method public constructor <init>(Lq1/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/k;->a:Lq1/p;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/MediaRouter2$ControllerCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq1/k;->a:Lq1/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lq1/p;->j(Landroid/media/MediaRouter2$RoutingController;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
