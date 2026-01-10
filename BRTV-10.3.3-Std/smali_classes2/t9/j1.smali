.class public final Lt9/j1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements La9/g;
.implements La9/h;


# static fields
.field public static final a:Lt9/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt9/j1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt9/j1;->a:Lt9/j1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Li9/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p2, p1, p0}, Li9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final c(La9/h;)La9/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bumptech/glide/d;->x(La9/g;La9/h;)La9/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final e(La9/h;)La9/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bumptech/glide/d;->i(La9/g;La9/h;)La9/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final f(La9/i;)La9/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bumptech/glide/d;->A(La9/g;La9/i;)La9/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getKey()La9/h;
    .locals 0

    .line 1
    return-object p0
.end method
