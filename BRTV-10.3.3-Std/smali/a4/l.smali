.class public final La4/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Lv8/a;

.field public b:Ld4/c;

.field public c:Lv8/a;

.field public d:Lv8/a;

.field public e:Lv8/a;


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, La4/l;->d:Lv8/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lv8/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Li4/d;

    .line 8
    .line 9
    check-cast v0, Li4/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Li4/g;->close()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
