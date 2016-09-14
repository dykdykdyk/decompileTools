.class public abstract Lcom/google/zxing/b/a/u;
.super Ljava/lang/Object;
.source "ResultParser.java"


# static fields
.field private static final a:[Lcom/google/zxing/b/a/u;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/zxing/b/a/u;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/b/a/f;

    invoke-direct {v2}, Lcom/google/zxing/b/a/f;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/b/a/c;

    invoke-direct {v2}, Lcom/google/zxing/b/a/c;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/b/a/j;

    invoke-direct {v2}, Lcom/google/zxing/b/a/j;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/b/a/b;

    invoke-direct {v2}, Lcom/google/zxing/b/a/b;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/google/zxing/b/a/af;

    invoke-direct {v2}, Lcom/google/zxing/b/a/af;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/google/zxing/b/a/e;

    invoke-direct {v2}, Lcom/google/zxing/b/a/e;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/google/zxing/b/a/ag;

    invoke-direct {v2}, Lcom/google/zxing/b/a/ag;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/google/zxing/b/a/i;

    invoke-direct {v2}, Lcom/google/zxing/b/a/i;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/google/zxing/b/a/y;

    invoke-direct {v2}, Lcom/google/zxing/b/a/y;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/google/zxing/b/a/aa;

    invoke-direct {v2}, Lcom/google/zxing/b/a/aa;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/google/zxing/b/a/v;

    invoke-direct {v2}, Lcom/google/zxing/b/a/v;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/google/zxing/b/a/x;

    invoke-direct {v2}, Lcom/google/zxing/b/a/x;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/google/zxing/b/a/n;

    invoke-direct {v2}, Lcom/google/zxing/b/a/n;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/google/zxing/b/a/ak;

    invoke-direct {v2}, Lcom/google/zxing/b/a/ak;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/google/zxing/b/a/ae;

    invoke-direct {v2}, Lcom/google/zxing/b/a/ae;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/google/zxing/b/a/ad;

    invoke-direct {v2}, Lcom/google/zxing/b/a/ad;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/google/zxing/b/a/p;

    invoke-direct {v2}, Lcom/google/zxing/b/a/p;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/google/zxing/b/a/t;

    invoke-direct {v2}, Lcom/google/zxing/b/a/t;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/google/zxing/b/a/l;

    invoke-direct {v2}, Lcom/google/zxing/b/a/l;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/google/zxing/b/a/ai;

    invoke-direct {v2}, Lcom/google/zxing/b/a/ai;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/b/a/u;->a:[Lcom/google/zxing/b/a/u;

    .line 65
    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/u;->b:Ljava/util/regex/Pattern;

    .line 66
    const-string v0, "&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/u;->c:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/u;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(C)I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 141
    add-int/lit8 v0, p0, -0x30

    .line 149
    :goto_0
    return v0

    .line 143
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 144
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 146
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 147
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x5c

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 120
    if-gez v0, :cond_0

    .line 136
    :goto_0
    return-object p0

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, -0x1

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v4, v2, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v2, v0

    move v0, v1

    .line 127
    :goto_1
    if-ge v2, v3, :cond_3

    .line 128
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 129
    if-nez v0, :cond_1

    if-eq v5, v6, :cond_2

    .line 130
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 127
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 136
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/CharSequence;I)Z
    .locals 1

    .prologue
    .line 153
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/google/zxing/b/a/u;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/CharSequence;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    if-eqz p0, :cond_0

    if-gtz p2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    add-int v1, p1, p2

    .line 161
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v1, :cond_0

    sget-object v2, Lcom/google/zxing/b/a/u;->b:Ljava/util/regex/Pattern;

    invoke-interface {p0, p1, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 199
    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move v0, v3

    move-object v1, v2

    .line 202
    :goto_0
    if-ge v0, v7, :cond_7

    .line 203
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 204
    if-ltz v0, :cond_7

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int v6, v0, v4

    .line 209
    const/4 v0, 0x1

    move v5, v0

    move-object v0, v1

    move v1, v6

    .line 210
    :goto_1
    if-eqz v5, :cond_6

    .line 211
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 212
    if-gez v8, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v3

    .line 215
    goto :goto_1

    .line 2244
    :cond_0
    add-int/lit8 v1, v8, -0x1

    move v4, v1

    move v1, v3

    :goto_2
    if-ltz v4, :cond_1

    .line 2245
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_1

    .line 2246
    add-int/lit8 v1, v1, 0x1

    .line 2244
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 216
    :cond_1
    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 218
    add-int/lit8 v1, v8, 0x1

    goto :goto_1

    .line 221
    :cond_2
    if-nez v0, :cond_3

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    :cond_3
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/b/a/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    if-eqz p3, :cond_4

    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_5
    add-int/lit8 v1, v8, 0x1

    move v5, v3

    .line 233
    goto :goto_1

    :cond_6
    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 235
    goto :goto_0

    .line 236
    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move-object v0, v2

    .line 239
    :goto_3
    return-object v0

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method protected static b(Lcom/google/zxing/m;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    .line 1060
    iget-object v0, p0, Lcom/google/zxing/m;->a:Ljava/lang/String;

    .line 82
    const-string v1, "\ufeff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/b/a/u;->a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    .line 256
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method protected static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_0
.end method

.method public static c(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 4

    .prologue
    .line 89
    sget-object v2, Lcom/google/zxing/b/a/u;->a:[Lcom/google/zxing/b/a/u;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 90
    invoke-virtual {v0, p0}, Lcom/google/zxing/b/a/u;->a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 95
    :goto_1
    return-object v0

    .line 89
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lcom/google/zxing/b/a/ab;

    .line 2060
    iget-object v1, p0, Lcom/google/zxing/m;->a:Ljava/lang/String;

    .line 95
    invoke-direct {v0, v1}, Lcom/google/zxing/b/a/ab;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static c(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 165
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 166
    if-gez v1, :cond_1

    .line 167
    const/4 v0, 0x0

    .line 173
    :cond_0
    return-object v0

    .line 169
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 170
    sget-object v3, Lcom/google/zxing/b/a/u;->c:Ljava/util/regex/Pattern;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 2177
    sget-object v6, Lcom/google/zxing/b/a/u;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v5

    .line 2178
    array-length v6, v5

    if-ne v6, v8, :cond_2

    .line 2179
    aget-object v6, v5, v2

    .line 2180
    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 2182
    :try_start_0
    invoke-static {v5}, Lcom/google/zxing/b/a/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2183
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
.end method
