.class public Lcom/loc/eo;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation runtime Lcom/loc/p;
    a = "a"
.end annotation


# instance fields
.field a:I
    .annotation runtime Lcom/loc/q;
        a = "a6"
        b = 0x2
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/loc/q;
        a = "a1"
        b = 0x6
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/loc/q;
        a = "a2"
        b = 0x6
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/loc/q;
        a = "a3"
        b = 0x6
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/loc/q;
        a = "a4"
        b = 0x6
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/loc/q;
        a = "a5"
        b = 0x6
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/eo;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/eo;->k:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/loc/ep;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/loc/eo;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/eo;->k:[Ljava/lang/String;

    .line 1000
    iget-object v1, p1, Lcom/loc/ep;->a:Ljava/lang/String;

    .line 0
    iput-object v1, p0, Lcom/loc/eo;->g:Ljava/lang/String;

    .line 2000
    iget-object v1, p1, Lcom/loc/ep;->b:Ljava/lang/String;

    .line 0
    iput-object v1, p0, Lcom/loc/eo;->i:Ljava/lang/String;

    .line 3000
    iget-object v1, p1, Lcom/loc/ep;->c:Ljava/lang/String;

    .line 0
    iput-object v1, p0, Lcom/loc/eo;->h:Ljava/lang/String;

    .line 4000
    iget-boolean v1, p1, Lcom/loc/ep;->d:Z

    .line 0
    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/loc/eo;->a:I

    .line 5000
    iget-object v0, p1, Lcom/loc/ep;->e:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/loc/eo;->j:Ljava/lang/String;

    .line 6000
    iget-object v0, p1, Lcom/loc/ep;->f:[Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/loc/eo;->k:[Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/eo;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/eq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/eo;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/eo;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/eq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/eo;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/eo;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/eq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/eo;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/eo;->k:[Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/eo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/eq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/eo;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/eo;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/eq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/eo;->f:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/loc/ep;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/eo;-><init>(Lcom/loc/ep;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "a1"

    invoke-static {p0}, Lcom/loc/eq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/loc/o;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    const-string v0, "a6=1"

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/eo;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/eo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/eo;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/eq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/eo;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/loc/eo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/eo;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/eo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/eo;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/eq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/eo;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/loc/eo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/eo;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/eo;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/eo;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/eq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/eo;->j:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/loc/eo;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "standard"

    iput-object v0, p0, Lcom/loc/eo;->j:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/loc/eo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/eo;->k:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/eo;->k:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/loc/eo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/eo;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/eq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/eo;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/eo;->k:[Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/loc/eo;->k:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
