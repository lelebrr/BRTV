.class public final enum Ld7/u2;
.super Ljava/lang/Enum;
.source "MyApplication"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field public static final enum a:Ld7/u2;

.field public static final synthetic b:[Ld7/u2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Ld7/u2;

    .line 3
    .line 4
    const-string v2, "INSTANCE"

    .line 5
    .line 6
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v1, Ld7/u2;->a:Ld7/u2;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Ld7/u2;

    .line 13
    .line 14
    aput-object v1, v2, v0

    .line 15
    .line 16
    sput-object v2, Ld7/u2;->b:[Ld7/u2;

    .line 17
    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld7/u2;
    .locals 1

    .line 1
    const-class v0, Ld7/u2;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ld7/u2;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ld7/u2;
    .locals 1

    .line 1
    sget-object v0, Ld7/u2;->b:[Ld7/u2;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ld7/u2;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ld7/u2;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    const-string v0, "no calls to next() since the last call to remove()"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lb7/b;->n(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
