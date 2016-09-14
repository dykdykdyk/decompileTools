.class final Lcom/loc/eu;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/loc/eo;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/loc/eo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/eu;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/eu;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/eu;->c:Lcom/loc/eo;

    iput-object p4, p0, Lcom/loc/eu;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/loc/et;->d(I)Lcom/loc/l;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/eu;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/eu;->c:Lcom/loc/eo;

    iget-object v2, p0, Lcom/loc/eu;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "gpsstatistics"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/loc/eu;->d:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/loc/l;->a(Lcom/loc/eo;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/loc/eu;->c:Lcom/loc/eo;

    iget-object v2, p0, Lcom/loc/eu;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/eu;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/eu;->d:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/loc/l;->a(Lcom/loc/eo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
