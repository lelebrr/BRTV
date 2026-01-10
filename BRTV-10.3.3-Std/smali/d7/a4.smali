.class public final Ld7/a4;
.super Ljava/lang/ref/WeakReference;
.source "MyApplication"

# interfaces
.implements Ld7/z3;


# instance fields
.field public final a:Ld7/f3;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ld7/f3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ld7/a4;->a:Ld7/f3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ld7/f3;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/a4;->a:Ld7/f3;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Ljava/lang/ref/ReferenceQueue;Ld7/y3;)Ld7/z3;
    .locals 2

    .line 1
    new-instance v0, Ld7/a4;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1, p2}, Ld7/a4;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ld7/f3;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
