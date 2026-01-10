.class public final Lcom/tencent/bugly/proguard/ba;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field c:Ljava/lang/String;

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ba;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ba;->c:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ba;->e:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p1, v0

    .line 17
    :goto_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ba;->c:Ljava/lang/String;

    .line 18
    .line 19
    iput-wide p2, p0, Lcom/tencent/bugly/proguard/ba;->b:J

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ba;->e:Z

    .line 22
    .line 23
    return-void
.end method
