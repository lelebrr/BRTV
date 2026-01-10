.class public final Lcom/tencent/bugly/proguard/g0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/tencent/bugly/proguard/ah;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(JLjava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/g0;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/tencent/bugly/proguard/g0;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/tencent/bugly/proguard/g0;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/g0;->a:J

    .line 6
    .line 7
    sub-long v6, v0, v2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/g0;->c:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "realtime"

    .line 14
    .line 15
    :goto_0
    move-object v8, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const-string v0, "cache"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :goto_1
    iget-object v4, p0, Lcom/tencent/bugly/proguard/g0;->b:Ljava/util/List;

    .line 21
    .line 22
    move v5, p1

    .line 23
    move-object v9, p2

    .line 24
    invoke-static/range {v4 .. v9}, Lcom/tencent/bugly/proguard/as;->a(Ljava/util/List;ZJLjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/tencent/bugly/proguard/g0;->b:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/as;->a(ZLjava/util/List;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
