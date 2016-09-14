.class public final Lcom/twitter/sdk/android/core/e;
.super Lcom/twitter/sdk/android/core/g;
.source "AuthenticatedClient.java"


# instance fields
.field private final c:Lcom/twitter/sdk/android/core/l;

.field private final d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/l;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p3}, Lcom/twitter/sdk/android/core/g;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 37
    iput-object p1, p0, Lcom/twitter/sdk/android/core/e;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 38
    iput-object p2, p0, Lcom/twitter/sdk/android/core/e;->c:Lcom/twitter/sdk/android/core/l;

    .line 39
    return-void
.end method

.method private a(Lretrofit/client/Request;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/client/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/twitter/sdk/android/core/internal/g;

    invoke-virtual {p1}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/sdk/android/core/e;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/e;->c:Lcom/twitter/sdk/android/core/l;

    invoke-static {p1}, Lcom/twitter/sdk/android/core/e;->b(Lretrofit/client/Request;)Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/l;Ljava/util/Map;)V

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1034
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1048
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 1035
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1036
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/g;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1037
    const-string v3, "User-Agent"

    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    :cond_0
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/g;->e:Lcom/twitter/sdk/android/core/l;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/g;->e:Lcom/twitter/sdk/android/core/l;

    .line 2022
    iget-object v3, v3, Lcom/twitter/sdk/android/core/l;->a:Lcom/twitter/sdk/android/core/c;

    .line 1056
    if-eqz v3, :cond_1

    .line 1057
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/g;->e:Lcom/twitter/sdk/android/core/l;

    .line 3022
    iget-object v3, v3, Lcom/twitter/sdk/android/core/l;->a:Lcom/twitter/sdk/android/core/c;

    .line 1057
    iget-object v4, v0, Lcom/twitter/sdk/android/core/internal/g;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 3064
    iget-object v5, v0, Lcom/twitter/sdk/android/core/internal/g;->a:Ljava/lang/String;

    .line 1057
    iget-object v6, v0, Lcom/twitter/sdk/android/core/internal/g;->b:Ljava/lang/String;

    .line 3068
    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/g;->c:Ljava/util/Map;

    .line 1057
    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/twitter/sdk/android/core/c;->a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1039
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 58
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 59
    new-instance v4, Lretrofit/client/Header;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v0, v1}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1060
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_2
    return-object v2
.end method

.method private static b(Lretrofit/client/Request;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/client/Request;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 70
    const-string v0, "POST"

    invoke-virtual {p0}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v0

    .line 72
    instance-of v2, v0, Lretrofit/mime/FormUrlEncodedTypedOutput;

    if-eqz v2, :cond_0

    .line 73
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    invoke-interface {v0, v2}, Lretrofit/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    .line 75
    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://twitter.com/?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 78
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 79
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lretrofit/client/Request;

    invoke-virtual {p1}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/e;->a(Lretrofit/client/Request;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lretrofit/client/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lretrofit/mime/TypedOutput;)V

    .line 47
    iget-object v1, p0, Lcom/twitter/sdk/android/core/e;->a:Lretrofit/client/Client;

    invoke-interface {v1, v0}, Lretrofit/client/Client;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;

    move-result-object v0

    .line 49
    return-object v0
.end method
