.class public final Lokhttp3/ay;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lokhttp3/as;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lokhttp3/aa;

.field public final e:Lokhttp3/ab;

.field public final f:Lokhttp3/ba;

.field public final g:J

.field public final h:J

.field private final i:Lokhttp3/ap;

.field private final j:Lokhttp3/ay;

.field private final k:Lokhttp3/ay;

.field private final l:Lokhttp3/ay;

.field private volatile m:Lokhttp3/e;


# direct methods
.method private constructor <init>(Lokhttp3/az;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1284
    iget-object v0, p1, Lokhttp3/az;->a:Lokhttp3/as;

    .line 59
    iput-object v0, p0, Lokhttp3/ay;->a:Lokhttp3/as;

    .line 2284
    iget-object v0, p1, Lokhttp3/az;->b:Lokhttp3/ap;

    .line 60
    iput-object v0, p0, Lokhttp3/ay;->i:Lokhttp3/ap;

    .line 3284
    iget v0, p1, Lokhttp3/az;->c:I

    .line 61
    iput v0, p0, Lokhttp3/ay;->b:I

    .line 4284
    iget-object v0, p1, Lokhttp3/az;->d:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lokhttp3/ay;->c:Ljava/lang/String;

    .line 5284
    iget-object v0, p1, Lokhttp3/az;->e:Lokhttp3/aa;

    .line 63
    iput-object v0, p0, Lokhttp3/ay;->d:Lokhttp3/aa;

    .line 6284
    iget-object v0, p1, Lokhttp3/az;->f:Lokhttp3/ac;

    .line 64
    invoke-virtual {v0}, Lokhttp3/ac;->a()Lokhttp3/ab;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ay;->e:Lokhttp3/ab;

    .line 7284
    iget-object v0, p1, Lokhttp3/az;->g:Lokhttp3/ba;

    .line 65
    iput-object v0, p0, Lokhttp3/ay;->f:Lokhttp3/ba;

    .line 8284
    iget-object v0, p1, Lokhttp3/az;->h:Lokhttp3/ay;

    .line 66
    iput-object v0, p0, Lokhttp3/ay;->j:Lokhttp3/ay;

    .line 9284
    iget-object v0, p1, Lokhttp3/az;->i:Lokhttp3/ay;

    .line 67
    iput-object v0, p0, Lokhttp3/ay;->k:Lokhttp3/ay;

    .line 10284
    iget-object v0, p1, Lokhttp3/az;->j:Lokhttp3/ay;

    .line 68
    iput-object v0, p0, Lokhttp3/ay;->l:Lokhttp3/ay;

    .line 11284
    iget-wide v0, p1, Lokhttp3/az;->k:J

    .line 69
    iput-wide v0, p0, Lokhttp3/ay;->g:J

    .line 12284
    iget-wide v0, p1, Lokhttp3/az;->l:J

    .line 70
    iput-wide v0, p0, Lokhttp3/ay;->h:J

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/az;B)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lokhttp3/ay;-><init>(Lokhttp3/az;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/ay;)Lokhttp3/as;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ay;->a:Lokhttp3/as;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/ay;)Lokhttp3/ap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ay;->i:Lokhttp3/ap;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/ay;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lokhttp3/ay;->b:I

    return v0
.end method

.method static synthetic d(Lokhttp3/ay;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ay;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/ay;)Lokhttp3/aa;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ay;->d:Lokhttp3/aa;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/ay;)Lokhttp3/ab;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ay;->e:Lokhttp3/ab;

    return-object v0
.end method

.method public static synthetic g(Lokhttp3/ay;)Lokhttp3/ba;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ay;->f:Lokhttp3/ba;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/ay;)Lokhttp3/ay;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ay;->j:Lokhttp3/ay;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/ay;)Lokhttp3/ay;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ay;->k:Lokhttp3/ay;

    return-object v0
.end method

.method static synthetic j(Lokhttp3/ay;)Lokhttp3/ay;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/ay;->l:Lokhttp3/ay;

    return-object v0
.end method

.method static synthetic k(Lokhttp3/ay;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/ay;->g:J

    return-wide v0
.end method

.method static synthetic l(Lokhttp3/ay;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/ay;->h:J

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    .line 13131
    iget-object v0, p0, Lokhttp3/ay;->e:Lokhttp3/ab;

    invoke-virtual {v0, p1}, Lokhttp3/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13132
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 127
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lokhttp3/ay;->b:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lokhttp3/ay;->b:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lokhttp3/az;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lokhttp3/az;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/az;-><init>(Lokhttp3/ay;B)V

    return-object v0
.end method

.method public final c()Lokhttp3/e;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lokhttp3/ay;->m:Lokhttp3/e;

    .line 246
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/ay;->e:Lokhttp3/ab;

    invoke-static {v0}, Lokhttp3/e;->a(Lokhttp3/ab;)Lokhttp3/e;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ay;->m:Lokhttp3/e;

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lokhttp3/ay;->f:Lokhttp3/ba;

    invoke-virtual {v0}, Lokhttp3/ba;->close()V

    .line 270
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/ay;->i:Lokhttp3/ap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/ay;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/ay;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/ay;->a:Lokhttp3/as;

    .line 14044
    iget-object v1, v1, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    return-object v0
.end method
