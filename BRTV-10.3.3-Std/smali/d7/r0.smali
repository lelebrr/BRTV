.class public final Ld7/r0;
.super Ld7/n2;
.source "MyApplication"


# static fields
.field public static final j:Ld7/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ld7/r0;

    .line 2
    .line 3
    sget-object v1, Ld7/h5;->g:Ld7/h5;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ld7/n2;-><init>(Ld7/h5;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ld7/r0;->j:Ld7/r0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/g2;->f:Ld7/h5;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Ld7/z1;
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/g2;->f:Ld7/h5;

    .line 2
    .line 3
    return-object v0
.end method
