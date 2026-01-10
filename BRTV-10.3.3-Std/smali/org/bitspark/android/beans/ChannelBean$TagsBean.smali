.class public Lorg/bitspark/android/beans/ChannelBean$TagsBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitspark/android/beans/ChannelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitspark/android/beans/ChannelBean$TagsBean$DescriptionBean;,
        Lorg/bitspark/android/beans/ChannelBean$TagsBean$ImageBean;,
        Lorg/bitspark/android/beans/ChannelBean$TagsBean$NameBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x159026a8c057e4cdL


# instance fields
.field private description:Lorg/bitspark/android/beans/ChannelBean$TagsBean$DescriptionBean;

.field private id:I

.field private image:Lorg/bitspark/android/beans/ChannelBean$TagsBean$ImageBean;

.field private name:Lorg/bitspark/android/beans/ChannelBean$TagsBean$NameBean;

.field private restrictedAccess:Z

.field private type:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x34

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
.method public native getDescription()Lorg/bitspark/android/beans/ChannelBean$TagsBean$DescriptionBean;
.end method

.method public native getId()I
.end method

.method public native getImage()Lorg/bitspark/android/beans/ChannelBean$TagsBean$ImageBean;
.end method

.method public native getName()Lorg/bitspark/android/beans/ChannelBean$TagsBean$NameBean;
.end method

.method public native getType()I
.end method

.method public native isRestrictedAccess()Z
.end method

.method public native setDescription(Lorg/bitspark/android/beans/ChannelBean$TagsBean$DescriptionBean;)V
.end method

.method public native setId(I)V
.end method

.method public native setImage(Lorg/bitspark/android/beans/ChannelBean$TagsBean$ImageBean;)V
.end method

.method public native setName(Lorg/bitspark/android/beans/ChannelBean$TagsBean$NameBean;)V
.end method

.method public native setRestrictedAccess(Z)V
.end method

.method public native setType(I)V
.end method
