.class public final Lcom/loc/x;
.super Ljava/lang/Object;
.source "LogDBOperation.java"


# instance fields
.field a:Lcom/loc/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/loc/o;

    const-class v1, Lcom/loc/w;

    invoke-static {v1}, Lcom/loc/o;->a(Ljava/lang/Class;)Lcom/loc/n;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/loc/o;-><init>(Landroid/content/Context;Lcom/loc/n;)V

    iput-object v0, p0, Lcom/loc/x;->a:Lcom/loc/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/loc/y;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/loc/y;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/loc/y;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/x;->a:Lcom/loc/o;

    .line 1000
    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Lcom/loc/o;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "LogDB"

    const-string v3, "ByState"

    invoke-static {v1, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/loc/y;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/loc/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/x;->a:Lcom/loc/o;

    invoke-virtual {v1, v0, p2}, Lcom/loc/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
