.class public final Lt0/a;
.super Landroid/database/ContentObserver;
.source "MyApplication"


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/f3;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/f3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt0/a;->a:Landroidx/appcompat/widget/f3;

    .line 2
    .line 3
    new-instance p1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lt0/a;->a:Landroidx/appcompat/widget/f3;

    .line 2
    .line 3
    iget-boolean v0, p1, Lt0/b;->b:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lt0/b;->c:Landroid/database/Cursor;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lt0/b;->c:Landroid/database/Cursor;

    .line 18
    .line 19
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput-boolean v0, p1, Lt0/b;->a:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method
