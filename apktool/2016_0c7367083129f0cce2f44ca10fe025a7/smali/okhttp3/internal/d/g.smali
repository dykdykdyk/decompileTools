.class public Lokhttp3/internal/d/g;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field static final c:Lokhttp3/internal/d/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1152
    invoke-static {}, Lokhttp3/internal/d/a;->a()Lokhttp3/internal/d/g;

    move-result-object v0

    .line 1154
    if-eqz v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    sput-object v0, Lokhttp3/internal/d/g;->c:Lokhttp3/internal/d/g;

    .line 76
    const-class v0, Lokhttp3/am;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/d/g;->a:Ljava/util/logging/Logger;

    return-void

    .line 1158
    :cond_1
    invoke-static {}, Lokhttp3/internal/d/c;->a()Lokhttp3/internal/d/c;

    move-result-object v0

    .line 1160
    if-nez v0, :cond_0

    .line 1164
    invoke-static {}, Lokhttp3/internal/d/d;->a()Lokhttp3/internal/d/g;

    move-result-object v0

    .line 1166
    if-nez v0, :cond_0

    .line 1171
    new-instance v0, Lokhttp3/internal/d/g;

    invoke-direct {v0}, Lokhttp3/internal/d/g;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 190
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_3

    .line 192
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 193
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 194
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v0, v1

    .line 209
    :goto_1
    return-object v0

    .line 196
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :catch_1
    move-exception v2

    .line 190
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_3
    const-string v0, "delegate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 205
    const-class v0, Ljava/lang/Object;

    const-string v2, "delegate"

    invoke-static {p0, v0, v2}, Lokhttp3/internal/d/g;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 206
    if-nez p0, :cond_0

    :cond_4
    move-object v0, v1

    .line 209
    goto :goto_1
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ap;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 139
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ap;

    .line 140
    sget-object v4, Lokhttp3/ap;->a:Lokhttp3/ap;

    if-eq v0, v4, :cond_0

    .line 141
    invoke-virtual {v0}, Lokhttp3/ap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 143
    :cond_1
    return-object v2
.end method

.method public static b()Lokhttp3/internal/d/g;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lokhttp3/internal/d/g;->c:Lokhttp3/internal/d/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    :try_start_0
    const-string v0, "sun.security.ssl.SSLContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    const-string v2, "context"

    invoke-static {p1, v0, v2}, Lokhttp3/internal/d/g;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    move-object v0, v1

    .line 97
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const-class v2, Ljavax/net/ssl/X509TrustManager;

    const-string v3, "trustManager"

    invoke-static {v0, v2, v3}, Lokhttp3/internal/d/g;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/e/b;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lokhttp3/internal/e/a;

    invoke-static {p1}, Lokhttp3/internal/e/e;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/e/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/e/a;-><init>(Lokhttp3/internal/e/e;)V

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 129
    :goto_0
    sget-object v1, Lokhttp3/internal/d/g;->a:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    return-void

    .line 128
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 125
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
