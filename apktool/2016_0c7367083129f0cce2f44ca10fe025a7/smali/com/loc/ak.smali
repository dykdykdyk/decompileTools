.class final Lcom/loc/ak;
.super Ljava/lang/Thread;
.source "DexFileManager.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ak;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/ak;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/ak;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 0
    :try_start_0
    new-instance v1, Lcom/loc/o;

    iget-object v0, p0, Lcom/loc/ak;->a:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ap;->b()Lcom/loc/ap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/loc/o;-><init>(Landroid/content/Context;Lcom/loc/n;)V

    iget-object v0, p0, Lcom/loc/ak;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/aq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/loc/aq;

    .line 1000
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/loc/o;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aq;

    .line 2000
    iget-object v3, v0, Lcom/loc/aq;->c:Ljava/lang/String;

    .line 0
    iget-object v4, p0, Lcom/loc/ak;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3000
    iget-object v0, v0, Lcom/loc/aq;->a:Ljava/lang/String;

    .line 0
    iget-object v3, p0, Lcom/loc/ak;->a:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/loc/aj;->b(Landroid/content/Context;Lcom/loc/o;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DexFileManager"

    const-string v2, "clearUnSuitableVersion"

    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
