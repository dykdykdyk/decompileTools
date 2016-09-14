.class public final Lu/aly/ap;
.super Ljava/lang/Object;
.source "ABTest.java"

# interfaces
.implements Lu/aly/t;


# static fields
.field private static h:Lu/aly/ap;


# instance fields
.field a:Z

.field b:I

.field c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lu/aly/ap;->h:Lu/aly/ap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/ap;->a:Z

    .line 16
    iput v1, p0, Lu/aly/ap;->b:I

    .line 17
    iput v1, p0, Lu/aly/ap;->d:I

    .line 18
    iput v1, p0, Lu/aly/ap;->c:I

    .line 19
    iput v2, p0, Lu/aly/ap;->e:F

    .line 20
    iput v2, p0, Lu/aly/ap;->f:F

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ap;->g:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lu/aly/ap;->g:Landroid/content/Context;

    .line 39
    invoke-direct {p0, p2, p3}, Lu/aly/ap;->b(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method private static a(Ljava/lang/String;I)F
    .locals 2

    .prologue
    .line 43
    mul-int/lit8 v0, p1, 0x2

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 46
    :cond_0
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    .line 49
    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/ap;
    .locals 4

    .prologue
    .line 27
    const-class v1, Lu/aly/ap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/ap;->h:Lu/aly/ap;

    if-nez v0, :cond_0

    .line 28
    invoke-static {p0}, Lu/aly/fj;->a(Landroid/content/Context;)Lu/aly/fj;

    move-result-object v0

    .line 1212
    iget-object v0, v0, Lu/aly/fj;->b:Lu/aly/fk;

    .line 29
    invoke-virtual {v0}, Lu/aly/fk;->c()Ljava/lang/String;

    move-result-object v2

    .line 30
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lu/aly/fk;->a(I)I

    move-result v0

    .line 31
    new-instance v3, Lu/aly/ap;

    invoke-direct {v3, p0, v2, v0}, Lu/aly/ap;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, Lu/aly/ap;->h:Lu/aly/ap;

    .line 34
    :cond_0
    sget-object v0, Lu/aly/ap;->h:Lu/aly/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 80
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 84
    aget-object v3, v2, v0

    const-string v4, "SIG7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    aget-object v3, v2, v1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 86
    aget-object v4, v2, v6

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    .line 87
    if-ne v3, v4, :cond_2

    move v0, v1

    .line 88
    goto :goto_0

    .line 92
    :cond_2
    aget-object v3, v2, v0

    const-string v4, "FIXED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    aget-object v3, v2, v6

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 94
    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 95
    if-lt v3, v2, :cond_0

    if-lez v2, :cond_0

    move v0, v1

    .line 96
    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 54
    iput p2, p0, Lu/aly/ap;->d:I

    .line 55
    iget-object v0, p0, Lu/aly/ap;->g:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/fe;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    :cond_0
    iput-boolean v2, p0, Lu/aly/ap;->a:Z

    .line 2218
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    const/16 v1, 0xc

    :try_start_0
    invoke-static {v0, v1}, Lu/aly/ap;->a(Ljava/lang/String;I)F

    move-result v1

    iput v1, p0, Lu/aly/ap;->e:F

    .line 62
    const/4 v1, 0x6

    invoke-static {v0, v1}, Lu/aly/ap;->a(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lu/aly/ap;->f:F

    .line 63
    const-string v0, "SIG7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2105
    if-eqz p1, :cond_1

    .line 2107
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2109
    const/4 v0, 0x0

    .line 2110
    const/4 v1, 0x2

    aget-object v1, v3, v1

    const-string v5, "SIG13"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2111
    const/4 v0, 0x3

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2113
    :cond_3
    iget v1, p0, Lu/aly/ap;->e:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    .line 2114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/ap;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    iput-boolean v2, p0, Lu/aly/ap;->a:Z

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lu/aly/ct;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2118
    :cond_4
    const/4 v0, 0x0

    .line 2119
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v3, v1

    const-string v5, "SIG7"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2120
    const/4 v0, 0x1

    aget-object v0, v3, v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2121
    array-length v0, v5

    new-array v0, v0, [F

    move v1, v2

    .line 2122
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_5

    .line 2123
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v0, v1

    .line 2122
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move-object v5, v0

    .line 2127
    :goto_2
    const/4 v0, 0x0

    .line 2128
    const/4 v1, 0x4

    aget-object v1, v3, v1

    const-string v6, "RPT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2129
    const/4 v0, 0x5

    aget-object v0, v3, v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2130
    array-length v0, v3

    new-array v0, v0, [I

    move v1, v2

    .line 2131
    :goto_3
    array-length v6, v3

    if-ge v1, v6, :cond_8

    .line 2132
    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v1

    .line 2131
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2134
    :cond_6
    const/4 v1, 0x4

    aget-object v1, v3, v1

    const-string v6, "DOM"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2135
    iget-object v1, p0, Lu/aly/ap;->g:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/cr;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/ap;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2140
    :cond_7
    const/4 v1, 0x5

    :try_start_2
    aget-object v1, v3, v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2141
    array-length v1, v3

    new-array v0, v1, [I

    move v1, v2

    .line 2142
    :goto_4
    array-length v6, v3

    if-ge v1, v6, :cond_8

    .line 2143
    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2142
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 2150
    :cond_8
    const/4 v1, 0x0

    move v3, v1

    move v1, v2

    .line 2151
    :goto_5
    :try_start_3
    array-length v6, v5

    if-ge v1, v6, :cond_13

    .line 2152
    aget v6, v5, v1

    add-float/2addr v3, v6

    .line 2153
    iget v6, p0, Lu/aly/ap;->f:F

    cmpg-float v6, v6, v3

    if-gez v6, :cond_9

    .line 2159
    :goto_6
    if-eq v1, v4, :cond_a

    .line 2160
    const/4 v3, 0x1

    iput-boolean v3, p0, Lu/aly/ap;->a:Z

    .line 2161
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lu/aly/ap;->c:I

    .line 2162
    if-eqz v0, :cond_1

    .line 2163
    aget v0, v0, v1

    iput v0, p0, Lu/aly/ap;->b:I

    goto/16 :goto_0

    .line 2151
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2166
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/ap;->a:Z

    goto/16 :goto_0

    .line 65
    :cond_b
    const-string v0, "FIXED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2174
    if-eqz p1, :cond_1

    .line 2176
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2178
    const/4 v0, 0x0

    .line 2179
    const/4 v3, 0x2

    aget-object v3, v1, v3

    const-string v5, "SIG13"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2180
    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2182
    :cond_c
    iget v3, p0, Lu/aly/ap;->e:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_d

    .line 2183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/ap;->a:Z

    goto/16 :goto_0

    .line 2188
    :cond_d
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const-string v3, "FIXED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2189
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    .line 2192
    :goto_7
    const/4 v0, 0x0

    .line 2193
    const/4 v5, 0x4

    aget-object v5, v1, v5

    const-string v6, "RPT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2194
    const/4 v0, 0x5

    aget-object v0, v1, v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2195
    array-length v0, v5

    new-array v0, v0, [I

    move v1, v2

    .line 2196
    :goto_8
    array-length v6, v5

    if-ge v1, v6, :cond_10

    .line 2197
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v1

    .line 2196
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2199
    :cond_e
    const/4 v5, 0x4

    aget-object v5, v1, v5

    const-string v6, "DOM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2200
    iget-object v5, p0, Lu/aly/ap;->g:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/cr;->k(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/ap;->a:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2205
    :cond_f
    const/4 v5, 0x5

    :try_start_4
    aget-object v1, v1, v5

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2206
    array-length v1, v5

    new-array v0, v1, [I

    move v1, v2

    .line 2207
    :goto_9
    array-length v6, v5

    if-ge v1, v6, :cond_10

    .line 2208
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2207
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_2
    move-exception v1

    .line 2214
    :cond_10
    if-eq v3, v4, :cond_11

    .line 2215
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lu/aly/ap;->a:Z

    .line 2216
    iput v3, p0, Lu/aly/ap;->c:I

    .line 2217
    if-eqz v0, :cond_1

    .line 2218
    add-int/lit8 v1, v3, -0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/ap;->b:I

    goto/16 :goto_0

    .line 2221
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/ap;->a:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_12
    move v3, v4

    goto :goto_7

    :cond_13
    move v1, v4

    goto/16 :goto_6

    :cond_14
    move-object v5, v0

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Lu/aly/fk;)V
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p1}, Lu/aly/fk;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu/aly/fk;->a(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lu/aly/ap;->b(Ljava/lang/String;I)V

    .line 250
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    const-string v1, " p13:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lu/aly/ap;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, " p07:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget v1, p0, Lu/aly/ap;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, " policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget v1, p0, Lu/aly/ap;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, " interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v1, p0, Lu/aly/ap;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
