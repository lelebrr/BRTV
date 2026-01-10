.class public final Lt9/i;
.super Lt9/s0;
.source "MyApplication"

# interfaces
.implements Lt9/h;


# instance fields
.field public final e:Lt9/y0;


# direct methods
.method public constructor <init>(Lt9/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx9/j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt9/i;->e:Lt9/y0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt9/u0;->i()Lt9/y0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lt9/y0;->m(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lt9/i;->j(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 7
    .line 8
    return-object p1
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt9/u0;->i()Lt9/y0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lt9/i;->e:Lt9/y0;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lt9/y0;->j(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
