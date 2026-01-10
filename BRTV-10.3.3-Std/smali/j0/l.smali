.class public final Lj0/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lj0/k;


# instance fields
.field public final a:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/d;->h(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lj0/l;->a:Landroid/os/LocaleList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Landroid/os/LocaleList;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    check-cast p1, Lj0/k;

    .line 4
    .line 5
    invoke-interface {p1}, Lj0/k;->b()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1, v0}, Landroid/support/v4/media/b;->B(Ljava/lang/Object;Landroid/os/LocaleList;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final get(I)Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/deserializer/d;->n(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/deserializer/d;->z(Landroid/os/LocaleList;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/deserializer/d;->x(Landroid/os/LocaleList;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/deserializer/d;->b(Landroid/os/LocaleList;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l;->a:Landroid/os/LocaleList;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/deserializer/d;->l(Landroid/os/LocaleList;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
