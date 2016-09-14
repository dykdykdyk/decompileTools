.class public final Lokhttp3/at;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field a:Lokhttp3/ad;

.field b:Ljava/lang/String;

.field c:Lokhttp3/ac;

.field d:Lokhttp3/au;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, "GET"

    iput-object v0, p0, Lokhttp3/at;->b:Ljava/lang/String;

    .line 107
    new-instance v0, Lokhttp3/ac;

    invoke-direct {v0}, Lokhttp3/ac;-><init>()V

    iput-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ac;

    .line 108
    return-void
.end method

.method private constructor <init>(Lokhttp3/as;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iget-object v0, p1, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 111
    iput-object v0, p0, Lokhttp3/at;->a:Lokhttp3/ad;

    .line 2026
    iget-object v0, p1, Lokhttp3/as;->b:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lokhttp3/at;->b:Ljava/lang/String;

    .line 3026
    iget-object v0, p1, Lokhttp3/as;->d:Lokhttp3/au;

    .line 113
    iput-object v0, p0, Lokhttp3/at;->d:Lokhttp3/au;

    .line 4026
    iget-object v0, p1, Lokhttp3/as;->e:Ljava/lang/Object;

    .line 114
    iput-object v0, p0, Lokhttp3/at;->e:Ljava/lang/Object;

    .line 5026
    iget-object v0, p1, Lokhttp3/as;->c:Lokhttp3/ab;

    .line 115
    invoke-virtual {v0}, Lokhttp3/ab;->a()Lokhttp3/ac;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ac;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/as;B)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lokhttp3/at;-><init>(Lokhttp3/as;)V

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/as;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lokhttp3/at;->a:Lokhttp3/ad;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    new-instance v0, Lokhttp3/as;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/as;-><init>(Lokhttp3/at;B)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lokhttp3/at;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_0
    :goto_0
    invoke-static {p1}, Lokhttp3/ad;->e(Ljava/lang/String;)Lokhttp3/ad;

    move-result-object v0

    .line 141
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0, v0}, Lokhttp3/at;->a(Lokhttp3/ad;)Lokhttp3/at;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ac;

    .line 5300
    invoke-static {p1, p2}, Lokhttp3/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5301
    invoke-virtual {v0, p1}, Lokhttp3/ac;->a(Ljava/lang/String;)Lokhttp3/ac;

    .line 5302
    invoke-virtual {v0, p1, p2}, Lokhttp3/ac;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ac;

    .line 164
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lokhttp3/au;)Lokhttp3/at;
    .locals 3

    .prologue
    .line 230
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lokhttp3/internal/b/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lokhttp3/internal/b/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_3
    iput-object p1, p0, Lokhttp3/at;->b:Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lokhttp3/at;->d:Lokhttp3/au;

    .line 240
    return-object p0
.end method

.method public final a(Lokhttp3/ab;)Lokhttp3/at;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p1}, Lokhttp3/ab;->a()Lokhttp3/ac;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ac;

    .line 187
    return-object p0
.end method

.method public final a(Lokhttp3/ad;)Lokhttp3/at;
    .locals 2

    .prologue
    .line 119
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lokhttp3/at;->a:Lokhttp3/ad;

    .line 121
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lokhttp3/at;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ac;

    invoke-virtual {v0, p1}, Lokhttp3/ac;->a(Ljava/lang/String;)Lokhttp3/ac;

    .line 181
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lokhttp3/at;->c:Lokhttp3/ac;

    invoke-virtual {v0, p1, p2}, Lokhttp3/ac;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ac;

    .line 176
    return-object p0
.end method
