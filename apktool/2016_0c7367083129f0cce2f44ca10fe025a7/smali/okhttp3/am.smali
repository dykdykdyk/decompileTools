.class public Lokhttp3/am;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/h;


# static fields
.field private static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/q;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lokhttp3/v;

.field public final b:Ljava/net/Proxy;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ap;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/q;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
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

.field public final g:Ljava/net/ProxySelector;

.field public final h:Lokhttp3/t;

.field final i:Lokhttp3/d;

.field final j:Lokhttp3/internal/a/k;

.field public final k:Ljavax/net/SocketFactory;

.field public final l:Ljavax/net/ssl/SSLSocketFactory;

.field final m:Lokhttp3/internal/e/b;

.field public final n:Ljavax/net/ssl/HostnameVerifier;

.field public final o:Lokhttp3/j;

.field public final p:Lokhttp3/b;

.field public final q:Lokhttp3/b;

.field public final r:Lokhttp3/o;

.field public final s:Lokhttp3/w;

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:I

.field public final x:I

.field public final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-array v0, v5, [Lokhttp3/ap;

    sget-object v1, Lokhttp3/ap;->d:Lokhttp3/ap;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/ap;->c:Lokhttp3/ap;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/ap;->b:Lokhttp3/ap;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/am;->z:Ljava/util/List;

    .line 121
    new-array v0, v5, [Lokhttp3/q;

    sget-object v1, Lokhttp3/q;->a:Lokhttp3/q;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/q;->b:Lokhttp3/q;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/q;->c:Lokhttp3/q;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/am;->A:Ljava/util/List;

    .line 125
    new-instance v0, Lokhttp3/an;

    invoke-direct {v0}, Lokhttp3/an;-><init>()V

    sput-object v0, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lokhttp3/ao;

    invoke-direct {v0}, Lokhttp3/ao;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/am;-><init>(Lokhttp3/ao;)V

    .line 204
    return-void
.end method

.method private constructor <init>(Lokhttp3/ao;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iget-object v0, p1, Lokhttp3/ao;->a:Lokhttp3/v;

    iput-object v0, p0, Lokhttp3/am;->a:Lokhttp3/v;

    .line 208
    iget-object v0, p1, Lokhttp3/ao;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/am;->b:Ljava/net/Proxy;

    .line 209
    iget-object v0, p1, Lokhttp3/ao;->c:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/am;->c:Ljava/util/List;

    .line 210
    iget-object v0, p1, Lokhttp3/ao;->d:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/am;->d:Ljava/util/List;

    .line 211
    iget-object v0, p1, Lokhttp3/ao;->e:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/am;->e:Ljava/util/List;

    .line 212
    iget-object v0, p1, Lokhttp3/ao;->f:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/am;->f:Ljava/util/List;

    .line 213
    iget-object v0, p1, Lokhttp3/ao;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/am;->g:Ljava/net/ProxySelector;

    .line 214
    iget-object v0, p1, Lokhttp3/ao;->h:Lokhttp3/t;

    iput-object v0, p0, Lokhttp3/am;->h:Lokhttp3/t;

    .line 215
    iget-object v0, p1, Lokhttp3/ao;->i:Lokhttp3/d;

    iput-object v0, p0, Lokhttp3/am;->i:Lokhttp3/d;

    .line 216
    iget-object v0, p1, Lokhttp3/ao;->j:Lokhttp3/internal/a/k;

    iput-object v0, p0, Lokhttp3/am;->j:Lokhttp3/internal/a/k;

    .line 217
    iget-object v0, p1, Lokhttp3/ao;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/am;->k:Ljavax/net/SocketFactory;

    .line 220
    iget-object v0, p0, Lokhttp3/am;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/q;

    .line 221
    if-nez v1, :cond_0

    .line 1093
    iget-boolean v0, v0, Lokhttp3/q;->d:Z

    .line 221
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 222
    goto :goto_0

    :cond_1
    move v0, v2

    .line 221
    goto :goto_1

    .line 224
    :cond_2
    iget-object v0, p1, Lokhttp3/ao;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    .line 225
    :cond_3
    iget-object v0, p1, Lokhttp3/ao;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/am;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 226
    iget-object v0, p1, Lokhttp3/ao;->m:Lokhttp3/internal/e/b;

    iput-object v0, p0, Lokhttp3/am;->m:Lokhttp3/internal/e/b;

    .line 233
    :goto_2
    iget-object v0, p1, Lokhttp3/ao;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/am;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 234
    iget-object v1, p1, Lokhttp3/ao;->o:Lokhttp3/j;

    iget-object v2, p0, Lokhttp3/am;->m:Lokhttp3/internal/e/b;

    .line 2213
    iget-object v0, v1, Lokhttp3/j;->c:Lokhttp3/internal/e/b;

    if-eq v0, v2, :cond_5

    new-instance v0, Lokhttp3/j;

    iget-object v1, v1, Lokhttp3/j;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lokhttp3/j;-><init>(Ljava/util/List;Lokhttp3/internal/e/b;)V

    .line 234
    :goto_3
    iput-object v0, p0, Lokhttp3/am;->o:Lokhttp3/j;

    .line 236
    iget-object v0, p1, Lokhttp3/ao;->p:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/am;->p:Lokhttp3/b;

    .line 237
    iget-object v0, p1, Lokhttp3/ao;->q:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/am;->q:Lokhttp3/b;

    .line 238
    iget-object v0, p1, Lokhttp3/ao;->r:Lokhttp3/o;

    iput-object v0, p0, Lokhttp3/am;->r:Lokhttp3/o;

    .line 239
    iget-object v0, p1, Lokhttp3/ao;->s:Lokhttp3/w;

    iput-object v0, p0, Lokhttp3/am;->s:Lokhttp3/w;

    .line 240
    iget-boolean v0, p1, Lokhttp3/ao;->t:Z

    iput-boolean v0, p0, Lokhttp3/am;->t:Z

    .line 241
    iget-boolean v0, p1, Lokhttp3/ao;->u:Z

    iput-boolean v0, p0, Lokhttp3/am;->u:Z

    .line 242
    iget-boolean v0, p1, Lokhttp3/ao;->v:Z

    iput-boolean v0, p0, Lokhttp3/am;->v:Z

    .line 243
    iget v0, p1, Lokhttp3/ao;->w:I

    iput v0, p0, Lokhttp3/am;->w:I

    .line 244
    iget v0, p1, Lokhttp3/ao;->x:I

    iput v0, p0, Lokhttp3/am;->x:I

    .line 245
    iget v0, p1, Lokhttp3/ao;->y:I

    iput v0, p0, Lokhttp3/am;->y:I

    .line 246
    return-void

    .line 228
    :cond_4
    invoke-static {}, Lokhttp3/am;->c()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lokhttp3/am;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/am;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 2041
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/d/g;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/e/b;

    move-result-object v0

    .line 230
    iput-object v0, p0, Lokhttp3/am;->m:Lokhttp3/internal/e/b;

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 2213
    goto :goto_3
.end method

.method public synthetic constructor <init>(Lokhttp3/ao;B)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lokhttp3/am;-><init>(Lokhttp3/ao;)V

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lokhttp3/am;->z:Ljava/util/List;

    return-object v0
.end method

.method private static a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 266
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 267
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 268
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 270
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lokhttp3/am;->A:Ljava/util/List;

    return-object v0
.end method

.method private static c()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 252
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 253
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 254
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_1

    .line 255
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected default trust managers:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 258
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method


# virtual methods
.method public final a(Lokhttp3/as;)Lokhttp3/g;
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lokhttp3/aq;

    invoke-direct {v0, p0, p1}, Lokhttp3/aq;-><init>(Lokhttp3/am;Lokhttp3/as;)V

    return-object v0
.end method
