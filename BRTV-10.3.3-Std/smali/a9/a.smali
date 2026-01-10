.class public abstract La9/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements La9/g;


# instance fields
.field public final a:La9/h;


# direct methods
.method public constructor <init>(La9/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La9/a;->a:La9/h;

    .line 5
    .line 6
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

.method public c(La9/h;)La9/i;
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

.method public e(La9/h;)La9/g;
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
    .locals 1

    .line 1
    iget-object v0, p0, La9/a;->a:La9/h;

    .line 2
    .line 3
    return-object v0
.end method
