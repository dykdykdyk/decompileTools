.class public final Lokhttp3/as;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field public final a:Lokhttp3/ad;

.field public final b:Ljava/lang/String;

.field public final c:Lokhttp3/ab;

.field public final d:Lokhttp3/au;

.field final e:Ljava/lang/Object;

.field private volatile f:Lokhttp3/e;


# direct methods
.method private constructor <init>(Lokhttp3/at;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    iget-object v0, p1, Lokhttp3/at;->a:Lokhttp3/ad;

    .line 36
    iput-object v0, p0, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 2098
    iget-object v0, p1, Lokhttp3/at;->b:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lokhttp3/as;->b:Ljava/lang/String;

    .line 3098
    iget-object v0, p1, Lokhttp3/at;->c:Lokhttp3/ac;

    .line 38
    invoke-virtual {v0}, Lokhttp3/ac;->a()Lokhttp3/ab;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/as;->c:Lokhttp3/ab;

    .line 4098
    iget-object v0, p1, Lokhttp3/at;->d:Lokhttp3/au;

    .line 39
    iput-object v0, p0, Lokhttp3/as;->d:Lokhttp3/au;

    .line 5098
    iget-object v0, p1, Lokhttp3/at;->e:Ljava/lang/Object;

    .line 40
    if-eqz v0, :cond_0

    .line 6098
    iget-object v0, p1, Lokhttp3/at;->e:Ljava/lang/Object;

    .line 40
    :goto_0
    iput-object v0, p0, Lokhttp3/as;->e:Ljava/lang/Object;

    .line 41
    return-void

    :cond_0
    move-object v0, p0

    .line 40
    goto :goto_0
.end method

.method synthetic constructor <init>(Lokhttp3/at;B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lokhttp3/as;-><init>(Lokhttp3/at;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lokhttp3/as;->c:Lokhttp3/ab;

    invoke-virtual {v0, p1}, Lokhttp3/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lokhttp3/at;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lokhttp3/at;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/at;-><init>(Lokhttp3/as;B)V

    return-object v0
.end method

.method public final b()Lokhttp3/e;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lokhttp3/as;->f:Lokhttp3/e;

    .line 81
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/as;->c:Lokhttp3/ab;

    invoke-static {v0}, Lokhttp3/e;->a(Lokhttp3/ab;)Lokhttp3/e;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/as;->f:Lokhttp3/e;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/as;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/as;->a:Lokhttp3/ad;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/as;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lokhttp3/as;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
