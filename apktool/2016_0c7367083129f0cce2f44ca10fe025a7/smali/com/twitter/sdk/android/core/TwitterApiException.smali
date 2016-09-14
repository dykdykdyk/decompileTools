.class public Lcom/twitter/sdk/android/core/TwitterApiException;
.super Lcom/twitter/sdk/android/core/TwitterException;
.source "TwitterApiException.java"


# instance fields
.field private final a:Lretrofit/RetrofitError;

.field private final b:Lcom/twitter/sdk/android/core/t;

.field private final c:Lcom/twitter/sdk/android/core/a/a;


# direct methods
.method private constructor <init>(Lretrofit/RetrofitError;)V
    .locals 2

    .prologue
    .line 36
    .line 1045
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/TwitterApiException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 39
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->a:Lretrofit/RetrofitError;

    .line 1055
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1056
    new-instance v0, Lcom/twitter/sdk/android/core/t;

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/t;-><init>(Ljava/util/List;)V

    .line 40
    :goto_1
    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->b:Lcom/twitter/sdk/android/core/t;

    .line 41
    invoke-static {p1}, Lcom/twitter/sdk/android/core/TwitterApiException;->b(Lretrofit/RetrofitError;)Lcom/twitter/sdk/android/core/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->c:Lcom/twitter/sdk/android/core/a/a;

    .line 42
    return-void

    .line 1048
    :cond_0
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1051
    :cond_1
    const-string v0, "unknown error"

    goto :goto_0

    .line 1058
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final a(Lretrofit/RetrofitError;)Lcom/twitter/sdk/android/core/TwitterApiException;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterApiException;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/TwitterApiException;-><init>(Lretrofit/RetrofitError;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/a/a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 116
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 119
    :try_start_0
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 120
    const-string v3, "errors"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const-class v3, [Lcom/twitter/sdk/android/core/a/a;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/sdk/android/core/a/a;

    .line 122
    array-length v2, v0

    if-nez v2, :cond_0

    move-object v0, v1

    .line 133
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const/4 v2, 0x0

    aget-object v0, v0, v2
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Twitter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid json: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v1

    .line 133
    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Twitter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static b(Lretrofit/RetrofitError;)Lcom/twitter/sdk/android/core/a/a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 97
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 112
    :goto_0
    return-object v0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    check-cast v0, Lretrofit/mime/TypedByteArray;

    invoke-virtual {v0}, Lretrofit/mime/TypedByteArray;->getBytes()[B

    move-result-object v0

    .line 104
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 107
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 108
    invoke-static {v2}, Lcom/twitter/sdk/android/core/TwitterApiException;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/a/a;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Twitter"

    const-string v4, "Failed to convert to string"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 112
    goto :goto_0
.end method
