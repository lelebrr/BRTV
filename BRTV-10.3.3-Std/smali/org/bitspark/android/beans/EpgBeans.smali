.class public Lorg/bitspark/android/beans/EpgBeans;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitspark/android/beans/EpgBeans$EpgBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x770a269daee5acb8L


# instance fields
.field private epg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/EpgBeans$EpgBean;",
            ">;"
        }
    .end annotation
.end field

.field private hasPlayBack:Z

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public native getEpg()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/EpgBeans$EpgBean;",
            ">;"
        }
    .end annotation
.end method

.method public native getId()I
.end method

.method public native isHasPlayBack()Z
.end method

.method public native setEpg(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/EpgBeans$EpgBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public native setHasPlayBack(Z)V
.end method

.method public native setId(I)V
.end method
