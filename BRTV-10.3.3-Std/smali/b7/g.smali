.class public final Lb7/g;
.super Lb7/h;
.source "MyApplication"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lb7/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb7/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lb7/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb7/g;->a:Lb7/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
