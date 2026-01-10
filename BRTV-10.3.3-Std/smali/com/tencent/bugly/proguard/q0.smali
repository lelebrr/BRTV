.class public final Lcom/tencent/bugly/proguard/q0;
.super Ljava/lang/Thread;
.source "MyApplication"


# instance fields
.field public final a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:[B

.field public final synthetic e:Lcom/tencent/bugly/proguard/w;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/bugly/proguard/q0;->e:Lcom/tencent/bugly/proguard/w;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lcom/tencent/bugly/proguard/q0;->a:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/tencent/bugly/proguard/q0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget v0, p0, Lcom/tencent/bugly/proguard/q0;->b:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/tencent/bugly/proguard/q0;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/tencent/bugly/proguard/q0;->d:[B

    .line 12
    .line 13
    iget-object v3, p0, Lcom/tencent/bugly/proguard/q0;->e:Lcom/tencent/bugly/proguard/w;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v3, v0, v1, v2, v4}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/w;ILjava/lang/String;[BLcom/tencent/bugly/proguard/v;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
