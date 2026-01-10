.class public Lorg/bitspark/android/beans/AuthInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitspark/android/beans/AuthInfo$KeysBean;,
        Lorg/bitspark/android/beans/AuthInfo$UserBean;,
        Lorg/bitspark/android/beans/AuthInfo$ServiceBean;
    }
.end annotation


# instance fields
.field public code:I

.field public keys:Lorg/bitspark/android/beans/AuthInfo$KeysBean;

.field public result:Ljava/lang/String;

.field public service:Lorg/bitspark/android/beans/AuthInfo$ServiceBean;

.field public user:Lorg/bitspark/android/beans/AuthInfo$UserBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
