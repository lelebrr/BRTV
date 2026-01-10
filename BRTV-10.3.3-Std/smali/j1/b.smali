.class public final Lj1/b;
.super Ld7/c2;
.source "MyApplication"


# direct methods
.method public constructor <init>(Ld7/c2;)V
    .locals 1

    .line 1
    const-string v0, "initialExtras"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Ld7/c2;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ld7/c2;->a:Ljava/io/Serializable;

    .line 11
    .line 12
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    iget-object p1, p1, Ld7/c2;->a:Ljava/io/Serializable;

    .line 15
    .line 16
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
