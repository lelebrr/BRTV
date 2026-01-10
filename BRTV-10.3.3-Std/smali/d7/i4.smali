.class public abstract enum Ld7/i4;
.super Ljava/lang/Enum;
.source "MyApplication"

# interfaces
.implements Lb7/i;


# static fields
.field public static final enum a:Ld7/g4;

.field public static final enum b:Ld7/h4;

.field public static final synthetic c:[Ld7/i4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ld7/g4;

    .line 2
    .line 3
    invoke-direct {v0}, Ld7/g4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld7/i4;->a:Ld7/g4;

    .line 7
    .line 8
    new-instance v1, Ld7/h4;

    .line 9
    .line 10
    invoke-direct {v1}, Ld7/h4;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Ld7/i4;->b:Ld7/h4;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [Ld7/i4;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v0, v2, v3

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v1, v2, v0

    .line 23
    .line 24
    sput-object v2, Ld7/i4;->c:[Ld7/i4;

    .line 25
    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld7/i4;
    .locals 1

    .line 1
    const-class v0, Ld7/i4;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ld7/i4;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ld7/i4;
    .locals 1

    .line 1
    sget-object v0, Ld7/i4;->c:[Ld7/i4;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ld7/i4;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ld7/i4;

    .line 8
    .line 9
    return-object v0
.end method
