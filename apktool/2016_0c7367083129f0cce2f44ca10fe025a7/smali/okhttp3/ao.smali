.class public final Lokhttp3/ao;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# instance fields
.field a:Lokhttp3/v;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ap;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/q;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ag;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ag;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/net/ProxySelector;

.field h:Lokhttp3/t;

.field i:Lokhttp3/d;

.field j:Lokhttp3/internal/a/k;

.field k:Ljavax/net/SocketFactory;

.field public l:Ljavax/net/ssl/SSLSocketFactory;

.field public m:Lokhttp3/internal/e/b;

.field public n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lokhttp3/j;

.field p:Lokhttp3/b;

.field q:Lokhttp3/b;

.field r:Lokhttp3/o;

.field s:Lokhttp3/w;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/ao;->e:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/ao;->f:Ljava/util/List;

    .line 422
    new-instance v0, Lokhttp3/v;

    invoke-direct {v0}, Lokhttp3/v;-><init>()V

    iput-object v0, p0, Lokhttp3/ao;->a:Lokhttp3/v;

    .line 423
    invoke-static {}, Lokhttp3/am;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ao;->c:Ljava/util/List;

    .line 424
    invoke-static {}, Lokhttp3/am;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ao;->d:Ljava/util/List;

    .line 425
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ao;->g:Ljava/net/ProxySelector;

    .line 426
    sget-object v0, Lokhttp3/t;->a:Lokhttp3/t;

    iput-object v0, p0, Lokhttp3/ao;->h:Lokhttp3/t;

    .line 427
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ao;->k:Ljavax/net/SocketFactory;

    .line 428
    sget-object v0, Lokhttp3/internal/e/d;->a:Lokhttp3/internal/e/d;

    iput-object v0, p0, Lokhttp3/ao;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 429
    sget-object v0, Lokhttp3/j;->a:Lokhttp3/j;

    iput-object v0, p0, Lokhttp3/ao;->o:Lokhttp3/j;

    .line 430
    sget-object v0, Lokhttp3/b;->a:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/ao;->p:Lokhttp3/b;

    .line 431
    sget-object v0, Lokhttp3/b;->a:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/ao;->q:Lokhttp3/b;

    .line 432
    new-instance v0, Lokhttp3/o;

    invoke-direct {v0}, Lokhttp3/o;-><init>()V

    iput-object v0, p0, Lokhttp3/ao;->r:Lokhttp3/o;

    .line 433
    sget-object v0, Lokhttp3/w;->a:Lokhttp3/w;

    iput-object v0, p0, Lokhttp3/ao;->s:Lokhttp3/w;

    .line 434
    iput-boolean v1, p0, Lokhttp3/ao;->t:Z

    .line 435
    iput-boolean v1, p0, Lokhttp3/ao;->u:Z

    .line 436
    iput-boolean v1, p0, Lokhttp3/ao;->v:Z

    .line 437
    iput v2, p0, Lokhttp3/ao;->w:I

    .line 438
    iput v2, p0, Lokhttp3/ao;->x:I

    .line 439
    iput v2, p0, Lokhttp3/ao;->y:I

    .line 440
    return-void
.end method
