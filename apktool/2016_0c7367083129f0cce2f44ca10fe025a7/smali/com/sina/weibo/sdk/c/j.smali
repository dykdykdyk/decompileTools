.class final Lcom/sina/weibo/sdk/c/j;
.super Ljava/lang/Object;
.source "WBAgentHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/c/i;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/c/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/c/j;->a:Lcom/sina/weibo/sdk/c/i;

    iput-object p2, p0, Lcom/sina/weibo/sdk/c/j;->b:Ljava/lang/String;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 303
    const-string v3, "app_logs"

    .line 1037
    const-string v0, ""

    .line 1038
    invoke-static {}, Lcom/sina/weibo/sdk/c/d;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sina/weibo/sdk/c/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sina/weibo/sdk/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1048
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v5, "mounted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1049
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 1051
    :goto_0
    if-eqz v2, :cond_1

    .line 1052
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1041
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/sina/weibo/.applogs/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1042
    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/sina/weibo/sdk/c/j;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 302
    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/c/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 305
    return-void

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method
