.class Lcom/umeng/message/MsgLogStore$1;
.super Ljava/lang/Object;
.source "MsgLogStore.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/umeng/message/MsgLogStore;


# direct methods
.method constructor <init>(Lcom/umeng/message/MsgLogStore;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/umeng/message/MsgLogStore$1;->a:Lcom/umeng/message/MsgLogStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 62
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "umeng_message_log_cache_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
