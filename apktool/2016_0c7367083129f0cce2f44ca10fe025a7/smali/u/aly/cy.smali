.class final Lu/aly/cy;
.super Ljava/lang/Object;
.source "TBaseHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lu/aly/cy;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 204
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    .line 206
    :cond_0
    if-nez p1, :cond_1

    .line 207
    const/4 v0, -0x1

    goto :goto_0

    .line 208
    :cond_1
    if-nez p2, :cond_2

    .line 209
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 211
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lu/aly/cx;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    goto :goto_0

    .line 212
    :cond_3
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 213
    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    invoke-static {p1, p2}, Lu/aly/cx;->a(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    goto :goto_0

    .line 214
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 215
    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lu/aly/cx;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    goto :goto_0

    .line 216
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    .line 217
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Lu/aly/cx;->a([B[B)I

    move-result v0

    goto :goto_0

    .line 219
    :cond_6
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lu/aly/cx;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    goto :goto_0
.end method
