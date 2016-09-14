.class public final Lokhttp3/j;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# static fields
.field public static final a:Lokhttp3/j;


# instance fields
.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lokhttp3/internal/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lokhttp3/k;

    invoke-direct {v0}, Lokhttp3/k;-><init>()V

    .line 2322
    new-instance v1, Lokhttp3/j;

    iget-object v0, v0, Lokhttp3/k;->a:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lokhttp3/j;-><init>(Ljava/util/List;)V

    .line 125
    sput-object v1, Lokhttp3/j;->a:Lokhttp3/j;

    return-void
.end method

.method private synthetic constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/j;-><init>(Ljava/util/List;Lokhttp3/internal/e/b;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lokhttp3/internal/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;",
            "Lokhttp3/internal/e/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lokhttp3/j;->b:Ljava/util/List;

    .line 132
    iput-object p2, p0, Lokhttp3/j;->c:Lokhttp3/internal/e/b;

    .line 133
    return-void
.end method

.method public static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sha256/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lokhttp3/j;->a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/c;->b(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 145
    .line 1201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 1202
    iget-object v0, p0, Lokhttp3/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lokhttp3/l;

    .line 1271
    iget-object v0, v6, Lokhttp3/l;->a:Ljava/lang/String;

    const-string v2, "*."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1273
    add-int/lit8 v2, v0, 0x1

    iget-object v3, v6, Lokhttp3/l;->b:Ljava/lang/String;

    iget-object v0, v6, Lokhttp3/l;->b:Ljava/lang/String;

    .line 1274
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v4, v1

    .line 1273
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 1203
    :goto_1
    if-eqz v0, :cond_f

    .line 1204
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    :goto_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v7, v0

    .line 1207
    goto :goto_0

    .line 1277
    :cond_0
    iget-object v0, v6, Lokhttp3/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 146
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    :cond_2
    :goto_4
    return-void

    .line 148
    :cond_3
    iget-object v0, p0, Lokhttp3/j;->c:Lokhttp3/internal/e/b;

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lokhttp3/j;->c:Lokhttp3/internal/e/b;

    invoke-virtual {v0, p2, p1}, Lokhttp3/internal/e/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 152
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    move v6, v1

    :goto_5
    if-ge v6, v9, :cond_b

    .line 153
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 159
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    move v5, v1

    move-object v3, v8

    move-object v4, v8

    :goto_6
    if-ge v5, v10, :cond_a

    .line 160
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/l;

    .line 161
    iget-object v11, v2, Lokhttp3/l;->c:Ljava/lang/String;

    const-string v12, "sha256/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 162
    if-nez v3, :cond_5

    invoke-static {v0}, Lokhttp3/j;->a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v3

    .line 163
    :cond_5
    iget-object v2, v2, Lokhttp3/l;->d:Lokio/ByteString;

    invoke-virtual {v2, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_6
    move-object v2, v3

    move-object v3, v4

    .line 159
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_6

    .line 164
    :cond_7
    iget-object v11, v2, Lokhttp3/l;->c:Ljava/lang/String;

    const-string v12, "sha1/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 165
    if-nez v4, :cond_8

    .line 2232
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/c;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v4

    .line 166
    :cond_8
    iget-object v2, v2, Lokhttp3/l;->d:Lokio/ByteString;

    invoke-virtual {v2, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 168
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_a
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_5

    .line 174
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Certificate pinning failure!\n  Peer certificate chain:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_7
    if-ge v2, v4, :cond_c

    .line 178
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 179
    const-string v5, "\n    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lokhttp3/j;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 182
    :cond_c
    const-string v0, "\n  Pinned certificates for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    :goto_8
    if-ge v1, v2, :cond_d

    .line 184
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/l;

    .line 185
    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 187
    :cond_d
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v0, v7

    goto/16 :goto_2

    :cond_f
    move-object v0, v7

    goto/16 :goto_3
.end method
