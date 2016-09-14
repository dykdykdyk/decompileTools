.class public final Lokhttp3/internal/a/f;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# instance fields
.field final a:J

.field final b:Lokhttp3/as;

.field final c:Lokhttp3/ay;

.field d:Ljava/util/Date;

.field e:Ljava/lang/String;

.field f:Ljava/util/Date;

.field g:Ljava/lang/String;

.field h:Ljava/util/Date;

.field i:J

.field j:J

.field k:Ljava/lang/String;

.field l:I


# direct methods
.method public constructor <init>(JLokhttp3/as;Lokhttp3/ay;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v6, p0, Lokhttp3/internal/a/f;->l:I

    .line 140
    iput-wide p1, p0, Lokhttp3/internal/a/f;->a:J

    .line 141
    iput-object p3, p0, Lokhttp3/internal/a/f;->b:Lokhttp3/as;

    .line 142
    iput-object p4, p0, Lokhttp3/internal/a/f;->c:Lokhttp3/ay;

    .line 144
    if-eqz p4, :cond_5

    .line 1255
    iget-wide v0, p4, Lokhttp3/ay;->g:J

    .line 145
    iput-wide v0, p0, Lokhttp3/internal/a/f;->i:J

    .line 1264
    iget-wide v0, p4, Lokhttp3/ay;->h:J

    .line 146
    iput-wide v0, p0, Lokhttp3/internal/a/f;->j:J

    .line 2136
    iget-object v1, p4, Lokhttp3/ay;->e:Lokhttp3/ab;

    .line 148
    const/4 v0, 0x0

    .line 3076
    iget-object v2, v1, Lokhttp3/ab;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 148
    :goto_0
    if-ge v0, v2, :cond_5

    .line 149
    invoke-virtual {v1, v0}, Lokhttp3/ab;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {v1, v0}, Lokhttp3/ab;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    invoke-static {v4}, Lokhttp3/internal/b/l;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/a/f;->d:Ljava/util/Date;

    .line 153
    iput-object v4, p0, Lokhttp3/internal/a/f;->e:Ljava/lang/String;

    .line 148
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    invoke-static {v4}, Lokhttp3/internal/b/l;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/a/f;->h:Ljava/util/Date;

    goto :goto_1

    .line 156
    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 157
    invoke-static {v4}, Lokhttp3/internal/b/l;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/a/f;->f:Ljava/util/Date;

    .line 158
    iput-object v4, p0, Lokhttp3/internal/a/f;->g:Ljava/lang/String;

    goto :goto_1

    .line 159
    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 160
    iput-object v4, p0, Lokhttp3/internal/a/f;->k:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-static {v4, v6}, Lokhttp3/internal/b/n;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lokhttp3/internal/a/f;->l:I

    goto :goto_1

    .line 166
    :cond_5
    return-void
.end method
