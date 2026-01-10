.class public final Lk3/j;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lk3/i;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/p;

.field public final synthetic b:La7/f;


# direct methods
.method public constructor <init>(La7/f;Landroidx/lifecycle/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk3/j;->b:La7/f;

    .line 5
    .line 6
    iput-object p2, p0, Lk3/j;->a:Landroidx/lifecycle/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final i()V
    .locals 0

    .line 1
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk3/j;->b:La7/f;

    .line 2
    .line 3
    iget-object v0, v0, La7/f;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v1, p0, Lk3/j;->a:Landroidx/lifecycle/p;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method
