.class public final Lcom/tencent/wxop/stat/a/g;
.super Lcom/tencent/wxop/stat/a/d;


# static fields
.field private static n:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wxop/stat/a/g;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tencent/wxop/stat/w;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wxop/stat/a/d;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/w;)V

    iput-object v0, p0, Lcom/tencent/wxop/stat/a/g;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wxop/stat/a/g;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/wxop/stat/x;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/x;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/tencent/wxop/stat/x;->c:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/tencent/wxop/stat/a/g;->o:Ljava/lang/String;

    sget-object v0, Lcom/tencent/wxop/stat/a/g;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/wxop/stat/b/l;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/a/g;->n:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "op"

    sget-object v1, Lcom/tencent/wxop/stat/a/g;->n:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cn"

    iget-object v1, p0, Lcom/tencent/wxop/stat/a/g;->o:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/wxop/stat/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sp"

    iget-object v1, p0, Lcom/tencent/wxop/stat/a/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/tencent/wxop/stat/a/e;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/a/e;->h:Lcom/tencent/wxop/stat/a/e;

    return-object v0
.end method
