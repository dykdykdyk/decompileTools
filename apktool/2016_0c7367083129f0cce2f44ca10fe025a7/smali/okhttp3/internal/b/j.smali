.class public final Lokhttp3/internal/b/j;
.super Ljava/lang/Object;
.source "Http2xStream.java"

# interfaces
.implements Lokhttp3/internal/b/p;


# static fields
.field private static final a:Lokio/ByteString;

.field private static final b:Lokio/ByteString;

.field private static final c:Lokio/ByteString;

.field private static final d:Lokio/ByteString;

.field private static final e:Lokio/ByteString;

.field private static final f:Lokio/ByteString;

.field private static final g:Lokio/ByteString;

.field private static final h:Lokio/ByteString;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m:Lokhttp3/am;

.field private final n:Lokhttp3/internal/connection/f;

.field private final o:Lokhttp3/internal/framed/e;

.field private p:Lokhttp3/internal/framed/t;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string v0, "connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->a:Lokio/ByteString;

    .line 56
    const-string v0, "host"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->b:Lokio/ByteString;

    .line 57
    const-string v0, "keep-alive"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->c:Lokio/ByteString;

    .line 58
    const-string v0, "proxy-connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->d:Lokio/ByteString;

    .line 59
    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->e:Lokio/ByteString;

    .line 60
    const-string v0, "te"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->f:Lokio/ByteString;

    .line 61
    const-string v0, "encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->g:Lokio/ByteString;

    .line 62
    const-string v0, "upgrade"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->h:Lokio/ByteString;

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/b/j;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/b/j;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/b/j;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/b/j;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/b/j;->e:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/framed/x;->b:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/framed/x;->c:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/framed/x;->d:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/framed/x;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/framed/x;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/framed/x;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->i:Ljava/util/List;

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/b/j;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/b/j;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/b/j;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/b/j;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/b/j;->e:Lokio/ByteString;

    aput-object v1, v0, v7

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->j:Ljava/util/List;

    .line 85
    const/16 v0, 0xe

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/b/j;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/b/j;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/b/j;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/b/j;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/b/j;->f:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/b/j;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/b/j;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/b/j;->h:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/framed/x;->b:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/framed/x;->c:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/framed/x;->d:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/internal/framed/x;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lokhttp3/internal/framed/x;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lokhttp3/internal/framed/x;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->k:Ljava/util/List;

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/b/j;->a:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/b/j;->b:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/b/j;->c:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/b/j;->d:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/b/j;->f:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/b/j;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/b/j;->g:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/b/j;->h:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/b/j;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/am;Lokhttp3/internal/connection/f;Lokhttp3/internal/framed/e;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lokhttp3/internal/b/j;->m:Lokhttp3/am;

    .line 118
    iput-object p2, p0, Lokhttp3/internal/b/j;->n:Lokhttp3/internal/connection/f;

    .line 119
    iput-object p3, p0, Lokhttp3/internal/b/j;->o:Lokhttp3/internal/framed/e;

    .line 120
    return-void
.end method

.method private static a(Ljava/util/List;)Lokhttp3/az;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;)",
            "Lokhttp3/az;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 214
    const/4 v2, 0x0

    .line 215
    const-string v1, "HTTP/1.1"

    .line 216
    new-instance v6, Lokhttp3/ac;

    invoke-direct {v6}, Lokhttp3/ac;-><init>()V

    .line 217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_5

    .line 218
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/x;

    iget-object v8, v0, Lokhttp3/internal/framed/x;->h:Lokio/ByteString;

    .line 220
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/x;

    iget-object v0, v0, Lokhttp3/internal/framed/x;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    move-object v0, v1

    move v1, v3

    .line 221
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 222
    invoke-virtual {v9, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 223
    const/4 v10, -0x1

    if-ne v4, v10, :cond_0

    .line 224
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 226
    :cond_0
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 227
    sget-object v10, Lokhttp3/internal/framed/x;->a:Lokio/ByteString;

    invoke-virtual {v8, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 234
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 235
    goto :goto_1

    .line 229
    :cond_1
    sget-object v10, Lokhttp3/internal/framed/x;->g:Lokio/ByteString;

    invoke-virtual {v8, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, v1

    move-object v1, v2

    .line 230
    goto :goto_2

    .line 231
    :cond_2
    sget-object v10, Lokhttp3/internal/b/j;->j:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 232
    sget-object v10, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    invoke-virtual {v8}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11, v1}, Lokhttp3/internal/a;->a(Lokhttp3/ac;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v1, v2

    goto :goto_2

    .line 217
    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    .line 237
    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/b/u;->a(Ljava/lang/String;)Lokhttp3/internal/b/u;

    move-result-object v0

    .line 240
    new-instance v1, Lokhttp3/az;

    invoke-direct {v1}, Lokhttp3/az;-><init>()V

    sget-object v2, Lokhttp3/ap;->c:Lokhttp3/ap;

    .line 16323
    iput-object v2, v1, Lokhttp3/az;->b:Lokhttp3/ap;

    .line 241
    iget v2, v0, Lokhttp3/internal/b/u;->b:I

    .line 16328
    iput v2, v1, Lokhttp3/az;->c:I

    .line 242
    iget-object v0, v0, Lokhttp3/internal/b/u;->c:Ljava/lang/String;

    .line 16333
    iput-object v0, v1, Lokhttp3/az;->d:Ljava/lang/String;

    .line 244
    invoke-virtual {v6}, Lokhttp3/ac;->a()Lokhttp3/ab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/az;->a(Lokhttp3/ab;)Lokhttp3/az;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method static synthetic a(Lokhttp3/internal/b/j;)Lokhttp3/internal/connection/f;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lokhttp3/internal/b/j;->n:Lokhttp3/internal/connection/f;

    return-object v0
.end method

.method private static b(Lokhttp3/as;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/as;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 155
    .line 11052
    iget-object v4, p0, Lokhttp3/as;->c:Lokhttp3/ab;

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    .line 11076
    iget-object v0, v4, Lokhttp3/ab;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 156
    add-int/lit8 v0, v0, 0x5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    new-instance v0, Lokhttp3/internal/framed/x;

    sget-object v1, Lokhttp3/internal/framed/x;->b:Lokio/ByteString;

    .line 12048
    iget-object v3, p0, Lokhttp3/as;->b:Ljava/lang/String;

    .line 157
    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lokhttp3/internal/framed/x;

    sget-object v1, Lokhttp3/internal/framed/x;->c:Lokio/ByteString;

    .line 13044
    iget-object v3, p0, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 158
    invoke-static {v3}, Lokhttp3/internal/b/s;->a(Lokhttp3/ad;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lokhttp3/internal/framed/x;

    sget-object v1, Lokhttp3/internal/framed/x;->g:Lokio/ByteString;

    const-string v3, "HTTP/1.1"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Lokhttp3/internal/framed/x;

    sget-object v1, Lokhttp3/internal/framed/x;->f:Lokio/ByteString;

    .line 14044
    iget-object v3, p0, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 160
    invoke-static {v3, v2}, Lokhttp3/internal/c;->a(Lokhttp3/ad;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lokhttp3/internal/framed/x;

    sget-object v1, Lokhttp3/internal/framed/x;->d:Lokio/ByteString;

    .line 15044
    iget-object v3, p0, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 15388
    iget-object v3, v3, Lokhttp3/ad;->a:Ljava/lang/String;

    .line 161
    invoke-direct {v0, v1, v3}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16076
    iget-object v0, v4, Lokhttp3/ab;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v7, v0, 0x2

    move v3, v2

    .line 164
    :goto_0
    if-ge v3, v7, :cond_3

    .line 166
    invoke-virtual {v4, v3}, Lokhttp3/ab;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v8

    .line 169
    sget-object v0, Lokhttp3/internal/b/j;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {v4, v3}, Lokhttp3/ab;->b(I)Ljava/lang/String;

    move-result-object v9

    .line 173
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Lokhttp3/internal/framed/x;

    invoke-direct {v0, v8, v9}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 179
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 180
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/x;

    iget-object v0, v0, Lokhttp3/internal/framed/x;->h:Lokio/ByteString;

    invoke-virtual {v0, v8}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/x;

    iget-object v0, v0, Lokhttp3/internal/framed/x;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    .line 16191
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v9, Lokhttp3/internal/framed/x;

    invoke-direct {v9, v8, v0}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v5, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 187
    :cond_3
    return-object v5
.end method


# virtual methods
.method public final a(Lokhttp3/ay;)Lokhttp3/ba;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lokhttp3/internal/b/k;

    iget-object v1, p0, Lokhttp3/internal/b/j;->p:Lokhttp3/internal/framed/t;

    .line 17195
    iget-object v1, v1, Lokhttp3/internal/framed/t;->f:Lokhttp3/internal/framed/v;

    .line 273
    invoke-direct {v0, p0, v1}, Lokhttp3/internal/b/k;-><init>(Lokhttp3/internal/b/j;Lokio/Source;)V

    .line 274
    new-instance v1, Lokhttp3/internal/b/r;

    .line 18136
    iget-object v2, p1, Lokhttp3/ay;->e:Lokhttp3/ab;

    .line 274
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lokhttp3/internal/b/r;-><init>(Lokhttp3/ab;Lokio/BufferedSource;)V

    return-object v1
.end method

.method public final a(Lokhttp3/as;J)Lokio/Sink;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lokhttp3/internal/b/j;->p:Lokhttp3/internal/framed/t;

    invoke-virtual {v0}, Lokhttp3/internal/framed/t;->d()Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lokhttp3/internal/b/j;->p:Lokhttp3/internal/framed/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/b/j;->p:Lokhttp3/internal/framed/t;

    sget-object v1, Lokhttp3/internal/framed/a;->l:Lokhttp3/internal/framed/a;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/t;->b(Lokhttp3/internal/framed/a;)V

    .line 279
    :cond_0
    return-void
.end method

.method public final a(Lokhttp3/as;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lokhttp3/internal/b/j;->p:Lokhttp3/internal/framed/t;

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 1048
    :cond_0
    iget-object v0, p1, Lokhttp3/as;->b:Ljava/lang/String;

    .line 129
    invoke-static {v0}, Lokhttp3/internal/b/o;->b(Ljava/lang/String;)Z

    move-result v2

    .line 130
    iget-object v0, p0, Lokhttp3/internal/b/j;->o:Lokhttp3/internal/framed/e;

    .line 1176
    iget-object v0, v0, Lokhttp3/internal/framed/e;->a:Lokhttp3/ap;

    .line 130
    sget-object v3, Lokhttp3/ap;->d:Lokhttp3/ap;

    if-ne v0, v3, :cond_2

    .line 2052
    iget-object v3, p1, Lokhttp3/as;->c:Lokhttp3/ab;

    .line 1196
    new-instance v0, Ljava/util/ArrayList;

    .line 2076
    iget-object v4, v3, Lokhttp3/ab;->a:[Ljava/lang/String;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    .line 1196
    add-int/lit8 v4, v4, 0x4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1197
    new-instance v4, Lokhttp3/internal/framed/x;

    sget-object v5, Lokhttp3/internal/framed/x;->b:Lokio/ByteString;

    .line 3048
    iget-object v6, p1, Lokhttp3/as;->b:Ljava/lang/String;

    .line 1197
    invoke-direct {v4, v5, v6}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    new-instance v4, Lokhttp3/internal/framed/x;

    sget-object v5, Lokhttp3/internal/framed/x;->c:Lokio/ByteString;

    .line 4044
    iget-object v6, p1, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 1198
    invoke-static {v6}, Lokhttp3/internal/b/s;->a(Lokhttp3/ad;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    new-instance v4, Lokhttp3/internal/framed/x;

    sget-object v5, Lokhttp3/internal/framed/x;->e:Lokio/ByteString;

    .line 5044
    iget-object v6, p1, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 1199
    invoke-static {v6, v1}, Lokhttp3/internal/c;->a(Lokhttp3/ad;Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    new-instance v4, Lokhttp3/internal/framed/x;

    sget-object v5, Lokhttp3/internal/framed/x;->d:Lokio/ByteString;

    .line 6044
    iget-object v6, p1, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 6388
    iget-object v6, v6, Lokhttp3/ad;->a:Ljava/lang/String;

    .line 1200
    invoke-direct {v4, v5, v6}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7076
    iget-object v4, v3, Lokhttp3/ab;->a:[Ljava/lang/String;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    .line 1202
    :goto_1
    if-ge v1, v4, :cond_3

    .line 1204
    invoke-virtual {v3, v1}, Lokhttp3/ab;->a(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    .line 1205
    sget-object v6, Lokhttp3/internal/b/j;->k:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1206
    new-instance v6, Lokhttp3/internal/framed/x;

    invoke-virtual {v3, v1}, Lokhttp3/ab;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lokhttp3/internal/framed/x;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    :cond_2
    invoke-static {p1}, Lokhttp3/internal/b/j;->b(Lokhttp3/as;)Ljava/util/List;

    move-result-object v0

    .line 134
    :cond_3
    iget-object v1, p0, Lokhttp3/internal/b/j;->o:Lokhttp3/internal/framed/e;

    .line 7224
    invoke-virtual {v1, v0, v2}, Lokhttp3/internal/framed/e;->a(Ljava/util/List;Z)Lokhttp3/internal/framed/t;

    move-result-object v0

    .line 134
    iput-object v0, p0, Lokhttp3/internal/b/j;->p:Lokhttp3/internal/framed/t;

    .line 135
    iget-object v0, p0, Lokhttp3/internal/b/j;->p:Lokhttp3/internal/framed/t;

    .line 8186
    iget-object v0, v0, Lokhttp3/internal/framed/t;->h:Lokhttp3/internal/framed/w;

    .line 135
    iget-object v1, p0, Lokhttp3/internal/b/j;->m:Lokhttp3/am;

    .line 8281
    iget v1, v1, Lokhttp3/am;->x:I

    .line 135
    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 136
    iget-object v0, p0, Lokhttp3/internal/b/j;->p:Lokhttp3/internal/framed/t;

    .line 9190
    iget-object v0, v0, Lokhttp3/internal/framed/t;->i:Lokhttp3/internal/framed/w;

    .line 136
    iget-object v1, p0, Lokhttp3/internal/b/j;->m:Lokhttp3/am;

    .line 9286
    iget v1, v1, Lokhttp3/am;->y:I

    .line 136
    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    goto/16 :goto_0
.end method

.method public final b()Lokhttp3/az;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lokhttp3/internal/b/j;->o:Lokhttp3/internal/framed/e;

    .line 10176
    iget-object v0, v0, Lokhttp3/internal/framed/e;->a:Lokhttp3/ap;

    .line 144
    sget-object v1, Lokhttp3/ap;->d:Lokhttp3/ap;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lokhttp3/internal/b/j;->p:Lokhttp3/internal/framed/t;

    .line 145
    invoke-virtual {v0}, Lokhttp3/internal/framed/t;->c()Ljava/util/List;

    move-result-object v3

    .line 10249
    const/4 v1, 0x0

    .line 10251
    new-instance v4, Lokhttp3/ac;

    invoke-direct {v4}, Lokhttp3/ac;-><init>()V

    .line 10252
    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    .line 10253
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/x;

    iget-object v6, v0, Lokhttp3/internal/framed/x;->h:Lokio/ByteString;

    .line 10255
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/x;

    iget-object v0, v0, Lokhttp3/internal/framed/x;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    .line 10256
    sget-object v7, Lokhttp3/internal/framed/x;->a:Lokio/ByteString;

    invoke-virtual {v6, v7}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 10252
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 10258
    :cond_0
    sget-object v7, Lokhttp3/internal/b/j;->l:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 10259
    sget-object v7, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    invoke-virtual {v6}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6, v0}, Lokhttp3/internal/a;->a(Lokhttp3/ac;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 10262
    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10264
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HTTP/1.1 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/b/u;->a(Ljava/lang/String;)Lokhttp3/internal/b/u;

    move-result-object v0

    .line 10265
    new-instance v1, Lokhttp3/az;

    invoke-direct {v1}, Lokhttp3/az;-><init>()V

    sget-object v2, Lokhttp3/ap;->d:Lokhttp3/ap;

    .line 10323
    iput-object v2, v1, Lokhttp3/az;->b:Lokhttp3/ap;

    .line 10266
    iget v2, v0, Lokhttp3/internal/b/u;->b:I

    .line 10328
    iput v2, v1, Lokhttp3/az;->c:I

    .line 10267
    iget-object v0, v0, Lokhttp3/internal/b/u;->c:Ljava/lang/String;

    .line 10333
    iput-object v0, v1, Lokhttp3/az;->d:Ljava/lang/String;

    .line 10269
    invoke-virtual {v4}, Lokhttp3/ac;->a()Lokhttp3/ab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/az;->a(Lokhttp3/ab;)Lokhttp3/az;

    move-result-object v0

    .line 145
    :goto_2
    return-object v0

    :cond_4
    iget-object v0, p0, Lokhttp3/internal/b/j;->p:Lokhttp3/internal/framed/t;

    .line 146
    invoke-virtual {v0}, Lokhttp3/internal/framed/t;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/b/j;->a(Ljava/util/List;)Lokhttp3/az;

    move-result-object v0

    goto :goto_2
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lokhttp3/internal/b/j;->p:Lokhttp3/internal/framed/t;

    invoke-virtual {v0}, Lokhttp3/internal/framed/t;->d()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 141
    return-void
.end method
