.class public final Lokhttp3/internal/connection/e;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field final a:Lokhttp3/a;

.field final b:Lokhttp3/internal/connection/d;

.field private c:Ljava/net/Proxy;

.field private d:Ljava/net/InetSocketAddress;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/bc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/a;Lokhttp3/internal/connection/d;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/e;->i:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 57
    iput-object p2, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/internal/connection/d;

    .line 1091
    iget-object v0, p1, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 1134
    iget-object v1, p1, Lokhttp3/a;->h:Ljava/net/Proxy;

    .line 2110
    if-eqz v1, :cond_0

    .line 2112
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    .line 2123
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/connection/e;->f:I

    .line 60
    return-void

    .line 2116
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    .line 2117
    iget-object v1, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 2126
    iget-object v1, v1, Lokhttp3/a;->g:Ljava/net/ProxySelector;

    .line 2117
    invoke-virtual {v0}, Lokhttp3/ad;->a()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 2118
    if-eqz v0, :cond_1

    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2120
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2121
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/net/Proxy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    .line 149
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    .line 150
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 7091
    iget-object v0, v0, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 7481
    iget-object v1, v0, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 8091
    iget-object v0, v0, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 8497
    iget v0, v0, Lokhttp3/ad;->c:I

    move v3, v0

    .line 163
    :goto_0
    if-lez v3, :cond_1

    const v0, 0xffff

    if-le v3, v0, :cond_5

    .line 164
    :cond_1
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "No route to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; port is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 154
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    .line 155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_3
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 9188
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 9189
    if-nez v1, :cond_4

    .line 9193
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 160
    :goto_1
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 9197
    :cond_4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 168
    :cond_5
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v4, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v4, :cond_7

    .line 169
    iget-object v0, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_6
    iput v2, p0, Lokhttp3/internal/connection/e;->h:I

    .line 180
    return-void

    .line 172
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 10096
    iget-object v0, v0, Lokhttp3/a;->b:Lokhttp3/w;

    .line 172
    invoke-interface {v0, v1}, Lokhttp3/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 173
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_6

    .line 174
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 175
    iget-object v6, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final a()Lokhttp3/bc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    :goto_0
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 2221
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/bc;

    .line 91
    :cond_1
    return-object v0

    .line 3133
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3134
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 4091
    iget-object v2, v2, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 4481
    iget-object v2, v2, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 3134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3137
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    iget v1, p0, Lokhttp3/internal/connection/e;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/connection/e;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 3138
    invoke-direct {p0, v0}, Lokhttp3/internal/connection/e;->a(Ljava/net/Proxy;)V

    .line 80
    iput-object v0, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Proxy;

    .line 5207
    :cond_4
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5208
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No route to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 6091
    iget-object v2, v2, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 6481
    iget-object v2, v2, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 5208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5211
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    iget v1, p0, Lokhttp3/internal/connection/e;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/connection/e;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 82
    iput-object v0, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/InetSocketAddress;

    .line 84
    new-instance v0, Lokhttp3/bc;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    iget-object v2, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Proxy;

    iget-object v3, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/bc;-><init>(Lokhttp3/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 85
    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/internal/connection/d;

    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/d;->c(Lokhttp3/bc;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lokhttp3/internal/connection/e;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lokhttp3/internal/connection/e;->f:I

    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lokhttp3/internal/connection/e;->h:I

    iget-object v1, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lokhttp3/internal/connection/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
