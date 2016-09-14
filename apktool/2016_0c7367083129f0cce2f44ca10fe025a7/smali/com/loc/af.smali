.class final Lcom/loc/af;
.super Ljava/lang/Object;
.source "InstanceFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/af;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/af;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    new-instance v0, Lcom/loc/o;

    iget-object v1, p0, Lcom/loc/af;->a:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ap;->b()Lcom/loc/ap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/loc/o;-><init>(Landroid/content/Context;Lcom/loc/n;)V

    iget-object v1, p0, Lcom/loc/af;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/af;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/loc/aj;->a(Lcom/loc/o;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "InstanceFactory"

    const-string v2, "rollBack"

    .line 1000
    invoke-static {v0, v1, v2}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
