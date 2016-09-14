.class public final Lorg/android/agoo/d/b/d;
.super Ljava/lang/Object;
.source "ChannelManager.java"


# static fields
.field public static volatile a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile b:Landroid/content/Context;

.field public static volatile c:Ljava/lang/String;

.field public static volatile d:Ljava/lang/String;

.field public static volatile e:Ljava/lang/String;

.field private static volatile j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile k:J

.field private static volatile l:Lorg/android/agoo/d/b/i;

.field private static volatile m:Lorg/android/agoo/d/b/a;

.field private static volatile n:Lorg/android/agoo/d/b/p;

.field private static volatile o:Ljava/lang/String;

.field private static volatile p:Z

.field private static volatile q:Lorg/android/agoo/d/b/j;

.field private static volatile r:Lorg/android/agoo/d/b/r;

.field private static volatile s:Z


# instance fields
.field public volatile f:Ljava/lang/String;

.field public volatile g:I

.field public volatile h:Lorg/android/agoo/d/b/n;

.field public volatile i:Ljava/lang/Object;

.field private volatile t:S

.field private volatile u:J

.field private volatile v:J

.field private final w:Lorg/android/agoo/d/b/l;

.field private volatile x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    const-wide/16 v0, 0x7530

    sput-wide v0, Lorg/android/agoo/d/b/d;->k:J

    .line 41
    sget-object v0, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    sput-object v0, Lorg/android/agoo/d/b/d;->l:Lorg/android/agoo/d/b/i;

    .line 42
    sget-object v0, Lorg/android/agoo/d/b/a;->a:Lorg/android/agoo/d/b/a;

    sput-object v0, Lorg/android/agoo/d/b/d;->m:Lorg/android/agoo/d/b/a;

    .line 43
    sput-object v2, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    .line 44
    sput-object v2, Lorg/android/agoo/d/b/d;->n:Lorg/android/agoo/d/b/p;

    .line 45
    sput-object v2, Lorg/android/agoo/d/b/d;->c:Ljava/lang/String;

    .line 46
    sput-object v2, Lorg/android/agoo/d/b/d;->o:Ljava/lang/String;

    .line 47
    sput-object v2, Lorg/android/agoo/d/b/d;->d:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lorg/android/agoo/d/b/d;->p:Z

    .line 51
    sput-object v2, Lorg/android/agoo/d/b/d;->q:Lorg/android/agoo/d/b/j;

    .line 52
    sget-object v0, Lorg/android/agoo/d/b/r;->a:Lorg/android/agoo/d/b/r;

    sput-object v0, Lorg/android/agoo/d/b/d;->r:Lorg/android/agoo/d/b/r;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lorg/android/agoo/d/b/d;->s:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lorg/android/agoo/d/b/d;->f:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lorg/android/agoo/d/b/d;->g:I

    .line 61
    iput-object v1, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    .line 63
    iput-wide v2, p0, Lorg/android/agoo/d/b/d;->u:J

    .line 64
    iput-wide v2, p0, Lorg/android/agoo/d/b/d;->v:J

    .line 65
    new-instance v0, Lorg/android/agoo/d/b/e;

    invoke-direct {v0, p0}, Lorg/android/agoo/d/b/e;-><init>(Lorg/android/agoo/d/b/d;)V

    iput-object v0, p0, Lorg/android/agoo/d/b/d;->w:Lorg/android/agoo/d/b/l;

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/d/b/d;->x:Z

    .line 387
    iput-object v1, p0, Lorg/android/agoo/d/b/d;->i:Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/android/agoo/d/b/d;->q:Lorg/android/agoo/d/b/j;

    iget-object v1, p0, Lorg/android/agoo/d/b/d;->w:Lorg/android/agoo/d/b/l;

    .line 1078
    iput-object v1, v0, Lorg/android/agoo/d/b/j;->j:Lorg/android/agoo/d/b/l;

    .line 95
    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/android/agoo/d/b/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/android/agoo/d/b/d;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lorg/android/agoo/d/b/d;->g:I

    return p1
.end method

.method public static synthetic a(J)J
    .locals 0

    .prologue
    .line 27
    sput-wide p0, Lorg/android/agoo/d/b/d;->k:J

    return-wide p0
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    :try_start_0
    new-instance v3, Lorg/android/agoo/d/a/e;

    invoke-direct {v3}, Lorg/android/agoo/d/a/e;-><init>()V

    .line 548
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 549
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 550
    if-eqz v4, :cond_2

    .line 552
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 554
    if-eqz v0, :cond_0

    .line 555
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/message/proguard/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lorg/android/agoo/d/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 577
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 562
    :cond_2
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v3}, Lorg/android/agoo/d/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 564
    const-string v1, "?"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 565
    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "s="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 567
    :cond_3
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic a(Lorg/android/agoo/d/b/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lorg/android/agoo/d/b/d;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->j:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic a(Lorg/android/agoo/d/b/a;)Lorg/android/agoo/d/b/a;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->m:Lorg/android/agoo/d/b/a;

    return-object p0
.end method

.method public static a()Lorg/android/agoo/d/b/i;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lorg/android/agoo/d/b/d;->l:Lorg/android/agoo/d/b/i;

    return-object v0
.end method

.method static synthetic a(Lorg/android/agoo/d/b/i;)Lorg/android/agoo/d/b/i;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->l:Lorg/android/agoo/d/b/i;

    return-object p0
.end method

.method static synthetic a(Lorg/android/agoo/d/b/j;)Lorg/android/agoo/d/b/j;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->q:Lorg/android/agoo/d/b/j;

    return-object p0
.end method

.method public static synthetic a(Lorg/android/agoo/d/b/p;)Lorg/android/agoo/d/b/p;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->n:Lorg/android/agoo/d/b/p;

    return-object p0
.end method

.method public static synthetic a(Lorg/android/agoo/d/b/r;)Lorg/android/agoo/d/b/r;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->r:Lorg/android/agoo/d/b/r;

    return-object p0
.end method

.method static synthetic a(Lorg/android/agoo/d/b/d;Lorg/android/agoo/d/b/b;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/b;)V

    return-void
.end method

.method static synthetic a(Lorg/android/agoo/d/b/d;)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/d/b/d;->x:Z

    return v0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 27
    sput-boolean p0, Lorg/android/agoo/d/b/d;->p:Z

    return p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lorg/android/agoo/d/b/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final e()I
    .locals 4

    .prologue
    .line 581
    const/4 v0, -0x1

    .line 583
    :try_start_0
    sget-object v1, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    .line 584
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 585
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_0
    return v0

    .line 587
    :catch_0
    move-exception v1

    .line 588
    const-string v2, "ChannelManager"

    const-string v3, "getAppVersionCode"

    invoke-static {v2, v3, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/android/agoo/d/b/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/android/agoo/d/b/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic h()Lorg/android/agoo/d/b/j;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/android/agoo/d/b/d;->q:Lorg/android/agoo/d/b/j;

    return-object v0
.end method

.method public static synthetic i()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lorg/android/agoo/d/b/d;->s:Z

    return v0
.end method

.method public static synthetic j()Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/android/agoo/d/b/d;->j:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 286
    .line 290
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    .line 291
    invoke-interface {v0}, Lorg/android/agoo/d/b/n;->e()Lorg/android/agoo/d/b/h;

    move-result-object v0

    sget-object v3, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v0, v3, :cond_4

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    :goto_0
    return v1

    .line 297
    :cond_0
    sget-object v3, Lorg/android/agoo/d/b/d;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 298
    const-string v3, "id"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 300
    const-string v3, "del_pack"

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 303
    const-string v3, "ec"

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_2
    invoke-static {}, Lorg/android/agoo/d/b/d;->e()I

    move-result v3

    .line 306
    const-string v4, "http://%s:%d/%s/%s/%d/%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/android/agoo/d/b/d;->f:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lorg/android/agoo/d/b/d;->g:I

    .line 307
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "A_R"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lorg/android/agoo/d/b/d;->d:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x5

    sget-object v6, Lorg/android/agoo/d/b/d;->c:Ljava/lang/String;

    aput-object v6, v5, v3

    .line 306
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 309
    sget-object v4, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    sget-object v4, Lorg/android/agoo/d/b/d;->d:Ljava/lang/String;

    sget-object v4, Lorg/android/agoo/d/b/d;->e:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lorg/android/agoo/d/b/q;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 312
    const-string v0, "ChannelManager"

    const-string v3, "reportMessages[sgin==null]"

    invoke-static {v0, v3}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lorg/android/agoo/d/b/b;->v:Lorg/android/agoo/d/b/b;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    move v3, v1

    move-object v1, v2

    .line 333
    :goto_1
    new-instance v4, Lorg/android/agoo/d/a/n;

    sget-object v5, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    invoke-direct {v4}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 334
    sget-object v4, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/message/proguard/s;->g(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 335
    const-string v5, "ackRequestCode"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v3, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    invoke-interface {v3, v1, v2, v2}, Lorg/android/agoo/d/b/n;->a(Ljava/lang/String;[BLorg/android/agoo/d/b/o;)I

    move-result v1

    .line 338
    const-string v2, "ChannelManager"

    const-string v3, "reportMessages"

    invoke-static {v2, v3, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 316
    :cond_3
    :try_start_1
    invoke-static {v3, v0, v4}, Lorg/android/agoo/d/b/d;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 319
    :try_start_2
    const-string v0, "ChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reportMessages url ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Lorg/android/agoo/d/b/n;->a(Ljava/lang/String;[BLorg/android/agoo/d/b/o;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 321
    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_5

    .line 323
    :try_start_3
    new-instance v1, Lorg/android/agoo/d/a/n;

    sget-object v4, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    invoke-direct {v1}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 324
    sget-object v1, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/s;->g(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 325
    const-string v4, "ackRequestCode"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v1, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lorg/android/agoo/d/b/n;->a(Ljava/lang/String;[BLorg/android/agoo/d/b/o;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    :cond_5
    move v1, v0

    .line 341
    goto/16 :goto_0

    .line 331
    :catch_1
    move-exception v0

    move-object v8, v3

    move v3, v1

    move-object v1, v8

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v8, v1

    move-object v1, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1
.end method

.method public final a(Lorg/android/agoo/d/b/b;)V
    .locals 7

    .prologue
    .line 627
    :try_start_0
    sget-object v0, Lorg/android/agoo/d/b/d;->n:Lorg/android/agoo/d/b/p;

    if-eqz v0, :cond_0

    .line 628
    sget-object v0, Lorg/android/agoo/d/b/d;->n:Lorg/android/agoo/d/b/p;

    iget-object v1, p0, Lorg/android/agoo/d/b/d;->i:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v6}, Lorg/android/agoo/d/b/p;->a(Ljava/lang/Object;JLorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Lorg/android/agoo/d/b/h;
    .locals 3

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    invoke-interface {v0}, Lorg/android/agoo/d/b/n;->e()Lorg/android/agoo/d/b/h;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string v1, "ChannelManager"

    const-string v2, "readyChannelState"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    :cond_0
    sget-object v0, Lorg/android/agoo/d/b/h;->d:Lorg/android/agoo/d/b/h;

    goto :goto_0
.end method

.method public final c()V
    .locals 10

    .prologue
    .line 394
    :try_start_0
    sget-boolean v0, Lorg/android/agoo/d/b/d;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/android/agoo/d/b/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iget v1, p0, Lorg/android/agoo/d/b/d;->g:I

    if-ne v0, v1, :cond_3

    .line 395
    :cond_0
    iget-boolean v0, p0, Lorg/android/agoo/d/b/d;->x:Z

    if-eqz v0, :cond_1

    .line 396
    const-string v0, "ChannelManager"

    const-string v1, "connenct[dnsing]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :goto_0
    return-void

    .line 399
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/d/b/d;->x:Z

    .line 400
    sget-object v0, Lorg/android/agoo/d/b/d;->q:Lorg/android/agoo/d/b/j;

    sget-object v1, Lorg/android/agoo/d/b/d;->l:Lorg/android/agoo/d/b/i;

    .line 1113
    iget-boolean v2, v0, Lorg/android/agoo/d/b/j;->m:Z

    if-eqz v2, :cond_2

    .line 1114
    const-string v0, "DNSManager"

    const-string v1, "DNSRemote[runing....]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    const-string v1, "ChannelManager"

    const-string v2, "connenct"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1117
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v0, Lorg/android/agoo/d/b/j;->m:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1119
    :try_start_2
    iget-object v2, v0, Lorg/android/agoo/d/b/j;->n:Lorg/android/agoo/d/b/m;

    .line 1132
    iput-object v1, v2, Lorg/android/agoo/d/b/m;->a:Lorg/android/agoo/d/b/i;

    .line 1120
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, v0, Lorg/android/agoo/d/b/j;->n:Lorg/android/agoo/d/b/m;

    const-string v3, "agoo-dns"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1122
    :catch_1
    move-exception v1

    :try_start_3
    sget-object v1, Lorg/android/agoo/d/b/b;->s:Lorg/android/agoo/d/b/b;

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/b/j;->a(Lorg/android/agoo/d/b/b;)V

    goto :goto_0

    .line 403
    :cond_3
    invoke-virtual {p0}, Lorg/android/agoo/d/b/d;->b()Lorg/android/agoo/d/b/h;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/d/b/h;->a:Lorg/android/agoo/d/b/h;

    if-ne v0, v1, :cond_4

    .line 404
    const-string v0, "ChannelManager"

    const-string v1, "connenct[connecting]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2345
    :cond_4
    :try_start_4
    sget-object v0, Lorg/android/agoo/d/b/f;->a:[I

    sget-object v1, Lorg/android/agoo/d/b/d;->l:Lorg/android/agoo/d/b/i;

    invoke-virtual {v1}, Lorg/android/agoo/d/b/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1439
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    if-nez v0, :cond_9

    .line 1440
    const-string v0, "ChannelManager"

    const-string v1, "dataChannel==null"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1503
    :catch_2
    move-exception v0

    .line 1504
    :try_start_5
    const-string v1, "ChannelManager"

    const-string v2, "_connenct"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 2351
    :pswitch_0
    :try_start_6
    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    if-eqz v0, :cond_6

    sget-boolean v0, Lorg/android/agoo/d/b/d;->s:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    instance-of v0, v0, Lorg/android/agoo/d/b/b/a;

    if-eqz v0, :cond_6

    .line 2353
    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    invoke-interface {v0}, Lorg/android/agoo/d/b/n;->c()V

    .line 2354
    new-instance v0, Lorg/android/agoo/d/b/b/a;

    invoke-direct {v0}, Lorg/android/agoo/d/b/b/a;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    .line 2355
    const/4 v0, 0x0

    sput-boolean v0, Lorg/android/agoo/d/b/d;->s:Z

    .line 2357
    :cond_6
    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    instance-of v0, v0, Lorg/android/agoo/d/b/b/a;

    if-nez v0, :cond_5

    .line 2359
    :cond_7
    new-instance v0, Lorg/android/agoo/d/b/b/a;

    invoke-direct {v0}, Lorg/android/agoo/d/b/b/a;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 2362
    :catch_3
    move-exception v0

    .line 2363
    :try_start_7
    const-string v1, "ChannelManager"

    const-string v2, "builder.changeChannel.initSpdy"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2365
    sget-object v0, Lorg/android/agoo/d/b/b;->f:Lorg/android/agoo/d/b/b;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/b;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 2372
    :pswitch_1
    :try_start_8
    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    instance-of v0, v0, Lorg/android/agoo/d/b/a/a;

    if-nez v0, :cond_5

    .line 2374
    :cond_8
    new-instance v0, Lorg/android/agoo/d/b/a/a;

    invoke-direct {v0}, Lorg/android/agoo/d/b/a/a;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 2376
    :catch_4
    move-exception v0

    .line 2377
    :try_start_9
    sget-object v1, Lorg/android/agoo/d/b/b;->n:Lorg/android/agoo/d/b/b;

    invoke-virtual {p0, v1}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/b;)V

    .line 2379
    const-string v1, "ChannelManager"

    const-string v2, "builder.changeChannel.initChunked"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 2595
    :cond_9
    :try_start_a
    sget-object v0, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    const-string v1, "AGOO_CONNECT"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2598
    const-string v1, "AGOO_CONNECT_CLIENT_CREATE_TIME"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/android/agoo/d/b/d;->v:J

    .line 2600
    const-string v1, "AGOO_CONNECT_LAST_RECONNECT_TIME"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/android/agoo/d/b/d;->u:J

    .line 2602
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2603
    iget-wide v4, p0, Lorg/android/agoo/d/b/d;->v:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_a

    .line 2604
    const-string v4, "AGOO_CONNECT_CLIENT_CREATE_TIME"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 2607
    :cond_a
    :try_start_b
    const-string v4, "AGOO_CONNECT_COUNT"

    const-string v5, "0"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/android/agoo/d/b/d;->t:S
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 2611
    :goto_2
    :try_start_c
    const-string v0, "ChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "time["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]mClientCreateTime["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/android/agoo/d/b/d;->v:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]mLastReconnectTime["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/android/agoo/d/b/d;->u:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    iget-short v0, p0, Lorg/android/agoo/d/b/d;->t:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/android/agoo/d/b/d;->t:S

    .line 2615
    const-string v0, "AGOO_CONNECT_LAST_RECONNECT_TIME"

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2616
    const-string v0, "AGOO_CONNECT_COUNT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v3, p0, Lorg/android/agoo/d/b/d;->t:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2617
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 1457
    :goto_3
    :try_start_d
    sget-object v1, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    sget-object v0, Lorg/android/agoo/d/b/d;->l:Lorg/android/agoo/d/b/i;

    .line 3018
    iget v2, v0, Lorg/android/agoo/d/b/i;->c:I

    .line 1458
    iget-short v3, p0, Lorg/android/agoo/d/b/d;->t:S

    iget-wide v4, p0, Lorg/android/agoo/d/b/d;->u:J

    iget-wide v6, p0, Lorg/android/agoo/d/b/d;->v:J

    sget-object v0, Lorg/android/agoo/d/b/d;->m:Lorg/android/agoo/d/b/a;

    .line 4012
    iget v8, v0, Lorg/android/agoo/d/b/a;->b:I

    .line 1460
    sget-object v0, Lorg/android/agoo/d/b/d;->r:Lorg/android/agoo/d/b/r;

    .line 5012
    iget v9, v0, Lorg/android/agoo/d/b/r;->c:I

    .line 1457
    invoke-static/range {v1 .. v9}, Lorg/android/agoo/d/b/q;->a(Landroid/content/Context;ISJJII)Ljava/lang/String;

    move-result-object v0

    .line 1461
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1462
    sget-object v1, Lorg/android/agoo/d/b/d;->j:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1463
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1464
    sget-object v2, Lorg/android/agoo/d/b/d;->a:Ljava/util/Map;

    const-string v3, "ov"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    sget-object v2, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/proguard/s;->g(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 1466
    sget-object v3, Lorg/android/agoo/d/b/d;->a:Ljava/util/Map;

    const-string v4, "sv"

    const-string v6, "agooReleaseTime"

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    sget-object v2, Lorg/android/agoo/d/b/d;->a:Ljava/util/Map;

    const-string v3, "pm"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/proguard/n;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    sget-object v2, Lorg/android/agoo/d/b/d;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1469
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1470
    const-string v2, "c"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_b
    invoke-static {}, Lorg/android/agoo/d/b/d;->e()I

    move-result v0

    .line 1473
    const-string v2, "http://%s:%d/%s/%s/%d/%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/android/agoo/d/b/d;->f:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget v6, p0, Lorg/android/agoo/d/b/d;->g:I

    .line 1474
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    sget-object v6, Lorg/android/agoo/d/b/d;->o:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    sget-object v6, Lorg/android/agoo/d/b/d;->d:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x5

    sget-object v4, Lorg/android/agoo/d/b/d;->c:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 1473
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1475
    sget-object v2, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    sget-object v2, Lorg/android/agoo/d/b/d;->d:Ljava/lang/String;

    sget-object v2, Lorg/android/agoo/d/b/d;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/q;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1477
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1478
    sget-object v0, Lorg/android/agoo/d/b/b;->v:Lorg/android/agoo/d/b/b;

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/b;)V

    goto/16 :goto_0

    .line 1481
    :cond_c
    invoke-static {v0, v1, v2}, Lorg/android/agoo/d/b/d;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1482
    const-string v0, "ChannelManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCurrentChannelType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/android/agoo/d/b/d;->l:Lorg/android/agoo/d/b/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    sget-object v0, Lorg/android/agoo/d/b/f;->a:[I

    sget-object v1, Lorg/android/agoo/d/b/d;->l:Lorg/android/agoo/d/b/i;

    invoke-virtual {v1}, Lorg/android/agoo/d/b/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1491
    const-string v0, "ChannelManager"

    const-string v1, "connenct  [SpdyChannel]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :goto_4
    sget-object v0, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    const-string v1, "AGOO_CONNECT"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1496
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1497
    const-string v1, "AGOO_CONNECT_HOST"

    iget-object v2, p0, Lorg/android/agoo/d/b/d;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1498
    const-string v1, "AGOO_CONNECT_PORT"

    iget v2, p0, Lorg/android/agoo/d/b/d;->g:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1499
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1501
    iget-object v1, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    iget-object v2, p0, Lorg/android/agoo/d/b/d;->i:Ljava/lang/Object;

    sget-object v3, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    sget-wide v6, Lorg/android/agoo/d/b/d;->k:J

    sget-object v8, Lorg/android/agoo/d/b/d;->n:Lorg/android/agoo/d/b/p;

    invoke-interface/range {v1 .. v8}, Lorg/android/agoo/d/b/n;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;JLorg/android/agoo/d/b/p;)V

    goto/16 :goto_0

    .line 1485
    :pswitch_2
    const-string v0, "ChannelManager"

    const-string v1, "connenct  [SpdyChannel]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1488
    :pswitch_3
    const-string v0, "ChannelManager"

    const-string v1, "connenct  [ChunkedChannel]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    goto/16 :goto_2

    .line 2345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1483
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final d()J
    .locals 5

    .prologue
    .line 531
    const-wide/16 v0, -0x1

    .line 533
    :try_start_0
    iget-object v2, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    if-eqz v2, :cond_0

    .line 534
    iget-object v2, p0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    invoke-interface {v2}, Lorg/android/agoo/d/b/n;->b()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 539
    :cond_0
    :goto_0
    return-wide v0

    .line 536
    :catch_0
    move-exception v2

    .line 537
    const-string v3, "ChannelManager"

    const-string v4, "ping"

    invoke-static {v3, v4, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
