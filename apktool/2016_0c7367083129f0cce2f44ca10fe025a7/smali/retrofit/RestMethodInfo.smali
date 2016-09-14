.class final Lretrofit/RestMethodInfo;
.super Ljava/lang/Object;
.source "RestMethodInfo.java"


# static fields
.field private static final PARAM:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field private static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field contentTypeHeader:Ljava/lang/String;

.field headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field final isObservable:Z

.field isStreaming:Z

.field final isSynchronous:Z

.field loaded:Z

.field final method:Ljava/lang/reflect/Method;

.field requestHasBody:Z

.field requestMethod:Ljava/lang/String;

.field requestParamNames:[Ljava/lang/String;

.field requestParamUsage:[Lretrofit/RestMethodInfo$ParamUsage;

.field requestQuery:Ljava/lang/String;

.field requestType:Lretrofit/RestMethodInfo$RequestType;

.field requestUrl:Ljava/lang/String;

.field requestUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field responseObjectType:Ljava/lang/reflect/Type;

.field final responseType:Lretrofit/RestMethodInfo$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RestMethodInfo;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v2, p0, Lretrofit/RestMethodInfo;->loaded:Z

    .line 97
    sget-object v0, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    .line 112
    iput-object p1, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    .line 113
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseResponseType()Lretrofit/RestMethodInfo$ResponseType;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    .line 114
    iget-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    sget-object v3, Lretrofit/RestMethodInfo$ResponseType;->OBJECT:Lretrofit/RestMethodInfo$ResponseType;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    .line 115
    iget-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    sget-object v3, Lretrofit/RestMethodInfo$ResponseType;->OBSERVABLE:Lretrofit/RestMethodInfo$ResponseType;

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lretrofit/RestMethodInfo;->isObservable:Z

    .line 116
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v1, v2

    .line 115
    goto :goto_1
.end method

.method private static getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    move v1, v2

    .line 312
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 313
    aget-object v0, v3, v1

    .line 314
    instance-of v4, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_0

    .line 315
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    aput-object v0, v3, v1

    .line 312
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 318
    :cond_1
    aget-object v0, v3, v2

    return-object v0
.end method

.method private varargs methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3

    .prologue
    .line 119
    array-length v0, p2

    if-lez v0, :cond_0

    .line 120
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    .line 123
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private varargs parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private parseMethodAnnotations()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 141
    iget-object v0, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_c

    aget-object v1, v6, v5

    .line 142
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    .line 143
    const/4 v2, 0x0

    .line 146
    invoke-virtual {v8}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    array-length v10, v9

    move v3, v4

    :goto_1
    if-ge v3, v10, :cond_0

    aget-object v0, v9, v3

    .line 147
    const-class v11, Lretrofit/http/RestMethod;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v12

    if-ne v11, v12, :cond_1

    .line 148
    check-cast v0, Lretrofit/http/RestMethod;

    move-object v2, v0

    .line 153
    :cond_0
    if-eqz v2, :cond_4

    .line 154
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 155
    const-string v0, "Only one HTTP method is allowed. Found: %s and %s."

    new-array v1, v14, [Ljava/lang/Object;

    iget-object v3, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    aput-object v3, v1, v4

    .line 156
    invoke-interface {v2}, Lretrofit/http/RestMethod;->value()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    .line 155
    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 146
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 160
    :cond_2
    :try_start_0
    const-string v0, "value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v8, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    invoke-direct {p0, v0}, Lretrofit/RestMethodInfo;->parsePath(Ljava/lang/String;)V

    .line 166
    invoke-interface {v2}, Lretrofit/http/RestMethod;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    .line 167
    invoke-interface {v2}, Lretrofit/http/RestMethod;->hasBody()Z

    move-result v0

    iput-boolean v0, p0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    .line 141
    :cond_3
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    const-string v0, "Failed to extract String \'value\' from @%s annotation."

    new-array v1, v13, [Ljava/lang/Object;

    .line 163
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 162
    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 168
    :cond_4
    const-class v0, Lretrofit/http/Headers;

    if-ne v8, v0, :cond_6

    move-object v0, v1

    .line 169
    check-cast v0, Lretrofit/http/Headers;

    invoke-interface {v0}, Lretrofit/http/Headers;->value()[Ljava/lang/String;

    move-result-object v0

    .line 170
    array-length v1, v0

    if-nez v1, :cond_5

    .line 171
    const-string v0, "@Headers annotation is empty."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 173
    :cond_5
    invoke-virtual {p0, v0}, Lretrofit/RestMethodInfo;->parseHeaders([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->headers:Ljava/util/List;

    goto :goto_2

    .line 174
    :cond_6
    const-class v0, Lretrofit/http/Multipart;

    if-ne v8, v0, :cond_8

    .line 175
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v1, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-eq v0, v1, :cond_7

    .line 176
    const-string v0, "Only one encoding annotation is allowed."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 178
    :cond_7
    sget-object v0, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    goto :goto_2

    .line 179
    :cond_8
    const-class v0, Lretrofit/http/FormUrlEncoded;

    if-ne v8, v0, :cond_a

    .line 180
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v1, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-eq v0, v1, :cond_9

    .line 181
    const-string v0, "Only one encoding annotation is allowed."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 183
    :cond_9
    sget-object v0, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    goto :goto_2

    .line 184
    :cond_a
    const-class v0, Lretrofit/http/Streaming;

    if-ne v8, v0, :cond_3

    .line 185
    iget-object v0, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    const-class v1, Lretrofit/client/Response;

    if-eq v0, v1, :cond_b

    .line 186
    const-string v0, "Only methods having %s as data type are allowed to have @%s annotation."

    new-array v1, v14, [Ljava/lang/Object;

    const-class v2, Lretrofit/client/Response;

    .line 188
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-class v2, Lretrofit/http/Streaming;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    .line 186
    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 190
    :cond_b
    iput-boolean v13, p0, Lretrofit/RestMethodInfo;->isStreaming:Z

    goto/16 :goto_2

    .line 194
    :cond_c
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 195
    const-string v0, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 197
    :cond_d
    iget-boolean v0, p0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    if-nez v0, :cond_f

    .line 198
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v1, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    if-ne v0, v1, :cond_e

    .line 199
    const-string v0, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 202
    :cond_e
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v1, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    if-ne v0, v1, :cond_f

    .line 203
    const-string v0, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 207
    :cond_f
    return-void
.end method

.method private parseParameters()V
    .locals 18

    .prologue
    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    .line 329
    array-length v1, v9

    .line 330
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isObservable:Z

    if-nez v2, :cond_1d

    .line 331
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    .line 334
    :goto_0
    new-array v10, v2, [Ljava/lang/String;

    .line 335
    move-object/from16 v0, p0

    iput-object v10, v0, Lretrofit/RestMethodInfo;->requestParamNames:[Ljava/lang/String;

    .line 336
    new-array v11, v2, [Lretrofit/RestMethodInfo$ParamUsage;

    .line 337
    move-object/from16 v0, p0

    iput-object v11, v0, Lretrofit/RestMethodInfo;->requestParamUsage:[Lretrofit/RestMethodInfo$ParamUsage;

    .line 339
    const/4 v5, 0x0

    .line 340
    const/4 v4, 0x0

    .line 341
    const/4 v3, 0x0

    .line 343
    const/4 v1, 0x0

    move v7, v1

    :goto_1
    if-ge v7, v2, :cond_18

    .line 344
    aget-object v12, v8, v7

    .line 345
    aget-object v13, v9, v7

    .line 346
    if-eqz v13, :cond_16

    .line 347
    array-length v14, v13

    const/4 v1, 0x0

    move v6, v1

    :goto_2
    if-ge v6, v14, :cond_16

    aget-object v1, v13, v6

    .line 348
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v15

    .line 350
    const-class v16, Lretrofit/http/Path;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 351
    check-cast v1, Lretrofit/http/Path;

    invoke-interface {v1}, Lretrofit/http/Path;->value()Ljava/lang/String;

    move-result-object v1

    .line 352
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lretrofit/RestMethodInfo;->validatePathName(ILjava/lang/String;)V

    .line 354
    aput-object v1, v10, v7

    .line 355
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->PATH:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    .line 347
    :goto_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v1

    goto :goto_2

    .line 356
    :cond_0
    const-class v16, Lretrofit/http/EncodedPath;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 357
    check-cast v1, Lretrofit/http/EncodedPath;

    invoke-interface {v1}, Lretrofit/http/EncodedPath;->value()Ljava/lang/String;

    move-result-object v1

    .line 358
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lretrofit/RestMethodInfo;->validatePathName(ILjava/lang/String;)V

    .line 360
    aput-object v1, v10, v7

    .line 361
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_PATH:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    .line 362
    goto :goto_3

    :cond_1
    const-class v16, Lretrofit/http/Query;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 363
    check-cast v1, Lretrofit/http/Query;

    invoke-interface {v1}, Lretrofit/http/Query;->value()Ljava/lang/String;

    move-result-object v1

    .line 365
    aput-object v1, v10, v7

    .line 366
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    .line 367
    goto :goto_3

    :cond_2
    const-class v16, Lretrofit/http/EncodedQuery;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 368
    check-cast v1, Lretrofit/http/EncodedQuery;

    invoke-interface {v1}, Lretrofit/http/EncodedQuery;->value()Ljava/lang/String;

    move-result-object v1

    .line 370
    aput-object v1, v10, v7

    .line 371
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    .line 372
    goto :goto_3

    :cond_3
    const-class v16, Lretrofit/http/QueryMap;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 373
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 374
    const-string v1, "@QueryMap parameter type must be Map."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 377
    :cond_4
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    goto :goto_3

    .line 378
    :cond_5
    const-class v16, Lretrofit/http/EncodedQueryMap;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 379
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 380
    const-string v1, "@EncodedQueryMap parameter type must be Map."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 383
    :cond_6
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    .line 384
    :cond_7
    const-class v16, Lretrofit/http/Header;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 385
    check-cast v1, Lretrofit/http/Header;

    invoke-interface {v1}, Lretrofit/http/Header;->value()Ljava/lang/String;

    move-result-object v1

    .line 386
    const-class v15, Ljava/lang/String;

    if-eq v12, v15, :cond_8

    .line 387
    const-string v1, "@Header parameter type must be String. Found: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 388
    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 387
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 391
    :cond_8
    aput-object v1, v10, v7

    .line 392
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->HEADER:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    .line 393
    goto/16 :goto_3

    :cond_9
    const-class v16, Lretrofit/http/Field;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 394
    move-object/from16 v0, p0

    iget-object v5, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v15, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    if-eq v5, v15, :cond_a

    .line 395
    const-string v1, "@Field parameters can only be used with form encoding."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 398
    :cond_a
    check-cast v1, Lretrofit/http/Field;

    invoke-interface {v1}, Lretrofit/http/Field;->value()Ljava/lang/String;

    move-result-object v5

    .line 400
    const/4 v1, 0x1

    .line 401
    aput-object v5, v10, v7

    .line 402
    sget-object v5, Lretrofit/RestMethodInfo$ParamUsage;->FIELD:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v5, v11, v7

    move/from16 v17, v3

    move v3, v4

    move v4, v1

    move/from16 v1, v17

    .line 403
    goto/16 :goto_3

    :cond_b
    const-class v16, Lretrofit/http/FieldMap;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v5, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    if-eq v1, v5, :cond_c

    .line 405
    const-string v1, "@FieldMap parameters can only be used with form encoding."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 407
    :cond_c
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 408
    const-string v1, "@FieldMap parameter type must be Map."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 411
    :cond_d
    const/4 v1, 0x1

    .line 412
    sget-object v5, Lretrofit/RestMethodInfo$ParamUsage;->FIELD_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v5, v11, v7

    move/from16 v17, v3

    move v3, v4

    move v4, v1

    move/from16 v1, v17

    goto/16 :goto_3

    .line 413
    :cond_e
    const-class v16, Lretrofit/http/Part;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v15, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    if-eq v4, v15, :cond_f

    .line 415
    const-string v1, "@Part parameters can only be used with multipart encoding."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 418
    :cond_f
    check-cast v1, Lretrofit/http/Part;

    invoke-interface {v1}, Lretrofit/http/Part;->value()Ljava/lang/String;

    move-result-object v4

    .line 420
    const/4 v1, 0x1

    .line 421
    aput-object v4, v10, v7

    .line 422
    sget-object v4, Lretrofit/RestMethodInfo$ParamUsage;->PART:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v4, v11, v7

    move v4, v5

    move/from16 v17, v1

    move v1, v3

    move/from16 v3, v17

    .line 423
    goto/16 :goto_3

    :cond_10
    const-class v1, Lretrofit/http/PartMap;

    if-ne v15, v1, :cond_13

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v4, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    if-eq v1, v4, :cond_11

    .line 425
    const-string v1, "@PartMap parameters can only be used with multipart encoding."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 428
    :cond_11
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 429
    const-string v1, "@PartMap parameter type must be Map."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 432
    :cond_12
    const/4 v1, 0x1

    .line 433
    sget-object v4, Lretrofit/RestMethodInfo$ParamUsage;->PART_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v4, v11, v7

    move v4, v5

    move/from16 v17, v1

    move v1, v3

    move/from16 v3, v17

    goto/16 :goto_3

    .line 434
    :cond_13
    const-class v1, Lretrofit/http/Body;

    if-ne v15, v1, :cond_1c

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v15, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-eq v1, v15, :cond_14

    .line 436
    const-string v1, "@Body parameters cannot be used with form or multi-part encoding."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 439
    :cond_14
    if-eqz v3, :cond_15

    .line 440
    const-string v1, "Multiple @Body method annotations found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 443
    :cond_15
    const/4 v1, 0x1

    .line 444
    sget-object v3, Lretrofit/RestMethodInfo$ParamUsage;->BODY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v3, v11, v7

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    .line 449
    :cond_16
    aget-object v1, v11, v7

    if-nez v1, :cond_17

    .line 450
    const-string v1, "No Retrofit annotation found."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 343
    :cond_17
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1

    .line 454
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v2, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-ne v1, v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    if-nez v1, :cond_19

    if-eqz v3, :cond_19

    .line 455
    const-string v1, "Non-body HTTP method cannot contain @Body or @TypedOutput."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 457
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v2, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    if-ne v1, v2, :cond_1a

    if-nez v5, :cond_1a

    .line 458
    const-string v1, "Form-encoded method must contain at least one @Field."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 460
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v2, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    if-ne v1, v2, :cond_1b

    if-nez v4, :cond_1b

    .line 461
    const-string v1, "Multipart method must contain at least one @Part."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 463
    :cond_1b
    return-void

    :cond_1c
    move v1, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    :cond_1d
    move v2, v1

    goto/16 :goto_0
.end method

.method private parsePath(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    .line 212
    :cond_0
    const-string v0, "URL path \"%s\" must start with \'/\'."

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 217
    :cond_1
    const/4 v0, 0x0

    .line 218
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 219
    const/4 v1, -0x1

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_2

    .line 220
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 221
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    sget-object v2, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    const-string v1, "URL query string \"%s\" must not have replace block."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v1, p1

    .line 230
    :cond_3
    invoke-static {p1}, Lretrofit/RestMethodInfo;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 232
    iput-object v1, p0, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    .line 233
    iput-object v2, p0, Lretrofit/RestMethodInfo;->requestUrlParamNames:Ljava/util/Set;

    .line 234
    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestQuery:Ljava/lang/String;

    .line 235
    return-void
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    sget-object v0, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 482
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 483
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    :cond_0
    return-object v1
.end method

.method private parseResponseType()Lretrofit/RestMethodInfo$ResponseType;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    iget-object v0, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 265
    iget-object v0, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 266
    array-length v1, v0

    if-lez v1, :cond_9

    .line 267
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 269
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 270
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 272
    :goto_0
    instance-of v6, v0, Ljava/lang/Class;

    if-eqz v6, :cond_7

    .line 273
    check-cast v0, Ljava/lang/Class;

    .line 277
    :goto_1
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v5, v2, :cond_0

    move v2, v3

    .line 278
    :goto_2
    if-eqz v0, :cond_1

    const-class v6, Lretrofit/Callback;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 281
    :goto_3
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 282
    const-string v0, "Must have return type or Callback as last argument, not both."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    move v2, v4

    .line 277
    goto :goto_2

    :cond_1
    move v0, v4

    .line 278
    goto :goto_3

    .line 284
    :cond_2
    if-nez v2, :cond_3

    if-nez v0, :cond_3

    .line 285
    const-string v0, "Must have either a return type or Callback as last argument."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 288
    :cond_3
    if-eqz v2, :cond_5

    .line 289
    sget-boolean v0, Lretrofit/Platform;->HAS_RX_JAVA:Z

    if-eqz v0, :cond_4

    .line 290
    invoke-static {v5}, Lretrofit/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lretrofit/RestMethodInfo$RxSupport;->isObservable(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    invoke-static {v5, v0}, Lretrofit/RestMethodInfo$RxSupport;->getObservableType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 293
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lretrofit/RestMethodInfo;->getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 294
    sget-object v0, Lretrofit/RestMethodInfo$ResponseType;->OBSERVABLE:Lretrofit/RestMethodInfo$ResponseType;

    .line 304
    :goto_4
    return-object v0

    .line 297
    :cond_4
    iput-object v5, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 298
    sget-object v0, Lretrofit/RestMethodInfo$ResponseType;->OBJECT:Lretrofit/RestMethodInfo$ResponseType;

    goto :goto_4

    .line 301
    :cond_5
    invoke-static {v1}, Lretrofit/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lretrofit/Callback;

    invoke-static {v1, v0, v2}, Lretrofit/Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 302
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_6

    .line 303
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lretrofit/RestMethodInfo;->getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 304
    sget-object v0, Lretrofit/RestMethodInfo$ResponseType;->VOID:Lretrofit/RestMethodInfo$ResponseType;

    goto :goto_4

    .line 307
    :cond_6
    const-string v0, "Last parameter must be of type Callback<X> or Callback<? super X>."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7
    move-object v0, v2

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_0

    :cond_9
    move-object v0, v2

    move-object v1, v2

    goto :goto_1
.end method

.method private validatePathName(ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 466
    sget-object v0, Lretrofit/RestMethodInfo;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const-string v0, "@Path parameter name must match %s. Found: %s"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 468
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 467
    invoke-direct {p0, p1, v0, v1}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 471
    :cond_0
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    const-string v0, "URL \"%s\" does not contain \"{%s}\"."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 474
    :cond_1
    return-void
.end method


# virtual methods
.method final declared-synchronized init()V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit/RestMethodInfo;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseMethodAnnotations()V

    .line 134
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseParameters()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit/RestMethodInfo;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final parseHeaders([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, p1, v0

    .line 240
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 241
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    .line 242
    :cond_0
    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v2}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 245
    :cond_1
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 246
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 247
    const-string v5, "Content-Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    iput-object v4, p0, Lretrofit/RestMethodInfo;->contentTypeHeader:Ljava/lang/String;

    .line 239
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_2
    new-instance v5, Lretrofit/client/Header;

    invoke-direct {v5, v6, v4}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_3
    return-object v2
.end method
