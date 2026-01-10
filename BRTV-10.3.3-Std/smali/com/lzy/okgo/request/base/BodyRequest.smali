.class public abstract Lcom/lzy/okgo/request/base/BodyRequest;
.super Lcom/lzy/okgo/request/base/Request;
.source "MyApplication"

# interfaces
.implements Lcom/lzy/okgo/request/base/HasBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/BodyRequest;",
        ">",
        "Lcom/lzy/okgo/request/base/Request<",
        "TT;TR;>;",
        "Lcom/lzy/okgo/request/base/HasBody<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x59a399aa9376760dL


# instance fields
.field protected bs:[B

.field protected content:Ljava/lang/String;

.field protected transient file:Ljava/io/File;

.field protected isMultipart:Z

.field protected isSpliceUrl:Z

.field protected transient mediaType:Lokhttp3/MediaType;

.field protected requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/Request;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl:Z

    .line 8
    .line 9
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)TR;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->putFileParams(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic addFileParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lzy/okgo/model/HttpParams$FileWrapper;",
            ">;)TR;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->putFileWrapperParams(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public generateRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->requestBody:Lokhttp3/RequestBody;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->generateMultipartRequestBody(Lcom/lzy/okgo/model/HttpParams;Z)Lokhttp3/RequestBody;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public generateRequestBuilder(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "Content-Length"

    .line 2
    .line 3
    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    new-instance p1, Lokhttp3/Request$Builder;

    .line 20
    .line 21
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->appendHeaders(Lokhttp3/Request$Builder;Lcom/lzy/okgo/model/HttpHeaders;)Lokhttp3/Request$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public isMultipart(Z)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart:Z

    return-object p0
.end method

.method public bridge synthetic isMultipart(Z)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->isMultipart(Z)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public isSpliceUrl(Z)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TR;"
        }
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl:Z

    return-object p0
.end method

.method public bridge synthetic isSpliceUrl(Z)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->isSpliceUrl(Z)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public params(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    return-object p0
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->params(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/lzy/okgo/request/base/BodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lzy/okgo/request/base/BodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upBytes([B)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TR;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    .line 4
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public upBytes([BLokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->bs:[B

    .line 6
    iput-object p2, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public bridge synthetic upBytes([B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upBytes([B)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upBytes([BLokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->upBytes([BLokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upFile(Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lzy/okgo/utils/HttpUtils;->guessMimeType(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public upFile(Ljava/io/File;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->file:Ljava/io/File;

    .line 6
    iput-object p2, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public bridge synthetic upFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upFile(Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upFile(Ljava/io/File;Lokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->upFile(Ljava/io/File;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public upJson(Lorg/json/JSONArray;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")TR;"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 9
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public upJson(Lorg/json/JSONObject;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TR;"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 7
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public bridge synthetic upJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upJson(Lorg/json/JSONArray;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upJson(Lorg/json/JSONArray;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upJson(Lorg/json/JSONObject;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upRequestBody(Lokhttp3/RequestBody;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            ")TR;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->requestBody:Lokhttp3/RequestBody;

    return-object p0
.end method

.method public bridge synthetic upRequestBody(Lokhttp3/RequestBody;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upRequestBody(Lokhttp3/RequestBody;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public upString(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public upString(Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/lzy/okgo/request/base/BodyRequest;->content:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/lzy/okgo/request/base/BodyRequest;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public bridge synthetic upString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/BodyRequest;->upString(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic upString(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/request/base/BodyRequest;->upString(Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    return-object p1
.end method
