.class public Lorg/bitspark/android/beans/ChannelBean$NameBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitspark/android/beans/ChannelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitspark/android/beans/ChannelBean$NameBean$I18nBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x159026a8c057e4c3L


# instance fields
.field private i18n:Lorg/bitspark/android/beans/ChannelBean$NameBean$I18nBean;

.field private init:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1b

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
.method public native getI18n()Lorg/bitspark/android/beans/ChannelBean$NameBean$I18nBean;
.end method

.method public native getInit()Ljava/lang/String;
.end method

.method public native setI18n(Lorg/bitspark/android/beans/ChannelBean$NameBean$I18nBean;)V
.end method

.method public native setInit(Ljava/lang/String;)V
.end method
