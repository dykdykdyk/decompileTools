.class final Lretrofit2/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"


# instance fields
.field private final baseUrl:Lokhttp3/ad;

.field private body:Lokhttp3/au;

.field private contentType:Lokhttp3/ai;

.field private formBuilder:Lokhttp3/z;

.field private final hasBody:Z

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lokhttp3/ak;

.field private relativeUrl:Ljava/lang/String;

.field private final requestBuilder:Lokhttp3/at;

.field private urlBuilder:Lokhttp3/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

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

.method constructor <init>(Ljava/lang/String;Lokhttp3/ad;Ljava/lang/String;Lokhttp3/ab;Lokhttp3/ai;ZZZ)V
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/ad;

    .line 52
    iput-object p3, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 53
    new-instance v0, Lokhttp3/at;

    invoke-direct {v0}, Lokhttp3/at;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/at;

    .line 54
    iput-object p5, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/ai;

    .line 55
    iput-boolean p6, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    .line 57
    if-eqz p4, :cond_0

    .line 58
    iget-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/at;

    invoke-virtual {v0, p4}, Lokhttp3/at;->a(Lokhttp3/ab;)Lokhttp3/at;

    .line 61
    :cond_0
    if-eqz p7, :cond_2

    .line 63
    new-instance v0, Lokhttp3/z;

    invoke-direct {v0}, Lokhttp3/z;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/z;

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    if-eqz p8, :cond_1

    .line 66
    new-instance v0, Lokhttp3/ak;

    invoke-direct {v0}, Lokhttp3/ak;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/ak;

    .line 67
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/ak;

    sget-object v1, Lokhttp3/aj;->e:Lokhttp3/ai;

    .line 1287
    if-nez v1, :cond_3

    .line 1288
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2081
    :cond_3
    iget-object v2, v1, Lokhttp3/ai;->a:Ljava/lang/String;

    .line 1290
    const-string v3, "multipart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "multipart != "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_4
    iput-object v1, v0, Lokhttp3/ak;->b:Lokhttp3/ai;

    goto :goto_0
.end method

.method private static canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 100
    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    const-string v4, " \"<>^`{}|\\?#"

    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    if-nez p1, :cond_2

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_0

    const/16 v4, 0x25

    if-ne v3, v4, :cond_2

    .line 104
    :cond_0
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 105
    invoke-virtual {v3, p0, v1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 106
    invoke-static {v3, p0, v0, v2, p1}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Lokio/Buffer;Ljava/lang/String;IIZ)V

    .line 107
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    .line 112
    :cond_1
    return-object p0

    .line 98
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method private static canonicalizeForPath(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .locals 6

    .prologue
    const/16 v5, 0x25

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    if-ge p2, p3, :cond_5

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 121
    if-eqz p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4

    .line 124
    :cond_0
    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_1

    const-string v2, " \"<>^`{}|\\?#"

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-nez p4, :cond_3

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    if-ne v1, v5, :cond_3

    .line 128
    :cond_1
    if-nez v0, :cond_2

    .line 129
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 131
    :cond_2
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 132
    :goto_1
    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 133
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 134
    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 135
    sget-object v3, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 136
    sget-object v3, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 119
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    .line 143
    :cond_5
    return-void
.end method


# virtual methods
.method final addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 164
    if-eqz p3, :cond_0

    .line 165
    iget-object v6, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/z;

    .line 4115
    iget-object v7, v6, Lokhttp3/z;->a:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/ad;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4116
    iget-object v6, v6, Lokhttp3/z;->b:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/ad;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/z;

    .line 5109
    iget-object v1, v0, Lokhttp3/z;->a:Ljava/util/List;

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v4, p1

    move v6, v3

    move v7, v3

    move v8, v2

    move v9, v2

    invoke-static/range {v4 .. v9}, Lokhttp3/ad;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5110
    iget-object v0, v0, Lokhttp3/z;->b:Ljava/util/List;

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v4, p2

    move v6, v3

    move v7, v3

    move v8, v2

    move v9, v2

    invoke-static/range {v4 .. v9}, Lokhttp3/ad;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {p2}, Lokhttp3/ai;->a(Ljava/lang/String;)Lokhttp3/ai;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed content type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object v0, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/ai;

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/at;

    invoke-virtual {v0, p1, p2}, Lokhttp3/at;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    goto :goto_0
.end method

.method final addPart(Lokhttp3/ab;Lokhttp3/au;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/ak;

    .line 5304
    invoke-static {p1, p2}, Lokhttp3/al;->a(Lokhttp3/ab;Lokhttp3/au;)Lokhttp3/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/ak;->a(Lokhttp3/al;)Lokhttp3/ak;

    .line 173
    return-void
.end method

.method final addPart(Lokhttp3/al;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/ak;

    invoke-virtual {v0, p1}, Lokhttp3/ak;->a(Lokhttp3/al;)Lokhttp3/ak;

    .line 177
    return-void
.end method

.method final addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 94
    return-void
.end method

.method final addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 146
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/ad;

    iget-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/ad;->d(Ljava/lang/String;)Lokhttp3/ae;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/ae;

    .line 149
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/ae;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed URL. Base: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/ad;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iput-object v10, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 156
    :cond_1
    if-eqz p3, :cond_5

    .line 157
    iget-object v6, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/ae;

    .line 2127
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2128
    :cond_2
    iget-object v0, v6, Lokhttp3/ae;->g:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lokhttp3/ae;->g:Ljava/util/List;

    .line 2129
    :cond_3
    iget-object v7, v6, Lokhttp3/ae;->g:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 2130
    invoke-static/range {v0 .. v5}, Lokhttp3/ad;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 2129
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2131
    iget-object v6, v6, Lokhttp3/ae;->g:Ljava/util/List;

    if-eqz p2, :cond_4

    const-string v1, " \"\'<>#&="

    move-object v0, p2

    move v4, v2

    move v5, v2

    .line 2132
    invoke-static/range {v0 .. v5}, Lokhttp3/ad;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 2131
    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :goto_1
    return-void

    :cond_4
    move-object v0, v10

    .line 2132
    goto :goto_0

    .line 159
    :cond_5
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/ae;

    .line 3115
    if-nez p1, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3116
    :cond_6
    iget-object v1, v0, Lokhttp3/ae;->g:Ljava/util/List;

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lokhttp3/ae;->g:Ljava/util/List;

    .line 3117
    :cond_7
    iget-object v1, v0, Lokhttp3/ae;->g:Ljava/util/List;

    const-string v5, " \"\'<>#&="

    move-object v4, p1

    move v6, v3

    move v7, v3

    move v8, v2

    move v9, v2

    .line 3118
    invoke-static/range {v4 .. v9}, Lokhttp3/ad;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    .line 3117
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3119
    iget-object v0, v0, Lokhttp3/ae;->g:Ljava/util/List;

    if-eqz p2, :cond_8

    const-string v5, " \"\'<>#&="

    move-object v4, p2

    move v6, v3

    move v7, v3

    move v8, v2

    move v9, v2

    .line 3120
    invoke-static/range {v4 .. v9}, Lokhttp3/ad;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v10

    .line 3119
    :cond_8
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method final build()Lokhttp3/as;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/ae;

    .line 186
    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {v0}, Lokhttp3/ae;->b()Lokhttp3/ad;

    move-result-object v0

    .line 197
    :cond_0
    iget-object v1, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/au;

    .line 198
    if-nez v1, :cond_1

    .line 200
    iget-object v2, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/z;

    if-eqz v2, :cond_4

    .line 201
    iget-object v2, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/z;

    .line 6121
    new-instance v1, Lokhttp3/y;

    iget-object v3, v2, Lokhttp3/z;->a:Ljava/util/List;

    iget-object v2, v2, Lokhttp3/z;->b:Ljava/util/List;

    invoke-direct {v1, v3, v2, v4}, Lokhttp3/y;-><init>(Ljava/util/List;Ljava/util/List;B)V

    .line 210
    :cond_1
    :goto_0
    iget-object v3, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/ai;

    .line 211
    if-eqz v3, :cond_2

    .line 212
    if-eqz v1, :cond_7

    .line 213
    new-instance v2, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v2, v1, v3}, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lokhttp3/au;Lokhttp3/ai;)V

    move-object v1, v2

    .line 219
    :cond_2
    :goto_1
    iget-object v2, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/at;

    .line 220
    invoke-virtual {v2, v0}, Lokhttp3/at;->a(Lokhttp3/ad;)Lokhttp3/at;

    move-result-object v0

    iget-object v2, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 221
    invoke-virtual {v0, v2, v1}, Lokhttp3/at;->a(Ljava/lang/String;Lokhttp3/au;)Lokhttp3/at;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lokhttp3/at;->a()Lokhttp3/as;

    move-result-object v0

    .line 219
    return-object v0

    .line 190
    :cond_3
    iget-object v0, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/ad;

    iget-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/ad;->c(Ljava/lang/String;)Lokhttp3/ad;

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed URL. Base: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/ad;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_4
    iget-object v2, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/ak;

    if-eqz v2, :cond_6

    .line 203
    iget-object v2, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/ak;

    .line 6326
    iget-object v1, v2, Lokhttp3/ak;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6329
    :cond_5
    new-instance v1, Lokhttp3/aj;

    iget-object v3, v2, Lokhttp3/ak;->a:Lokio/ByteString;

    iget-object v4, v2, Lokhttp3/ak;->b:Lokhttp3/ai;

    iget-object v2, v2, Lokhttp3/ak;->c:Ljava/util/List;

    invoke-direct {v1, v3, v4, v2}, Lokhttp3/aj;-><init>(Lokio/ByteString;Lokhttp3/ai;Ljava/util/List;)V

    goto :goto_0

    .line 204
    :cond_6
    iget-boolean v2, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz v2, :cond_1

    .line 206
    const/4 v1, 0x0

    new-array v2, v4, [B

    invoke-static {v1, v2}, Lokhttp3/au;->create(Lokhttp3/ai;[B)Lokhttp3/au;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_7
    iget-object v2, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/at;

    const-string v4, "Content-Type"

    invoke-virtual {v3}, Lokhttp3/ai;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lokhttp3/at;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    goto :goto_1
.end method

.method final setBody(Lokhttp3/au;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/au;

    .line 181
    return-void
.end method

.method final setRelativeUrl(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 72
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "@Url parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 74
    return-void
.end method
