.class public final Lcom/google/firebase/iid/g;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/iid/g;",
            ">;"
        }
    .end annotation
.end field

.field static c:Lcom/google/firebase/iid/k;

.field static d:Lcom/google/firebase/iid/i;

.field static h:Ljava/lang/String;


# instance fields
.field b:Landroid/content/Context;

.field e:Ljava/security/KeyPair;

.field f:Ljava/lang/String;

.field g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/g;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/iid/g;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/g;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/iid/g;->f:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/g;
    .locals 4

    const-class v2, Lcom/google/firebase/iid/g;

    monitor-enter v2

    if-nez p1, :cond_2

    :try_start_0
    const-string v0, ""

    :goto_0
    if-nez v0, :cond_3

    const-string v0, ""

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v0, Lcom/google/firebase/iid/g;->c:Lcom/google/firebase/iid/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/iid/k;

    invoke-direct {v0, v3}, Lcom/google/firebase/iid/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/iid/g;->c:Lcom/google/firebase/iid/k;

    new-instance v0, Lcom/google/firebase/iid/i;

    invoke-direct {v0, v3}, Lcom/google/firebase/iid/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/iid/g;->d:Lcom/google/firebase/iid/i;

    :cond_0
    invoke-static {v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/iid/g;->h:Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/iid/g;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/firebase/iid/g;

    invoke-direct {v0, v3, v1}, Lcom/google/firebase/iid/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v3, Lcom/google/firebase/iid/g;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static c()Lcom/google/firebase/iid/k;
    .locals 1

    sget-object v0, Lcom/google/firebase/iid/g;->c:Lcom/google/firebase/iid/k;

    return-object v0
.end method

.method public static d()Lcom/google/firebase/iid/i;
    .locals 1

    sget-object v0, Lcom/google/firebase/iid/g;->d:Lcom/google/firebase/iid/i;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3000
    :cond_0
    sget-object v2, Lcom/google/firebase/iid/g;->c:Lcom/google/firebase/iid/k;

    const-string v3, "appVersion"

    invoke-virtual {v2, v3}, Lcom/google/firebase/iid/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/google/firebase/iid/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    move v2, v0

    .line 0
    :goto_0
    if-eqz v2, :cond_6

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_7

    :cond_2
    :goto_2
    return-object v4

    .line 3000
    :cond_3
    sget-object v2, Lcom/google/firebase/iid/g;->c:Lcom/google/firebase/iid/k;

    const-string v3, "lastToken"

    invoke-virtual {v2, v3}, Lcom/google/firebase/iid/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/32 v4, 0x93a80

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    move v2, v0

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_0

    .line 0
    :cond_6
    sget-object v2, Lcom/google/firebase/iid/g;->c:Lcom/google/firebase/iid/k;

    iget-object v3, p0, Lcom/google/firebase/iid/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, p2}, Lcom/google/firebase/iid/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    if-nez p3, :cond_8

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_8
    const-string v2, "ttl"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move v0, v1

    :cond_9
    const-string v2, "jwt"

    const-string v3, "type"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4000
    :goto_3
    if-eqz p2, :cond_a

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v0, "sender"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v2, p0, Lcom/google/firebase/iid/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p1

    :goto_4
    const-string v2, "legacy.register"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "subscription"

    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "subtype"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-subscription"

    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-subtype"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget-object v0, Lcom/google/firebase/iid/g;->d:Lcom/google/firebase/iid/i;

    invoke-virtual {p0}, Lcom/google/firebase/iid/g;->a()Ljava/security/KeyPair;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Lcom/google/firebase/iid/i;->a(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/i;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 0
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    sget-object v0, Lcom/google/firebase/iid/g;->c:Lcom/google/firebase/iid/k;

    iget-object v1, p0, Lcom/google/firebase/iid/g;->f:Ljava/lang/String;

    sget-object v5, Lcom/google/firebase/iid/g;->h:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4000
    :cond_c
    iget-object v0, p0, Lcom/google/firebase/iid/g;->f:Ljava/lang/String;

    goto :goto_4

    :cond_d
    move v1, v0

    goto :goto_3
.end method

.method public final a()Ljava/security/KeyPair;
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/firebase/iid/g;->e:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/iid/g;->c:Lcom/google/firebase/iid/k;

    iget-object v1, p0, Lcom/google/firebase/iid/g;->f:Ljava/lang/String;

    .line 1000
    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/k;->d(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lcom/google/firebase/iid/g;->e:Ljava/security/KeyPair;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/g;->e:Ljava/security/KeyPair;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/iid/g;->g:J

    sget-object v0, Lcom/google/firebase/iid/g;->c:Lcom/google/firebase/iid/k;

    iget-object v1, p0, Lcom/google/firebase/iid/g;->f:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/firebase/iid/g;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/iid/k;->a(Ljava/lang/String;J)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/g;->e:Ljava/security/KeyPair;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/g;->e:Ljava/security/KeyPair;

    return-object v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/iid/g;->g:J

    sget-object v0, Lcom/google/firebase/iid/g;->c:Lcom/google/firebase/iid/k;

    iget-object v1, p0, Lcom/google/firebase/iid/g;->f:Ljava/lang/String;

    .line 2000
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/k;->b(Ljava/lang/String;)V

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/g;->e:Ljava/security/KeyPair;

    return-void
.end method
