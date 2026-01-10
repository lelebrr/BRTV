.class public final La/p;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements La/a;


# instance fields
.field public final a:Landroidx/fragment/app/b0;

.field public final synthetic b:La/q;


# direct methods
.method public constructor <init>(La/q;Landroidx/fragment/app/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La/p;->b:La/q;

    .line 5
    .line 6
    iput-object p2, p0, La/p;->a:Landroidx/fragment/app/b0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, La/p;->b:La/q;

    .line 2
    .line 3
    iget-object v1, v0, La/q;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayDeque;

    .line 6
    .line 7
    iget-object v2, p0, La/p;->a:Landroidx/fragment/app/b0;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, v2, Landroidx/fragment/app/b0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lj0/b;->a()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, v2, Landroidx/fragment/app/b0;->c:La/l;

    .line 25
    .line 26
    invoke-virtual {v0}, La/q;->d()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
