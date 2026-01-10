.class public final Lp8/f;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "MyApplication"

# interfaces
.implements Li8/c;
.implements Lj8/b;


# instance fields
.field public final a:Li8/c;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Li8/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp8/f;->a:Li8/c;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lp8/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp8/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {v0}, Lm8/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lm8/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp8/f;->a:Li8/c;

    .line 2
    .line 3
    invoke-interface {v0}, Li8/c;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lj8/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp8/f;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lm8/a;->c(Ljava/util/concurrent/atomic/AtomicReference;Lj8/b;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp8/f;->a:Li8/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Li8/c;->d(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp8/f;->a:Li8/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Li8/c;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
