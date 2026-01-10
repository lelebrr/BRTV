.class public final synthetic Lr2/m;
.super Lj9/h;
.source "MyApplication"

# interfaces
.implements Li9/a;


# static fields
.field public static final i:Lr2/m;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lr2/m;

    .line 2
    .line 3
    const-class v2, Ljava/lang/System;

    .line 4
    .line 5
    const-string v3, "currentTimeMillis"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v4, "currentTimeMillis()J"

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lj9/h;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    sput-object v6, Lr2/m;->i:Lr2/m;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
