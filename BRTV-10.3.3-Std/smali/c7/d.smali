.class public final Lc7/d;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final c:Lb7/h0;

.field public static final d:Lc7/a;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx4/e;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lx4/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lb7/h0;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lb7/h0;-><init>(Lx4/e;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lc7/d;->c:Lb7/h0;

    .line 13
    .line 14
    new-instance v0, Lc7/a;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lc7/d;->d:Lc7/a;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Lb7/b;->w(Ljava/lang/Object;)La1/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Lc7/d;->a:J

    .line 6
    .line 7
    const-wide/16 v3, -0x1

    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lb7/l;

    .line 18
    .line 19
    const/16 v5, 0xd

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-direct {v2, v5, v6}, La1/b;-><init>(IZ)V

    .line 23
    .line 24
    .line 25
    iget-object v5, v0, La1/b;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v5, La1/b;

    .line 28
    .line 29
    iput-object v2, v5, La1/b;->d:Ljava/lang/Object;

    .line 30
    .line 31
    iput-object v2, v0, La1/b;->d:Ljava/lang/Object;

    .line 32
    .line 33
    iput-object v1, v2, La1/b;->c:Ljava/lang/Object;

    .line 34
    .line 35
    const-string v1, "maximumSize"

    .line 36
    .line 37
    iput-object v1, v2, La1/b;->b:Ljava/lang/Object;

    .line 38
    .line 39
    :cond_0
    iget-wide v1, p0, Lc7/d;->b:J

    .line 40
    .line 41
    cmp-long v5, v1, v3

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-wide v2, p0, Lc7/d;->b:J

    .line 51
    .line 52
    const-string v4, "ns"

    .line 53
    .line 54
    invoke-static {v1, v2, v3, v4}, La/e;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "expireAfterWrite"

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, La1/b;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v0}, La1/b;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method
