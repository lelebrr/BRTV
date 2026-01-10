.class public Lorg/bitspark/android/beans/DoHMsg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitspark/android/beans/DoHMsg$Answer;
    }
.end annotation


# instance fields
.field private ad:Z

.field private answer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/DoHMsg$Answer;",
            ">;"
        }
    .end annotation
.end field

.field private cd:Z

.field private ra:Z

.field private rd:Z

.field private status:I

.field private tc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

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
.method public native getAd()Z
.end method

.method public native getAnswer()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/DoHMsg$Answer;",
            ">;"
        }
    .end annotation
.end method

.method public native getCd()Z
.end method

.method public native getRa()Z
.end method

.method public native getRd()Z
.end method

.method public native getStatus()I
.end method

.method public native getTc()Z
.end method

.method public native setAd(Z)V
.end method

.method public native setAnswer(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/DoHMsg$Answer;",
            ">;)V"
        }
    .end annotation
.end method

.method public native setCd(Z)V
.end method

.method public native setRa(Z)V
.end method

.method public native setRd(Z)V
.end method

.method public native setStatus(I)V
.end method

.method public native setTc(Z)V
.end method
