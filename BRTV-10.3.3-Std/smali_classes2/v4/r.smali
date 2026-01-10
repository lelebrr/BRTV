.class public final Lv4/r;
.super Ly4/g;
.source "MyApplication"


# static fields
.field public static final j:Ll6/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ly4/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/cast/d1;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/d1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ll6/h;

    .line 14
    .line 15
    const-string v3, "CastApi.API"

    .line 16
    .line 17
    invoke-direct {v2, v3, v1, v0}, Ll6/h;-><init>(Ljava/lang/String;Ll5/a;Ly4/d;)V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lv4/r;->j:Ll6/h;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final d([Ljava/lang/String;)Lw5/g;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lc6/c;->c()Lc6/c;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lv4/p;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-direct {v2, p0, p1, v3}, Lv4/p;-><init>(Lv4/r;[Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iput-object v2, v1, Lc6/c;->c:Ljava/lang/Object;

    .line 13
    .line 14
    new-array p1, v3, [Lcom/google/android/gms/common/Feature;

    .line 15
    .line 16
    sget-object v2, Lp4/j;->b:Lcom/google/android/gms/common/Feature;

    .line 17
    .line 18
    aput-object v2, p1, v0

    .line 19
    .line 20
    iput-object p1, v1, Lc6/c;->d:Ljava/lang/Object;

    .line 21
    .line 22
    iput-boolean v0, v1, Lc6/c;->b:Z

    .line 23
    .line 24
    const/16 p1, 0x20e9

    .line 25
    .line 26
    iput p1, v1, Lc6/c;->a:I

    .line 27
    .line 28
    invoke-virtual {v1}, Lc6/c;->b()Lc6/c;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, v0, p1}, Ly4/g;->c(ILc6/c;)Lw5/g;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
