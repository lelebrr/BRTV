.class public final Landroidx/lifecycle/l;
.super Ljava/lang/Object;
.source "MyApplication"


# direct methods
.method public static a(Landroidx/lifecycle/o;)Landroidx/lifecycle/n;
    .locals 1

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p0, Landroidx/lifecycle/n;->ON_RESUME:Landroidx/lifecycle/n;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object p0, Landroidx/lifecycle/n;->ON_START:Landroidx/lifecycle/n;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    sget-object p0, Landroidx/lifecycle/n;->ON_CREATE:Landroidx/lifecycle/n;

    .line 28
    .line 29
    :goto_0
    return-object p0
.end method
