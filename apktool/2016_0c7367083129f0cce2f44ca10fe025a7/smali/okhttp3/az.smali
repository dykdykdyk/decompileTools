.class public final Lokhttp3/az;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field public a:Lokhttp3/as;

.field public b:Lokhttp3/ap;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lokhttp3/aa;

.field f:Lokhttp3/ac;

.field public g:Lokhttp3/ba;

.field h:Lokhttp3/ay;

.field i:Lokhttp3/ay;

.field public j:Lokhttp3/ay;

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/az;->c:I

    .line 299
    new-instance v0, Lokhttp3/ac;

    invoke-direct {v0}, Lokhttp3/ac;-><init>()V

    iput-object v0, p0, Lokhttp3/az;->f:Lokhttp3/ac;

    .line 300
    return-void
.end method

.method private constructor <init>(Lokhttp3/ay;)V
    .locals 2

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/az;->c:I

    .line 303
    invoke-static {p1}, Lokhttp3/ay;->a(Lokhttp3/ay;)Lokhttp3/as;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/az;->a:Lokhttp3/as;

    .line 304
    invoke-static {p1}, Lokhttp3/ay;->b(Lokhttp3/ay;)Lokhttp3/ap;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/az;->b:Lokhttp3/ap;

    .line 305
    invoke-static {p1}, Lokhttp3/ay;->c(Lokhttp3/ay;)I

    move-result v0

    iput v0, p0, Lokhttp3/az;->c:I

    .line 306
    invoke-static {p1}, Lokhttp3/ay;->d(Lokhttp3/ay;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/az;->d:Ljava/lang/String;

    .line 307
    invoke-static {p1}, Lokhttp3/ay;->e(Lokhttp3/ay;)Lokhttp3/aa;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/az;->e:Lokhttp3/aa;

    .line 308
    invoke-static {p1}, Lokhttp3/ay;->f(Lokhttp3/ay;)Lokhttp3/ab;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ab;->a()Lokhttp3/ac;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/az;->f:Lokhttp3/ac;

    .line 309
    invoke-static {p1}, Lokhttp3/ay;->g(Lokhttp3/ay;)Lokhttp3/ba;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/az;->g:Lokhttp3/ba;

    .line 310
    invoke-static {p1}, Lokhttp3/ay;->h(Lokhttp3/ay;)Lokhttp3/ay;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/az;->h:Lokhttp3/ay;

    .line 311
    invoke-static {p1}, Lokhttp3/ay;->i(Lokhttp3/ay;)Lokhttp3/ay;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/az;->i:Lokhttp3/ay;

    .line 312
    invoke-static {p1}, Lokhttp3/ay;->j(Lokhttp3/ay;)Lokhttp3/ay;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/az;->j:Lokhttp3/ay;

    .line 313
    invoke-static {p1}, Lokhttp3/ay;->k(Lokhttp3/ay;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/az;->k:J

    .line 314
    invoke-static {p1}, Lokhttp3/ay;->l(Lokhttp3/ay;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/az;->l:J

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/ay;B)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lokhttp3/az;-><init>(Lokhttp3/ay;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lokhttp3/ay;)V
    .locals 3

    .prologue
    .line 389
    invoke-static {p1}, Lokhttp3/ay;->g(Lokhttp3/ay;)Lokhttp3/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    invoke-static {p1}, Lokhttp3/ay;->h(Lokhttp3/ay;)Lokhttp3/ay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    invoke-static {p1}, Lokhttp3/ay;->i(Lokhttp3/ay;)Lokhttp3/ay;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_2
    invoke-static {p1}, Lokhttp3/ay;->j(Lokhttp3/ay;)Lokhttp3/ay;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/ay;
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lokhttp3/az;->a:Lokhttp3/as;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    iget-object v0, p0, Lokhttp3/az;->b:Lokhttp3/ap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    iget v0, p0, Lokhttp3/az;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/az;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_2
    new-instance v0, Lokhttp3/ay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/ay;-><init>(Lokhttp3/az;B)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/az;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lokhttp3/az;->f:Lokhttp3/ac;

    invoke-virtual {v0, p1, p2}, Lokhttp3/ac;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ac;

    .line 357
    return-object p0
.end method

.method public final a(Lokhttp3/ab;)Lokhttp3/az;
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p1}, Lokhttp3/ab;->a()Lokhttp3/ac;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/az;->f:Lokhttp3/ac;

    .line 368
    return-object p0
.end method

.method public final a(Lokhttp3/ay;)Lokhttp3/az;
    .locals 1

    .prologue
    .line 377
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-static {v0, p1}, Lokhttp3/az;->a(Ljava/lang/String;Lokhttp3/ay;)V

    .line 378
    :cond_0
    iput-object p1, p0, Lokhttp3/az;->h:Lokhttp3/ay;

    .line 379
    return-object p0
.end method

.method public final b(Lokhttp3/ay;)Lokhttp3/az;
    .locals 1

    .prologue
    .line 383
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-static {v0, p1}, Lokhttp3/az;->a(Ljava/lang/String;Lokhttp3/ay;)V

    .line 384
    :cond_0
    iput-object p1, p0, Lokhttp3/az;->i:Lokhttp3/ay;

    .line 385
    return-object p0
.end method
