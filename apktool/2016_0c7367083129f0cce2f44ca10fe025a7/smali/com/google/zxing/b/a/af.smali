.class public final Lcom/google/zxing/b/a/af;
.super Lcom/google/zxing/b/a/u;
.source "VCardResultParser.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/af;->a:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/af;->b:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "\r\n[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/af;->c:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "\\\\[nN]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/af;->d:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\\\\([,;\\\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/af;->e:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/af;->f:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/af;->g:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "(?<!\\\\);+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/af;->h:Ljava/util/regex/Pattern;

    .line 46
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/af;->i:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, "[;,]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/af;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/zxing/b/a/u;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 210
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 214
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 215
    sparse-switch v4, :sswitch_data_0

    .line 234
    invoke-static {v3, p1, v2}, Lcom/google/zxing/b/a/af;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 235
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    :cond_0
    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :sswitch_1
    add-int/lit8 v4, v1, -0x2

    if-ge v0, v4, :cond_0

    .line 221
    add-int/lit8 v4, v0, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 222
    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 223
    add-int/lit8 v5, v0, 0x2

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 224
    invoke-static {v4}, Lcom/google/zxing/b/a/af;->a(C)I

    move-result v4

    .line 225
    invoke-static {v5}, Lcom/google/zxing/b/a/af;->a(C)I

    move-result v5

    .line 226
    if-ltz v4, :cond_1

    if-ltz v5, :cond_1

    .line 227
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 238
    :cond_2
    invoke-static {v3, p1, v2}, Lcom/google/zxing/b/a/af;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 215
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 271
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object v7, v1

    .line 110
    :goto_0
    if-ge v0, v6, :cond_12

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?:^|\n)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(?:;([^:]*))?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 115
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 116
    if-lez v0, :cond_0

    .line 117
    add-int/lit8 v0, v0, -0x1

    .line 119
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 122
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    .line 124
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    const/4 v0, 0x0

    .line 126
    const/4 v3, 0x0

    .line 127
    const/4 v1, 0x0

    .line 128
    if-eqz v2, :cond_14

    .line 129
    sget-object v4, Lcom/google/zxing/b/a/af;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v9, :cond_3

    aget-object v2, v8, v4

    .line 130
    if-nez v0, :cond_1

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v10, Lcom/google/zxing/b/a/af;->f:Ljava/util/regex/Pattern;

    const/4 v11, 0x2

    invoke-virtual {v10, v2, v11}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    .line 135
    array-length v10, v2

    const/4 v11, 0x1

    if-le v10, v11, :cond_13

    .line 136
    const/4 v10, 0x0

    aget-object v10, v2, v10

    .line 137
    const/4 v11, 0x1

    aget-object v2, v2, v11

    .line 138
    const-string v11, "ENCODING"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "QUOTED-PRINTABLE"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 139
    const/4 v2, 0x1

    .line 129
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_1

    .line 140
    :cond_2
    const-string v11, "CHARSET"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    move-object v1, v2

    move v2, v3

    .line 141
    goto :goto_2

    :cond_3
    move-object v2, v1

    move-object v4, v0

    :goto_3
    move v0, v5

    .line 149
    :goto_4
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_8

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x20

    if-eq v1, v8, :cond_4

    add-int/lit8 v1, v0, 0x1

    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x9

    if-ne v1, v8, :cond_5

    .line 153
    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 154
    :cond_5
    if-eqz v3, :cond_8

    if-lez v0, :cond_6

    add-int/lit8 v1, v0, -0x1

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x3d

    if-eq v1, v8, :cond_7

    :cond_6
    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    add-int/lit8 v1, v0, -0x2

    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x3d

    if-ne v1, v8, :cond_8

    .line 157
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 163
    :cond_8
    if-gez v0, :cond_9

    move v0, v6

    .line 165
    goto/16 :goto_0

    .line 166
    :cond_9
    if-le v0, v5, :cond_11

    .line 168
    if-nez v7, :cond_a

    .line 169
    new-instance v7, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    :cond_a
    if-lez v0, :cond_b

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0xd

    if-ne v1, v8, :cond_b

    .line 172
    add-int/lit8 v0, v0, -0x1

    .line 174
    :cond_b
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 175
    if-eqz p2, :cond_c

    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 178
    :cond_c
    if-eqz v3, :cond_e

    .line 179
    invoke-static {v1, v2}, Lcom/google/zxing/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    if-eqz p3, :cond_d

    .line 181
    sget-object v2, Lcom/google/zxing/b/a/af;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 191
    :cond_d
    :goto_5
    if-nez v4, :cond_10

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 200
    goto/16 :goto_0

    .line 184
    :cond_e
    if-eqz p3, :cond_f

    .line 185
    sget-object v2, Lcom/google/zxing/b/a/af;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_f
    sget-object v2, Lcom/google/zxing/b/a/af;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    sget-object v2, Lcom/google/zxing/b/a/af;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/google/zxing/b/a/af;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "$1"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 196
    :cond_10
    const/4 v2, 0x0

    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 197
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 201
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 204
    goto/16 :goto_0

    .line 206
    :cond_12
    return-object v7

    :cond_13
    move v2, v3

    goto/16 :goto_2

    :cond_14
    move-object v2, v1

    move-object v4, v0

    goto/16 :goto_3
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 248
    if-nez p1, :cond_1

    .line 249
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 257
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 258
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_0
    return-void

    .line 252
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method private static a([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 349
    aget-object v0, p0, p1

    if-eqz v0, :cond_1

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 351
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    :cond_0
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    .line 278
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 280
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 282
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    :cond_3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method static b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method private static b(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 289
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 310
    :goto_0
    return-object v0

    .line 292
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 295
    const/4 v1, 0x1

    move v2, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 296
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 298
    if-gez v6, :cond_2

    .line 308
    :goto_3
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :cond_2
    const-string v7, "TYPE"

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 304
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 295
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 310
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v1, v3

    goto :goto_3
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 18

    .prologue
    .line 36
    .line 1054
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/b/a/af;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v6

    .line 1055
    sget-object v1, Lcom/google/zxing/b/a/af;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1056
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1057
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1059
    :cond_1
    const-string v1, "FN"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v6, v2, v3}, Lcom/google/zxing/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 1060
    if-nez v1, :cond_a

    .line 1062
    const-string v1, "N"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v6, v2, v3}, Lcom/google/zxing/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v3

    .line 1324
    if-eqz v3, :cond_3

    .line 1325
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1326
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1327
    const/4 v4, 0x5

    new-array v8, v4, [Ljava/lang/String;

    .line 1328
    const/4 v5, 0x0

    .line 1330
    const/4 v4, 0x0

    .line 1331
    :goto_2
    const/4 v9, 0x4

    if-ge v4, v9, :cond_2

    const/16 v9, 0x3b

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-ltz v9, :cond_2

    .line 1332
    invoke-virtual {v2, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 1333
    add-int/lit8 v4, v4, 0x1

    .line 1334
    add-int/lit8 v5, v9, 0x1

    goto :goto_2

    .line 1336
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v4

    .line 1337
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1338
    const/4 v4, 0x3

    invoke-static {v8, v4, v2}, Lcom/google/zxing/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1339
    const/4 v4, 0x1

    invoke-static {v8, v4, v2}, Lcom/google/zxing/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1340
    const/4 v4, 0x2

    invoke-static {v8, v4, v2}, Lcom/google/zxing/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1341
    const/4 v4, 0x0

    invoke-static {v8, v4, v2}, Lcom/google/zxing/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1342
    const/4 v4, 0x4

    invoke-static {v8, v4, v2}, Lcom/google/zxing/b/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1343
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 1065
    :goto_3
    const-string v1, "NICKNAME"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v6, v3, v4}, Lcom/google/zxing/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 1066
    if-nez v1, :cond_6

    const/4 v3, 0x0

    .line 1067
    :goto_4
    const-string v1, "TEL"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v6, v4, v5}, Lcom/google/zxing/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    .line 1068
    const-string v1, "EMAIL"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v6, v4, v5}, Lcom/google/zxing/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v8

    .line 1069
    const-string v1, "NOTE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v6, v4, v5}, Lcom/google/zxing/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v10

    .line 1070
    const-string v1, "ADR"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v1, v6, v4, v5}, Lcom/google/zxing/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v12

    .line 1071
    const-string v1, "ORG"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v1, v6, v4, v5}, Lcom/google/zxing/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v13

    .line 1072
    const-string v1, "BDAY"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v6, v4, v5}, Lcom/google/zxing/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v4

    .line 1073
    if-eqz v4, :cond_9

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 2314
    if-eqz v1, :cond_4

    sget-object v5, Lcom/google/zxing/b/a/af;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    const/4 v1, 0x1

    .line 1073
    :goto_5
    if-nez v1, :cond_9

    .line 1074
    const/4 v1, 0x0

    move-object v14, v1

    .line 1076
    :goto_6
    const-string v1, "TITLE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v6, v4, v5}, Lcom/google/zxing/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v15

    .line 1077
    const-string v1, "URL"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v6, v4, v5}, Lcom/google/zxing/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v16

    .line 1078
    const-string v1, "IMPP"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v6, v4, v5}, Lcom/google/zxing/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v9

    .line 1079
    const-string v1, "GEO"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v6, v4, v5}, Lcom/google/zxing/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 1080
    if-nez v1, :cond_8

    const/16 v17, 0x0

    .line 1081
    :goto_7
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    array-length v1, v0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    .line 1082
    const/16 v17, 0x0

    .line 1084
    :cond_5
    new-instance v1, Lcom/google/zxing/b/a/d;

    invoke-static {v2}, Lcom/google/zxing/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 1087
    invoke-static {v7}, Lcom/google/zxing/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    .line 1088
    invoke-static {v7}, Lcom/google/zxing/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    .line 1089
    invoke-static {v8}, Lcom/google/zxing/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v7

    .line 1090
    invoke-static {v8}, Lcom/google/zxing/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v8

    .line 1091
    invoke-static {v9}, Lcom/google/zxing/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 1092
    invoke-static {v10}, Lcom/google/zxing/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 1093
    invoke-static {v12}, Lcom/google/zxing/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v11

    .line 1094
    invoke-static {v12}, Lcom/google/zxing/b/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v12

    .line 1095
    invoke-static {v13}, Lcom/google/zxing/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 1096
    invoke-static {v14}, Lcom/google/zxing/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 1097
    invoke-static {v15}, Lcom/google/zxing/b/a/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 1098
    invoke-static/range {v16 .. v16}, Lcom/google/zxing/b/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v1 .. v17}, Lcom/google/zxing/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1066
    :cond_6
    sget-object v3, Lcom/google/zxing/b/a/af;->i:Ljava/util/regex/Pattern;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 2314
    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    .line 1080
    :cond_8
    sget-object v4, Lcom/google/zxing/b/a/af;->j:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    :cond_9
    move-object v14, v4

    goto/16 :goto_6

    :cond_a
    move-object v2, v1

    goto/16 :goto_3
.end method
