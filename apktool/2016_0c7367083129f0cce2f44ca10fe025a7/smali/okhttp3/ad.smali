.class public final Lokhttp3/ad;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# static fields
.field private static final f:[C


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 285
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/ad;->f:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(Lokhttp3/ae;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iget-object v0, p1, Lokhttp3/ae;->a:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ad;->a:Ljava/lang/String;

    .line 335
    iget-object v0, p1, Lokhttp3/ae;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lokhttp3/ad;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ad;->g:Ljava/lang/String;

    .line 336
    iget-object v0, p1, Lokhttp3/ae;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lokhttp3/ad;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ad;->h:Ljava/lang/String;

    .line 337
    iget-object v0, p1, Lokhttp3/ae;->d:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Lokhttp3/ae;->a()I

    move-result v0

    iput v0, p0, Lokhttp3/ad;->c:I

    .line 339
    iget-object v0, p1, Lokhttp3/ae;->f:Ljava/util/List;

    invoke-static {v0, v3}, Lokhttp3/ad;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ad;->d:Ljava/util/List;

    .line 340
    iget-object v0, p1, Lokhttp3/ae;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lokhttp3/ae;->g:Ljava/util/List;

    const/4 v2, 0x1

    .line 341
    invoke-static {v0, v2}, Lokhttp3/ad;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/ad;->e:Ljava/util/List;

    .line 343
    iget-object v0, p1, Lokhttp3/ae;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lokhttp3/ae;->h:Ljava/lang/String;

    .line 344
    invoke-static {v0, v3}, Lokhttp3/ad;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lokhttp3/ad;->i:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Lokhttp3/ae;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    .line 347
    return-void

    :cond_1
    move-object v0, v1

    .line 341
    goto :goto_0
.end method

.method synthetic constructor <init>(Lokhttp3/ae;B)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lokhttp3/ad;-><init>(Lokhttp3/ae;)V

    return-void
.end method

.method static a(C)I
    .locals 1

    .prologue
    .line 1769
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 1772
    :goto_0
    return v0

    .line 1770
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1771
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1772
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 505
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    const/16 v0, 0x50

    .line 510
    :goto_0
    return v0

    .line 507
    :cond_0
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    const/16 v0, 0x1bb

    goto :goto_0

    .line 510
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1794
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_d

    .line 1795
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1796
    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    if-nez p7, :cond_2

    .line 1799
    :cond_0
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x25

    if-ne v1, v2, :cond_1

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 1800
    invoke-static {p0, v0, p2}, Lokhttp3/ad;->a(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_c

    if-eqz p6, :cond_c

    .line 1803
    :cond_2
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 1804
    invoke-virtual {v3, p0, p1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 3817
    const/4 v1, 0x0

    move v2, v0

    move-object v0, v1

    .line 3819
    :goto_1
    if-ge v2, p2, :cond_b

    .line 3820
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 3821
    if-eqz p4, :cond_3

    const/16 v1, 0x9

    if-eq v4, v1, :cond_4

    const/16 v1, 0xa

    if-eq v4, v1, :cond_4

    const/16 v1, 0xc

    if-eq v4, v1, :cond_4

    const/16 v1, 0xd

    if-eq v4, v1, :cond_4

    .line 3824
    :cond_3
    const/16 v1, 0x2b

    if-ne v4, v1, :cond_6

    if-eqz p6, :cond_6

    .line 3826
    if-eqz p4, :cond_5

    const-string v1, "+"

    :goto_2
    invoke-virtual {v3, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 3819
    :cond_4
    :goto_3
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_1

    .line 3826
    :cond_5
    const-string v1, "%2B"

    goto :goto_2

    .line 3827
    :cond_6
    const/16 v1, 0x20

    if-lt v4, v1, :cond_8

    const/16 v1, 0x7f

    if-eq v4, v1, :cond_8

    const/16 v1, 0x80

    if-lt v4, v1, :cond_7

    if-nez p7, :cond_8

    .line 3830
    :cond_7
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_8

    const/16 v1, 0x25

    if-ne v4, v1, :cond_a

    if-eqz p4, :cond_8

    if-eqz p5, :cond_a

    .line 3831
    invoke-static {p0, v2, p2}, Lokhttp3/ad;->a(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_a

    .line 3833
    :cond_8
    if-nez v0, :cond_9

    .line 3834
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 3836
    :cond_9
    invoke-virtual {v0, v4}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 3837
    :goto_4
    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3838
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 3839
    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 3840
    sget-object v5, Lokhttp3/ad;->f:[C

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 3841
    sget-object v5, Lokhttp3/ad;->f:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v5, v1

    invoke-virtual {v3, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_4

    .line 3845
    :cond_a
    invoke-virtual {v3, v4}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_3

    .line 1807
    :cond_b
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1812
    :goto_5
    return-object v0

    .line 1794
    :cond_c
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_0

    .line 1812
    :cond_d
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method static a(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x2b

    const/16 v6, 0x25

    const/4 v5, -0x1

    .line 1726
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_5

    .line 1727
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1728
    if-eq v1, v6, :cond_0

    if-ne v1, v7, :cond_4

    if-eqz p3, :cond_4

    .line 1730
    :cond_0
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1731
    invoke-virtual {v1, p0, p1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 3743
    :goto_1
    if-ge v0, p2, :cond_3

    .line 3744
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 3745
    if-ne v2, v6, :cond_1

    add-int/lit8 v3, v0, 0x2

    if-ge v3, p2, :cond_1

    .line 3746
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokhttp3/ad;->a(C)I

    move-result v3

    .line 3747
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lokhttp3/ad;->a(C)I

    move-result v4

    .line 3748
    if-eq v3, v5, :cond_2

    if-eq v4, v5, :cond_2

    .line 3749
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 3750
    add-int/lit8 v0, v0, 0x2

    .line 3743
    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 3753
    :cond_1
    if-ne v2, v7, :cond_2

    if-eqz p3, :cond_2

    .line 3754
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2

    .line 3757
    :cond_2
    invoke-virtual {v1, v2}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_2

    .line 1733
    :cond_3
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1738
    :goto_3
    return-object v0

    .line 1726
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1738
    :cond_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1852
    const/4 v1, 0x0

    .line 1853
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1852
    invoke-static/range {v0 .. v7}, Lokhttp3/ad;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1714
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lokhttp3/ad;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lokhttp3/ad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1718
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1719
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1720
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lokhttp3/ad;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1722
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 548
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 551
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;II)Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1762
    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_0

    .line 1763
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 1764
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lokhttp3/ad;->a(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    .line 1765
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lokhttp3/ad;->a(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1762
    goto :goto_0
.end method

.method static synthetic b(Lokhttp3/ad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lokhttp3/ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 634
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 635
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 636
    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 637
    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 639
    :cond_0
    const/16 v3, 0x3d

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 640
    if-eq v3, v4, :cond_1

    if-le v3, v1, :cond_2

    .line 641
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .line 648
    goto :goto_0

    .line 644
    :cond_2
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 649
    :cond_3
    return-object v2
.end method

.method public static b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 616
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 617
    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 618
    if-lez v2, :cond_0

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    if-eqz v1, :cond_1

    .line 621
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_1
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 625
    :cond_2
    return-void
.end method

.method static synthetic c(Lokhttp3/ad;)I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lokhttp3/ad;->c:I

    return v0
.end method

.method public static e(Ljava/lang/String;)Lokhttp3/ad;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 883
    new-instance v1, Lokhttp3/ae;

    invoke-direct {v1}, Lokhttp3/ae;-><init>()V

    .line 884
    invoke-virtual {v1, v0, p0}, Lokhttp3/ae;->a(Lokhttp3/ad;Ljava/lang/String;)I

    move-result v2

    .line 885
    sget v3, Lokhttp3/af;->a:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lokhttp3/ae;->b()Lokhttp3/ad;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/net/URI;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 372
    .line 1854
    new-instance v11, Lokhttp3/ae;

    invoke-direct {v11}, Lokhttp3/ae;-><init>()V

    .line 1855
    iget-object v0, p0, Lokhttp3/ad;->a:Ljava/lang/String;

    iput-object v0, v11, Lokhttp3/ae;->a:Ljava/lang/String;

    .line 1856
    invoke-virtual {p0}, Lokhttp3/ad;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lokhttp3/ae;->b:Ljava/lang/String;

    .line 1857
    invoke-virtual {p0}, Lokhttp3/ad;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lokhttp3/ae;->c:Ljava/lang/String;

    .line 1858
    iget-object v0, p0, Lokhttp3/ad;->b:Ljava/lang/String;

    iput-object v0, v11, Lokhttp3/ae;->d:Ljava/lang/String;

    .line 1860
    iget v0, p0, Lokhttp3/ad;->c:I

    iget-object v1, p0, Lokhttp3/ad;->a:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/ad;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lokhttp3/ad;->c:I

    :goto_0
    iput v0, v11, Lokhttp3/ae;->e:I

    .line 1861
    iget-object v0, v11, Lokhttp3/ae;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1862
    iget-object v0, v11, Lokhttp3/ae;->f:Ljava/util/List;

    invoke-virtual {p0}, Lokhttp3/ad;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1863
    invoke-virtual {p0}, Lokhttp3/ad;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lokhttp3/ae;->a(Ljava/lang/String;)Lokhttp3/ae;

    .line 2823
    iget-object v0, p0, Lokhttp3/ad;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1864
    :goto_1
    iput-object v0, v11, Lokhttp3/ae;->h:Ljava/lang/String;

    .line 3198
    iget-object v0, v11, Lokhttp3/ae;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_2
    if-ge v6, v7, :cond_2

    .line 3199
    iget-object v0, v11, Lokhttp3/ae;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3200
    iget-object v8, v11, Lokhttp3/ae;->f:Ljava/util/List;

    const-string v1, "[]"

    move v3, v2

    move v5, v2

    .line 3201
    invoke-static/range {v0 .. v5}, Lokhttp3/ad;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 3200
    invoke-interface {v8, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3198
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 1860
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 2824
    :cond_1
    iget-object v0, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2825
    iget-object v1, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3203
    :cond_2
    iget-object v0, v11, Lokhttp3/ae;->g:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 3204
    iget-object v0, v11, Lokhttp3/ae;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v4

    :goto_3
    if-ge v0, v1, :cond_4

    .line 3205
    iget-object v3, v11, Lokhttp3/ae;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3206
    if-eqz v5, :cond_3

    .line 3207
    iget-object v3, v11, Lokhttp3/ae;->g:Ljava/util/List;

    const-string v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 3208
    invoke-static/range {v5 .. v10}, Lokhttp3/ad;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    .line 3207
    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3204
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3212
    :cond_4
    iget-object v0, v11, Lokhttp3/ae;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 3213
    iget-object v0, v11, Lokhttp3/ae;->h:Ljava/lang/String;

    const-string v1, " \"#<>\\^`{|}"

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/ad;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lokhttp3/ae;->h:Ljava/lang/String;

    .line 372
    :cond_5
    invoke-virtual {v11}, Lokhttp3/ae;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_4
    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 378
    :try_start_1
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_4

    .line 381
    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lokhttp3/ad;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 407
    iget-object v0, p0, Lokhttp3/ad;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 410
    :goto_0
    return-object v0

    .line 408
    :cond_0
    iget-object v0, p0, Lokhttp3/ad;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 409
    iget-object v1, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lokhttp3/internal/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 410
    iget-object v2, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lokhttp3/ad;
    .locals 1

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Lokhttp3/ad;->d(Ljava/lang/String;)Lokhttp3/ae;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ae;->b()Lokhttp3/ad;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lokhttp3/ad;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 443
    :goto_0
    return-object v0

    .line 441
    :cond_0
    iget-object v0, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lokhttp3/ad;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 442
    iget-object v1, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 443
    iget-object v2, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Lokhttp3/ae;
    .locals 3

    .prologue
    .line 873
    new-instance v0, Lokhttp3/ae;

    invoke-direct {v0}, Lokhttp3/ae;-><init>()V

    .line 874
    invoke-virtual {v0, p0, p1}, Lokhttp3/ae;->a(Lokhttp3/ad;Ljava/lang/String;)I

    move-result v1

    .line 875
    sget v2, Lokhttp3/af;->a:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 541
    iget-object v0, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    const/16 v1, 0x2f

    iget-object v2, p0, Lokhttp3/ad;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 542
    iget-object v1, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lokhttp3/internal/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 543
    iget-object v2, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 924
    instance-of v0, p1, Lokhttp3/ad;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/ad;

    iget-object v0, p1, Lokhttp3/ad;->j:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x2f

    .line 565
    iget-object v0, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/ad;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 566
    iget-object v1, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lokhttp3/internal/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 567
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 568
    :goto_0
    if-ge v0, v1, :cond_0

    .line 569
    add-int/lit8 v3, v0, 0x1

    .line 570
    iget-object v0, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-static {v0, v3, v1, v5}, Lokhttp3/internal/c;->a(Ljava/lang/String;IIC)I

    move-result v0

    .line 571
    iget-object v4, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 574
    :cond_0
    return-object v2
.end method

.method public final g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 608
    iget-object v0, p0, Lokhttp3/ad;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 611
    :goto_0
    return-object v0

    .line 609
    :cond_0
    iget-object v0, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 610
    iget-object v1, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v1, v2, v3, v4}, Lokhttp3/internal/c;->a(Ljava/lang/String;IIC)I

    move-result v1

    .line 611
    iget-object v2, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lokhttp3/ad;->j:Ljava/lang/String;

    return-object v0
.end method
