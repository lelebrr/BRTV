.class public final Lz9/k;
.super Lt9/p;
.source "MyApplication"


# static fields
.field public static final c:Lz9/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lz9/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lt9/p;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz9/k;->c:Lz9/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(La9/i;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lz9/d;->d:Lz9/d;

    .line 2
    .line 3
    sget-object v0, Lz9/j;->h:Landroidx/leanback/widget/o;

    .line 4
    .line 5
    iget-object p1, p1, Lz9/g;->c:Lz9/b;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lz9/b;->b(Ljava/lang/Runnable;Landroidx/leanback/widget/o;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final h(I)Lt9/p;
    .locals 1

    .line 1
    invoke-static {p1}, Lx9/a;->a(I)V

    .line 2
    .line 3
    .line 4
    sget v0, Lz9/j;->d:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p1}, Lx9/a;->a(I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lx9/h;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lx9/h;-><init>(Lt9/p;I)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
