.class public final Lc3/e;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb3/v;


# virtual methods
.method public final a(Lb3/b0;)Lb3/u;
    .locals 3

    .line 1
    new-instance v0, Lb3/d0;

    .line 2
    .line 3
    const-class v1, Lb3/k;

    .line 4
    .line 5
    const-class v2, Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-virtual {p1, v1, v2}, Lb3/b0;->b(Ljava/lang/Class;Ljava/lang/Class;)Lb3/u;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p1, v1}, Lb3/d0;-><init>(Lb3/u;I)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
