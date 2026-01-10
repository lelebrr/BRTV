.class public Lorg/bitspark/android/beans/ChannelBean$SourcesBean$SubtitlesBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitspark/android/beans/ChannelBean$SourcesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubtitlesBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x159026a8c057e4cbL


# instance fields
.field private code:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Wg1x+g==\n"

    .line 5
    .line 6
    const-string v1, "LmgJjlo05wM=\n"

    .line 7
    .line 8
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/bitspark/android/beans/ChannelBean$SourcesBean$SubtitlesBean;->type:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public native getCode()Ljava/lang/String;
.end method

.method public native getType()Ljava/lang/String;
.end method

.method public native getUrl()Ljava/lang/String;
.end method

.method public native setCode(Ljava/lang/String;)V
.end method

.method public native setType(Ljava/lang/String;)V
.end method

.method public native setUrl(Ljava/lang/String;)V
.end method
