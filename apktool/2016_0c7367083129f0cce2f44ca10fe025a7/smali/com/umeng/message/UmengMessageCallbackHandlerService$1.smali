.class Lcom/umeng/message/UmengMessageCallbackHandlerService$1;
.super Ljava/lang/Object;
.source "UmengMessageCallbackHandlerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/message/UmengMessageCallbackHandlerService;


# direct methods
.method constructor <init>(Lcom/umeng/message/UmengMessageCallbackHandlerService;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->a:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->a:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    sget-object v1, Lcom/umeng/message/MessageSharedPrefs$a;->a:Lcom/umeng/message/MessageSharedPrefs$a;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/UTrack;->startCacheAlias(Lcom/umeng/message/MessageSharedPrefs$a;I)V

    .line 66
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->a:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    sget-object v1, Lcom/umeng/message/MessageSharedPrefs$a;->a:Lcom/umeng/message/MessageSharedPrefs$a;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/UTrack;->startCacheAlias(Lcom/umeng/message/MessageSharedPrefs$a;I)V

    .line 67
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->a:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    sget-object v1, Lcom/umeng/message/MessageSharedPrefs$a;->b:Lcom/umeng/message/MessageSharedPrefs$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/UTrack;->startCacheAlias(Lcom/umeng/message/MessageSharedPrefs$a;I)V

    .line 68
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->a:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    sget-object v1, Lcom/umeng/message/MessageSharedPrefs$a;->b:Lcom/umeng/message/MessageSharedPrefs$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/UTrack;->startCacheAlias(Lcom/umeng/message/MessageSharedPrefs$a;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
