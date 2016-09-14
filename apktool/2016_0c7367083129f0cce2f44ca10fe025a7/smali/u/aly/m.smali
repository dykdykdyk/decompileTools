.class public final Lu/aly/m;
.super Ljava/lang/Object;
.source "EventTracker.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lu/aly/h;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x80

    iput v0, p0, Lu/aly/m;->c:I

    .line 33
    const/16 v0, 0x100

    iput v0, p0, Lu/aly/m;->d:I

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/m;->e:I

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context is null, can\'t track event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/m;->a:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lu/aly/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/h;->a(Landroid/content/Context;)Lu/aly/h;

    move-result-object v0

    iput-object v0, p0, Lu/aly/m;->b:Lu/aly/h;

    .line 45
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 134
    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 137
    if-lez v0, :cond_0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 142
    :cond_0
    const-string v0, "Event id is empty or too long in tracking Event"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 148
    if-nez p0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    .line 153
    const-string v0, "Event label or value is empty or too long in tracking Event"

    invoke-static {v0}, Lu/aly/ct;->d(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    :try_start_0
    invoke-static {p1}, Lu/aly/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1159
    const-string v2, "map is null or empty in onEvent"

    invoke-static {v2}, Lu/aly/ct;->d(Ljava/lang/String;)V

    move v2, v4

    .line 55
    :goto_1
    if-eqz v2, :cond_0

    .line 58
    new-instance v5, Lu/aly/ai;

    invoke-direct {v5}, Lu/aly/ai;-><init>()V

    .line 59
    iput-object p1, v5, Lu/aly/ai;->c:Ljava/lang/String;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v5, Lu/aly/ai;->d:J

    .line 61
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_2

    .line 62
    iput-wide p3, v5, Lu/aly/ai;->e:J

    .line 64
    :cond_2
    const/4 v2, 0x1

    iput v2, v5, Lu/aly/ai;->a:I

    .line 65
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    .line 68
    :goto_2
    const/16 v2, 0xa

    if-ge v3, v2, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 69
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 70
    iget-object v4, v5, Lu/aly/ai;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 1163
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 1164
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lu/aly/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 1165
    goto :goto_1

    .line 1168
    :cond_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v4

    .line 1169
    goto :goto_1

    .line 1172
    :cond_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu/aly/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 1173
    goto/16 :goto_1

    :cond_7
    move v2, v5

    .line 1177
    goto/16 :goto_1

    .line 73
    :cond_8
    iget-object v2, v5, Lu/aly/ai;->b:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 74
    iget-object v2, p0, Lu/aly/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/w;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lu/aly/ai;->b:Ljava/lang/String;

    .line 76
    :cond_9
    iget-object v2, p0, Lu/aly/m;->b:Lu/aly/h;

    invoke-virtual {v2, v5}, Lu/aly/h;->a(Lu/aly/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    const-string v3, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v3, v2}, Lu/aly/ct;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
