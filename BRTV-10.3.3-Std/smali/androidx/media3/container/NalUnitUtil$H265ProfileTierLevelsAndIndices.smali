.class public final Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H265ProfileTierLevelsAndIndices"
.end annotation


# instance fields
.field public final indices:[I

.field public final profileTierLevels:Ld7/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/u1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;",
            ">;[I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ld7/u1;->n(Ljava/util/Collection;)Ld7/u1;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->profileTierLevels:Ld7/u1;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->indices:[I

    .line 11
    .line 12
    return-void
.end method
