.class public final La/o;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/lifecycle/u;
.implements La/a;


# instance fields
.field public final a:Landroidx/lifecycle/p;

.field public final b:Landroidx/fragment/app/b0;

.field public c:La/p;

.field public final synthetic d:La/q;


# direct methods
.method public constructor <init>(La/q;Landroidx/lifecycle/p;Landroidx/fragment/app/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La/o;->d:La/q;

    .line 5
    .line 6
    iput-object p2, p0, La/o;->a:Landroidx/lifecycle/p;

    .line 7
    .line 8
    iput-object p3, p0, La/o;->b:Landroidx/fragment/app/b0;

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/v;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, La/o;->a:Landroidx/lifecycle/p;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La/o;->b:Landroidx/fragment/app/b0;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/b0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, La/o;->c:La/p;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, La/p;->cancel()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, La/o;->c:La/p;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onStateChanged(Landroidx/lifecycle/w;Landroidx/lifecycle/n;)V
    .locals 2

    .line 1
    sget-object p1, Landroidx/lifecycle/n;->ON_START:Landroidx/lifecycle/n;

    .line 2
    .line 3
    if-ne p2, p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, La/o;->d:La/q;

    .line 6
    .line 7
    iget-object p2, p1, La/q;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Ljava/util/ArrayDeque;

    .line 10
    .line 11
    iget-object v0, p0, La/o;->b:Landroidx/fragment/app/b0;

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    new-instance p2, La/p;

    .line 17
    .line 18
    invoke-direct {p2, p1, v0}, La/p;-><init>(La/q;Landroidx/fragment/app/b0;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Landroidx/fragment/app/b0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lj0/b;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, La/q;->d()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, La/q;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, La/l;

    .line 38
    .line 39
    iput-object p1, v0, Landroidx/fragment/app/b0;->c:La/l;

    .line 40
    .line 41
    :cond_0
    iput-object p2, p0, La/o;->c:La/p;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object p1, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 45
    .line 46
    if-ne p2, p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, La/o;->c:La/p;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, La/p;->cancel()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget-object p1, Landroidx/lifecycle/n;->ON_DESTROY:Landroidx/lifecycle/n;

    .line 57
    .line 58
    if-ne p2, p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, La/o;->cancel()V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void
.end method
