.class public Lcom/amap/api/services/a/ba;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation runtime Lcom/amap/api/services/a/bn;
    a = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/bo;
        a = "a1"
        b = 0x6
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/bo;
        a = "a2"
        b = 0x6
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/amap/api/services/a/bo;
        a = "a6"
        b = 0x2
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/bo;
        a = "a3"
        b = 0x6
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/bo;
        a = "a4"
        b = 0x6
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/bo;
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

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/a/ba;->c:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->k:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/amap/api/services/a/ba$a;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/amap/api/services/a/ba;->c:I

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/services/a/ba;->k:[Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/amap/api/services/a/ba$a;->a(Lcom/amap/api/services/a/ba$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/a/ba;->g:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/amap/api/services/a/ba$a;->b(Lcom/amap/api/services/a/ba$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/a/ba;->i:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/amap/api/services/a/ba$a;->c(Lcom/amap/api/services/a/ba$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/a/ba;->h:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/amap/api/services/a/ba$a;->d(Lcom/amap/api/services/a/ba$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/amap/api/services/a/ba;->c:I

    .line 52
    invoke-static {p1}, Lcom/amap/api/services/a/ba$a;->e(Lcom/amap/api/services/a/ba$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->j:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/amap/api/services/a/ba$a;->f(Lcom/amap/api/services/a/ba$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->k:[Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/bb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->b:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/bb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/bb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->d:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->k:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ba;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->e:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/bb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->f:Ljava/lang/String;

    .line 62
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/a/ba$a;Lcom/amap/api/services/a/ba$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ba;-><init>(Lcom/amap/api/services/a/ba$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    const-string v1, "a1"

    invoke-static {p0}, Lcom/amap/api/services/a/bb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {v0}, Lcom/amap/api/services/a/bm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 188
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-object v0

    .line 191
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    array-length v3, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 193
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    :try_start_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "a6=1"

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/bb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->i:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/ba;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/bb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->g:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/ba;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/bb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->j:Ljava/lang/String;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "standard"

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->j:Ljava/lang/String;

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->k:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/ba;->k:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/bb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ba;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ba;->k:[Ljava/lang/String;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/ba;->k:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
